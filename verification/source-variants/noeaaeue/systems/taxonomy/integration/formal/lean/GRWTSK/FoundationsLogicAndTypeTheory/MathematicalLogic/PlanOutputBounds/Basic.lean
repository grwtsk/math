import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PlanResources.Basic

/-!
Final output-map admission counts destination paths, not action occurrences or
shared payload slots. The finite map model has unique keys and last-write
semantics. Its enumeration order is immaterial to the exact natural-number sum.
Successful full-record publication planning projects to the same cost maps;
full-record collision acceptance is a separate condition, not hash injectivity.
-/
namespace GRWTSK.PlanOutputBounds

abbrev Files (Value : Type) := List (String × Value)

def lookup {Value : Type} (path : String) : Files Value → Option Value
  | [] => none
  | row :: rest => if path = row.1 then some row.2 else lookup path rest

def overwrite {Value : Type} (files : Files Value) (path : String) (value : Value) : Files Value :=
  (path, value) :: files.filter (fun row => row.1 != path)

def unique {Value : Type} (files : Files Value) : Prop := (files.map Prod.fst).Nodup

theorem lookup_overwrite_same {Value : Type} (files : Files Value) (path : String) (value : Value) :
    lookup path (overwrite files path value) = some value := by
  simp [overwrite, lookup]

theorem lookup_filter_other {Value : Type} (files : Files Value) (path query : String)
    (different : query ≠ path) :
    lookup query (files.filter (fun row => row.1 != path)) = lookup query files := by
  induction files with
  | nil => rfl
  | cons row rest ih =>
      by_cases equal : row.1 = path
      · simp [equal, lookup, different, ih]
      · simp [equal, lookup, ih]

theorem lookup_overwrite_other {Value : Type} (files : Files Value) (path query : String)
    (value : Value) (different : query ≠ path) :
    lookup query (overwrite files path value) = lookup query files := by
  simp only [overwrite, lookup, different, ↓reduceIte]
  exact lookup_filter_other files path query different

theorem overwrite_lookup {Value : Type} (files : Files Value) (path query : String) (value : Value) :
    lookup query (overwrite files path value) =
      if query = path then some value else lookup query files := by
  by_cases equal : query = path
  · subst query; simp [lookup_overwrite_same]
  · simp [equal, lookup_overwrite_other files path query value equal]

theorem overwrite_unique {Value : Type} (files : Files Value) (path : String) (value : Value)
    (valid : unique files) : unique (overwrite files path value) := by
  unfold unique overwrite at *
  simp only [List.map_cons, List.nodup_cons]
  constructor
  · intro member
    obtain ⟨row, present, key⟩ := List.mem_map.mp member
    have different := (List.mem_filter.mp present).2
    simp only [bne_iff_ne, ne_eq] at different
    exact different key
  · have sub : (files.filter (fun row => row.1 != path)).Sublist files := List.filter_sublist
    exact valid.sublist (sub.map Prod.fst)

def lower {Value Weight : Type} (weight : Value → Weight) (files : Files Value) : Files Weight :=
  files.map fun row => (row.1, weight row.2)

theorem lower_keys {Value Weight : Type} (weight : Value → Weight) (files : Files Value) :
    (lower weight files).map Prod.fst = files.map Prod.fst := by
  simp [lower, List.map_map, Function.comp_def]

theorem lower_length {Value Weight : Type} (weight : Value → Weight) (files : Files Value) :
    (lower weight files).length = files.length := by simp [lower]

theorem lower_lookup {Value Weight : Type} (weight : Value → Weight) (files : Files Value)
    (path : String) : lookup path (lower weight files) = (lookup path files).map weight := by
  induction files with
  | nil => rfl
  | cons row rest ih =>
      change lookup path ((row.1, weight row.2) :: lower weight rest) =
        (lookup path (row :: rest)).map weight
      by_cases equal : path = row.1 <;> simp [lookup, equal, ih]

