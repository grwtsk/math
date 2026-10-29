-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.CapacityIncrementSquareClosed.Variant0b99bf9dfd5f611542ba6ec4da727417306f7b31f543f142aae9bef7f004c7a2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0b99bf9dfd5f611542ba6ec4da727417306f7b31f543f142aae9bef7f004c7a2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.CapacityIncrementSquareClosed.Variant0b99bf9dfd5f611542ba6ec4da727417306f7b31f543f142aae9bef7f004c7a2","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"0b99bf9dfd5f611542ba6ec4da727417306f7b31f543f142aae9bef7f004c7a2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemiLocalDefect/BoundaryCochain.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.PositiveCapacity

/-!
# Exact boundary cochain

Capacity increments telescope around every finite insertion square.  The
result is an algebraic identity of the capacity potential; it does not assert
that the two conditional increments are equal.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.CapacityIncrementSquareClosed.Variant0b99bf9dfd5f611542ba6ec4da727417306f7b31f543f142aae9bef7f004c7a2

namespace Mathematics.SemiLocalDefect

theorem capacity_increment_square_closed
    {Prime : Type u}
    {Coordinate : Type v}
    [DecidableEq Prime]
    (capacity : PositiveCapacity Prime Coordinate)
    (cut : Finset Prime)
    (first second : Prime) :
    capacity.increment cut first +
        capacity.increment (insert first cut) second =
      capacity.increment cut second +
        capacity.increment (insert second cut) first := by
  funext coordinate
  have terminal_cuts_equal :
      insert second (insert first cut) =
        insert first (insert second cut) := by
    ext prime
    simp [or_left_comm]
  simp only [PositiveCapacity.increment, Pi.add_apply, Pi.sub_apply]
  rw [terminal_cuts_equal]
  ring

theorem capacity_increment_two_step_telescope
    {Prime : Type u}
    {Coordinate : Type v}
    [DecidableEq Prime]
    (capacity : PositiveCapacity Prime Coordinate)
    (cut : Finset Prime)
    (first second : Prime) :
    capacity.increment cut first +
        capacity.increment (insert first cut) second =
      capacity.value (insert second (insert first cut)) -
        capacity.value cut := by
  funext coordinate
  simp only [PositiveCapacity.increment, Pi.add_apply, Pi.sub_apply]
  ring

end Mathematics.SemiLocalDefect
