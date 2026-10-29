-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.CubicPotentialDifference.Variant961bdc94bfa55841c2683790ad775cac01904ec98a9e57225e5741cf467b77ea","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"961bdc94bfa55841c2683790ad775cac01904ec98a9e57225e5741cf467b77ea","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.CubicPotentialDifference.Variant961bdc94bfa55841c2683790ad775cac01904ec98a9e57225e5741cf467b77ea","mathematical_subject":"Analysis.Integration","original_sha256":"961bdc94bfa55841c2683790ad775cac01904ec98a9e57225e5741cf467b77ea","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Polynomial/Interval.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Polynomial.Potential
import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus
import Mathlib.Topology.Algebra.Polynomial

/-!
# Cubic interval integration

The endpoint difference and the measure-theoretic interval integral are
distinct definitions connected by the fundamental theorem of calculus.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.CubicPotentialDifference.Variant961bdc94bfa55841c2683790ad775cac01904ec98a9e57225e5741cf467b77ea

namespace Mathematics.Polynomial

open scoped Interval

/-- Exact endpoint difference of the canonical cubic potential. -/
noncomputable def cubicPotentialDifference
    (a b c d lo hi : ℝ) : ℝ :=
  (cubicPotential a b c d).eval hi -
    (cubicPotential a b c d).eval lo

@[simp] theorem cubicPotentialDifference_self
    (a b c d x : ℝ) :
    cubicPotentialDifference a b c d x x = 0 := by
  simp [cubicPotentialDifference]

/-- Endpoint differences compose over adjacent intervals. -/
theorem cubicPotentialDifference_trans
    (a b c d first middle last : ℝ) :
    cubicPotentialDifference a b c d first middle +
        cubicPotentialDifference a b c d middle last =
      cubicPotentialDifference a b c d first last := by
  simp only [cubicPotentialDifference]
  ring

/-- The genuine interval integral equals the endpoint difference. -/
theorem intervalIntegral_cubic
    (a b c d lo hi : ℝ) :
    (∫ x in lo..hi, (cubic a b c d).eval x) =
      cubicPotentialDifference a b c d lo hi := by
  rw [cubicPotentialDifference]
  apply intervalIntegral.integral_eq_sub_of_hasDerivAt
  · intro x _
    exact hasDerivAt_cubicPotential a b c d x
  · exact (cubic a b c d).continuous.intervalIntegrable lo hi

end Mathematics.Polynomial