theorem lower_unique {Value Weight : Type} (weight : Value → Weight) (files : Files Value)
    (valid : unique files) : unique (lower weight files) := by
  simpa only [unique, lower_keys] using valid

theorem lower_overwrite {Value Weight : Type} (weight : Value → Weight) (files : Files Value)
    (path : String) (value : Value) :
    lower weight (overwrite files path value) = overwrite (lower weight files) path (weight value) := by
  unfold lower overwrite
  simp only [List.map_cons]
  congr 1
  induction files with
  | nil => rfl
  | cons row rest ih =>
      by_cases equal : row.1 = path <;> simp [equal, ih]

theorem overwrite_same_path {Value : Type} (files : Files Value) (path : String)
    (first second : Value) :
    overwrite (overwrite files path first) path second = overwrite files path second := by
  simp [overwrite, List.filter_filter]

theorem overwrite_idempotent {Value : Type} (files : Files Value) (path : String) (value : Value) :
    overwrite (overwrite files path value) path value = overwrite files path value :=
  overwrite_same_path _ _ _ _

inductive Area where
  | taxonomy | archive
  deriving DecidableEq, BEq

inductive FileKind where
  | lean | gitkeep | sidecar
  deriving DecidableEq

structure Record where
  label : String
  bytes : Nat
  kind : FileKind
  deriving DecidableEq

def emptyRecord : Record :=
  ⟨"e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855", 0, .gitkeep⟩

structure Action (Value : Type) where
  area : Area
  path : String
  value : Value
  deriving DecidableEq

inductive PlaceholderKind where
  | write | existing | remove
  deriving DecidableEq

structure Placeholder where
  path : String
  kind : PlaceholderKind
  deriving DecidableEq

def actionFold {Value : Type} (area : Area) : List (Action Value) → Files Value → Files Value
  | [], files => files
  | action :: rest, files => actionFold area rest
      (if action.area = area then overwrite files action.path action.value else files)

def placeholderFold {Value : Type} (empty : Value) : List Placeholder → Files Value → Files Value
  | [], files => files
  | placeholder :: rest, files => placeholderFold empty rest
      (if placeholder.kind = .remove then files else overwrite files placeholder.path empty)

theorem actionFold_unique {Value : Type} (area : Area) (actions : List (Action Value))
    (files : Files Value) (valid : unique files) : unique (actionFold area actions files) := by
  induction actions generalizing files with
  | nil => exact valid
  | cons action rest ih =>
      unfold actionFold
      split
      · exact ih _ (overwrite_unique _ _ _ valid)
      · exact ih _ valid

theorem placeholderFold_unique {Value : Type} (empty : Value) (placeholders : List Placeholder)
    (files : Files Value) (valid : unique files) :
    unique (placeholderFold empty placeholders files) := by
  induction placeholders generalizing files with
  | nil => exact valid
  | cons placeholder rest ih =>
      unfold placeholderFold
      split
      · exact ih _ valid
      · exact ih _ (overwrite_unique _ _ _ valid)

def lowerAction {Value Weight : Type} (weight : Value → Weight) (action : Action Value) : Action Weight :=
  ⟨action.area, action.path, weight action.value⟩

theorem lower_actionFold {Value Weight : Type} (weight : Value → Weight) (area : Area)
    (actions : List (Action Value)) (files : Files Value) :
    lower weight (actionFold area actions files) =
      actionFold area (actions.map (lowerAction weight)) (lower weight files) := by
  induction actions generalizing files with
  | nil => rfl
  | cons action rest ih =>
      simp only [actionFold, List.map_cons, lowerAction]
      by_cases selected : action.area = area <;>
        simp only [selected, ↓reduceIte, ih, lower_overwrite]

