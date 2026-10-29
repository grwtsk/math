# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenQuadrature

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2c04a47d545871bc81300c88f58d3e64061c74a3` · SHA-256 `73072582d57f837957fa4b76c79a6f6f9152690e6aa12b6f3aa6c5639978ead1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ea0ff2a5c689391c9088271d76cf6f534493dfca4e548d83dae34a6cbca46196 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenQuadrature.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
