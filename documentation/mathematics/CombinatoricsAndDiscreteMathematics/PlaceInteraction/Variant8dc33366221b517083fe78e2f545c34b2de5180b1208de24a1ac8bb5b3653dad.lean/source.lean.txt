-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.PairInteraction.Variant1e36eb6f19b47d7e544ab6fad0078563117986b499d0c8b14c68d3eddabf8abc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1e36eb6f19b47d7e544ab6fad0078563117986b499d0c8b14c68d3eddabf8abc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.PairInteraction.Variant1e36eb6f19b47d7e544ab6fad0078563117986b499d0c8b14c68d3eddabf8abc","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"1e36eb6f19b47d7e544ab6fad0078563117986b499d0c8b14c68d3eddabf8abc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemiLocalDefect/PlaceInteraction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.PositiveCapacity

/-!
# Pair interaction

Pair interaction is a second difference of the capacity.  It is symmetric,
but monotonicity alone does not give it a sign.  This object remains separate
from the identically zero exact cochain curvature.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.PairInteraction.Variant1e36eb6f19b47d7e544ab6fad0078563117986b499d0c8b14c68d3eddabf8abc

namespace Mathematics.SemiLocalDefect

def pairInteraction
    {Prime : Type u}
    {Coordinate : Type v}
    [DecidableEq Prime]
    (capacity : PositiveCapacity Prime Coordinate)
    (cut : Finset Prime)
    (first second : Prime) :
    DiagonalOperator Coordinate :=
  capacity.value (insert first (insert second cut)) -
    capacity.value (insert first cut) -
    capacity.value (insert second cut) +
    capacity.value cut

theorem pairInteraction_symmetric
    {Prime : Type u}
    {Coordinate : Type v}
    [DecidableEq Prime]
    (capacity : PositiveCapacity Prime Coordinate)
    (cut : Finset Prime)
    (first second : Prime) :
    pairInteraction capacity cut first second =
      pairInteraction capacity cut second first := by
  have terminal_cuts_equal :
      insert first (insert second cut) =
        insert second (insert first cut) := by
    ext prime
    simp [or_left_comm]
  funext coordinate
  simp only [pairInteraction, Pi.add_apply, Pi.sub_apply]
  rw [terminal_cuts_equal]
  ring

end Mathematics.SemiLocalDefect
