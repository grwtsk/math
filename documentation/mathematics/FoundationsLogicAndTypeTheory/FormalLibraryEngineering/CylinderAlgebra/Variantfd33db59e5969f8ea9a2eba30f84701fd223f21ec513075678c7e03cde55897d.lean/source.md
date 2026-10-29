# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CylinderAlgebra.Variantfd33db59e5969f8ea9a2eba30f84701fd223f21ec513075678c7e03cde55897d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `16cf96fea657e8e1cfd82b4f35144c0ced4bcd8e` · SHA-256 `fd33db59e5969f8ea9a2eba30f84701fd223f21ec513075678c7e03cde55897d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Finite-stage cylinder observables

Every cylinder observable names a finite representing stage.
-/

namespace Mathematics.StratifiedBoundary

structure CylinderObservable (Observable : Type u) where
  stage : Nat
  observable : Observable
  finiteRepresentationRef : String

structure CylinderAlgebraPresentation
    (Observable : Type u) where
  sameObservable :
    CylinderObservable Observable →
      CylinderObservable Observable →
      Prop
  equivalenceCertificateRef : String
  noCompletedRuntimeObject : Bool := true
  noCompletedRuntimeObject_exact :
    noCompletedRuntimeObject = true

end Mathematics.StratifiedBoundary
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c6415dc00f53bec39029d7ea531aef3ca56fbe1e37309bfa17825d087b89d8bc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CylinderAlgebra/Variantfd33db59e5969f8ea9a2eba30f84701fd223f21ec513075678c7e03cde55897d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
