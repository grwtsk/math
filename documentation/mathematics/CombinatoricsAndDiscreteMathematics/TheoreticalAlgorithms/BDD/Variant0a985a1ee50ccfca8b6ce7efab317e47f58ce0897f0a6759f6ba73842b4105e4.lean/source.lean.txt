-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BDD.Variant406b007ec87dc1d5dd69e10e5dddf32975166f185037cb77730e18b20819e3cb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"406b007ec87dc1d5dd69e10e5dddf32975166f185037cb77730e18b20819e3cb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.BDD.Variant406b007ec87dc1d5dd69e10e5dddf32975166f185037cb77730e18b20819e3cb","mathematical_subject":"Computation.DataStructures","original_sha256":"406b007ec87dc1d5dd69e10e5dddf32975166f185037cb77730e18b20819e3cb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Boolean/BDD.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Boolean.Formula.Enumeration


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BDD.Variant406b007ec87dc1d5dd69e10e5dddf32975166f185037cb77730e18b20819e3cb

namespace Boolean

universe u

/-- Binary decision diagrams over variables of type `α`. -/
inductive BDD (α : Type u) : Type u where
  | leaf : Bool → BDD α
  | branch : α → BDD α → BDD α → BDD α
deriving Repr, DecidableEq

namespace BDD

/-- Evaluate a decision diagram under a valuation. -/
def eval (ν : Valuation α) : BDD α → Bool
  | .leaf b => b
  | .branch a low high =>
      match ν a with
      | false => eval ν low
      | true => eval ν high

/-- Render a decision diagram as a formula. -/
def toFormula : BDD α → Formula α
  | .leaf b => Formula.const b
  | .branch a low high =>
      .disj
        (.conj (.neg (.var a)) (toFormula low))
        (.conj (.var a) (toFormula high))

/-- Semantic equivalence of decision diagrams. -/
def Equivalent (left right : BDD α) : Prop :=
  ∀ ν : Valuation α, eval ν left = eval ν right

/-- A diagram is ordered below a rank bound. -/
def OrderedBelow (rank : α → Nat) : Nat → BDD α → Prop
  | _, .leaf _ => True
  | bound, .branch a low high =>
      bound < rank a ∧
        OrderedBelow rank (rank a) low ∧
        OrderedBelow rank (rank a) high

/-- A diagram respects the supplied variable order. -/
def OrderedBy (rank : α → Nat) : BDD α → Prop
  | .leaf _ => True
  | .branch a low high =>
      OrderedBelow rank (rank a) low ∧
        OrderedBelow rank (rank a) high

/-- No branch has syntactically identical children. -/
def Reduced : BDD α → Prop
  | .leaf _ => True
  | .branch _ low high => low ≠ high ∧ Reduced low ∧ Reduced high

@[simp] theorem eval_toFormula
    (ν : Valuation α)
    (d : BDD α) :
    Formula.eval ν (toFormula d) = eval ν d := by
  induction d with
  | leaf b =>
      cases b <;> rfl
  | branch a low high ihLow ihHigh =>
      cases h : ν a <;>
        simp [toFormula, eval, Formula.eval, h, ihLow, ihHigh]

theorem equivalent_refl (d : BDD α) :
    Equivalent d d := by
  intro ν
  rfl

theorem equivalent_symm {left right : BDD α}
    (h : Equivalent left right) :
    Equivalent right left := by
  intro ν
  exact (h ν).symm

theorem equivalent_trans {left middle right : BDD α}
    (hlm : Equivalent left middle)
    (hmr : Equivalent middle right) :
    Equivalent left right := by
  intro ν
  exact (hlm ν).trans (hmr ν)

/-- Canonical ROBDD construction for a fixed variable sequence. -/
def canonical [DecidableEq α] :
    List α → (Valuation α → Bool) → BDD α
  | [], f => .leaf (f (fun _ => false))
  | a :: vars, f =>
      let low :=
        canonical vars (fun ν => f (Valuation.set ν a false))
      let high :=
        canonical vars (fun ν => f (Valuation.set ν a true))
      if low = high then low else .branch a low high

/-- A BDD is the canonical reduced ordered representative for its semantics. -/
def ReducedOrdered [DecidableEq α]
    (vars : List α)
    (d : BDD α) :
    Prop :=
  d = canonical vars (fun ν => BDD.eval ν d)

/-- A BDD is the canonical reduced ordered representative for a function. -/
def ReducedOrderedFor [DecidableEq α]
    (vars : List α)
    (f : Valuation α → Bool)
    (d : BDD α) :
    Prop :=
  d = canonical vars f

