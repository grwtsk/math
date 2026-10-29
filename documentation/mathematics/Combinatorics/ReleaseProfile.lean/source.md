# Release Profile — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8677543a4c1571ff75d3695c4a9626cf36b3fc6f` · SHA-256 `65814e910aacc3f0d2c17abfd40bdfe8fc828146376ae9c471ab6e5f2af62761`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.Access.PassivityObstruction

/-!
# Certified connector release

Release is a proposal priority unless a separate admissible-heuristic theorem
relates it to remaining primary cost.
-/

namespace Mathematics.SemiLocalDefect.Access

structure ConnectorReleaseProfile
    (primeUniverse : FinitePrimeUniverse) where
  edge : PrimeInsertionEdge primeUniverse
  descendantWeight : ℚ
  proofCost : ℚ
  descendantWeight_nonnegative :
    0 ≤ descendantWeight
  proofCost_positive :
    0 < proofCost
  descendantCount :
    descendantWeight =
      2 ^
        (Fintype.card primeUniverse.Prime -
          edge.source.card - 1)
  release : ℚ
  release_eq :
    release =
      descendantWeight / proofCost
  certified : Prop
  certifiedProof : certified

structure ReleaseAStarAdmissibility
    {primeUniverse : FinitePrimeUniverse}
    (profile :
      ConnectorReleaseProfile primeUniverse) where
  remainingPrimaryCost : ℚ
  heuristic : ℚ
  lowerBound :
    heuristic ≤ remainingPrimaryCost
  releaseDerived : Prop
  releaseDerivedProof : releaseDerived

end Mathematics.SemiLocalDefect.Access
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d5f960ca76ab321a3f12d9566ab54d27612ed5af0a197f8cf0b0c49cf0462ad9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/ReleaseProfile/Variant65814e910aacc3f0d2c17abfd40bdfe8fc828146376ae9c471ab6e5f2af62761.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
