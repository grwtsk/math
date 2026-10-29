import FormalResearch.RiemannHypothesis.SourcePrimitiveCorrelationCurvature

/-!
# Exact second primitive of the actual source correlation

Research direction, source selection and evaluation: grwtsk contributors.
Formal construction: OpenAI Codex, using the attached ChatGPT Peano proof note.
This is a source identity; the atomic arithmetic curvature pairing remains open.
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourcePositivePeanoPrimitive

open SourcePairing SourcePrimitivePrimeInteraction SourcePrimitiveCorrelationCurvature
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization

/-- Actual normalized primitive correlation, with the exponential conjugation retained. -/
def sourcePeanoPrimitive (A t : ℝ) : ℝ :=
  Real.exp (t / 2) *
    (deriv (deriv (primitiveCorrelationZero A)) t - deriv (primitiveCorrelationZero A) t +
      primitiveCorrelationZero A t / 4)

/-- The fourth ordinary derivative comes from two exact signed curvature identities. -/
theorem primitiveCorrelationZero_fourth_deriv {A : ℝ} (hA : 0 < A) (t : ℝ) :
    deriv (deriv (deriv (deriv (primitiveCorrelationZero A)))) t =
      primitiveCorrelationTwo A t := by
  have he : deriv (deriv (primitiveCorrelationZero A)) =
      fun s => -primitiveCorrelationOne A s :=
    funext (primitiveCorrelationZero_second_deriv_eq_neg_one hA)
  have he1 : deriv (fun s => -primitiveCorrelationOne A s) =
      fun s => -deriv (primitiveCorrelationOne A) s := by
    funext s
    exact deriv.fun_neg
  rw [he, he1, deriv.fun_neg, primitiveCorrelationOne_second_deriv_eq_neg_two hA, neg_neg]

/-- Exact second differentiation recovers the unchanged actual source at every real shift. -/
theorem sourcePeanoPrimitive_second_deriv {A : ℝ} (hA : 0 < A) (t : ℝ) :
    deriv (deriv (sourcePeanoPrimitive A)) t =
      Real.exp (t / 2) * sourceCorrelation explicitSecondDerivative A t := by
  let F := primitiveCorrelationZero A
  have hF : ContDiff ℝ 4 F := primitiveCorrelationZero_contDiff_four hA
  have hF1 : ContDiff ℝ 3 (deriv F) := hF.deriv'
  have hF2 : ContDiff ℝ 2 (deriv (deriv F)) := hF1.deriv'
  have hF3 : ContDiff ℝ 1 (deriv (deriv (deriv F))) := hF2.deriv'
  have hd0 (s : ℝ) : HasDerivAt F (deriv F s) s :=
    (hF.differentiable (by norm_num) s).hasDerivAt
  have hd1 (s : ℝ) : HasDerivAt (deriv F) (deriv (deriv F) s) s :=
    (hF1.differentiable (by norm_num) s).hasDerivAt
  have hd2 (s : ℝ) : HasDerivAt (deriv (deriv F))
      (deriv (deriv (deriv F)) s) s :=
    (hF2.differentiable (by norm_num) s).hasDerivAt
  have hd3 (s : ℝ) : HasDerivAt (deriv (deriv (deriv F)))
      (deriv (deriv (deriv (deriv F))) s) s :=
    (hF3.differentiable (by norm_num) s).hasDerivAt
  have he (s : ℝ) := ((hasDerivAt_id s).div_const 2).exp
  have hd : deriv (sourcePeanoPrimitive A) =
      (fun s => Real.exp (s / 2) *
        (deriv (deriv (deriv F)) s - deriv (deriv F) s / 2 -
          deriv F s / 4 + F s / 8)) := by
    funext s
    have hp := (he s).mul (((hd2 s).sub (hd1 s)).add ((hd0 s).div_const 4))
    exact (hp.congr_deriv (by dsimp only [id_eq, Pi.add_apply, Pi.sub_apply]; ring)).deriv
  have hp := (he t).mul
    ((((hd3 t).sub ((hd2 t).div_const 2)).sub ((hd1 t).div_const 4)).add
      ((hd0 t).div_const 8))
  have hs : HasDerivAt
      (fun s => Real.exp (s / 2) *
        (deriv (deriv (deriv F)) s - deriv (deriv F) s / 2 -
          deriv F s / 4 + F s / 8))
      (Real.exp (t / 2) *
        (deriv (deriv (deriv (deriv F))) t - deriv (deriv F) t / 2 + F t / 16)) t :=
    hp.congr_deriv (by dsimp only [id_eq, Pi.add_apply, Pi.sub_apply]; ring)
  rw [hd, hs.deriv]
  dsimp only [F]
  rw [primitiveCorrelationZero_fourth_deriv hA,
    primitiveCorrelationZero_second_deriv_eq_neg_one hA,
    sourceCorrelation_eq_primitive_filter hA]
  ring

/-- The actual primitive is globally C²; no regularity is assigned to prime atoms. -/
theorem sourcePeanoPrimitive_contDiff_two {A : ℝ} (hA : 0 < A) :
    ContDiff ℝ 2 (sourcePeanoPrimitive A) := by
  have hc4 := primitiveCorrelationZero_contDiff_four hA
  have hc3 : ContDiff ℝ 3 (deriv (primitiveCorrelationZero A)) := hc4.deriv'
  have hc2 : ContDiff ℝ 2 (deriv (deriv (primitiveCorrelationZero A))) := hc3.deriv'
  have hc1 : ContDiff ℝ 2 (deriv (primitiveCorrelationZero A)) := hc3.of_le (by norm_num)
  have hc0 : ContDiff ℝ 2 (primitiveCorrelationZero A) := hc4.of_le (by norm_num)
  exact ((contDiff_id.div_const (2 : ℝ)).exp).mul ((hc2.sub hc1).add (hc0.div_const 4))

end FormalResearch.RiemannHypothesis.SourcePositivePeanoPrimitive