theorem canonical_ext [DecidableEq α]
    (vars : List α)
    {f g : Valuation α → Bool}
    (h : ∀ ν, f ν = g ν) :
    canonical vars f = canonical vars g := by
  induction vars generalizing f g with
  | nil =>
      simp [canonical, h]
  | cons a vars ih =>
      have hlow :
          canonical vars (fun ν => f (Valuation.set ν a false)) =
            canonical vars (fun ν => g (Valuation.set ν a false)) := by
        apply ih
        intro ν
        exact h (Valuation.set ν a false)
      have hhigh :
          canonical vars (fun ν => f (Valuation.set ν a true)) =
            canonical vars (fun ν => g (Valuation.set ν a true)) := by
        apply ih
        intro ν
        exact h (Valuation.set ν a true)
      simp [canonical, hlow, hhigh]

theorem canonical_reduced [DecidableEq α]
    (vars : List α)
    (f : Valuation α → Bool) :
    Reduced (canonical vars f) := by
  induction vars generalizing f with
  | nil =>
      simp [canonical, Reduced]
  | cons a vars ih =>
      let low :=
        canonical vars (fun ν => f (Valuation.set ν a false))
      let high :=
        canonical vars (fun ν => f (Valuation.set ν a true))
      have hlow : Reduced low := by
        simpa [low] using ih (fun ν => f (Valuation.set ν a false))
      have hhigh : Reduced high := by
        simpa [high] using ih (fun ν => f (Valuation.set ν a true))
      by_cases h : low = high
      · simpa [canonical, low, high, h] using hlow
      · simp [canonical, low, high, h, Reduced, hlow, hhigh]

theorem dependsOn_set_tail [DecidableEq α]
    {vars : List α}
    {f : Valuation α → Bool}
    (a : α)
    (b : Bool)
    (h : Formula.DependsOn (a :: vars) f) :
    Formula.DependsOn vars (fun ν => f (Valuation.set ν a b)) := by
  intro ν μ hagree
  apply h
  intro x hx
  simp at hx
  rcases hx with rfl | hmem
  ·
      simp [Valuation.set]
  ·
      by_cases hxa : x = a
      · simp [Valuation.set, hxa]
      · simp [Valuation.set, hxa, hagree x hmem]

theorem dependsOn_set_eq [DecidableEq α]
    {vars : List α}
    {f : Valuation α → Bool}
    (a : α)
    (b : Bool)
    (ν : Valuation α)
    (h : Formula.DependsOn (a :: vars) f)
    (hv : ν a = b) :
    f (Valuation.set ν a b) = f ν := by
  apply h
  intro x hx
  simp at hx
  rcases hx with rfl | hmem
  ·
      simp [Valuation.set, hv]
  ·
      by_cases hxa : x = a
      · simp [Valuation.set, hxa, hv]
      · simp [Valuation.set, hxa]

theorem eval_canonical [DecidableEq α]
    (vars : List α)
    (f : Valuation α → Bool)
    (h : Formula.DependsOn vars f)
    (ν : Valuation α) :
    BDD.eval ν (canonical vars f) = f ν := by
  induction vars generalizing f ν with
  | nil =>
      have hconst : f (fun _ => false) = f ν := by
        apply h
        intro a ha
        cases ha
      change f (fun _ => false) = f ν
      exact hconst
  | cons a vars ih =>
      let low :=
        canonical vars (fun μ => f (Valuation.set μ a false))
      let high :=
        canonical vars (fun μ => f (Valuation.set μ a true))
      have hlow :
          BDD.eval ν low = f (Valuation.set ν a false) := by
        simpa [low] using
          ih
            (fun μ => f (Valuation.set μ a false))
            (dependsOn_set_tail a false h)
            ν
      have hhigh :
          BDD.eval ν high = f (Valuation.set ν a true) := by
        simpa [high] using
          ih
            (fun μ => f (Valuation.set μ a true))
            (dependsOn_set_tail a true h)
            ν
      by_cases heq : low = high
      · have hcanon : canonical (a :: vars) f = low := by
          simp [canonical, low, high, heq]
        rw [hcanon]
        cases hv : ν a
        · have hset := dependsOn_set_eq a false ν h hv
          exact hlow.trans hset
        · have hset := dependsOn_set_eq a true ν h hv
          rw [heq]
          exact hhigh.trans hset
      · have hcanon : canonical (a :: vars) f = .branch a low high := by
          simp [canonical, low, high, heq]
        rw [hcanon]
        cases hv : ν a
        · have hset := dependsOn_set_eq a false ν h hv
          simp [BDD.eval, hv]
          exact hlow.trans hset
        · have hset := dependsOn_set_eq a true ν h hv
          simp [BDD.eval, hv]
          exact hhigh.trans hset