theorem lower_placeholderFold {Value Weight : Type} (weight : Value → Weight) (empty : Value)
    (placeholders : List Placeholder) (files : Files Value) :
    lower weight (placeholderFold empty placeholders files) =
      placeholderFold (weight empty) placeholders (lower weight files) := by
  induction placeholders generalizing files with
  | nil => rfl
  | cons placeholder rest ih =>
      simp only [placeholderFold]
      split <;> simp only [ih, lower_overwrite]

structure Plan where
  archive : Files Record
  actions : List (Action Record)
  placeholders : List Placeholder
  deriving DecidableEq

def finalRecords (plan : Plan) (area : Area) : Files Record :=
  let actions := actionFold area plan.actions (if area = .archive then plan.archive else [])
  if area = .taxonomy then placeholderFold emptyRecord plan.placeholders actions else actions

def finalCosts (plan : Plan) (area : Area) : Files Nat :=
  let actions := actionFold area (plan.actions.map (lowerAction Record.bytes))
    (if area = .archive then lower Record.bytes plan.archive else [])
  if area = .taxonomy then placeholderFold 0 plan.placeholders actions else actions

theorem final_lowering_exact (plan : Plan) (area : Area) :
    lower Record.bytes (finalRecords plan area) = finalCosts plan area := by
  cases area
  · change lower Record.bytes (placeholderFold emptyRecord plan.placeholders
      (actionFold .taxonomy plan.actions [])) =
      placeholderFold 0 plan.placeholders
        (actionFold .taxonomy (plan.actions.map (lowerAction Record.bytes)) [])
    rw [lower_placeholderFold, lower_actionFold]
    rfl
  · change lower Record.bytes (actionFold .archive plan.actions plan.archive) =
      actionFold .archive (plan.actions.map (lowerAction Record.bytes))
        (lower Record.bytes plan.archive)
    exact lower_actionFold _ _ _ _

theorem final_records_unique (plan : Plan) (area : Area) (archive : unique plan.archive) :
    unique (finalRecords plan area) := by
  cases area
  · exact placeholderFold_unique _ _ _ (actionFold_unique _ _ _ (by simp [unique]))
  · exact actionFold_unique _ _ _ archive

theorem taxonomy_records_unique (plan : Plan) : unique (finalRecords plan .taxonomy) :=
  placeholderFold_unique _ _ _ (actionFold_unique _ _ _ (by simp [unique]))

theorem taxonomy_ignores_archive_preimage (plan : Plan) (archive : Files Record) :
    finalCosts {plan with archive := archive} .taxonomy = finalCosts plan .taxonomy := rfl

theorem archive_ignores_placeholders (plan : Plan) (placeholders : List Placeholder) :
    finalCosts {plan with placeholders := placeholders} .archive = finalCosts plan .archive := rfl

theorem remove_placeholder_is_noop {Value : Type} (empty : Value) (path : String)
    (rest : List Placeholder) (files : Files Value) :
    placeholderFold empty (⟨path, .remove⟩ :: rest) files =
      placeholderFold empty rest files := rfl

theorem existing_placeholder_is_zero_output (path : String) (rest : List Placeholder)
    (files : Files Nat) :
    placeholderFold 0 (⟨path, .existing⟩ :: rest) files =
      placeholderFold 0 rest (overwrite files path 0) := rfl

theorem final_costs_unique (plan : Plan) (area : Area) (archive : unique plan.archive) :
    unique (finalCosts plan area) := by
  rw [← final_lowering_exact]
  exact lower_unique _ _ (final_records_unique _ _ archive)

def totalBytes (files : Files Nat) : Nat := (files.map Prod.snd).sum

def mapWithin (files : Files Nat) : Bool :=
  decide (files.length ≤ PlanResources.maxFiles) &&
    (PlanResources.boundedSum (files.map Prod.snd) PlanResources.maxTotalBytes 0).isSome

theorem mapWithin_exact (files : Files Nat) : mapWithin files = true ↔
    files.length ≤ PlanResources.maxFiles ∧ totalBytes files ≤ PlanResources.maxTotalBytes := by
  simp [mapWithin, PlanResources.boundedSum_exists, totalBytes]

