import SourceRationalCompensation

/-!
# Complete finite rational head with both actual source mass defects

The original native tail constant is retained without an H-only tail premise.
All arithmetic signed-head control remains an ordinary open input.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/

namespace FormalResearch.RiemannHypothesis.SourceRationalFiniteHead

open MeasureTheory Set
open SourceNativeMellin SourceNativeDirichlet SourceNativeDirichletMoments
open SourceNativeAngularTail SourceNativeMertensTransfer SourceNativeConstantCompensation
open SourceRationalContinuousHalf SourceRationalCompensation
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual

noncomputable section

/-- Literal finite rational-kernel mass, distinct from its whole-line pole half. -/
def rationalKernelHeadMass (A T : ℝ) : ℂ :=
  (1 / (2 * Real.pi) : ℝ) *
    ∫ t : ℝ in Icc (-T) T,
      nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ)) /
        (1 + Complex.I * (t : ℂ))

/-- The complete signed finite rational multiplier remainder. -/
def rationalRemainderHead (A T : ℝ) : ℂ :=
  (1 / (2 * Real.pi) : ℝ) * ∫ t : ℝ in Icc (-T) T, rationalRemainderIntegrand A t

/-- Both finite source mass defects are part of the corrected head. -/
def correctedRationalHead (A T : ℝ) : ℂ :=
  rationalRemainderHead A T +
    (rightLineMajorant 2 - dirichletMoment 1 : ℝ) * (nativeHeadMass A T - 1) +
    (dirichletMoment 1 : ℂ) *
      (rationalKernelHeadMass A T - (continuousPoleHalf A : ℂ))

theorem angularHead_eq_rational_masses (A T : ℝ) (hA : 1 ≤ A) :
    angularHead A T =
      (rightLineMajorant 2 - dirichletMoment 1 : ℝ) * nativeHeadMass A T +
        (dirichletMoment 1 : ℂ) * rationalKernelHeadMass A T + rationalRemainderHead A T := by
  have hD := (angularIntegrand_integrable A hA).integrableOn (s := Icc (-T) T)
  have hH := (SourceNativeReadout.nativeMellin_two_integrable A hA).integrableOn
    (s := Icc (-T) T)
  have hQ := (native_rational_integrable A hA).integrableOn (s := Icc (-T) T)
  have hf : rationalRemainderIntegrand A = fun t : ℝ ↦ angularIntegrand A t -
      ((rightLineMajorant 2 - dirichletMoment 1 : ℝ) : ℂ) *
        nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ)) -
      (dirichletMoment 1 : ℂ) *
        (nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ)) /
          (1 + Complex.I * (t : ℂ))) := by
    funext t
    unfold rationalRemainderIntegrand rationalRemainderMultiplier rationalCompensator
      angularIntegrand
    ring
  have hi : (∫ t : ℝ in Icc (-T) T, rationalRemainderIntegrand A t) =
      (∫ t : ℝ in Icc (-T) T, angularIntegrand A t) -
        ((rightLineMajorant 2 - dirichletMoment 1 : ℝ) : ℂ) *
          (∫ t : ℝ in Icc (-T) T,
            nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ))) -
        (dirichletMoment 1 : ℂ) *
          (∫ t : ℝ in Icc (-T) T,
            nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ)) /
              (1 + Complex.I * (t : ℂ))) := by
    rw [hf]
    dsimp only
    rw [integral_sub
      (f := fun t : ℝ ↦ angularIntegrand A t -
        ((rightLineMajorant 2 - dirichletMoment 1 : ℝ) : ℂ) *
          nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ)))
      (g := fun t : ℝ ↦ (dirichletMoment 1 : ℂ) *
        (nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ)) /
          (1 + Complex.I * (t : ℂ))))
      (hD.sub (hH.const_mul _)) (hQ.const_mul _),
      integral_sub hD (hH.const_mul _), integral_const_mul, integral_const_mul]
  unfold angularHead rationalRemainderHead nativeHeadMass rationalKernelHeadMass
  rw [hi]
  ring

theorem correctedRationalHead_eq_head_sub_baseline (A T : ℝ) (hA : 1 ≤ A) :
    correctedRationalHead A T = angularHead A T - (rationalBaseline A : ℂ) := by
  rw [angularHead_eq_rational_masses A T hA]
  unfold correctedRationalHead rationalBaseline
  simp only [Complex.ofReal_add, Complex.ofReal_sub, Complex.ofReal_mul]
  ring