/-- Extensional canonicity for fixed-order reduced ordered BDDs. -/
theorem reducedOrdered_extensional [DecidableEq α]
    {vars : List α}
    {left right : BDD α}
    (hleft : ReducedOrdered vars left)
    (hright : ReducedOrdered vars right)
    (h : ∀ ν : Valuation α, BDD.eval ν left = BDD.eval ν right) :
    left = right := by
  rw [hleft, hright]
  exact canonical_ext vars h

/-- Equivalent fixed-order reduced ordered BDDs are syntactically equal. -/
theorem reducedOrdered_eq_of_equivalent [DecidableEq α]
    {vars : List α}
    {left right : BDD α}
    (hleft : ReducedOrdered vars left)
    (hright : ReducedOrdered vars right)
    (h : Equivalent left right) :
    left = right :=
  reducedOrdered_extensional hleft hright h

/-- There is a unique fixed-order reduced ordered BDD for a Boolean function. -/
theorem reducedOrdered_unique [DecidableEq α]
    {vars : List α}
    {f : Valuation α → Bool}
    {left right : BDD α}
    (hleft : ReducedOrderedFor vars f left)
    (hright : ReducedOrderedFor vars f right) :
    left = right := by
  rw [hleft, hright]

/-- A branch key recorded by the unique-table builder. -/
structure NodeKey (α : Type u) where
  var : α
  low : BDD α
  high : BDD α
deriving Repr, DecidableEq

/-- A finite unique table for branch keys. -/
abbrev UniqueTable (α : Type u) :=
  List (NodeKey α)

/-- Test whether a key records a given branch triple. -/
def NodeKey.matches [DecidableEq α]
    (a : α)
    (low high : BDD α)
    (key : NodeKey α) :
    Bool :=
  decide (key.var = a ∧ key.low = low ∧ key.high = high)

/-- Search a unique table for a branch triple. -/
def UniqueTable.contains [DecidableEq α]
    (a : α)
    (low high : BDD α) :
    UniqueTable α → Bool
  | [] => false
  | key :: keys =>
      NodeKey.matches a low high key ||
        UniqueTable.contains a low high keys

/--
Construct a reduced branch and update the unique table.

If both children are equal, the branch is eliminated. Otherwise the branch key
is recorded when it has not already appeared in the table.
-/
def mkNode [DecidableEq α]
    (a : α)
    (low high : BDD α)
    (table : UniqueTable α) :
    BDD α × UniqueTable α :=
  if low = high then
    (low, table)
  else if UniqueTable.contains a low high table then
    (.branch a low high, table)
  else
    (.branch a low high, { var := a, low := low, high := high } :: table)

@[simp] theorem eval_mkNode [DecidableEq α]
    (ν : Valuation α)
    (a : α)
    (low high : BDD α)
    (table : UniqueTable α) :
    BDD.eval ν (mkNode a low high table).1 =
      match ν a with
      | false => BDD.eval ν low
      | true => BDD.eval ν high := by
  by_cases h : low = high
  · cases ν a <;> simp [mkNode, h]
  · cases hc : UniqueTable.contains a low high table <;>
      cases hv : ν a <;>
      simp [mkNode, h, hc, hv, BDD.eval]

/-- Reduce a BDD by eliminating branches with equal children. -/
def reduce [DecidableEq α] : BDD α → BDD α
  | .leaf b => .leaf b
  | .branch a low high =>
      let low' := reduce low
      let high' := reduce high
      if low' = high' then low' else .branch a low' high'

@[simp] theorem eval_reduce [DecidableEq α]
    (ν : Valuation α)
    (d : BDD α) :
    BDD.eval ν (reduce d) = BDD.eval ν d := by
  induction d with
  | leaf b => rfl
  | branch a low high ihLow ihHigh =>
      by_cases h : reduce low = reduce high
      · have heq : BDD.eval ν high = BDD.eval ν low := by
          rw [← ihHigh, ← ihLow, h]
        cases hv : ν a <;> simp [reduce, h, hv, BDD.eval, ihHigh, heq]
      · cases hv : ν a <;> simp [reduce, h, hv, BDD.eval, ihLow, ihHigh]

theorem reduced_reduce [DecidableEq α]
    (d : BDD α) :
    Reduced (reduce d) := by
  induction d with
  | leaf b => trivial
  | branch a low high ihLow ihHigh =>
      by_cases h : reduce low = reduce high
      · simpa [reduce, h] using ihHigh
      · simp [reduce, h, Reduced, ihLow, ihHigh]