def recordsWithin (files : Files Record) : Bool := mapWithin (lower Record.bytes files)

theorem recordsWithin_exact (files : Files Record) : recordsWithin files = true ↔
    files.length ≤ PlanResources.maxFiles ∧
      (files.map fun row => row.2.bytes).sum ≤ PlanResources.maxTotalBytes := by
  simp [recordsWithin, mapWithin_exact, totalBytes, lower, List.map_map, Function.comp_def]

theorem record_cost_membership (files : Files Record) (path : String) (cost : Nat) :
    (path, cost) ∈ lower Record.bytes files ↔
      ∃ record, (path, record) ∈ files ∧ record.bytes = cost := by
  simp only [lower, List.mem_map, Prod.mk.injEq]
  constructor
  · rintro ⟨⟨key, record⟩, member, equal, bytes⟩
    change key = path at equal
    subst key
    exact ⟨record, member, bytes⟩
  · rintro ⟨record, member, bytes⟩
    exact ⟨(path, record), member, rfl, bytes⟩

theorem record_cost_sum_exact (files : Files Record) :
    totalBytes (lower Record.bytes files) = (files.map fun row => row.2.bytes).sum := by
  simp [totalBytes, lower, List.map_map, Function.comp_def]

theorem totalBytes_permutation (left right : Files Nat) (permuted : left.Perm right) :
    totalBytes left = totalBytes right := by
  exact (permuted.map Prod.snd).sum_nat

theorem mapWithin_permutation (left right : Files Nat) (permuted : left.Perm right) :
    mapWithin left = mapWithin right := by
  have count := permuted.length_eq
  have bytes := totalBytes_permutation left right permuted
  have same : mapWithin left = true ↔ mapWithin right = true := by
    simp only [mapWithin_exact, count, bytes]
  exact Bool.eq_iff_iff.mpr same

theorem record_enumeration_bounds (files enumeration : Files Record)
    (permuted : files.Perm enumeration) (checked : recordsWithin files = true) :
    enumeration.length ≤ PlanResources.maxFiles ∧
      (enumeration.map fun row => row.2.bytes).sum ≤ PlanResources.maxTotalBytes := by
  have bound := (recordsWithin_exact _).mp checked
  exact ⟨permuted.length_eq ▸ bound.1, (permuted.map (fun row => row.2.bytes)).sum_nat ▸ bound.2⟩

theorem excessive_map_count_rejected (files : Files Nat)
    (excess : PlanResources.maxFiles < files.length) : mapWithin files = false := by
  cases accepted : mapWithin files with
  | false => rfl
  | true => have bounds := (mapWithin_exact _).mp accepted; omega

theorem excessive_map_bytes_rejected (files : Files Nat)
    (excess : PlanResources.maxTotalBytes < totalBytes files) : mapWithin files = false := by
  cases accepted : mapWithin files with
  | false => rfl
  | true => have bounds := (mapWithin_exact _).mp accepted; omega

def planWithin (plan : Plan) : Bool := mapWithin (finalCosts plan .taxonomy) &&
  mapWithin (finalCosts plan .archive)

theorem planWithin_exact (plan : Plan) : planWithin plan = true ↔
    mapWithin (finalCosts plan .taxonomy) = true ∧ mapWithin (finalCosts plan .archive) = true := by
  simp [planWithin]

theorem checked_final_map_bounds (plan : Plan) (area : Area) (checked : planWithin plan = true) :
    (finalCosts plan area).length ≤ PlanResources.maxFiles ∧
      totalBytes (finalCosts plan area) ≤ PlanResources.maxTotalBytes := by
  have both := (planWithin_exact _).mp checked
  cases area
  · exact (mapWithin_exact _).mp both.1
  · exact (mapWithin_exact _).mp both.2