theorem correctedRationalHead_real_readout (A T : ℝ) (hA : 1 ≤ A) :
    (angularHead A T).re = rationalBaseline A + (correctedRationalHead A T).re := by
  have h := congr_arg Complex.re (correctedRationalHead_eq_head_sub_baseline A T hA)
  simp only [Complex.sub_re, Complex.ofReal_re] at h
  linarith

theorem residual_sub_correctedRationalHead_norm_bound (A T : ℝ)
    (hA : 1 ≤ A) (hT : 1 ≤ T) :
    ‖((mertensResidual A - rationalBaseline A : ℝ) : ℂ) - correctedRationalHead A T‖ ≤
      twoLineTailConstant * Real.exp (3 * A) / (A ^ 9 * T ^ 5) := by
  rw [correctedRationalHead_eq_head_sub_baseline A T hA, Complex.ofReal_sub]
  convert mertensResidual_sub_head_norm_bound A T hA hT using 1
  congr 1
  ring

theorem residual_sub_correctedRationalHead_growing_norm_bound (A : ℝ) (hA : 1 ≤ A) :
    ‖((mertensResidual A - rationalBaseline A : ℝ) : ℂ) -
      correctedRationalHead A (growingHeight A)‖ ≤ twoLineTailConstant / A ^ 9 := by
  rw [correctedRationalHead_eq_head_sub_baseline A (growingHeight A) hA,
    Complex.ofReal_sub]
  convert mertensResidual_growing_tail_bound A hA using 1
  congr 1
  ring

theorem residual_sub_correctedRationalHead_growing_abs_bound (A : ℝ) (hA : 1 ≤ A) :
    |(mertensResidual A - rationalBaseline A) -
      (correctedRationalHead A (growingHeight A)).re| ≤ twoLineTailConstant / A ^ 9 := by
  have h := residual_sub_correctedRationalHead_growing_norm_bound A hA
  have hr := Complex.abs_re_le_norm
    (((mertensResidual A - rationalBaseline A : ℝ) : ℂ) -
      correctedRationalHead A (growingHeight A))
  simpa only [Complex.sub_re, Complex.ofReal_re] using le_trans hr h

theorem residual_upper_of_correctedRationalHead_with_baseline {B K R : ℝ} (hR : 1 ≤ R)
    (hbase : ∀ A : ℝ, R ≤ A → rationalBaseline A ≤ B)
    (hhead : ∀ A : ℝ, R ≤ A → (correctedRationalHead A (growingHeight A)).re ≤ K)
    (A : ℝ) (hA : R ≤ A) :
    mertensResidual A ≤ B + K + twoLineTailConstant / R ^ 9 := by
  apply mertensResidual_upper_of_signed_head hR (K := B + K) ?_ A hA
  intro A hA
  rw [correctedRationalHead_real_readout A (growingHeight A) (le_trans hR hA)]
  exact add_le_add (hbase A hA) (hhead A hA)

theorem residual_upper_of_correctedRationalHead {K R : ℝ} (hR : 1 ≤ R)
    (hhead : ∀ A : ℝ, R ≤ A → (correctedRationalHead A (growingHeight A)).re ≤ K)
    (A : ℝ) (hA : R ≤ A) :
    mertensResidual A ≤ rightLineMajorant 2 + dirichletMoment 1 + K +
      twoLineTailConstant / R ^ 9 := by
  exact residual_upper_of_correctedRationalHead_with_baseline hR
    (fun A hA ↦ rationalBaseline_upper A (le_trans hR hA)) hhead A hA

/-- Only this complete corrected signed head is the witness; both masses stay inside it. -/
def CorrectedRationalHeadTailUpperBound : Prop :=
  ∃ K : ℝ, ∃ R : ℝ, 1 ≤ R ∧
    ∀ A : ℝ, R ≤ A → (correctedRationalHead A (growingHeight A)).re ≤ K

theorem native_signed_head_of_corrected_rational (h : CorrectedRationalHeadTailUpperBound) :
    SignedNativeHeadTailUpperBound := by
  obtain ⟨K, R, hR, hhead⟩ := h
  refine ⟨rightLineMajorant 2 + dirichletMoment 1 + K, R, hR, ?_⟩
  intro A hA
  rw [correctedRationalHead_real_readout A (growingHeight A) (le_trans hR hA)]
  exact add_le_add (rationalBaseline_upper A (le_trans hR hA)) (hhead A hA)

theorem estimate_of_corrected_rational_head (h : CorrectedRationalHeadTailUpperBound) :
    CorrelationAssembly.EstimateObligation :=
  estimate_of_signed_native_head (native_signed_head_of_corrected_rational h)

end
end FormalResearch.RiemannHypothesis.SourceRationalFiniteHead