/-- Reduce a BDD while threading a unique table of branch keys. -/
def reduceWithTable [DecidableEq α] :
    BDD α → UniqueTable α → BDD α × UniqueTable α
  | .leaf b, table => (.leaf b, table)
  | .branch a low high, table =>
      let lowResult := reduceWithTable low table
      let highResult := reduceWithTable high lowResult.2
      mkNode a lowResult.1 highResult.1 highResult.2

@[simp] theorem eval_reduceWithTable [DecidableEq α]
    (ν : Valuation α)
    (d : BDD α)
    (table : UniqueTable α) :
    BDD.eval ν (reduceWithTable d table).1 = BDD.eval ν d := by
  induction d generalizing table with
  | leaf b => rfl
  | branch a low high ihLow ihHigh =>
      let lowResult := reduceWithTable low table
      let highResult := reduceWithTable high lowResult.2
      have hLow : BDD.eval ν lowResult.1 = BDD.eval ν low := by
        simpa [lowResult] using ihLow table
      have hHigh : BDD.eval ν highResult.1 = BDD.eval ν high := by
        simpa [highResult, lowResult] using ihHigh lowResult.2
      cases hv : ν a <;>
        simp [reduceWithTable, lowResult, highResult, BDD.eval, hv, hLow, hHigh]

/-- Reduce a BDD from an empty unique table. -/
def reduceUnique [DecidableEq α] (d : BDD α) : BDD α :=
  (reduceWithTable d []).1

@[simp] theorem eval_reduceUnique [DecidableEq α]
    (ν : Valuation α)
    (d : BDD α) :
    BDD.eval ν (reduceUnique d) = BDD.eval ν d := by
  simp [reduceUnique]

/-- Stable identifiers for shared BDD DAG nodes. -/
abbrev Pointer :=
  Nat

/-- A reference into a shared BDD DAG, or an immediate Boolean leaf. -/
inductive Ref where
  | leaf : Bool → Ref
  | node : Pointer → Ref
deriving Repr, DecidableEq

/-- One shared decision node addressed by a pointer. -/
structure DagNode (α : Type u) where
  var : α
  low : Ref
  high : Ref
deriving Repr, DecidableEq

/-- A pointer-identified BDD DAG. Pointer `i` addresses `nodes[i]`. -/
structure Dag (α : Type u) where
  nodes : List (DagNode α)
deriving Repr, DecidableEq

namespace Dag

private def getNode? : List (DagNode α) → Nat → Option (DagNode α)
  | [], _ => none
  | node :: _, 0 => some node
  | _ :: nodes, ptr + 1 => getNode? nodes ptr

/-- The next fresh pointer for appending a node. -/
def fresh (dag : Dag α) : Pointer :=
  dag.nodes.length

/-- Append a shared decision node and return its pointer. -/
def push
    (dag : Dag α)
    (var : α)
    (low high : Ref) :
    Pointer × Dag α :=
  let ptr := fresh dag
  (ptr, { nodes := dag.nodes ++ [{ var := var, low := low, high := high }] })

/-- Read a shared node by pointer. -/
def get? (dag : Dag α) (ptr : Pointer) : Option (DagNode α) :=
  getNode? dag.nodes ptr

/--
Evaluate a pointer reference with an explicit fuel bound. This makes evaluation
total even for malformed cyclic references supplied by external consumers.
-/
def evalRef
    (dag : Dag α)
    (ν : Valuation α) :
    Nat → Ref → Option Bool
  | _, .leaf b => some b
  | 0, .node _ => none
  | fuel + 1, .node ptr =>
      match get? dag ptr with
      | none => none
      | some node =>
          match ν node.var with
          | false => evalRef dag ν fuel node.low
          | true => evalRef dag ν fuel node.high

/-- Evaluate a reference with enough fuel for every stored node. -/
def eval (dag : Dag α) (ν : Valuation α) (root : Ref) : Option Bool :=
  evalRef dag ν (dag.nodes.length + 1) root

/-- Version tag for the stable DAG serialization record. -/
def serializationVersion : Nat :=
  1

/-- Serialized reference: either an immediate leaf or a pointer into the node list. -/
inductive SerializedRef where
  | leaf : Bool → SerializedRef
  | node : Pointer → SerializedRef
deriving Repr, DecidableEq

/-- Serialized decision node with an externally encoded variable label. -/
structure SerializedNode (β : Type v) where
  var : β
  low : SerializedRef
  high : SerializedRef
deriving Repr, DecidableEq

