# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RhEstimateCriticalAbsoluteMajorant.Variant05af7330153f837de4ed49545f03ad6a437abb3945acadcc968d7eb5f013d649

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9b46ef0ff1c19a423be677fc383bf3ffa3c6c183` · SHA-256 `05af7330153f837de4ed49545f03ad6a437abb3945acadcc968d7eb5f013d649`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateCriticalMajorantGrowth

set_option autoImplicit false

open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateCriticalMajorantGrowth EstimateCriticalPrimeErrorMajorant
open FormalResearch.RiemannHypothesis.SourcePairing

example :
    ∃ c : ℝ, 0 < c ∧ ∃ R : ℝ, 1 ≤ R ∧
      ∀ A : ℝ, R ≤ A →
        c * A ≤ ∫ t in lowerEndpoint..2 * A,
          powerErrorMajorant A (1/2) (fun _ ↦ 1) t :=
  critical_majorant_linear_growth

example (A : ℝ) (hA : 32000 ≤ A) :
    (1 / 32000 : ℝ) * A ≤
      ∫ t in lowerEndpoint..2 * A, powerErrorMajorant A (1/2) (fun _ ↦ 1) t :=
  critical_majorant_ge_linear A hA
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=09dc289bdc2a7fd349147ae41f8bdeda3043b974a5a181f1d832dc7423a7359b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RhEstimateCriticalAbsoluteMajorant/Variant05af7330153f837de4ed49545f03ad6a437abb3945acadcc968d7eb5f013d649.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
