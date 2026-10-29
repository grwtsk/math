# Fixtures Edition5 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `36eb9210b2d4b1a0c0f9aa03b784896b243a5ce4` · SHA-256 `63502a97ee9c70e26b215ce738bc6926f71240e9b59084685a8ccf12dfa19fdd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Cycle14PhaseMassRegent

noncomputable section
open FormalResearch.RiemannHypothesis.SourcePhaseMassFTC
open FormalResearch.RiemannHypothesis.SourcePairedPrimeWork
open FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel

example {A : ℝ} (hA : 1 ≤ A) : criticalPrimeTest A 0 - 1 = 0 := by
  rw [criticalPrimeTest_sub_one_eq_phase_prefix hA 0]
  simp

example {A : ℝ} (hA : 1 ≤ A) (u : ℝ) : criticalPrimeTest A u - 1 =
    (∫ t in 0..u, positiveSlope A t) - (∫ t in 0..u, negativeSlope A t) :=
  criticalPrimeTest_sub_one_eq_phase_prefix hA u

example : ¬ ∃ B R : ℝ, ∀ A : ℝ, 1 ≤ A → R ≤ A → positiveMass A ≤ B :=
  positiveMass_not_eventually_bounded
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b21b991ce0ab5d3d52bb9e35acf73d4abf582a05f53bd8bb0870fec469151120 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fixtures/Variant63502a97ee9c70e26b215ce738bc6926f71240e9b59084685a8ccf12dfa19fdd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
