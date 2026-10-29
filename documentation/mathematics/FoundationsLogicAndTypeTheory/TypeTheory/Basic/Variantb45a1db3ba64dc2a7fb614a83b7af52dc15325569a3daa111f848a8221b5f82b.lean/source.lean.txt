import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.CertificateProducer.Basic

/-!
An independent total decoder for the bounded JSON profile admitted by the
pipeline replay. Inputs are literal bytes, not Python-decoded strings. Objects
retain ordered key/value occurrences until duplicate names have been rejected.
All reification uses numeric character constructors; source quotation is absent.
This decoder deliberately rejects negative/fractional/exponential numbers. The
pipeline schema admits only u64 naturals, strings, Booleans, null and containers.
-/
namespace GRWTSK.FrontendCorrespondence

inductive Value where
  | null
  | boolean (value : Bool)
  | natural (value : Nat)
  | string (value : String)
  | arrayNil
  | arrayCons (head tail : Value)
  | objectNil
  | objectCons (key : String) (head tail : Value)
  deriving DecidableEq, Repr

def Value.array : List Value → Value
  | [] => .arrayNil
  | x :: xs => .arrayCons x (Value.array xs)

def Value.object : List (String × Value) → Value
  | [] => .objectNil
  | (k, v) :: xs => .objectCons k v (Value.object xs)

abbrev Raw := List Nat

def scalar (n : Nat) : Bool := decide (n ≤ 1114111 ∧ (n < 55296 ∨ 57344 ≤ n))

def whitespace : Nat → Bool
  | 32 | 9 | 10 | 13 => true
  | _ => false

def skip : Raw → Raw
  | [] => []
  | b :: bs => if whitespace b then skip bs else b :: bs

def hexDigit (n : Nat) : Option Nat :=
  if 48 ≤ n ∧ n ≤ 57 then some (n - 48)
  else if 65 ≤ n ∧ n ≤ 70 then some (n - 55)
  else if 97 ≤ n ∧ n ≤ 102 then some (n - 87) else none

def hex4 : Raw → Option (Nat × Raw)
  | a :: b :: c :: d :: rest => do
      let a ← hexDigit a
      let b ← hexDigit b
      let c ← hexDigit c
      let d ← hexDigit d
      pure (((a * 16 + b) * 16 + c) * 16 + d, rest)
  | _ => none

/-- UTF-8 is decoded independently, including shortest-form and scalar checks. -/
def utf8 : Raw → Option (Nat × Raw)
  | a :: rest =>
      if a < 128 then some (a, rest)
      else if 194 ≤ a ∧ a ≤ 223 then
        match rest with
        | b :: tail => if 128 ≤ b ∧ b ≤ 191 then
            some ((a - 192) * 64 + b - 128, tail) else none
        | _ => none
      else if 224 ≤ a ∧ a ≤ 239 then
        match rest with
        | b :: c :: tail =>
            let n := ((a - 224) * 64 + b - 128) * 64 + c - 128
            if 128 ≤ b ∧ b ≤ 191 ∧ 128 ≤ c ∧ c ≤ 191 ∧ 2048 ≤ n ∧ scalar n then
              some (n, tail) else none
        | _ => none
      else if 240 ≤ a ∧ a ≤ 244 then
        match rest with
        | b :: c :: d :: tail =>
            let n := (((a - 240) * 64 + b - 128) * 64 + c - 128) * 64 + d - 128
            if 128 ≤ b ∧ b ≤ 191 ∧ 128 ≤ c ∧ c ≤ 191 ∧ 128 ≤ d ∧ d ≤ 191 ∧
                65536 ≤ n ∧ scalar n then some (n, tail) else none
        | _ => none
      else none
  | [] => none

def escaped : Raw → Option (Nat × Raw)
  | 34 :: rest => some (34, rest)
  | 92 :: rest => some (92, rest)
  | 47 :: rest => some (47, rest)
  | 98 :: rest => some (8, rest)
  | 102 :: rest => some (12, rest)
  | 110 :: rest => some (10, rest)
  | 114 :: rest => some (13, rest)
  | 116 :: rest => some (9, rest)
  | 117 :: rest => do
      let (n, rest) ← hex4 rest
      if 55296 ≤ n ∧ n ≤ 56319 then
        match rest with
        | 92 :: 117 :: rest => do
            let (m, rest) ← hex4 rest
            if 56320 ≤ m ∧ m ≤ 57343 then
              pure (65536 + (n - 55296) * 1024 + (m - 56320), rest)
            else none
        | _ => none
      else if scalar n then pure (n, rest) else none
  | _ => none

