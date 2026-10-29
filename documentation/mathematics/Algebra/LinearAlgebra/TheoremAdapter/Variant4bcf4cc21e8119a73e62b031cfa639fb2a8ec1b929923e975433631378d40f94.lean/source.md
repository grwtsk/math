# Complete source: GRWTSK.Algebra.LinearAlgebra.TheoremAdapter.Variant4bcf4cc21e8119a73e62b031cfa639fb2a8ec1b929923e975433631378d40f94

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ffe1d16ab4744f63502eb0d6f794906fb34b79af` · SHA-256 `4bcf4cc21e8119a73e62b031cfa639fb2a8ec1b929923e975433631378d40f94`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrix.Codec

namespace Surface.Legacy

structure EncodedTheorem where
  statement : Prop
  matrixDescriptor : Sigma fun rows => Sigma fun cols => BinaryLogicMatrix rows cols
  soundProof : statement
  claimBoundary : String

theorem encodedTheorem_matrix_sound (T : EncodedTheorem) :
    T.statement :=
  T.soundProof

structure BinaryLogicMatrixTheoremAdapter
    (α β : Type) [BinaryLogicMatrixCodec α] [BinaryLogicMatrixCodec β] where
  sourceStatement : Prop
  targetStatement : Prop
  sourceMap : α -> β
  transport : sourceStatement -> targetStatement
  dependencyPrecision : String
  claimBoundary : String

theorem theoremAdapter_sound
    {α β : Type} [BinaryLogicMatrixCodec α] [BinaryLogicMatrixCodec β]
    (A : BinaryLogicMatrixTheoremAdapter α β) :
    A.sourceStatement -> A.targetStatement := by
  intro h
  exact A.transport h

theorem theoremAdapter_boundary_visible
    {α β : Type} [BinaryLogicMatrixCodec α] [BinaryLogicMatrixCodec β]
    (A : BinaryLogicMatrixTheoremAdapter α β) :
    A.claimBoundary = A.claimBoundary := by
  rfl

end Surface.Legacy
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7cebd8c0f76ae045b6e34ff80f7bb97620a3f8da11cda05407f1432b2044a52d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/TheoremAdapter/Variant4bcf4cc21e8119a73e62b031cfa639fb2a8ec1b929923e975433631378d40f94.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
