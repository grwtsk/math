# Semantics Ordinal Semantically Equal — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fdae499ce706b671e9afa2cf80bd4729653b1a80` · SHA-256 `da378270b9b6a6ebe4d46c2efd9902ac0b3d3b00402589fe27cbac6c2683ca19`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.StratifiedBoundary.OrdinalTally.Profile

/-!
# Profile-relative ordinal semantics

Semantic equality is exposed separately from executable code equality.
-/

namespace Mathematics.StratifiedBoundary

def OrdinalSemanticallyEqual
    {Semantic : Type u}
    (profile : OrdinalNotationProfile Semantic)
    (left right : OrdinalTally) : Prop :=
  profile.denotes left = profile.denotes right

structure CompleteNormalizationProfile
    (Semantic : Type u)
    extends OrdinalNotationProfile Semantic where
  normalizedEqualityComplete :
    ∀ {left right},
      admits left →
      admits right →
      normalize left = normalize right ↔
        denotes left = denotes right

end Mathematics.StratifiedBoundary
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8e409543f6edb33eaae399617f05fdfd4a54fdf5f5ecc8473cb811bd3ab0d089 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Semantics/Variantda378270b9b6a6ebe4d46c2efd9902ac0b3d3b00402589fe27cbac6c2683ca19.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