def stringBody : Nat → Raw → List Char → Option (String × Raw)
  | 0, _, _ => none
  | fuel + 1, input, acc =>
      match input with
      | 34 :: rest => some (String.ofList acc.reverse, rest)
      | 92 :: rest => do
          let (n, rest) ← escaped rest
          stringBody fuel rest (Char.ofNat n :: acc)
      | b :: _ => if b < 32 then none else do
          let (n, rest) ← utf8 input
          stringBody fuel rest (Char.ofNat n :: acc)
      | [] => none

def stringToken (fuel : Nat) : Raw → Option (String × Raw)
  | 34 :: rest => stringBody fuel rest []
  | _ => none

def digits : Raw → Nat → Option (Nat × Raw)
  | b :: rest, acc =>
      if 48 ≤ b ∧ b ≤ 57 then
        let next := acc * 10 + b - 48
        if next < 18446744073709551616 then digits rest next else none
      else some (acc, b :: rest)
  | [], acc => some (acc, [])

def naturalToken : Raw → Option (Nat × Raw)
  | 48 :: rest =>
      match rest with
      | b :: _ => if 48 ≤ b ∧ b ≤ 57 then none else some (0, rest)
      | [] => some (0, [])
  | b :: rest => if 49 ≤ b ∧ b ≤ 57 then digits rest (b - 48) else none
  | [] => none

mutual
  def value : Nat → Raw → Option (Value × Raw)
    | 0, _ => none
    | fuel + 1, raw =>
        match skip raw with
        | 110 :: 117 :: 108 :: 108 :: rest => some (.null, rest)
        | 116 :: 114 :: 117 :: 101 :: rest => some (.boolean true, rest)
        | 102 :: 97 :: 108 :: 115 :: 101 :: rest => some (.boolean false, rest)
        | 91 :: rest => do
            let (items, rest) ← arrayItems fuel (skip rest) [] true
            pure (.array items, rest)
        | 123 :: rest => do
            let (items, rest) ← objectItems fuel (skip rest) [] true
            pure (.object items, rest)
        | 34 :: rest => do
            let (s, rest) ← stringBody fuel rest []
            pure (.string s, rest)
        | raw => do
            let (n, rest) ← naturalToken raw
            pure (.natural n, rest)

  def arrayItems : Nat → Raw → List Value → Bool → Option (List Value × Raw)
    | 0, _, _, _ => none
    | fuel + 1, raw, acc, empty =>
        match raw with
        | 93 :: rest => if empty then some (acc.reverse, rest) else none
        | _ => do
            let (item, rest) ← value fuel raw
            match skip rest with
            | 93 :: tail => pure ((item :: acc).reverse, tail)
            | 44 :: tail => arrayItems fuel (skip tail) (item :: acc) false
            | _ => none

  def objectItems : Nat → Raw → List (String × Value) → Bool → Option (List (String × Value) × Raw)
    | 0, _, _, _ => none
    | fuel + 1, raw, acc, empty =>
        match raw with
        | 125 :: rest => if empty then some (acc.reverse, rest) else none
        | _ => do
            let (key, rest) ← stringToken fuel raw
            if (acc.map Prod.fst).contains key then none else do
              match skip rest with
              | 58 :: rest => do
                  let (item, rest) ← value fuel rest
                  match skip rest with
                  | 125 :: tail => pure (((key, item) :: acc).reverse, tail)
                  | 44 :: tail => objectItems fuel (skip tail) ((key, item) :: acc) false
                  | _ => none
              | _ => none
end

/-- Finite syntax only; non-ASCII input is decoded as strict UTF-8. -/
def decode (raw : Raw) : Option Value := do
  if raw.all (· < 256) then
    let (result, rest) ← value (raw.length * 2 + 4) raw
    if (skip rest).isEmpty then pure result else none
  else none

def asString : Value → Option String
  | .string s => some s
  | _ => none

