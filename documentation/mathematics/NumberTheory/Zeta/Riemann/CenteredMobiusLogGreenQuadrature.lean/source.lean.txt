/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenFourierBridge
import Mathlib.Tactic
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

/-- Integrand whose continuum integral is the Green Fourier background. -/
def greenFourierBackgroundIntegrand (k : ℤ) (t : ℝ) : ℂ :=
  fourierModeValue k t / (1 + (t : ℂ))

/-- Right-endpoint mesh point j/X on [0,1]. -/
def greenRightMeshPoint (X j : ℕ) : ℝ := (j : ℝ) / (X : ℝ)

/-- Literal right-endpoint Riemann sum with mesh 1/X. -/
def greenFourierRightRiemannSum (X : ℕ) (k : ℤ) : ℂ :=
  ∑ j ∈ Finset.Icc 1 X,
    ((1 / (X : ℝ) : ℝ) : ℂ) *
      greenFourierBackgroundIntegrand k (greenRightMeshPoint X j)

/-- Reindex n=X+j identifies the dyadic harmonic correction with the exact
right-endpoint Riemann sum. -/
theorem greenDiscreteHarmonicFourierCorrection_eq_rightRiemannSum
    {X : ℕ} (hX : 1 ≤ X) (k : ℤ) :
    greenDiscreteHarmonicFourierCorrection X k =
      greenFourierRightRiemannSum X k := by
  unfold greenDiscreteHarmonicFourierCorrection
    centeredGreenHarmonicCorrection centeredGreenHarmonicCorrectionCoefficient
    centeredGreenWindow centeredGreenLocation
    greenFourierRightRiemannSum greenFourierBackgroundIntegrand
    greenRightMeshPoint
  rw [Finset.sum_bij (fun n _ => n - X)]
  · intro n hn
    have hnI := Finset.mem_Ioc.mp hn
    have hXr : (0 : ℝ) < X := by exact_mod_cast hX
    have hnsub : X + (n - X) = n := by omega
    have hden :
        (n : ℝ) =
          (X : ℝ) * (1 + ((n - X : ℕ) : ℝ) / (X : ℝ)) := by
      push_cast
      rw [← hnsub]
      field_simp
      ring
    have hloc :
        (n : ℝ) / (X : ℝ) - 1 =
          ((n - X : ℕ) : ℝ) / (X : ℝ) := by
      push_cast
      rw [← hnsub]
      field_simp
      ring
    rw [hloc]
    simp only
    push_cast
    rw [hden]
    field_simp
    ring
  · intro n hn
    have hnI := Finset.mem_Ioc.mp hn
    exact Finset.mem_Icc.mpr ⟨by omega, by omega⟩
  · intro a ha b hb hab
    omega
  · intro j hj
    have hjI := Finset.mem_Icc.mp hj
    refine ⟨X + j, ?_, by omega⟩
    exact Finset.mem_Ioc.mpr ⟨by omega, by omega⟩

/-- The centering residual is exactly continuum integral minus the right
Riemann sum. -/
theorem greenCenteringResidual_eq_integral_sub_rightRiemannSum
    {X : ℕ} (hX : 1 ≤ X) (k : ℤ) :
    greenCenteringResidual X k =
      greenFourierBackgroundCoordinate k -
        greenFourierRightRiemannSum X k := by
  unfold greenCenteringResidual
  rw [greenDiscreteHarmonicFourierCorrection_eq_rightRiemannSum hX]

/-- Pure algebraic cell error. Analytic estimates may bound each term later. -/
def greenFourierQuadratureCellError
    (X : ℕ) (k : ℤ) (j : ℕ) : ℂ :=
  (∫ t in ((j - 1 : ℕ) : ℝ) / (X : ℝ)..
      (j : ℝ) / (X : ℝ),
      greenFourierBackgroundIntegrand k t) -
    ((1 / (X : ℝ) : ℝ) : ℂ) *
      greenFourierBackgroundIntegrand k (greenRightMeshPoint X j)

/-- Explicit finite sum of cell errors. This statement isolates the intended
quadrature theorem; it requires interval-additivity bookkeeping only, not
arithmetic cancellation. -/
def greenFourierQuadratureCellErrorSum
    (X : ℕ) (k : ℤ) : ℂ :=
  ∑ j ∈ Finset.Icc 1 X, greenFourierQuadratureCellError X k j

end GRWTSK.RiemannHypothesis
