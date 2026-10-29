# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Holonomy.Variant7ed06a2d36653fc97f3c5539ea45cb9b763c499f2d05c8e717d74f16332e8670

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `526ffb16d36ec03b1517c8194c56c26792441923` · SHA-256 `7ed06a2d36653fc97f3c5539ea45cb9b763c499f2d05c8e717d74f16332e8670`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Federation.VersionTransport

/-! # Version-loop holonomy -/

namespace Mathematics.Federation

universe u

/-- A closed version loop records the complete composite action. -/
structure VersionHolonomy (Object : Type u) where
  baseRevision : StableId
  route : List StableId
  composite : Object → Option Object
  fixed : Object → Prop
  fixed_exact :
    ∀ object, fixed object ↔ composite object = some object
  unresolved : List TransportResidue
  holonomyDigest : Digest

end Mathematics.Federation
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d7b42b81e24457ec1f5060207fd70e9c20dbeb3d1a4a89e5487d581a89a14395 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holonomy/Variant7ed06a2d36653fc97f3c5539ea45cb9b763c499f2d05c8e717d74f16332e8670.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