def asNat : Value → Option Nat
  | .natural n => some n
  | _ => none

def asBool : Value → Option Bool
  | .boolean b => some b
  | _ => none

def asArray : Value → Option (List Value)
  | .arrayNil => some []
  | .arrayCons head tail => do pure (head :: (← asArray tail))
  | _ => none

def asObject : Value → Option (List (String × Value))
  | .objectNil => some []
  | .objectCons key head tail => do pure ((key, head) :: (← asObject tail))
  | _ => none

def field (name : String) (v : Value) : Option Value := do
  let entries ← asObject v
  (entries.find? (fun row => row.1 == name)).map Prod.snd

def getString (name : String) (v : Value) : Option String := field name v >>= asString
def getNat (name : String) (v : Value) : Option Nat := field name v >>= asNat
def getArray (name : String) (v : Value) : Option (List Value) := field name v >>= asArray

def allSome {α β : Type} (f : α → Option β) : List α → Option (List β)
  | [] => some []
  | x :: xs => do
      let y ← f x
      let ys ← allSome f xs
      pure (y :: ys)

def area (s : String) : Option Nat :=
  if s = "taxonomy" then some 0 else if s = "archive" then some 1 else none

def byteHex : List Char → Option SourceRefinement.Bytes
  | [] => some []
  | a :: b :: rest => do
      let a ← hexDigit a.toNat
      let b ← hexDigit b.toNat
      let tail ← byteHex rest
      pure (UInt8.ofNat (a * 16 + b) :: tail)
  | _ => none

def objects (certificate : Value) : Option (List SourceRefinement.Bytes) := do
  let rows ← getArray "objects" certificate
  allSome (fun row => do
    let s ← getString "bytes" row
    byteHex s.toList) rows

def insertBy {α : Type} (le : α → α → Bool) (item : α) : List α → List α
  | [] => [item]
  | first :: rest => if le item first then item :: first :: rest
      else first :: insertBy le item rest

def sortBy {α : Type} (le : α → α → Bool) : List α → List α
  | [] => []
  | first :: rest => insertBy le first (sortBy le rest)

def readSet (v : Value) : Option SourceRefinement.ReadSet := do
  let root ← getString "root" v
  let present ← field "exists" v >>= asBool
  let dirs ← getArray "directories" v >>= allSome asString
  let entries ← field "files" v >>= asObject
  let files ← allSome (fun (k, v) => do pure (k, ← asNat v)) entries
  pure ⟨root, present, dirs, sortBy (fun a b => a.1 ≤ b.1) files⟩

def readSets (v : Value) : Option (List SourceRefinement.ReadSet) := do
  let source ← field "source" v >>= readSet
  let destination ← field "destination" v >>= readSet
  let archive ← field "archive" v >>= readSet
  let preservation ← field "preservation" v >>= readSet
  let raws ← getArray "raw_sources" v >>= allSome readSet
  pure ([source, destination, archive, preservation] ++ raws)

def outputs (certificate : Value) : Option (List SourceRefinement.Output) := do
  let rows ← getArray "outputs" certificate
  allSome (fun row => do
    let a ← getString "area" row >>= area
    let path ← getString "path" row
    let index ← getNat "object" row
    pure ⟨a, path, index⟩) rows

def occurrences (certificate : Value) : Option (List SourceRefinement.Occurrence) := do
  let sets ← readSets certificate
  let source ← sets[0]?
  let rows ← getArray "occurrences" certificate
  allSome (fun row => do
    let origin ← getString "origin" row
    let root ← getString "source_root" row
    let sourceSet ← if origin = "source" then
        if root = source.root then some 0 else none
      else if origin = "preservation" then do
        let candidates := (sets.drop 4).zipIdx |>.filter (fun entry => entry.1.root = root)
        match candidates with
        | [(_, index)] => some (index + 4)
        | _ => none
      else none
    let sourcePath ← getString "source_path" row
    let a ← getString "target_area" row >>= area
    let target ← getString "target" row
    let index ← getNat "object" row
    pure ⟨⟨sourceSet, sourcePath, a, target⟩, index⟩) rows

