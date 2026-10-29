# Higher Power Weight Audit — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `263a3a31cfbf301339adb1930bd152a4e2bdec7c` · SHA-256 `381a50b188bf41c3616cbd8ebd9f5e34eae3fdc34ce9f14914f49ee27a0c4440`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareSource

set_option autoImplicit false
namespace HigherPowerWeightScratch
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization
noncomputable section

/-- The literal square root at a natural prime-power index matches the real-power coefficient. -/
theorem sqrt_nat_power (p k : ℕ) :
    Real.sqrt ((p ^ k : ℕ) : ℝ) = (p : ℝ) ^ ((k : ℝ) / 2) := by
  rw [Nat.cast_pow, Real.sqrt_eq_rpow, ← Real.rpow_natCast, ← Real.rpow_mul (Nat.cast_nonneg p)]
  congr 1
  ring

/-- The original Mangoldt weight at every exponent at least three has its exact prime-root value. -/
theorem higher_prime_power_weight (p k : ℕ) (hp : p.Prime) (hk : 3 ≤ k) :
    ArithmeticFunction.vonMangoldt (p ^ k) / Real.sqrt ((p ^ k : ℕ) : ℝ) =
      Real.log (p : ℝ) / (p : ℝ) ^ ((k : ℝ) / 2) := by
  rw [ArithmeticFunction.vonMangoldt_apply_pow (by omega : k ≠ 0),
    ArithmeticFunction.vonMangoldt_apply_prime hp, sqrt_nat_power]

/-- Exact source summand transport retains the normalized correlation and its logarithmic location. -/
theorem higher_prime_power_summand (A : ℝ) (p k : ℕ) (hp : p.Prime) (hk : 3 ≤ k) :
    ArithmeticFunction.vonMangoldt (p ^ k) / Real.sqrt ((p ^ k : ℕ) : ℝ) *
      sourceCorrelation explicitSecondDerivative A (Real.log ((p ^ k : ℕ) : ℝ)) =
    Real.log (p : ℝ) / (p : ℝ) ^ ((k : ℝ) / 2) *
      sourceCorrelation explicitSecondDerivative A ((k : ℝ) * Real.log (p : ℝ)) := by
  rw [higher_prime_power_weight p k hp hk, Nat.cast_pow, Real.log_pow]

end
end HigherPowerWeightScratch

set_option pp.universes true
#print HigherPowerWeightScratch.sqrt_nat_power
#print axioms HigherPowerWeightScratch.sqrt_nat_power
#print HigherPowerWeightScratch.higher_prime_power_weight
#print axioms HigherPowerWeightScratch.higher_prime_power_weight
#print HigherPowerWeightScratch.higher_prime_power_summand
#print axioms HigherPowerWeightScratch.higher_prime_power_summand
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=582bce5bf06d6b0abfa118536cb6d6eb8477c03430efee11a13c4613478968e4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/HigherPowerWeightAudit/Variant381a50b188bf41c3616cbd8ebd9f5e34eae3fdc34ce9f14914f49ee27a0c4440.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
