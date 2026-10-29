# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Validation.Variantf5fad78eb0d7722fa3e403550267622c96ecd7f44aaa0dc0b8e5bee74d1a41f8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9df64cc673baab9ab9d29aacbd26ed4a6e78fd91` · SHA-256 `f5fad78eb0d7722fa3e403550267622c96ecd7f44aaa0dc0b8e5bee74d1a41f8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Progression.Tower

/-! # Progression validation -/

namespace Mathematics.Progression

def RevisionsIncrease (tower : Tower Payload) : Prop :=
  tower.states.Pairwise fun earlier later ↦ earlier.revision < later.revision

def LinksAgree (tower : Tower Payload) : Prop :=
  ∀ earlier later,
    earlier ∈ tower.states →
    later ∈ tower.states →
    earlier.revision + 1 = later.revision →
    later.predecessor = some earlier.id

structure Valid (tower : Tower Payload) : Prop where
  idValid : tower.id.Valid
  revisionsIncrease : RevisionsIncrease tower
  linksAgree : LinksAgree tower
  digestValid : tower.progressionDigest.Valid

end Mathematics.Progression
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ee140e2a1f1fe50ab0497a8b2a3578610d5db64b1df7e98f933580f8ae8544e6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Validation/Variantf5fad78eb0d7722fa3e403550267622c96ecd7f44aaa0dc0b8e5bee74d1a41f8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