/-- Plan routes are decoded independently from the supplied raw plan. No
observed occurrence or output is consulted when constructing these routes. -/
def planBindings (plan : Value) : Option (List SourceRefinement.Binding) := do
  let input ← field "input" plan
  let raws ← getArray "raw_sources" input
  let rawBindings ← allSome (fun (raw, index) => do
    let digest ← getString "inventory_digest" raw
    let files ← field "files" raw >>= asObject
    pure ((sortBy (fun a b => a.1 ≤ b.1) files).map fun (path, _) =>
      SourceRefinement.Binding.mk (index + 4) path 1 ("raw/" ++ digest ++ "/" ++ path)))
    raws.zipIdx
  let mappings ← getArray "mappings" input
  let mapped ← allSome (fun mapping => do
    let origin ← getString "origin" mapping
    if origin = "source" then
      let source ← getString "source" mapping
      let a ← getString "target_area" mapping >>= area
      let target ← getString "target" mapping
      pure (SourceRefinement.Binding.mk 0 source a target)
    else none) mappings
  pure (rawBindings.flatten ++ mapped)

def targetLe (a b : SourceRefinement.Output) : Bool :=
  a.area < b.area || (a.area == b.area && a.path ≤ b.path)

/-- Independent complete expected-output construction from raw plan routes,
frozen source slots, retained archive, and explicit placeholder operations. -/
def expectedOutputs (plan certificate : Value) : Option (List SourceRefinement.Output) := do
  let sets ← readSets certificate
  let table ← objects certificate
  let archive ← sets[2]?
  let bindings ← planBindings plan
  let mapped ← allSome (fun binding => do
    let source ← sets[binding.sourceSet]?
    let index ← SourceRefinement.slot binding.sourcePath source.files
    pure (SourceRefinement.Output.mk binding.area binding.target index)) bindings
  let placeholders ← getArray "placeholders" plan
  let keepers ← allSome (fun placeholder => do
    let kind ← getString "kind" placeholder
    let path ← getString "path" placeholder
    if kind = "remove" then pure []
    else if kind = "write" ∨ kind = "existing" then do
      let index ← table.findIdx? (· = [])
      pure [SourceRefinement.Output.mk 0 path index]
    else none) placeholders
  let retained := archive.files.map fun (path, index) =>
    SourceRefinement.Output.mk 1 path index
  let result ← CertificateProducer.mergeOutputs (retained ++ mapped ++ keepers.flatten) []
  pure (sortBy targetLe result)

def actionCosts (plan : Value) : Option (List Nat) := do
  let actions ← getArray "actions" plan
  allSome (fun action => do let record ← field "file" action; getNat "bytes" record) actions

def shardIndices (plan : Value) : Option (List (List Nat)) := do
  let shards ← getArray "shards" plan
  allSome (fun shard => do getArray "action_indices" shard >>= allSome asNat) shards

def shardTotals (plan : Value) : Option (List Nat) := do
  let shards ← getArray "shards" plan
  allSome (getNat "bytes") shards

def shardProfile (plan : Value) : Option (Nat × Nat) := do
  let input ← field "input" plan
  pure (← getNat "max_files_per_shard" input, ← getNat "max_bytes_per_shard" input)

def exactKeys (keys : List String) (v : Value) : Bool :=
  match asObject v with
  | none => false
  | some entries => decide (entries.length = keys.length) &&
      entries.all (fun entry => keys.contains entry.1)

def lowerHex (s : String) : Bool :=
  s.toList.all (fun c => decide ((48 ≤ c.toNat ∧ c.toNat ≤ 57) ∨
    (97 ≤ c.toNat ∧ c.toNat ≤ 102)))

def certificateGrammar (certificate : Value) : Bool :=
  exactKeys ["schema", "plan_digest", "objects", "source", "destination", "archive",
    "preservation", "raw_sources", "occurrences", "outputs"] certificate &&
  match getArray "objects" certificate, getArray "raw_sources" certificate,
      getArray "occurrences" certificate, getArray "outputs" certificate with
  | some os, some rs, some cs, some xs =>
      os.all (fun row => exactKeys ["bytes"] row &&
        match getString "bytes" row with
        | some s => lowerHex s && decide (s.length % 2 = 0)
        | _ => false) &&
      (["source", "destination", "archive", "preservation"].all fun key =>
        match field key certificate with
        | some row => exactKeys ["root", "exists", "directories", "files"] row
        | _ => false) &&
      rs.all (exactKeys ["root", "exists", "directories", "files"]) &&
      cs.all (exactKeys ["origin", "source_root", "source_path", "target_area", "target", "object"]) &&
      xs.all (exactKeys ["area", "path", "object"])
  | _, _, _, _ => false

