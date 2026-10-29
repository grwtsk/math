# Complete source: GRWTSK.Analysis.OperatorTheory.SpectralTheory.FiniteVolume.Checks.Negative.MissingIDS2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0c5c13ebbaf401ed87c81c89cfe224617c5ea3de` · SHA-256 `ca0bf886fb15f6547a881ccb073843cfbc2d8bc2f62e25d2b1d3091c81639024`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.OperatorTheory.SpectralTheory.GapTransport
open GRWTSK.Spectral.GapTransport

-- A monotone plateau alone does not supply local constancy iff outside spectrum.
example : OpenLabelGap Set.univ (fun _ : ℝ => 0) 0 (-1) 1 := by
  exact monotone_plateau_alone_is_not_a_gap.1
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=52d2f7fb4085d124d2ec33a23ea95bae82b8dea14ec81d259c88907895049009 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/OperatorTheory/SpectralTheory/FiniteVolume/Checks/Negative/MissingIDS2__SourceOccurrence23925e99f8c6fdeb74df7cb5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