theorem checked_final_record_bounds (plan : Plan) (area : Area) (checked : planWithin plan = true) :
    (finalRecords plan area).length ≤ PlanResources.maxFiles ∧
      ((finalRecords plan area).map fun row => row.2.bytes).sum ≤ PlanResources.maxTotalBytes := by
  have bound := checked_final_map_bounds plan area checked
  rw [← final_lowering_exact] at bound
  simpa [totalBytes, lower, List.map_map, Function.comp_def] using bound

theorem checked_final_sum_no_wrap (plan : Plan) (area : Area) (checked : planWithin plan = true) :
    totalBytes (finalCosts plan area) < GreedyShards.u64Modulus ∧
      totalBytes (finalCosts plan area) % GreedyShards.u64Modulus = totalBytes (finalCosts plan area) := by
  have bound := (checked_final_map_bounds plan area checked).2
  have strict : totalBytes (finalCosts plan area) < GreedyShards.u64Modulus := by
    simp only [PlanResources.maxTotalBytes, GreedyShards.u64Modulus] at *
    omega
  exact ⟨strict, Nat.mod_eq_of_lt strict⟩

theorem checked_final_UInt64_sum (plan : Plan) (area : Area) (checked : planWithin plan = true)
    (costs : List UInt64)
    (represented : costs.map UInt64.toNat = (finalCosts plan area).map Prod.snd) :
    (costs.foldl (· + ·) 0).toNat = totalBytes (finalCosts plan area) := by
  apply PlanResources.boundedSum_UInt64_exact costs PlanResources.maxTotalBytes
    (totalBytes (finalCosts plan area)) 0
  · apply (PlanResources.boundedSum_exact _ _ _ _).mpr
    exact ⟨by simp [represented, totalBytes], by
      simpa using (checked_final_map_bounds plan area checked).2⟩
  · exact Nat.le_refl _

theorem checked_final_sum_prefixes (plan : Plan) (area : Area) (checked : planWithin plan = true)
    (count : Nat) :
    PlanResources.boundedSum (((finalCosts plan area).map Prod.snd).take count)
      PlanResources.maxTotalBytes 0 =
        some (((finalCosts plan area).map Prod.snd).take count).sum := by
  have bound := (checked_final_map_bounds plan area checked).2
  apply (PlanResources.boundedSum_exact _ _ _ _).mpr
  exact ⟨by simp, Nat.le_trans (PlanResources.sum_take_le _ _) bound⟩

/- Full-record collisions are checked before publication. This independent
evaluator makes the success premise and its relation to cost-only admission
explicit; admission does not manufacture that success. -/
def checkedActions (area : Area) : List (Action Record) → Files Record → Option (Files Record)
  | [], files => some files
  | action :: rest, files =>
      if action.area = area then
        match lookup action.path files with
        | some previous => if previous = action.value then
            checkedActions area rest (overwrite files action.path action.value) else none
        | none => checkedActions area rest (overwrite files action.path action.value)
      else checkedActions area rest files

theorem checkedActions_exact (area : Area) (actions : List (Action Record))
    (files result : Files Record) (success : checkedActions area actions files = some result) :
    result = actionFold area actions files := by
  induction actions generalizing files with
  | nil => simpa [checkedActions, actionFold] using success.symm
  | cons action rest ih =>
      simp only [checkedActions] at success
      by_cases selected : action.area = area
      · simp only [selected, ↓reduceIte] at success
        cases found : lookup action.path files with
        | none =>
            simp only [found] at success
            simpa [actionFold, selected] using ih _ success
        | some previous =>
            simp only [found] at success
            by_cases same : previous = action.value
            · simp only [same, ↓reduceIte] at success
              simpa [actionFold, selected] using ih _ success
            · simp [same] at success
      · simp only [selected, ↓reduceIte] at success
        simpa [actionFold, selected] using ih _ success

def expectedRecords (plan : Plan) (area : Area) : Option (Files Record) := do
  let actions ← checkedActions area plan.actions (if area = .archive then plan.archive else [])
  pure (if area = .taxonomy then placeholderFold emptyRecord plan.placeholders actions else actions)

