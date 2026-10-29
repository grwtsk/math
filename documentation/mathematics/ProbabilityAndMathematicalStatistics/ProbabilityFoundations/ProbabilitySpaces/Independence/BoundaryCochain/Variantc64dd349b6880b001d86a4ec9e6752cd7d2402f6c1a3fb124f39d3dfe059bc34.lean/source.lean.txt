-- corpus-organization-transform:v1
-- Mathematical subject: ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.InsertList.Variantbb74cff876be061819660189a1ddf37a577ed993ead0dfc9346dda270c23f4aa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bb74cff876be061819660189a1ddf37a577ed993ead0dfc9346dda270c23f4aa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Probability.Independence.SourceCorpus.InsertList.Variantbb74cff876be061819660189a1ddf37a577ed993ead0dfc9346dda270c23f4aa","mathematical_subject":"Probability.Independence","original_sha256":"bb74cff876be061819660189a1ddf37a577ed993ead0dfc9346dda270c23f4aa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/BoundaryCochain.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.PositiveCapacity
import Mathlib.Tactic.Abel

/-!
# Exact positive boundary cochain

The edge increment is the differential of the capacity.  Cubical closedness
and path telescoping are algebraic theorems, not extra connector assumptions.
-/


namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.InsertList.Variantbb74cff876be061819660189a1ddf37a577ed993ead0dfc9346dda270c23f4aa

namespace Mathematics.SemiLocalDefect

universe uPrime

def insertList
    {Prime : Type uPrime}
    [DecidableEq Prime] :
    Finset Prime → List Prime → Finset Prime
  | cut, [] => cut
  | cut, prime :: rest =>
      insertList (insert prime cut) rest

def boundaryPathSum
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime) :
    Finset Prime → List Prime → model.Operator
  | _, [] => 0
  | cut, prime :: rest =>
      capacity.increment cut prime +
        boundaryPathSum capacity
          (insert prime cut) rest

theorem increment_square_closed
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (cut : Finset Prime)
    (left right : Prime) :
    capacity.increment cut left +
        capacity.increment (insert left cut) right =
      capacity.increment cut right +
        capacity.increment (insert right cut) left := by
  simp only [PrimeCutDefectCapacity.increment]
  rw [Finset.insert_comm left right]
  abel

def boundaryCurvature
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (cut : Finset Prime)
    (left right : Prime) :
    model.Operator :=
  capacity.increment cut left +
    capacity.increment (insert left cut) right -
    capacity.increment cut right -
    capacity.increment (insert right cut) left

theorem boundaryCurvature_eq_zero
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (cut : Finset Prime)
    (left right : Prime) :
    boundaryCurvature capacity cut left right =
      0 := by
  unfold boundaryCurvature
  rw [increment_square_closed
    capacity cut left right]
  abel

theorem boundaryPathSum_telescope
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (cut : Finset Prime)
    (path : List Prime) :
    boundaryPathSum capacity cut path =
      capacity.defect (insertList cut path) -
        capacity.defect cut := by
  induction path generalizing cut with
  | nil =>
      simp [boundaryPathSum, insertList]
  | cons prime rest induction =>
      simp only [boundaryPathSum, insertList]
      rw [induction]
      simp only [PrimeCutDefectCapacity.increment]
      abel

theorem boundaryPathSum_independent
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (cut : Finset Prime)
    {left right : List Prime}
    (sameEndpoint :
      insertList cut left =
        insertList cut right) :
    boundaryPathSum capacity cut left =
      boundaryPathSum capacity cut right := by
  rw [boundaryPathSum_telescope,
    boundaryPathSum_telescope,
    sameEndpoint]

end Mathematics.SemiLocalDefect
