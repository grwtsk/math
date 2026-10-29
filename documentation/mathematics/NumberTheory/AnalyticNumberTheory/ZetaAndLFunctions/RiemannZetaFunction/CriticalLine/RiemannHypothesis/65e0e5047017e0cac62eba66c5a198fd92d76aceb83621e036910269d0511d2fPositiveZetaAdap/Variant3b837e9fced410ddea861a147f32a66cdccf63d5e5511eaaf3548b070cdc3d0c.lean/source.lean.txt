-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.NontrivialZetaZeroOfStrip.Variant65e0e5047017e0cac62eba66c5a198fd92d76aceb83621e036910269d0511d2f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"65e0e5047017e0cac62eba66c5a198fd92d76aceb83621e036910269d0511d2f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.NontrivialZetaZeroOfStrip.Variant65e0e5047017e0cac62eba66c5a198fd92d76aceb83621e036910269d0511d2f","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"65e0e5047017e0cac62eba66c5a198fd92d76aceb83621e036910269d0511d2f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/65/65e0e5047017e0cac62eba66c5a198fd92d76aceb83621e036910269d0511d2f--PositiveZetaAdapterScratch.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ZeroSymmetry
import Mathlib.NumberTheory.LSeries.ZetaZeros

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.NontrivialZetaZeroOfStrip.Variant65e0e5047017e0cac62eba66c5a198fd92d76aceb83621e036910269d0511d2f

namespace FormalResearch.RiemannHypothesis.PoleSourceZetaDetection
/-- A strip zero satisfies the canonical exact trivial-zero and pole exclusions. -/
theorem nontrivial_zeta_zero_of_strip (ρ : ℂ) (hzero : riemannZeta ρ = 0)
    (hstrip : 0 < ρ.re ∧ ρ.re < 1) : NontrivialZetaZero ρ := by
  refine ⟨hzero, ?_, ?_⟩
  · rintro ⟨n, hn⟩
    have hr := congrArg Complex.re hn
    have hn0 : (0 : ℝ) ≤ n := Nat.cast_nonneg n
    norm_num at hr
    linarith [hstrip.1]
  · intro hn
    have hr := congrArg Complex.re hn
    norm_num at hr
    linarith [hstrip.2]


end FormalResearch.RiemannHypothesis.PoleSourceZetaDetection
