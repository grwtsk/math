# Complete source: GRWTSK.NumberTheory.Chebyshev.CompactProfilePairingIntegrability

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cd680a1eaf9989e5455ec7976c6772e4ff9f71a4` · SHA-256 `fe0a14ed70994a5c104bb7e4db1e8480451131ec35576931bba254ed76b13e0b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Integration.CompactPolynomialMoments
import GRWTSK.Analysis.Convolution.CompactProfileCorrelation
import Mathlib.MeasureTheory.Function.Floor

/-!
# Genuine integrability of the source's finite signed arithmetic pairing

The literal closed prime-power count is measurable and bounded on each finite
logarithmic interval. The actual source weight is continuous. These are finite
well-formedness proofs; the allowance is not a uniform arithmetic budget.

Research direction: grwtsk contributors. Implementation: OpenAI Codex.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap.SourceSignedIntegrability

open MeasureTheory Set
open GRWTSK.RiemannHypothesis.SourcePairing
open SourceResidual SourceClosedNormalization SourceRegularity

noncomputable section

theorem chebyshev_prime_power_nonneg (x : ℝ) : 0 ≤ chebyshevPrimePower x := by
  unfold chebyshevPrimePower
  exact Finset.sum_nonneg (fun _ _ ↦ ArithmeticFunction.vonMangoldt_nonneg)

theorem chebyshev_prime_power_monotone : Monotone chebyshevPrimePower := by
  intro x y hxy
  unfold chebyshevPrimePower
  apply Finset.sum_le_sum_of_subset_of_nonneg
  · intro n hn
    exact Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hn).1,
      (Finset.mem_Icc.mp hn).2.trans (Nat.floor_mono hxy)⟩
  · intro _ _ _
    exact ArithmeticFunction.vonMangoldt_nonneg

theorem error_profile_measurable : Measurable errorProfile := by
  have countMeasurable : Measurable (fun N : ℕ ↦
      ∑ n ∈ Finset.Icc 2 N, ArithmeticFunction.vonMangoldt n) := measurable_of_countable _
  exact (countMeasurable.comp (Nat.measurable_floor.comp Real.measurable_exp)).sub
    Real.measurable_exp

theorem error_profile_bound {t T : ℝ} (ht : t ≤ T) :
    ‖errorProfile t‖ ≤ chebyshevPrimePower (Real.exp T) + Real.exp T := by
  change |chebyshevPrimePower (Real.exp t) - Real.exp t| ≤ _
  calc
    _ ≤ |chebyshevPrimePower (Real.exp t)| + |Real.exp t| := by
      simpa only [sub_zero, zero_sub, abs_neg] using
        abs_sub_le (chebyshevPrimePower (Real.exp t)) 0 (Real.exp t)
    _ = chebyshevPrimePower (Real.exp t) + Real.exp t := by
      rw [abs_of_nonneg (chebyshev_prime_power_nonneg _), abs_of_pos (Real.exp_pos _)]
    _ ≤ chebyshevPrimePower (Real.exp T) + Real.exp T :=
      add_le_add (chebyshev_prime_power_monotone (Real.exp_le_exp.mpr ht))
        (Real.exp_le_exp.mpr ht)

theorem source_weight_continuous {A : ℝ} (hA : 0 < A) :
    Continuous (sourceWeight sourceSecond A) := by
  unfold sourceWeight
  rw [source_pairing_correlation_eq hA]
  have correlationContinuous := (correlation_contDiff_one hA).continuous
  have derivativeContinuous := (correlation_contDiff_one hA).continuous_deriv_one
  fun_prop

theorem signed_pairing_integrable {A : ℝ} (hA : 1 ≤ A) :
    IntervalIntegrable (fun t ↦ errorProfile t * sourceWeight sourceSecond A t)
      volume lowerEndpoint (2 * A) := by
  rw [intervalIntegrable_iff_integrableOn_Icc_of_le (source_interval_order A hA)]
  have weight := (source_weight_continuous (by linarith : 0 < A)).integrableOn_Icc
    (a := lowerEndpoint) (b := 2 * A) (μ := volume)
  apply weight.bdd_mul error_profile_measurable.aestronglyMeasurable
  · filter_upwards [ae_restrict_mem measurableSet_Icc] with t ht
    exact error_profile_bound ht.2

end

end GRWTSK.ProofHorizon.CorkscrewChamberCap.SourceSignedIntegrability
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=44d5791ab39db5d54eecdf5f4cdf2555dc9b1404fe80e43298a4c7c3fe5ce279 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Chebyshev/CompactProfilePairingIntegrability.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
