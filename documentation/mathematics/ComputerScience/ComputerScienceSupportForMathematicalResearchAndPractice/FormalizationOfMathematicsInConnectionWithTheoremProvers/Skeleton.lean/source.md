# Skeleton — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2c4f984289fb6e4638b20fe7e8c886f46a789d14` · SHA-256 `7271895fc4196bfca4e4935fb87bce2ea7d7fe45e34fc0ea3ae32db1b2120a4d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Kakeya.PAdic.PicardFuchs

namespace Think.Kakeya.Berkovich

structure SkeletonReference where
  vertexCount : Nat
  edgeCount : Nat
  pathConnectedClaim : Bool
deriving Repr, DecidableEq

def defaultBridgeSkeleton : SkeletonReference :=
  { vertexCount := 2, edgeCount := 1, pathConnectedClaim := false }

theorem berkovich_skeleton_transport_domain_valid : True := by
  trivial

end Think.Kakeya.Berkovich
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0055a08636af7eac7470998af5943c28c1c61b137b2281fd84de44070b2f8eac -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Skeleton/Variant7271895fc4196bfca4e4935fb87bce2ea7d7fe45e34fc0ea3ae32db1b2120a4d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
