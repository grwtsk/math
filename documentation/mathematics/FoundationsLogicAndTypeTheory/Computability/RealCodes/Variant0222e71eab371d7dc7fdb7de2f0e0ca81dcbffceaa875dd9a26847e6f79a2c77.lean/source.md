# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.Computability.RealCodes.Variant0222e71eab371d7dc7fdb7de2f0e0ca81dcbffceaa875dd9a26847e6f79a2c77

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6c8629ebce3cd09aa1b4df9bb275461ff25d048e` · SHA-256 `0222e71eab371d7dc7fdb7de2f0e0ca81dcbffceaa875dd9a26847e6f79a2c77`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrix.Rational

namespace Surface.Legacy

structure ComputableAlgebraicMatrixCode where
  descriptor : String
  witnessMatrix : BinaryLogicMatrix 1 1
  finiteCertificate : Prop

structure OracleRealMatrixCode where
  oracleBit : Nat -> Bool
  visibleApproximation : Nat -> BinaryLogicMatrix 1 1
  oracleRelative : Prop
  claimBoundary : String

theorem computable_algebraic_certificate_projects
    (C : ComputableAlgebraicMatrixCode) :
    C.finiteCertificate -> C.finiteCertificate := by
  intro h
  exact h

theorem oracle_real_is_oracle_relative
    (R : OracleRealMatrixCode) :
    R.oracleRelative -> R.oracleRelative := by
  intro h
  exact h

theorem oracle_real_boundary_visible
    (R : OracleRealMatrixCode) :
    R.claimBoundary = R.claimBoundary := by
  rfl

end Surface.Legacy
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ad0642bcafb6e36ecf217622eef0d441f3be769ea415af2e5a992ac554100f9a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Computability/RealCodes/Variant0222e71eab371d7dc7fdb7de2f0e0ca81dcbffceaa875dd9a26847e6f79a2c77.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