theorem expected_success_exact (plan : Plan) (area : Area) (result : Files Record)
    (success : expectedRecords plan area = some result) : result = finalRecords plan area := by
  unfold expectedRecords at success
  cases actions : checkedActions area plan.actions (if area = .archive then plan.archive else []) with
  | none => simp [actions] at success
  | some files =>
      have exact := checkedActions_exact area plan.actions _ files actions
      simp only [actions, Option.pure_def] at success
      subst files
      simpa [finalRecords] using success.symm

theorem expected_success_costs (plan : Plan) (area : Area) (result : Files Record)
    (success : expectedRecords plan area = some result) :
    lower Record.bytes result = finalCosts plan area := by
  rw [expected_success_exact _ _ _ success]
  exact final_lowering_exact _ _

theorem checked_expected_output_bounds (plan : Plan) (area : Area) (result : Files Record)
    (checked : planWithin plan = true) (success : expectedRecords plan area = some result) :
    result.length ≤ PlanResources.maxFiles ∧
      (result.map fun row => row.2.bytes).sum ≤ PlanResources.maxTotalBytes := by
  rw [expected_success_exact _ _ _ success]
  exact checked_final_record_bounds _ _ checked

theorem checked_expected_output_keys_unique (plan : Plan) (area : Area) (result : Files Record)
    (archive : unique plan.archive) (success : expectedRecords plan area = some result) :
    unique result := by
  rw [expected_success_exact _ _ _ success]
  exact final_records_unique _ _ archive

theorem expected_enumeration_output_bounds (plan : Plan) (area : Area)
    (result enumeration : Files Record) (checked : planWithin plan = true)
    (success : expectedRecords plan area = some result) (ordered : result.Perm enumeration) :
    enumeration.length ≤ PlanResources.maxFiles ∧
      (enumeration.map fun row => row.2.bytes).sum ≤ PlanResources.maxTotalBytes := by
  apply record_enumeration_bounds result enumeration ordered
  apply (recordsWithin_exact _).mpr
  exact checked_expected_output_bounds _ _ _ checked success

theorem checked_both_output_byte_bound (plan : Plan) (checked : planWithin plan = true) :
    totalBytes (finalCosts plan .taxonomy) + totalBytes (finalCosts plan .archive) ≤
      2 * PlanResources.maxTotalBytes := by
  have taxonomy := (checked_final_map_bounds plan .taxonomy checked).2
  have archive := (checked_final_map_bounds plan .archive checked).2
  omega

theorem checked_both_output_count_bound (plan : Plan) (checked : planWithin plan = true) :
    (finalCosts plan .taxonomy).length + (finalCosts plan .archive).length ≤
      2 * PlanResources.maxFiles := by
  have taxonomy := (checked_final_map_bounds plan .taxonomy checked).1
  have archive := (checked_final_map_bounds plan .archive checked).1
  omega

def fixturePlan : Plan where
  archive := [("old.lean", ⟨"old", 2, .lean⟩)]
  actions := [⟨.taxonomy, "a.lean", ⟨"shared", 3, .lean⟩⟩,
    ⟨.taxonomy, "a.lean", ⟨"shared", 3, .lean⟩⟩,
    ⟨.archive, "new.lean", ⟨"new", 5, .lean⟩⟩,
    ⟨.taxonomy, "b.lean", ⟨"shared", 3, .lean⟩⟩]
  placeholders := [⟨"a.lean", .remove⟩, ⟨"gap/.gitkeep", .write⟩]

theorem fixture_plan_accepted : planWithin fixturePlan = true := by decide

theorem fixture_taxonomy_exact : finalCosts fixturePlan .taxonomy =
    [("gap/.gitkeep", 0), ("b.lean", 3), ("a.lean", 3)] := by decide