def planInventories (plan : Value) : Option (List Value) := do
  let input ← field "input" plan
  let main ← allSome (fun key => field key input) ["source", "destination", "archive", "preservation"]
  let raws ← getArray "raw_sources" input
  pure (main ++ raws)

def inventoryMatches (table : List SourceRefinement.Bytes) (planned : Value)
    (frozen : SourceRefinement.ReadSet) : Option Bool := do
  let root ← getString "root" planned
  let present ← field "exists" planned >>= asBool
  let dirs ← getArray "directories" planned >>= allSome asString
  let files ← field "files" planned >>= asObject
  let files := sortBy (fun a b => a.1 ≤ b.1) files
  let matching ← allSome (fun (path, record) => do
    let index ← SourceRefinement.slot path frozen.files
    let payload ← table[index]?
    let length ← getNat "bytes" record
    let digest ← getString "sha256" record
    pure (decide (payload.length = length) && decide (digest.length = 64) && lowerHex digest)) files
  pure (decide (root = frozen.root ∧ present = frozen.present ∧ dirs = frozen.directories ∧
    files.map Prod.fst = frozen.files.map Prod.fst) && matching.all id)

def inventoryCheck (plan : Value) (table : List SourceRefinement.Bytes)
    (sets : List SourceRefinement.ReadSet) : Option Bool := do
  let planned ← planInventories plan
  if planned.length = sets.length then
    let matching ← allSome (fun (p, s) => inventoryMatches table p s) (planned.zip sets)
    pure (matching.all id && sets.all (fun a => sets.all (fun b =>
      if a.root = b.root then decide (a = b) else true)))
  else none

/-- The retained raw object slot is checked against the raw inventory's SHA
label as a lookup name. It is literal slot equality, not digest injectivity. -/
def retentionCheck (plan : Value) (sets : List SourceRefinement.ReadSet) : Option Bool := do
  let input ← field "input" plan
  let raws ← getArray "raw_sources" input
  let retained ← sets[3]?
  let matching ← allSome (fun (raw, index) => do
    let frozen ← sets[index + 4]?
    let files ← field "files" raw >>= asObject
    let checks ← allSome (fun (path, record) => do
      let digest ← getString "sha256" record
      let rawSlot ← SourceRefinement.slot path frozen.files
      let retainedSlot ← SourceRefinement.slot digest retained.files
      pure (decide (rawSlot = retainedSlot))) files
    pure (checks.all id)) raws.zipIdx
  pure (matching.all id)

structure ReplayData where
  expectedObjects : List SourceRefinement.Bytes
  observedObjects : List SourceRefinement.Bytes
  expected : List SourceRefinement.ReadSet
  observed : List SourceRefinement.ReadSet
  bindings : List SourceRefinement.Binding
  occurrences : List SourceRefinement.Occurrence
  expectedOutputs : List SourceRefinement.Output
  outputs : List SourceRefinement.Output
  costs : List Nat
  shards : List (List Nat)
  totals : List Nat
  files : Nat
  budget : Nat
  deriving DecidableEq

def contextCheck (plan expected observed : Value) : Option Unit := do
  let ps ← getString "schema" plan
  let es ← getString "schema" expected
  let os ← getString "schema" observed
  let pd ← getString "plan_digest" plan
  let ed ← getString "plan_digest" expected
  let od ← getString "plan_digest" observed
  if ps = "noe.taxonomy-integration-plan/1" ∧
      es = "noe.taxonomy-byte-certificate/1" ∧ os = es ∧ pd = ed ∧ pd = od then
    some () else none

