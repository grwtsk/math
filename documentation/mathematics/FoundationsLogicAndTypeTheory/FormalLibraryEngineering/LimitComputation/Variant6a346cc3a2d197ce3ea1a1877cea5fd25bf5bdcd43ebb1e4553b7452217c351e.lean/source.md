# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LimitComputation.Variant6a346cc3a2d197ce3ea1a1877cea5fd25bf5bdcd43ebb1e4553b7452217c351e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2d45b3c7722228113e908b56be2f4f51ae5aff46` · SHA-256 `6a346cc3a2d197ce3ea1a1877cea5fd25bf5bdcd43ebb1e4553b7452217c351e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.InfiniteTime.Stability

/-!
Legacy module.

This file is retained only for historical continuity of the Surface development
record. It is not part of the canonical Annals-level namespace, is not imported
by major proof cones, and must not be used to discharge mathematical claims.

Canonical replacements must live outside `Surface.Legacy`.
-/

namespace Surface
namespace Legacy

structure InfiniteTimeLimitCertificate
    (M : InfiniteTimeComputationModel) where
  trajectory : Nat -> M.State
  limitExists : Prop

theorem infiniteTime_limit_requires_certificate
    {M : InfiniteTimeComputationModel}
    (cert : InfiniteTimeLimitCertificate M) :
    cert.limitExists -> cert.limitExists := by
  intro h
  exact h

end Legacy
end Surface
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cda992e8463653ec08a6604a11c608181e92ce47768fa7c3573ad70d7e8379cd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LimitComputation/Variant6a346cc3a2d197ce3ea1a1877cea5fd25bf5bdcd43ebb1e4553b7452217c351e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
