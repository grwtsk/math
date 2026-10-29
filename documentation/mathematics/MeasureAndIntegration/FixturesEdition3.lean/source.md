# Fixtures Edition3 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8c8ddd0ce45e2b22f83699cacf5e5b2b35a22093` · SHA-256 `3e1f0f585fe3baa5be8c24d9f2c4048bbc4330f8a23104977b00e9cb95cfc596`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Cycle14PhaseMassRegent

noncomputable section
open FormalResearch.RiemannHypothesis.SourcePhaseMassFTC
open FormalResearch.RiemannHypothesis.SourcePairedPrimeWork
open FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel
open scoped Interval

example {A : ℝ} (hA : 1 ≤ A) : criticalPrimeTest A 0 - 1 = 0 := by
  rw [criticalPrimeTest_sub_one_eq_phase_prefix hA 0]
  simp

example {A : ℝ} (hA : 1 ≤ A) (u : ℝ) : criticalPrimeTest A u - 1 =
    (∫ t in 0..u, positiveSlope A t) - (∫ t in 0..u, negativeSlope A t) :=
  criticalPrimeTest_sub_one_eq_phase_prefix hA u

example : ¬ ∃ B R : ℝ, ∀ A : ℝ, 1 ≤ A → R ≤ A → positiveMass A ≤ B :=
  positiveMass_not_eventually_bounded
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4908b088b60474712b90bcbb0c821e9cd017b19b22602c7e0ebc651f9ac951a2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fixtures/Variant3e1f0f585fe3baa5be8c24d9f2c4048bbc4330f8a23104977b00e9cb95cfc596.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
