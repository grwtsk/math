import ActualLayerCake

/-! Conditional density substitution into the proved actual finite layer-cake.
The entire sigma-uniform envelope is an explicit premise. No cited density
paper is turned into an axiom or an accepted actual counting instance. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.DensitySubstitution
open MeasureTheory Set
open ContinuousResearch.ActualLayerCake

def envelope (C a b T σ : ℝ) : ℝ :=
  C*(2*T)^(a*(1-σ))*(Real.log (2*T))^b

def mixedExponent (A a T σ : ℝ) : ℝ :=
  (2*σ-1)*A+a*(1-σ)*Real.log (2*T)

theorem envelope_exp (C a b T σ : ℝ) (hT : 0 < T) :
    envelope C a b T σ =
      C*Real.exp (a*(1-σ)*Real.log (2*T))*(Real.log (2*T))^b := by
  unfold envelope
  rw [Real.rpow_def_of_pos (by positivity : 0 < 2*T)]
  ring_nf

theorem envelope_continuous (C a b T : ℝ) (hT : 0 < T) :
    Continuous (envelope C a b T) := by
  have heq : envelope C a b T = fun σ =>
    C*Real.exp (a*(1-σ)*Real.log (2*T))*(Real.log (2*T))^b := by
    funext σ
    exact envelope_exp C a b T σ hT
  rw [heq]
  fun_prop

theorem weighted_envelope_integrable (A C a b T u v : ℝ) (hT : 0 < T) :
    IntervalIntegrable (fun σ => densityWeight A σ*envelope C a b T σ) volume u v :=
  ((densityWeight_continuous A).mul (envelope_continuous C a b T hT)).intervalIntegrable u v

/-- All A and T dependence survives inside the integrated exponent. -/
theorem product_exponent (A C a b T σ : ℝ) (hT : 0 < T) :
    densityWeight A σ * envelope C a b T σ =
      (2*A*C*(Real.log (2*T))^b)*Real.exp (mixedExponent A a T σ) := by
  rw [envelope_exp C a b T σ hT]
  unfold densityWeight mixedExponent
  have he : (2*σ-1)*A+a*(1-σ)*Real.log (2*T) =
      2*A*(σ-1/2)+a*(1-σ)*Real.log (2*T) := by ring
  rw [he,Real.exp_add]
  ring

/-- This is conditional on the literal actual count for every integration sigma. -/
theorem actual_density_substitution (A C a b T : ℝ) (hA : 1 ≤ A) (hT : 2 ≤ T)
    (hDensity : ∀ σ ∈ Icc (1/2 : ℝ) 1, nT T σ ≤ envelope C a b T σ) :
    (∑ o : DyadicOccurrence T,
      if 1/2 < beta o then Real.exp (2*A*(beta o-1/2)) else 0) ≤
      envelope C a b T (1/2) +
        (2*A*C*(Real.log (2*T))^b)*
          ∫ σ in (1/2 : ℝ)..1, Real.exp (mixedExponent A a T σ) := by
  have ht : 0 < T := by linarith
  have ha : 0 ≤ A := by linarith
  have hi : (∫ σ in (1/2 : ℝ)..1, densityWeight A σ*nT T σ) ≤
      ∫ σ in (1/2 : ℝ)..1, densityWeight A σ*envelope C a b T σ := by
    apply intervalIntegral.integral_mono_on (by norm_num)
      (weighted_count_integrable A T (1/2) 1)
      (weighted_envelope_integrable A C a b T (1/2) 1 ht)
    intro σ hσ
    exact mul_le_mul_of_nonneg_left (hDensity σ hσ) (densityWeight_nonneg A σ ha)
  have hm : 2*A*(∫ σ in (1/2 : ℝ)..1,
      Real.exp (2*A*(σ-1/2))*nT T σ) =
      ∫ σ in (1/2 : ℝ)..1, densityWeight A σ*nT T σ := by
    rw [← intervalIntegral.integral_const_mul]
    congr 1
    funext σ
    simp only [densityWeight]
    ring
  have he : (∫ σ in (1/2 : ℝ)..1, densityWeight A σ*envelope C a b T σ) =
      (2*A*C*(Real.log (2*T))^b)*
        ∫ σ in (1/2 : ℝ)..1, Real.exp (mixedExponent A a T σ) := by
    simp_rw [product_exponent A C a b T _ ht]
    rw [intervalIntegral.integral_const_mul]
  rw [actual_layer_cake,hm]
  exact (add_le_add (hDensity (1/2) (by norm_num)) hi).trans_eq (by rw [he])

#print axioms envelope
#print axioms mixedExponent
#print axioms envelope_exp
#print axioms envelope_continuous
#print axioms weighted_envelope_integrable
#print axioms product_exponent
#print axioms actual_density_substitution
end ContinuousResearch.DensitySubstitution
