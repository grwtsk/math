# State — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b90d38d092db3c4a886fea50320bce03d58ca992` · SHA-256 `6b8b31b8644d022e9e5baef800953a0e4c224783dee5e64bef236a4f1eb8d4df`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Ecosystem.Registry
import Mathematics.Relaxation.Level

/-! # Immutable-source, mutable-overlay relaxation state -/

namespace Mathematics.Relaxation

/-- One proposal-only overlay object; source bytes remain untouched. -/
structure OverlayElement where
  elementId : StableId
  sourceObjectIds : List StableId
  payloadDigest : Digest
  authority : String
  deriving DecidableEq, Repr

/-- Finite work-package identity and exact source boundary. -/
structure WorkPackage where
  packageId : StableId
  sourceSnapshots : List Ecosystem.ProjectSnapshot
  sourceSnapshotKeysUnique :
    (sourceSnapshots.map Ecosystem.ProjectSnapshot.key).Nodup
  projectSnapshots : List Ecosystem.ProjectSnapshotKey
  projectSnapshots_exact :
    projectSnapshots =
      sourceSnapshots.map Ecosystem.ProjectSnapshot.key
  sourceObjectIds : List StableId
  scopeDigest : Digest

/-- Relaxation state separates immutable ecosystem input from its overlay. -/
structure State where
  ecosystemDigest : Digest
  workPackage : WorkPackage
  level : Level
  overlay : List OverlayElement
  openResidueIds : List StableId
  openObligationIds : List StableId
  overlayDigest : Digest

end Mathematics.Relaxation
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=76fd03f31b8306d1b6c780f19de5a7bb487dafb922ae07853bd241993b9d1bf9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/State/Variant6b8b31b8644d022e9e5baef800953a0e4c224783dee5e64bef236a4f1eb8d4df.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
