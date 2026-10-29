# Fixed Point Authority — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `69bde82eb54112b9c793c74db1bbf3e6278dbf47` · SHA-256 `b94f48ce5f17dfdb03bbbf68bf92151c75de562043a83240ba64b55723fd3e81`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Authority.Kernel
import Mathematics.Operational.DiscreteFixedPoint

/-!
# Snapshot-scoped fixed-point authority

The exact equation, current snapshot capability, and accepted Lean-kernel
certificate remain inseparable.  Addresses and digests cannot construct this
record without the two sealed capabilities.
-/

namespace Mathematics.Operational

universe u

/-- An exact fixed point authorized in one frozen kernel environment. -/
structure SnapshotCertifiedFixedPoint
    {State : Type u}
    (environment : Authority.FrozenKernelEnvironment)
    (operator : VersionedOperator State) where
  fixedPoint : CertifiedFixedPoint operator
  activeSnapshot :
    Projection.VerifiedActiveSnapshot operator.snapshot
  kernelCertificate :
    Authority.AcceptedKernelCertificate environment
      (Function.IsFixedPt operator.step fixedPoint.point)

namespace SnapshotCertifiedFixedPoint

variable
    {State : Type u}
    {environment : Authority.FrozenKernelEnvironment}
    {operator : VersionedOperator State}

/-- Kernel elimination yields only the exact operator-indexed equation. -/
theorem fixed
    (certificate :
      SnapshotCertifiedFixedPoint environment operator) :
    Function.IsFixedPt operator.step certificate.fixedPoint.point :=
  certificate.kernelCertificate.proves

end SnapshotCertifiedFixedPoint

end Mathematics.Operational
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f43da59cc41cef0e79ea50fc81582c3598cd0a0c5497f51c23d9c1b9abc485e5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointAuthority/Variantb94f48ce5f17dfdb03bbbf68bf92151c75de562043a83240ba64b55723fd3e81.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
