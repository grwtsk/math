# Stabilizer Stabilizes — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1257a0f329d98c6cce39ddad07e5a3eeb2de435a` · SHA-256 `06b603b8847880318287f7d960c810b3d607ed3cc160263d652a3470c518f427`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Orbit.FiniteCyclic

/-! # Stabilizers remain separate from orbit size -/

namespace Mathematics.Orbit

universe u v

def Stabilizes
    {G : Type u} {Point : Type v}
    (action : G → Point → Point)
    (groupElement : G)
    (point : Point) : Prop :=
  action groupElement point = point

def Stabilizer
    {G : Type u} {Point : Type v}
    (action : G → Point → Point)
    (point : Point) : Set G :=
  {groupElement | Stabilizes action groupElement point}

end Mathematics.Orbit
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d49b20b6dc4395f780f3d9290a4e1240549f5b0725d52991da991e4645f84afd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Stabilizer/Variant06b603b8847880318287f7d960c810b3d607ed3cc160263d652a3470c518f427.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
