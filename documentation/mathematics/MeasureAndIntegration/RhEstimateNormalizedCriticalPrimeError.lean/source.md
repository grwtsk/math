# Rh Estimate Normalized Critical Prime Error — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d2a2a9221f40fe6ace87392db2961a2a3708e40f` · SHA-256 `ea1f83b936097d6071a0883d9e6b19686eb0cd7d521d6c452d03c42160fff9d6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateCriticalPrimeErrorMajorant

set_option autoImplicit false

open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateCriticalPrimeError EstimateMertensResidual EstimatePrimeSmoothDefect

example (A : ℝ) (hA : 1 ≤ A) :
    primeSmoothDefect A = normalizedCriticalPrimeError A :=
  primeSmoothDefect_eq_normalizedCriticalPrimeError A hA

example : CriticalPrimeErrorTailUpperBound ↔ MertensResidualTailUpperBound :=
  critical_prime_error_tail_iff_mertens_residual_tail

example (A x : ℝ) (hA : 1 ≤ A) (hx : 0 < x) :
    HasDerivAt (criticalWeight A)
      ((deriv (EstimateNormalizedSourceProfile.unitCorrelation A) (Real.log x / A) / A -
        EstimateNormalizedSourceProfile.unitCorrelation A (Real.log x / A) / 2) /
          (x * Real.sqrt x)) x :=
  criticalWeight_hasDerivAt A x (by linarith) hx

example (A : ℝ) (hA : 1 ≤ A) :
    normalizedCriticalPrimeError A = 2 * criticalWeight A 2 -
      ∫ x in (2 : ℝ)..Real.exp (2 * A),
        FormalResearch.RiemannHypothesis.SourcePairing.chebyshevError x *
          deriv (criticalWeight A) x :=
  EstimateCriticalPrimeErrorAbel.criticalPrimeError_eq_chebyshev_integral A hA

example : EstimateCriticalPrimeErrorAbel.CriticalSignedChebyshevTailLowerBound ↔
    MertensResidualTailUpperBound :=
  EstimateCriticalPrimeErrorAbel.critical_signed_tail_iff_mertens_residual_tail

open EstimateCriticalPrimeErrorMajorant MeasureTheory Set

example (A θ C : ℝ) (L : ℝ → ℝ) (hA : 1 ≤ A) (hC : 0 ≤ C)
    (hL : ∀ x ∈ Icc (2 : ℝ) (Real.exp (2 * A)), 0 ≤ L x)
    (hE : ∀ x ∈ Icc (2 : ℝ) (Real.exp (2 * A)),
      |FormalResearch.RiemannHypothesis.SourcePairing.chebyshevError x| ≤ C * x ^ θ * L x)
    (hM : IntervalIntegrable (powerErrorMajorant A θ L) volume
      FormalResearch.RiemannHypothesis.SourcePairing.lowerEndpoint (2 * A)) :
    |normalizedCriticalPrimeError A - 2 * criticalWeight A 2| ≤
      C * ∫ t in FormalResearch.RiemannHypothesis.SourcePairing.lowerEndpoint..2 * A,
        powerErrorMajorant A θ L t :=
  critical_prime_error_abs_le_power_majorant A θ C L hA hC hL hE hM
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bc2c0e22e8cc74ca6892374612370a4c989f26c21f73370740158a433ce3ef2d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RhEstimateNormalizedCriticalPrimeError/Variantea1f83b936097d6071a0883d9e6b19686eb0cd7d521d6c452d03c42160fff9d6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
