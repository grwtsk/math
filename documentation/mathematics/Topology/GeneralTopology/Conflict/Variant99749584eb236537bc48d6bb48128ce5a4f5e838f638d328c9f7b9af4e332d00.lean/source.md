# Complete source: GRWTSK.Topology.GeneralTopology.Conflict.Variant99749584eb236537bc48d6bb48128ce5a4f5e838f638d328c9f7b9af4e332d00

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c4c9a335b6b8d250b47b6759228a27beb1054242` · SHA-256 `99749584eb236537bc48d6bb48128ce5a4f5e838f638d328c9f7b9af4e332d00`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Federation.Alignment

/-! # Preserved cross-project conflicts -/

namespace Mathematics.Federation

inductive ConflictKind
  | statement
  | definition
  | notation
  | dependency
  | axiomClosure
  | toolchain
  | license
  deriving DecidableEq, Repr

/-- A conflict remains explicit until independently resolved. -/
structure ConflictRecord where
  conflictId : StableId
  left : GlobalDeclarationId
  right : GlobalDeclarationId
  kind : ConflictKind
  evidenceIds : List StableId
  resolution : Option StableId
  conflictDigest : Digest
  deriving DecidableEq, Repr

def ConflictRecord.IsOpen (conflict : ConflictRecord) : Prop :=
  conflict.resolution = none

end Mathematics.Federation
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d9cec0c8b18db35142e14936f8d17e7efb7f16f792342b6aa77b03d311a6e87f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Conflict/Variant99749584eb236537bc48d6bb48128ce5a4f5e838f638d328c9f7b9af4e332d00.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