/-- This projection reads every mathematical replay input from decoded raw JSON.
It does not use generated Python terms as its input or expected answer. -/
def project (plan expected observed : Value) : Option ReplayData := do
  let _ ← contextCheck plan expected observed
  let eo ← objects expected
  let oo ← objects observed
  let es ← readSets expected
  let os ← readSets observed
  let bs ← planBindings plan
  let cs ← occurrences observed
  let ex ← expectedOutputs plan expected
  let ox ← outputs observed
  let costs ← actionCosts plan
  let shards ← shardIndices plan
  let totals ← shardTotals plan
  let (files, budget) ← shardProfile plan
  pure ⟨eo, oo, es, os, bs, cs, ex, ox, costs, shards, totals, files, budget⟩

def ReplayData.accepts (data : ReplayData) : Bool :=
  SourceRefinement.planCertificateCheck data.expectedObjects data.observedObjects
    data.expected data.observed data.bindings data.occurrences data.expectedOutputs data.outputs

def guardCheck (plan expected observed : Value) (data : ReplayData) : Bool :=
  certificateGrammar expected && certificateGrammar observed &&
  decide (inventoryCheck plan data.expectedObjects data.expected = some true) &&
  decide (retentionCheck plan data.expected = some true)

def rawCheck (plan expected observed : Raw) (data : ReplayData) : Bool :=
  match decode plan, decode expected, decode observed with
  | some p, some e, some o => decide (project p e o = some data) && guardCheck p e o data && data.accepts
  | _, _, _ => false

theorem rawCheck_spec (plan expected observed : Raw) (data : ReplayData) :
    rawCheck plan expected observed data = true ↔
      ∃ p e o, decode plan = some p ∧ decode expected = some e ∧
        decode observed = some o ∧ project p e o = some data ∧ guardCheck p e o data = true ∧ data.accepts = true := by
  unfold rawCheck
  split
  · rename_i p e o hp he ho
    simp only [Bool.and_eq_true, decide_eq_true_eq]
    constructor
    · intro ⟨⟨projected, guarded⟩, accepted⟩
      exact ⟨p, e, o, hp, he, ho, projected, guarded, accepted⟩
    · rintro ⟨p', e', o', hp', he', ho', projected, guarded, accepted⟩
      have hpp : p' = p := Option.some.inj (hp'.symm.trans hp)
      have hee : e' = e := Option.some.inj (he'.symm.trans he)
      have hoo : o' = o := Option.some.inj (ho'.symm.trans ho)
      subst p'; subst e'; subst o'
      exact ⟨⟨projected, guarded⟩, accepted⟩
  · rename_i failure
    simp only [Bool.false_eq_true, false_iff]
    rintro ⟨p, e, o, hp, he, ho, _, _, _⟩
    exact failure p e o hp he ho

/-- The Python-generated data may be arbitrary. Acceptance establishes that
it is the independent projection of the uniquely decoded literal input bytes. -/
theorem rawCheck_projection_exact {plan expected observed : Raw} {data : ReplayData}
    (accepted : rawCheck plan expected observed data = true) :
    ∃ p e o, decode plan = some p ∧ decode expected = some e ∧
      decode observed = some o ∧ project p e o = some data := by
  obtain ⟨p, e, o, hp, he, ho, hd, _, _⟩ := (rawCheck_spec _ _ _ _).mp accepted
  exact ⟨p, e, o, hp, he, ho, hd⟩

theorem rawCheck_literal_decode {plan expected observed : Raw} {data : ReplayData}
    (accepted : rawCheck plan expected observed data = true) :
    ∃ entries result,
      SourceRefinement.realize data.expectedObjects data.expected data.bindings = some entries ∧
      SourceRefinement.renderOccurrences data.observedObjects data.occurrences = some entries ∧
      SourceRefinement.renderOutputs data.observedObjects data.outputs = some result ∧
      OccurrencePlans.decode result (OccurrencePlans.references entries) = some entries := by
  obtain ⟨_, _, _, _, _, _, _, _, check⟩ := (rawCheck_spec _ _ _ _).mp accepted
  exact SourceRefinement.plan_certificate_exact_decode check

theorem rawCheck_inventory_exact {plan expected observed : Raw} {data : ReplayData}
    (accepted : rawCheck plan expected observed data = true) :
    data.expectedObjects = data.observedObjects ∧ data.expectedOutputs = data.outputs ∧
      data.expected = data.observed := by
  obtain ⟨_, _, _, _, _, _, _, _, check⟩ := (rawCheck_spec _ _ _ _).mp accepted
  have facts := (SourceRefinement.planCertificateCheck_spec _ _ _ _ _ _ _ _).mp check
  exact ⟨facts.1, facts.2.1, SourceRefinement.accepted_readset_exact facts.2.2.2⟩

