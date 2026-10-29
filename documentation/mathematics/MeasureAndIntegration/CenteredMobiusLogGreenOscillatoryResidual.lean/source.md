# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenOscillatoryResidual

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `609c2965a5ad5ffcf85ca047484c95a1f3f402ba` · SHA-256 `238287a1436960573ab948d3046a68c2ab8f83167cbc19c5edf09cb93945449c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenFiniteHeadComparison
import Mathlib.Tactic
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

/-- The primitive is a 1/k multiple of phase minus one. -/
theorem fourierModeValue_factor_phase_sub_one
    {k : ℤ} (hk : k ≠ 0) (t : ℝ) :
    fourierModeValue k t =
      (1 : ℂ) / (-2 * Real.pi * Complex.I * k) *
        (fourier (-k) (t : AddCircle (1 : ℝ)) - 1) := by
  unfold fourierModeValue fourierModePrimitive
  have hz : fourier (-k) ((0 : ℝ) : AddCircle (1 : ℝ)) = 1 := by simp
  rw [hz]
  ring

/-- Harmonic quadrature residual for the constant part of phase-minus-one. -/
def greenConstantHarmonicResidual (X : ℕ) : ℂ :=
  (∫ t in (0 : ℝ)..1, (1 : ℂ) / (1 + (t : ℂ))) -
    ∑ j ∈ Finset.Icc 1 X,
      ((1 / (X : ℝ) : ℝ) : ℂ) *
        ((1 : ℂ) / (1 + (greenRightMeshPoint X j : ℂ)))

/-- Oscillatory quadrature residual for the root-of-unity phase. -/
def greenPhaseHarmonicResidual (X : ℕ) (k : ℤ) : ℂ :=
  (∫ t in (0 : ℝ)..1,
      fourier (-k) (t : AddCircle (1 : ℝ)) / (1 + (t : ℂ))) -
    ∑ j ∈ Finset.Icc 1 X,
      ((1 / (X : ℝ) : ℝ) : ℂ) *
        (fourier (-k)
            (greenRightMeshPoint X j : AddCircle (1 : ℝ)) /
          (1 + (greenRightMeshPoint X j : ℂ)))

/-- Exact oscillatory decomposition of the centering residual. Both pieces
carry the explicit 1/k primitive prefactor. -/
theorem greenCenteringResidual_eq_phase_sub_constant
    {X : ℕ} (hX : 1 ≤ X)
    {k : ℤ} (hk : k ≠ 0) :
    greenCenteringResidual X k =
      (1 : ℂ) / (-2 * Real.pi * Complex.I * k) *
        (greenPhaseHarmonicResidual X k -
          greenConstantHarmonicResidual X) := by
  rw [greenCenteringResidual_eq_integral_sub_rightRiemannSum hX]
  unfold greenFourierBackgroundCoordinate greenFourierRightRiemannSum
    greenFourierBackgroundIntegrand
    greenPhaseHarmonicResidual greenConstantHarmonicResidual
  simp_rw [fourierModeValue_factor_phase_sub_one hk]
  rw [intervalIntegral.integral_const_mul]
  simp_rw [mul_div_assoc]
  rw [Finset.mul_sum]
  ring

/-- Aliasing predicate for mesh frequency k mod X. -/
def GreenMeshAliasing (X : ℕ) (k : ℤ) : Prop :=
  (X : ℤ) ∣ k

/-- Nonaliasing is the exact regime where the mesh phase is nonconstant. -/
def GreenMeshNonaliasing (X : ℕ) (k : ℤ) : Prop :=
  ¬ GreenMeshAliasing X k

end GRWTSK.RiemannHypothesis
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6b2712804a024cdd03e9afd10e34add10a6470230a30aa54f0feb08b63f65afb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenOscillatoryResidual.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
