# Complete source: GRWTSK.Analysis.Fourier.Checks.Negative.LargerSliceMissingMargin

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `26e7099c5316fcfdaa5a22a64c6ba29d2e71df60` · SHA-256 `340a90e04188051a1288aa83b54315b4009cdc79b7c8a40da18a5744698fb376`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Intended rejection: the epsilon margin cannot be omitted from the
larger-slice theorem's conclusion. This has one deliberate type mismatch. -/
import GRWTSK.Analysis.Fourier.ZModLargerSlice

example {p m : ℕ} [NeZero p] (hp : p.Prime) (S : Finset (ZMod p))
    (hn : 2 ≤ S.card) (hm : 1 ≤ m) (ε : ℝ)
    (hε : 0 < ε) (hε1 : ε < 1) (z : ZMod p) :
    (GRWTSK.ZModSubsetSum.subsetSumProbability S m z : ℝ) ≤
      1 / p + GRWTSK.ZModLargerSliceParameters.largerSliceConstant ε *
        Real.sqrt (Real.log S.card) / ((S.card : ℝ) * Real.sqrt m) := by
  have source_bound : (m : ℝ) ≤ (1 - ε) * S.card →
      (GRWTSK.ZModSubsetSum.subsetSumProbability S m z : ℝ) ≤
        1 / p + GRWTSK.ZModLargerSliceParameters.largerSliceConstant ε *
          Real.sqrt (Real.log S.card) / ((S.card : ℝ) * Real.sqrt m) :=
    fun hdensity =>
      GRWTSK.ZModLargerSlice.subsetSumProbability_le_largerSlice
        hp S hn hm ε hε hε1 hdensity z
  exact source_bound
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0e1624f1ccc4a498340a3308a7f61b78a6873d45046c2afb1c9554a2c4e2a1e4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Checks/Negative/LargerSliceMissingMargin.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
