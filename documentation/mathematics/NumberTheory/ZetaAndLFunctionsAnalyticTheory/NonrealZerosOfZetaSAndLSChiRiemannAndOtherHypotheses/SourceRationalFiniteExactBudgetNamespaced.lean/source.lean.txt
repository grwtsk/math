-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ResidualUpperAtExactRadius.Variant711e2b75c7fc942a3edb999b1f1b9810e9ec4653f664a196ced35b9b992e543d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"711e2b75c7fc942a3edb999b1f1b9810e9ec4653f664a196ced35b9b992e543d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ResidualUpperAtExactRadius.Variant711e2b75c7fc942a3edb999b1f1b9810e9ec4653f664a196ced35b9b992e543d","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"711e2b75c7fc942a3edb999b1f1b9810e9ec4653f664a196ced35b9b992e543d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-next-cycle-20261006/root/independent-SourceRationalFiniteExactBudget-1791346437196377000/SourceRationalFiniteExactBudget.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceRationalFiniteHead
import SourceRationalExactBaseline

/-!
The complete finite rational head receives the exact negative continuous block.
Both finite masses stay in the head; its original native tail is unchanged.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ResidualUpperAtExactRadius.Variant711e2b75c7fc942a3edb999b1f1b9810e9ec4653f664a196ced35b9b992e543d

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceRationalFiniteExactBudget
open SourceRationalFiniteHead SourceRationalCompensation SourceRationalExactBaseline
open SourceNativeDirichlet SourceNativeDirichletMoments
open SourceNativeAngularTail SourceNativeMertensTransfer
open SourceLeadingCesaroPropagation SourceLeadingTailBudget RH16ResumeBudget SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual Realization
noncomputable section

theorem residual_upper_at_exact_radius (K R : ℝ) (hR : 1 ≤ R)
    (hhead : ∀ A : ℝ, R ≤ A → (correctedRationalHead A (growingHeight A)).re ≤ K)
    (A : ℝ) (hRA : R ≤ A) :
    mertensResidual A ≤
      rightLineMajorant 2 - (1 + halfEnergyValue R) * dirichletMoment 1 + K +
        twoLineTailConstant / R ^ 9 := by
  exact residual_upper_of_correctedRationalHead_with_baseline hR
    (fun _ hA ↦ rationalBaseline_upper_at_radius hR hA) hhead A hRA

theorem all_real_lower_at_exact_radius (K R : ℝ) (hR : 1 ≤ R)
    (hhead : ∀ A : ℝ, R ≤ A → (correctedRationalHead A (growingHeight A)).re ≤ K) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower R)
        (archimedeanMultiplier 0 - 2 *
          (rightLineMajorant 2 - (1 + halfEnergyValue R) * dirichletMoment 1 + K +
            twoLineTailConstant / R ^ 9)) ≤
        sourceQuadraticValue explicitSecondDerivative A := by
  apply all_real_source_lower_of_residual_tail _ R hR
  exact residual_upper_at_exact_radius K R hR hhead

theorem leading_upper_at_exact_receiving_radius (K R : ℝ) (hR : 1 ≤ R)
    (hhead : ∀ A : ℝ, R ≤ A → (correctedRationalHead A (growingHeight A)).re ≤ K) :
    ∀ A : ℝ, max 25600 R ≤ A →
      actualLeadingRenormalizedTail A ≤
        rightLineMajorant 2 - (1 + halfEnergyValue (max 25600 R)) * dirichletMoment 1 +
          K + twoLineTailConstant / (max 25600 R) ^ 9 -
            (riemannZeta (1 / 2)).re + 3103 / 50 := by
  intro A hA
  apply actual_leading_upper_of_residual_upper A _ ((le_max_left _ _).trans hA)
  have hL : 1 ≤ max (25600 : ℝ) R := hR.trans (le_max_right _ _)
  apply residual_upper_at_exact_radius K (max 25600 R) hL _ A hA
  intro B hB
  exact hhead B ((le_max_right _ _).trans hB)

theorem native_signed_head_of_exact_corrected_rational
    (h : CorrectedRationalHeadTailUpperBound) : SignedNativeHeadTailUpperBound := by
  obtain ⟨K, R, hR, hhead⟩ := h
  refine ⟨rightLineMajorant 2 - (1 + halfEnergyValue R) * dirichletMoment 1 + K,
    R, hR, ?_⟩
  intro A hA
  rw [correctedRationalHead_real_readout A (growingHeight A) (hR.trans hA)]
  exact add_le_add (rationalBaseline_upper_at_radius hR hA) (hhead A hA)

end
end FormalResearch.RiemannHypothesis.SourceRationalFiniteExactBudget
