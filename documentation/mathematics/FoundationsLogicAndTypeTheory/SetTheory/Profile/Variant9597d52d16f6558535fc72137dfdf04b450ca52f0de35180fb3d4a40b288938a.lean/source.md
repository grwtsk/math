# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Profile.Variant9597d52d16f6558535fc72137dfdf04b450ca52f0de35180fb3d4a40b288938a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4c5fa733d4d3baa7ad497e44359bd9fe888ce234` · SHA-256 `9597d52d16f6558535fc72137dfdf04b450ca52f0de35180fb3d4a40b288938a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.StratifiedBoundary.OrdinalTally.Syntax

/-!
# Ordinal notation profile

All semantic operations are conditional on a versioned profile and its proof
fields.  A syntactically populated code is not thereby part of the profile.
-/

namespace Mathematics.StratifiedBoundary

structure OrdinalNotationProfile (Semantic : Type u) where
  profileId : String
  constructorSetRef : String
  normalizationAlgorithmRef : String
  comparisonAlgorithmRef : String
  supportedFragmentRef : String
  denotes : OrdinalTally → Semantic
  admits : OrdinalTally → Prop
  normalize : OrdinalTally → OrdinalTally
  normalize_admitted :
    ∀ {code}, admits code → admits (normalize code)
  normalize_sound :
    ∀ {code}, admits code →
      denotes (normalize code) = denotes code
  normalize_idempotent :
    ∀ {code}, admits code →
      normalize (normalize code) = normalize code

theorem ordinalTally_normalization_sound
    {Semantic : Type u}
    (profile : OrdinalNotationProfile Semantic)
    {code : OrdinalTally}
    (admitted : profile.admits code) :
    profile.denotes (profile.normalize code) =
      profile.denotes code :=
  profile.normalize_sound admitted

theorem ordinalTally_normalization_idempotent
    {Semantic : Type u}
    (profile : OrdinalNotationProfile Semantic)
    {code : OrdinalTally}
    (admitted : profile.admits code) :
    profile.normalize (profile.normalize code) =
      profile.normalize code :=
  profile.normalize_idempotent admitted

end Mathematics.StratifiedBoundary
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ae32a25d2872fb195b27946956f92b52b6da4fea6a6263bd7f1abe64b614ddcc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Profile/Variant9597d52d16f6558535fc72137dfdf04b450ca52f0de35180fb3d4a40b288938a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
