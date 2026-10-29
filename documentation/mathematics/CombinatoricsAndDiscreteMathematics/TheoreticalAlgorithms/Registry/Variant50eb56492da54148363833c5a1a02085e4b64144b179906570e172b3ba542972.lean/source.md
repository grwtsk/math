# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Registry.Variant50eb56492da54148363833c5a1a02085e4b64144b179906570e172b3ba542972

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9a8c66bf60e154db9b3088be5612bb69802c73a3` · SHA-256 `50eb56492da54148363833c5a1a02085e4b64144b179906570e172b3ba542972`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Ecosystem.Snapshot

/-! # Finite ecosystem registries -/

namespace Mathematics.Ecosystem

/-- Revision-qualified key for one immutable project snapshot. -/
structure ProjectSnapshotKey where
  project : ProjectId
  revisionId : StableId
  deriving DecidableEq, Repr

def ProjectSnapshot.key (snapshot : ProjectSnapshot) : ProjectSnapshotKey :=
  ⟨snapshot.identity.projectId, snapshot.revision.revisionId⟩

/-- A finite ecosystem snapshot permits many project and toolchain versions. -/
structure Registry where
  snapshots : List ProjectSnapshot
  keysUnique : (snapshots.map ProjectSnapshot.key).Nodup
  registryDigest : Digest

namespace Registry

/-- Lookup is revision-qualified; project name alone is never a global key. -/
def find?
    (registry : Registry)
    (key : ProjectSnapshotKey) : Option ProjectSnapshot :=
  registry.snapshots.find? fun snapshot ↦ snapshot.key = key

end Registry

end Mathematics.Ecosystem
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=53bd9bbd139ed58f28e3cccba45e64a5904e05b2bd38c52058b8767bf191dc26 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Registry/Variant50eb56492da54148363833c5a1a02085e4b64144b179906570e172b3ba542972.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