/-- A checker-produced witness is a finite equality about the exact decoded
bytes. The Python JSON parser is absent from this theorem's premises. -/
theorem decoded_reification_exact {raw : Raw} {expected actual : Value}
    (decoded : decode raw = some expected) (reified : decode raw = some actual) :
    expected = actual := Option.some.inj (decoded.symm.trans reified)

theorem decoded_objects_exact {raw : Raw} {tree : Value} {table}
    (decoded : decode raw = some tree) (projected : objects tree = some table) :
    (decode raw >>= objects) = some table := by rw [decoded]; exact projected

theorem decoded_readSets_exact {raw : Raw} {tree : Value} {sets}
    (decoded : decode raw = some tree) (projected : readSets tree = some sets) :
    (decode raw >>= readSets) = some sets := by rw [decoded]; exact projected

theorem decoded_occurrences_exact {raw : Raw} {tree : Value} {rows}
    (decoded : decode raw = some tree) (projected : occurrences tree = some rows) :
    (decode raw >>= occurrences) = some rows := by rw [decoded]; exact projected

theorem decoded_outputs_exact {raw : Raw} {tree : Value} {rows}
    (decoded : decode raw = some tree) (projected : outputs tree = some rows) :
    (decode raw >>= outputs) = some rows := by rw [decoded]; exact projected

theorem natural_is_not_boolean (b : Bool) : asNat (.boolean b) = none := rfl

theorem same_raw_unique_decode {raw : Raw} {a b : Value}
    (ha : decode raw = some a) (hb : decode raw = some b) : a = b :=
  Option.some.inj (ha.symm.trans hb)

theorem array_order_and_multiplicity (xs : List Value) : asArray (.array xs) = some xs := by
  induction xs with
  | nil => rfl
  | cons x xs ih => simp [Value.array, asArray, ih]

theorem object_order_and_multiplicity (xs : List (String × Value)) :
    asObject (.object xs) = some xs := by
  induction xs with
  | nil => rfl
  | cons x xs ih => simp [Value.object, asObject, ih]

theorem string_codepoints_exact (s : String) : asString (.string s) = some s := rfl

def ascii (s : String) : Raw := s.toList.map Char.toNat

theorem duplicate_decoded_key_rejected :
    decode (ascii "{\"a\":0,\"\\u0061\":1}") = none := by decide +kernel

theorem array_trailing_comma_rejected : decode (ascii "[0,]") = none := by decide +kernel

theorem object_trailing_comma_rejected : decode (ascii "{\"a\":0,}") = none := by decide +kernel

theorem leading_zero_rejected : decode (ascii "01") = none := by decide +kernel

theorem u64_overflow_rejected : decode (ascii "18446744073709551616") = none := by decide +kernel

theorem u64_maximum_decodes : decode (ascii "18446744073709551615") =
    some (.natural 18446744073709551615) := by decide +kernel

theorem boolean_natural_distinct : decode (ascii "true") ≠ decode (ascii "1") := by decide +kernel

theorem utf8_overlong_rejected : decode [34, 192, 175, 34] = none := by decide +kernel

theorem utf8_surrogate_rejected : decode [34, 237, 160, 128, 34] = none := by decide +kernel

theorem lone_escape_surrogate_rejected : decode (ascii "\"\\ud800\"") = none := by decide +kernel

theorem surrogate_pair_decodes : decode (ascii "\"\\ud83d\\ude00\"") =
    some (.string (String.ofList [Char.ofNat 128512])) := by decide +kernel

theorem utf8_non_bmp_decodes : decode [34, 240, 159, 152, 128, 34] =
    some (.string (String.ofList [Char.ofNat 128512])) := by decide +kernel

theorem unicode_spelling_not_normalized : decode [34, 195, 169, 34] ≠
    decode [34, 101, 204, 129, 34] := by decide +kernel

theorem decoded_array_order_multiplicity : decode (ascii "[0,0,1]") =
    some (.array [.natural 0, .natural 0, .natural 1]) := by decide +kernel

end GRWTSK.FrontendCorrespondence
