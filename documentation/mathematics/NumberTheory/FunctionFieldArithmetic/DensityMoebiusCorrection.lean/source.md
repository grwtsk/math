# Complete source: GRWTSK.NumberTheory.FunctionFieldArithmetic.DensityMoebiusCorrection

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8f3d58f02fc4408622637418d882ec489b43660a` · SHA-256 `fc79ffee98433b5a362450e4420d7083af2cb995131935355289f0ea51f45bee`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.NumberTheory.FunctionFieldArithmetic.DensityMoebius
import Mathlib.NumberTheory.ArithmeticFunction.Moebius

/-!
# Exact convolution correction of the density Möbius coefficients

Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI Codex.
ArithmeticFunction multiplication is Dirichlet convolution. Complete divisor
sums retain prime powers. No cancellation rate or growth witness is asserted.
-/
noncomputable section
set_option autoImplicit false
namespace GRWTSK.NumberTheory.ArithmeticFunctions
open scoped ArithmeticFunction.Moebius ArithmeticFunction.zeta

/-- The fixed density source as an arithmetic function, including zero. -/
def densityMoebiusFunction : ArithmeticFunction ℝ :=
  ⟨densityMobiusCoefficient, density_mobius_coefficient_zero⟩

/-- Complete correction, defined independently by convolution with zeta. -/
def densityMoebiusCorrection : ArithmeticFunction ℝ :=
  densityMoebiusFunction * ζ

/-- Exact source return before any positivity or tail estimate. -/
theorem density_moebius_correction_return :
    (μ : ArithmeticFunction ℝ) * densityMoebiusCorrection = densityMoebiusFunction := by
  unfold densityMoebiusCorrection
  calc
    (μ : ArithmeticFunction ℝ) * (densityMoebiusFunction * ζ) =
        (μ * ζ) * densityMoebiusFunction := by ring
    _ = densityMoebiusFunction := by
      rw [ArithmeticFunction.coe_moebius_mul_coe_zeta, one_mul]

/-- Every divisor of each actual source output is retained. -/
theorem density_moebius_correction_divisors (n : ℕ) :
    densityMoebiusCorrection n = ∑ d ∈ n.divisors, densityMobiusCoefficient d := by
  exact ArithmeticFunction.coe_mul_zeta_apply

/-- Literal initial coefficient. -/
theorem density_moebius_correction_one : densityMoebiusCorrection 1 = 1 := by
  rw [density_moebius_correction_divisors]
  simp [density_mobius_coefficient_one]

/-- The actual prime coefficient of the positive correction. -/
theorem density_moebius_correction_prime {p : ℕ} (hp : p.Prime) :
    densityMoebiusCorrection p = 1 / ((p : ℝ) + 1) := by
  rw [density_moebius_correction_divisors, hp.divisors]
  simp only [Finset.sum_pair hp.ne_one.symm, density_mobius_coefficient_one,
    density_mobius_coefficient_prime hp]
  have h : (p : ℝ) + 1 ≠ 0 := by positivity
  field_simp
  ring

end GRWTSK.NumberTheory.ArithmeticFunctions
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a3f34566d5f46921f18a5dcc0e67b4ed03ac82f975cc1926549cfac66552b714 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/FunctionFieldArithmetic/DensityMoebiusCorrection.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
