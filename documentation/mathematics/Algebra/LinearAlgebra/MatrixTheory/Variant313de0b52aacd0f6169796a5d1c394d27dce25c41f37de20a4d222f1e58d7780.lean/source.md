# Complete source: GRWTSK.Algebra.LinearAlgebra.Matrix.Variant313de0b52aacd0f6169796a5d1c394d27dce25c41f37de20a4d222f1e58d7780

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `29782adc4ab78e262033c66c6fbf651e1fa91489` · SHA-256 `313de0b52aacd0f6169796a5d1c394d27dce25c41f37de20a4d222f1e58d7780`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Kakeya.Berkovich.Skeleton

namespace Think.Kakeya.ForceDensity

structure ForceDensityMatrixLayout where
  rowCount : Nat
  columnCount : Nat
  storageFormat : String
deriving Repr, DecidableEq

def defaultBridgeMatrixLayout : ForceDensityMatrixLayout :=
  { rowCount := 2, columnCount := 2, storageFormat := "dense-128" }

def forceDensityEquilibriumLaw : String :=
  "A_fd q = r"

end Think.Kakeya.ForceDensity
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e54b76ff503db1824378ac6ce50e3ec0067de6c88e514b528e1451157ce16aa9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/MatrixTheory/Variant313de0b52aacd0f6169796a5d1c394d27dce25c41f37de20a4d222f1e58d7780.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
