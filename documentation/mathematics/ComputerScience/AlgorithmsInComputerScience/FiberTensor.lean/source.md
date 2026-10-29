# Fiber Tensor — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a7ba452a66b162109eafbc741ae36d4e79b859ed` · SHA-256 `58bebfa0831b70114e70db02c249432fd3572c51df2b01b7d04c3fda28ace897`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrix.Similarity

namespace Surface.Legacy

inductive FactorRole
| lexical
| syntactic
| semanticDescriptor
| theoremTarget
| fixtureTarget
| symmetryCandidate
| torsionCandidate
| claimBoundary
deriving DecidableEq, Repr

structure BinaryMatrixFactor where
  id : Nat
  rows : Nat
  cols : Nat
  value : BinaryLogicMatrix rows cols
  role : FactorRole

structure FiberTensorSite where
  siteId : Nat
  baseFactor : Nat
  fiberFactor : Nat
  anchor : BinaryLogicMatrix 1 1

structure BinaryMatrixFiberTensor where
  sourceFactors : List BinaryMatrixFactor
  targetFactors : List BinaryMatrixFactor
  shared : BinaryLogicMatrix sourceFactors.length targetFactors.length
  distinctSource : BinaryLogicMatrix sourceFactors.length 1
  distinctTarget : BinaryLogicMatrix targetFactors.length 1
  sites : List FiberTensorSite
  claimBoundary : String

theorem binaryMatrixFiberTensor_shared_rows
    (T : BinaryMatrixFiberTensor) :
    (T.shared : BinaryLogicMatrix T.sourceFactors.length T.targetFactors.length) = T.shared := by
  rfl

theorem fiberTensor_boundary_visible
    (T : BinaryMatrixFiberTensor) :
    T.claimBoundary = T.claimBoundary := by
  rfl

end Surface.Legacy
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=187169f41f001dc7ddef7818eed687ba4e8a39cfb6c99ab1cbc042acbccf0dd5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiberTensor/Variant58bebfa0831b70114e70db02c249432fd3572c51df2b01b7d04c3fda28ace897.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
