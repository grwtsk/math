-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FullBitfield.Variant5f25299abe177d3a1d47e6ae4260b19c94c2ec9e9ae334673b77ed079bfcc569","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5f25299abe177d3a1d47e6ae4260b19c94c2ec9e9ae334673b77ed079bfcc569","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.FullBitfield.Variant5f25299abe177d3a1d47e6ae4260b19c94c2ec9e9ae334673b77ed079bfcc569","mathematical_subject":"Foundations.Unclassified","original_sha256":"5f25299abe177d3a1d47e6ae4260b19c94c2ec9e9ae334673b77ed079bfcc569","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/BinaryFrontier/Completion/Bitfield.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.BinaryFrontier.PartialBitfield.Order
import Mathematics.BinaryFrontier.Completion.Core

/-!
# Boolean completions of partial bitfields

A full bitfield supplies a Boolean value at every finite coordinate.  Resolved
partial coordinates must agree with the full value; unresolved coordinates
impose no value.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FullBitfield.Variant5f25299abe177d3a1d47e6ae4260b19c94c2ec9e9ae334673b77ed079bfcc569

namespace Mathematics.BinaryFrontier

def FullBitfield (n : Nat) :=
  Fin n → Bool

def ExtendsPartialBitfield
    {n : Nat}
    (state : PartialBitfield n)
    (full : FullBitfield n) : Prop :=
  ∀ coordinate,
    match state coordinate with
    | .unresolved => True
    | .zero => full coordinate = false
    | .one => full coordinate = true

def bitfieldCompletionSemantics (n : Nat) :
    CompletionSemantics
      (PartialBitfield n)
      (FullBitfield n)
      Unit where
  refines := (· ≤ ·)
  extendsFull := ExtendsPartialBitfield
  satisfies := fun _ _ => True
  refines_refl := by
    intro state coordinate
    exact PartialBit.le_refl (state coordinate)
  refines_trans := by
    intro left middle right leftMiddle middleRight coordinate
    exact PartialBit.le_trans
      (leftMiddle coordinate)
      (middleRight coordinate)
  extendsFull_antitone := by
    intro parent child full parentChild childExtends coordinate
    have coordinateOrder := parentChild coordinate
    cases parentValue : parent coordinate
    · trivial
    · have same :
          parent coordinate = child coordinate :=
        PartialBit.resolved_le_eq
          (by simp [PartialBit.Resolved, parentValue])
          coordinateOrder
      have childValue : child coordinate = .zero := by
        rw [← same, parentValue]
      simpa [
        ExtendsPartialBitfield,
        parentValue,
        childValue
      ] using childExtends coordinate
    · have same :
          parent coordinate = child coordinate :=
        PartialBit.resolved_le_eq
          (by simp [PartialBit.Resolved, parentValue])
          coordinateOrder
      have childValue : child coordinate = .one := by
        rw [← same, parentValue]
      simpa [
        ExtendsPartialBitfield,
        parentValue,
        childValue
      ] using childExtends coordinate

def resolveAt
    {n : Nat}
    (parent : PartialBitfield n)
    (coordinate : Fin n)
    (value : Bool) :
    PartialBitfield n :=
  fun other =>
    if other = coordinate then
      PartialBit.ofBool value
    else
      parent other

def resolveAt_is_oneCoordinateResolution
    {n : Nat}
    (parent : PartialBitfield n)
    (coordinate : Fin n)
    (value : Bool)
    (unresolved : parent coordinate = .unresolved) :
    OneCoordinateResolution
      parent
      (resolveAt parent coordinate value) where
  coordinate := coordinate
  value := value
  parentUnresolved := unresolved
  childResolved := by
    simp [resolveAt]
  unchanged := by
    intro other otherNe
    simp [resolveAt, otherNe]

theorem completeSplit_siblings_differ_exactly_once
    {n : Nat}
    (parent : PartialBitfield n)
    (coordinate : Fin n) :
    ∀ other,
      resolveAt parent coordinate false other ≠
          resolveAt parent coordinate true other ↔
        other = coordinate := by
  intro other
  by_cases same : other = coordinate
  · subst other
    simp [resolveAt, PartialBit.ofBool]
  · simp [resolveAt, same]

end Mathematics.BinaryFrontier
