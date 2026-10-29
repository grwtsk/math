-- corpus-organization-transform:v1
-- Mathematical subject: Analysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.ZetaSeriesConvergesOnRealHalfPlane.Variant0060398e21849bb6adaf37840c6173155b38c99ed326092da9c2fbf105d3bc81","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0060398e21849bb6adaf37840c6173155b38c99ed326092da9c2fbf105d3bc81","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.ZetaSeriesConvergesOnRealHalfPlane.Variant0060398e21849bb6adaf37840c6173155b38c99ed326092da9c2fbf105d3bc81","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"0060398e21849bb6adaf37840c6173155b38c99ed326092da9c2fbf105d3bc81","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Rebuild/AnalyticNumberTheory/ZetaHalfPlaneScaffold.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Rebuild.NumberTheory.FiniteEulerProduct
import Folder.Rebuild.ClassicalAnchor
import Mathlib.Analysis.SpecialFunctions.Pow.Real

/-!
# Folder.Rebuild.AnalyticNumberTheory.ZetaHalfPlaneScaffold

Target propositions and finite checked facts for the zeta half-plane route.
-/


namespace GRWTSK.Analysis.ZetaSeriesConvergesOnRealHalfPlane.Variant0060398e21849bb6adaf37840c6173155b38c99ed326092da9c2fbf105d3bc81

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

open scoped BigOperators

def ZetaSeriesConvergesOnRealHalfPlane : Prop :=
  ∀ σ : ℝ, 1 < σ →
    Summable fun n : Nat =>
      if n = 0 then 0 else (n : ℝ) ^ (-σ)

def EulerProductForZetaHalfPlaneTarget : Prop :=
  ∃ A : ClassicalAnchor,
    A.theoremLabel = "finite-to-infinite Euler product route" ∧
      A.formalRole = RebuildProofStatus.theoremTarget

def ZetaNonzeroOnRealGreaterThanOneTarget : Prop :=
  ∃ A : ClassicalAnchor,
    A.shortName = "Euler product" ∧
      A.formalRole = RebuildProofStatus.theoremTarget

def PrimeNumberTheoremTarget : Prop :=
  ∃ A : ClassicalAnchor,
    A.theoremLabel = "PrimeNumberTheoremTarget" ∧
      A.formalRole = RebuildProofStatus.theoremTarget

theorem finite_partial_zeta_sum_nonnegative
    (σ : ℝ)
    (N : Nat) :
    0 ≤
      ∑ n ∈ Finset.Icc 1 N,
        (if n = 0 then 0 else (n : ℝ) ^ (-σ)) := by
  refine Finset.sum_nonneg ?_
  intro n _hn
  by_cases hn0 : n = 0
  · simp [hn0]
  · simp [hn0, Real.rpow_nonneg (by positivity : (0 : ℝ) ≤ n) (-σ)]

end AnalyticNumberTheory
end Rebuild
end Folder
