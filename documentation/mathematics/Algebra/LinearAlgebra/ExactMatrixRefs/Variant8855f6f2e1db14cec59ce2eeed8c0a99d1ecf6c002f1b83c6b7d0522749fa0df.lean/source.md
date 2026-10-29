# Complete source: GRWTSK.Algebra.LinearAlgebra.ExactMatrixRefs.Variant8855f6f2e1db14cec59ce2eeed8c0a99d1ecf6c002f1b83c6b7d0522749fa0df

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3b512981c35c27c8df952f80f9576c47fd7fb6e4` · SHA-256 `8855f6f2e1db14cec59ce2eeed8c0a99d1ecf6c002f1b83c6b7d0522749fa0df`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.WP0.Identifiers

/-!
# Exact matrix custody references

These records identify exact finite matrices and positivity-checking receipts.
They do not themselves prove positivity.
-/

namespace Mathematics.SemiLocalDefect.SoninCore

inductive PSDDecompositionKind
  | exactCholesky
  | exactLDL
  | matrixSOS
  | stieltjesRepresentation
  | intervalLDL
  | principalMinors
deriving DecidableEq, Repr

structure ExactCoefficientRingRef where
  id : CoefficientRingId
  name : String
  revision : Nat
  digest : Digest
deriving DecidableEq, Repr

structure ExactMatrixRef where
  id : MatrixId
  coefficientRing : CoefficientRingId
  rows : Nat
  cols : Nat
  basisRevision : BasisRevision
  digest : Digest
deriving DecidableEq, Repr

structure ExactPSDCompressionRef where
  matrix : ExactMatrixRef
  factor : Option ExactMatrixRef
  mechanism : PSDDecompositionKind
  proofRef : ProofId
  checkerRef : CheckerId
  checkerRevision : Nat
deriving Repr

end Mathematics.SemiLocalDefect.SoninCore
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=30f3b84a5163519f94af5e3f5af54a9ed3b7050edd081b520add6178a19f1e8e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/ExactMatrixRefs/Variant8855f6f2e1db14cec59ce2eeed8c0a99d1ecf6c002f1b83c6b7d0522749fa0df.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