/--
Versioned serialization of a pointer-identified DAG.

The variable payload is parameterized so downstream consumers can choose a
stable label type such as `String`, `Nat`, or an application-specific symbol id.
-/
structure Serialized (β : Type v) where
  version : Nat
  nodes : List (SerializedNode β)
deriving Repr, DecidableEq

/-- A rooted serialized DAG, useful when persistence must retain the entry reference. -/
structure Snapshot (β : Type v) where
  version : Nat
  root : SerializedRef
  nodes : List (SerializedNode β)
deriving Repr, DecidableEq

/-- Serialize a DAG reference. -/
def serializeRef : Ref → SerializedRef
  | .leaf b => .leaf b
  | .node ptr => .node ptr

/-- Deserialize a DAG reference. -/
def deserializeRef : SerializedRef → Ref
  | .leaf b => .leaf b
  | .node ptr => .node ptr

@[simp] theorem deserializeRef_serializeRef
    (ref : Ref) :
    deserializeRef (serializeRef ref) = ref := by
  cases ref <;> rfl

@[simp] theorem serializeRef_deserializeRef
    (ref : SerializedRef) :
    serializeRef (deserializeRef ref) = ref := by
  cases ref <;> rfl

/-- Serialize one DAG node using an external variable-label encoder. -/
def serializeNodeWith
    (encode : α → β)
    (node : DagNode α) :
    SerializedNode β where
  var := encode node.var
  low := serializeRef node.low
  high := serializeRef node.high

/-- Deserialize one DAG node using an external variable-label decoder. -/
def deserializeNodeWith
    (decode : β → α)
    (node : SerializedNode β) :
    DagNode α where
  var := decode node.var
  low := deserializeRef node.low
  high := deserializeRef node.high

@[simp] theorem deserializeNodeWith_serializeNodeWith
    (encode : α → β)
    (decode : β → α)
    (h : ∀ a : α, decode (encode a) = a)
    (node : DagNode α) :
    deserializeNodeWith decode (serializeNodeWith encode node) = node := by
  cases node
  simp [serializeNodeWith, deserializeNodeWith, h]

/-- Serialize a pointer-identified DAG using an external variable-label encoder. -/
def serializeWith
    (encode : α → β)
    (dag : Dag α) :
    Serialized β where
  version := serializationVersion
  nodes := dag.nodes.map (serializeNodeWith encode)

/-- Deserialize a DAG using an external variable-label decoder. -/
def deserializeWith
    (decode : β → α)
    (serial : Serialized β) :
    Dag α where
  nodes := serial.nodes.map (deserializeNodeWith decode)

theorem deserializeWith_serializeWith
    (encode : α → β)
    (decode : β → α)
    (h : ∀ a : α, decode (encode a) = a)
    (dag : Dag α) :
    deserializeWith decode (serializeWith encode dag) = dag := by
  cases dag with
  | mk nodes =>
      have hnodes :
          List.map (deserializeNodeWith decode ∘ serializeNodeWith encode) nodes =
            nodes := by
        induction nodes with
        | nil => rfl
        | cons node nodes ih =>
            simp [ih, deserializeNodeWith_serializeNodeWith, h]
      simp [serializeWith, deserializeWith, hnodes]

/-- Serialize a DAG together with a root reference. -/
def serializeSnapshotWith
    (encode : α → β)
    (dag : Dag α)
    (root : Ref) :
    Snapshot β where
  version := serializationVersion
  root := serializeRef root
  nodes := dag.nodes.map (serializeNodeWith encode)

/-- Deserialize a rooted DAG snapshot. -/
def deserializeSnapshotWith
    (decode : β → α)
    (snapshot : Snapshot β) :
    Dag α × Ref :=
  ({ nodes := snapshot.nodes.map (deserializeNodeWith decode) },
    deserializeRef snapshot.root)

theorem deserializeSnapshotWith_serializeSnapshotWith
    (encode : α → β)
    (decode : β → α)
    (h : ∀ a : α, decode (encode a) = a)
    (dag : Dag α)
    (root : Ref) :
    deserializeSnapshotWith decode (serializeSnapshotWith encode dag root) =
      (dag, root) := by
  cases dag with
  | mk nodes =>
      have hnodes :
          List.map (deserializeNodeWith decode ∘ serializeNodeWith encode) nodes =
            nodes := by
        induction nodes with
        | nil => rfl
        | cons node nodes ih =>
            simp [ih, deserializeNodeWith_serializeNodeWith, h]
      cases root <;>
        simp [serializeSnapshotWith, deserializeSnapshotWith, hnodes]

end Dag

end BDD

end Boolean
