# Complete source: GRWTSK.Analysis.Fourier.Checks.Negative.SubsetAntiConcentrationMissingPrime

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fd0e1f397df492a85c0ee2898f2b9af7ae0a8ed5` · SHA-256 `0bfff98d1999db0462c213bd4bfd07556b65b141d701c83df40622cd97994c2b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Intended rejection: a nonzero cyclic modulus does not supply the prime
modulus hypothesis required by the source anti-concentration theorem. -/
import GRWTSK.Analysis.Fourier.ZModBalancedExpectedLayers

example {p m : ℕ} [NeZero p] (S : Finset (ZMod p)) (hn : 2 ≤ S.card)
    (hl : (2 : ℝ) ^ 24 * Real.log S.card ≤ m)
    (hu : (m : ℝ) ≤ (1 / 1000 : ℝ) * S.card / Real.log S.card) (z : ZMod p) :
    (GRWTSK.ZModSubsetSum.subsetSumProbability S m z : ℝ) ≤
      1 / p + (2 : ℝ) ^ 24 / ((S.card : ℝ) * Real.sqrt m) := by
  have source_bound :=
    GRWTSK.ZModBalancedExpectedLayers.subsetSumProbability_le_source_constant (p := p) (m := m)
  exact source_bound
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=217a0f54b816d06c9c2d9894f074727140a16af8008f6504806c289d1509cc99 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Checks/Negative/SubsetAntiConcentrationMissingPrime.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
