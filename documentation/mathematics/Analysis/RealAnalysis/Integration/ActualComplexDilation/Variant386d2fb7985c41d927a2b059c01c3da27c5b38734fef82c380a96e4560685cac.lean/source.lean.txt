import PositiveDilation

/-! Independently typed actual complex L2 readout and its normalized dilation orbits.
Research direction grwtsk contributors; focused scratch proof OpenAI Codex.
No target distance, density, closure, or RH property is assumed. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualComplexDilation
open MeasureTheory Set Filter
open ContinuousResearch.PositiveDilation ContinuousResearch.ActualMuntzInventory
open ContinuousResearch.ActualMuntzBound

def actualComplexOperator (A x : ℝ) : ℂ := actualMuntz A x

theorem actualComplexOperator_memLp {A : ℝ} (hA : 1 ≤ A) :
    MemLp (actualComplexOperator A) 2 positiveMeasure :=
  (actualMuntz_memLp_positive hA).ofReal

def actualComplexL2 (A : ℝ) (hA : 1 ≤ A) : PositiveL2 :=
  (actualComplexOperator_memLp hA).toLp (actualComplexOperator A)

theorem actualComplexL2_ae (A : ℝ) (hA : 1 ≤ A) :
    actualComplexL2 A hA =ᵐ[positiveMeasure] actualComplexOperator A :=
  (actualComplexOperator_memLp hA).coeFn_toLp

theorem actualComplexL2_norm_sq (A : ℝ) (hA : 1 ≤ A) :
    ‖actualComplexL2 A hA‖^2 = ∫ x in Ioi 0, (actualMuntz A x)^2 := by
  rw [norm_sq_integral]
  apply integral_congr_ae
  filter_upwards [actualComplexL2_ae A hA] with x hx
  simp only [hx,actualComplexOperator,Complex.norm_real,Real.norm_eq_abs,sq_abs]

theorem dilate_actual_ae (A : ℝ) (hA : 1 ≤ A) (a : ℝ) (ha : 0 < a) :
    dilate a ha (actualComplexL2 A hA) =ᵐ[positiveMeasure]
      (fun x => (Real.sqrt a : ℂ)*actualComplexOperator A (a*x)) := by
  filter_upwards [dilate_ae a ha (actualComplexL2 A hA),
    (positive_mul_quasi ha).ae_eq_comp (actualComplexL2_ae A hA)] with x hx hy
  dsimp only [Function.comp_apply] at hy
  rw [hx,dilateFunc,hy]

theorem dilate_actual_norm (A : ℝ) (hA : 1 ≤ A) (a : ℝ) (ha : 0 < a) :
    ‖dilate a ha (actualComplexL2 A hA)‖ = ‖actualComplexL2 A hA‖ :=
  dilate_norm a ha (actualComplexL2 A hA)

/-- Integer orbits use exactly positive natural dilations, distinct from arbitrary a>0. -/
def integerOrbit (A : ℝ) (hA : 1 ≤ A) (n : {n : ℕ // 0 < n}) : PositiveL2 :=
  dilate (n.val : ℝ) (by exact_mod_cast n.property) (actualComplexL2 A hA)

theorem integerOrbit_ae (A : ℝ) (hA : 1 ≤ A) (n : {n : ℕ // 0 < n}) :
    integerOrbit A hA n =ᵐ[positiveMeasure]
      (fun x => (Real.sqrt (n.val : ℝ) : ℂ)*actualComplexOperator A ((n.val : ℝ)*x)) :=
  dilate_actual_ae A hA (n.val : ℝ) (by exact_mod_cast n.property)

theorem integerOrbit_norm (A : ℝ) (hA : 1 ≤ A) (n : {n : ℕ // 0 < n}) :
    ‖integerOrbit A hA n‖ = ‖actualComplexL2 A hA‖ :=
  dilate_actual_norm A hA (n.val : ℝ) (by exact_mod_cast n.property)

end ContinuousResearch.ActualComplexDilation

/- Complete public type, proof and trusted dependency audits. -/

#check ContinuousResearch.ActualComplexDilation.actualComplexOperator
#print axioms ContinuousResearch.ActualComplexDilation.actualComplexOperator
#print ContinuousResearch.ActualComplexDilation.actualComplexOperator

#check ContinuousResearch.ActualComplexDilation.actualComplexOperator_memLp
#print axioms ContinuousResearch.ActualComplexDilation.actualComplexOperator_memLp
#print ContinuousResearch.ActualComplexDilation.actualComplexOperator_memLp

#check ContinuousResearch.ActualComplexDilation.actualComplexL2
#print axioms ContinuousResearch.ActualComplexDilation.actualComplexL2
#print ContinuousResearch.ActualComplexDilation.actualComplexL2

#check ContinuousResearch.ActualComplexDilation.actualComplexL2_ae
#print axioms ContinuousResearch.ActualComplexDilation.actualComplexL2_ae
#print ContinuousResearch.ActualComplexDilation.actualComplexL2_ae

#check ContinuousResearch.ActualComplexDilation.actualComplexL2_norm_sq
#print axioms ContinuousResearch.ActualComplexDilation.actualComplexL2_norm_sq
#print ContinuousResearch.ActualComplexDilation.actualComplexL2_norm_sq

#check ContinuousResearch.ActualComplexDilation.dilate_actual_ae
#print axioms ContinuousResearch.ActualComplexDilation.dilate_actual_ae
#print ContinuousResearch.ActualComplexDilation.dilate_actual_ae

#check ContinuousResearch.ActualComplexDilation.dilate_actual_norm
#print axioms ContinuousResearch.ActualComplexDilation.dilate_actual_norm
#print ContinuousResearch.ActualComplexDilation.dilate_actual_norm

#check ContinuousResearch.ActualComplexDilation.integerOrbit
#print axioms ContinuousResearch.ActualComplexDilation.integerOrbit
#print ContinuousResearch.ActualComplexDilation.integerOrbit

#check ContinuousResearch.ActualComplexDilation.integerOrbit_ae
#print axioms ContinuousResearch.ActualComplexDilation.integerOrbit_ae
#print ContinuousResearch.ActualComplexDilation.integerOrbit_ae

#check ContinuousResearch.ActualComplexDilation.integerOrbit_norm
#print axioms ContinuousResearch.ActualComplexDilation.integerOrbit_norm
#print ContinuousResearch.ActualComplexDilation.integerOrbit_norm
