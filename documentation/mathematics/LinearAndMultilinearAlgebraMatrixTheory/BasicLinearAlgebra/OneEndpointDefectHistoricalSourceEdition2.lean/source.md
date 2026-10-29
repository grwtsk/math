# Complete source: GRWTSK.Analysis.OperatorTheory.SpectralTheory.FiniteVolume.Checks.Negative.OneEndpointDefect

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e5abc936b064ad62377328df11cab3f787dad722` · SHA-256 `c3a58c7c628c2f1428c64e68d0e0455b0177e368044289bcca545b40ee20eeae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.OperatorTheory.SpectralTheory.DirichletCut
open GRWTSK.Spectral.DirichletCut
-- This vector vanishes at the first endpoint and still has a nonzero edge image.
example : (joiningEdge 2 0).mulVec (fun j : Fin 2 => if j = 1 then 1 else 0) 0 = 0 := by
  norm_num [joiningEdge, Matrix.mulVec, dotProduct, Fin.sum_univ_two]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d20260e08047b072af90c48b75301e8227b5fee8783f6b9a0079b9c62eb0bedd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/OperatorTheory/SpectralTheory/FiniteVolume/Checks/Negative/OneEndpointDefect__SourceOccurrencef0f50c3181ef32c7b7cf700a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