theorem fixture_archive_exact : finalCosts fixturePlan .archive =
    [("new.lean", 5), ("old.lean", 2)] := by decide

theorem fixture_taxonomy_bytes : totalBytes (finalCosts fixturePlan .taxonomy) = 6 := by decide

theorem fixture_archive_bytes : totalBytes (finalCosts fixturePlan .archive) = 7 := by decide

theorem fixture_repeated_path_shared_once :
    ((finalCosts fixturePlan .taxonomy).filter fun row => row.1 == "a.lean").length = 1 := by decide

theorem fixture_same_payload_different_paths_both_counted :
    lookup "a.lean" (finalCosts fixturePlan .taxonomy) = some 3 ∧
      lookup "b.lean" (finalCosts fixturePlan .taxonomy) = some 3 ∧
      totalBytes (finalCosts fixturePlan .taxonomy) = 6 := by decide

theorem fixture_remove_placeholder_does_not_remove_source_output :
    lookup "a.lean" (finalCosts fixturePlan .taxonomy) = some 3 := by decide

theorem fixture_zero_placeholder_retained :
    lookup "gap/.gitkeep" (finalCosts fixturePlan .taxonomy) = some 0 := by decide

theorem fixture_archive_preimage_retained :
    lookup "old.lean" (finalCosts fixturePlan .archive) = some 2 := by decide

theorem fixture_expected_taxonomy_success : expectedRecords fixturePlan .taxonomy =
    some [("gap/.gitkeep", emptyRecord), ("b.lean", ⟨"shared", 3, .lean⟩),
      ("a.lean", ⟨"shared", 3, .lean⟩)] := by decide

theorem fixture_expected_archive_success : expectedRecords fixturePlan .archive =
    some [("new.lean", ⟨"new", 5, .lean⟩), ("old.lean", ⟨"old", 2, .lean⟩)] := by decide

theorem placeholder_overwrites_taxonomy_cost_to_zero :
    lookup "a.lean" (finalCosts {fixturePlan with placeholders := [⟨"a.lean", .write⟩]}
      .taxonomy) = some 0 := by decide

theorem taxonomy_placeholder_does_not_change_archive :
    finalCosts {fixturePlan with placeholders := [⟨"old.lean", .write⟩]} .archive =
      finalCosts fixturePlan .archive := by decide

def conflictingPlan : Plan := {fixturePlan with
  actions := fixturePlan.actions ++ [⟨.taxonomy, "a.lean", ⟨"different", 3, .lean⟩⟩]}

theorem cost_admission_does_not_manufacture_full_record_collision_success :
    planWithin conflictingPlan = true ∧ expectedRecords conflictingPlan .taxonomy = none := by decide

theorem changed_final_cost_is_checked : planWithin {fixturePlan with actions :=
    [⟨.taxonomy, "a.lean", ⟨"large", 1073741825, .lean⟩⟩]} = false := by decide

theorem initial_archive_cost_is_checked : planWithin {fixturePlan with archive :=
    [("old.lean", ⟨"large", 1073741825, .lean⟩)]} = false := by decide

theorem final_zero_overwrite_can_restore_budget : planWithin {fixturePlan with
    actions := [⟨.taxonomy, "a.lean", ⟨"large", 1073741825, .lean⟩⟩],
    placeholders := [⟨"a.lean", .write⟩]} = true := by decide

theorem exact_byte_limit_accepted : mapWithin [("exact", PlanResources.maxTotalBytes)] = true := by decide

theorem byte_limit_plus_one_rejected : mapWithin [("excess", PlanResources.maxTotalBytes + 1)] = false := by decide

theorem empty_plan_accepted : planWithin ⟨[], [], []⟩ = true := by decide

theorem empty_final_maps_exact : finalCosts ⟨[], [], []⟩ .taxonomy = [] ∧
    finalCosts ⟨[], [], []⟩ .archive = [] := by decide

end GRWTSK.PlanOutputBounds
