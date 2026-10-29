# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Obligation.Variantfc679196b781c837d6211615046b104d29165baad1824f3036294dad8c80fee6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1f102041b92264f3190eff38aea96abafb12b2f8` · SHA-256 `fc679196b781c837d6211615046b104d29165baad1824f3036294dad8c80fee6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Resolution.Identity

/-!
# Indexed resolution obligations

The proposition, source, authority class, exactness, and certificate kind are
version-bound coordinates of one permanently identified obligation.
-/

namespace Mathematics.Resolution

universe u

inductive ObligationAuthorityClass
  | leanTheorem
  | runtimeRefinement
  | transportNaturality
  | snapshotConsistency
  | codec
  | identityPreservation
  | resultConstruction
  deriving DecidableEq, Repr

inductive ExactnessClass
  | exact
  | certifiedApproximation
  deriving DecidableEq, Repr

structure IndexedObligation (Statement : Type u) where
  identity : ObligationIdentity
  statement : Statement
  propositionDigest : String
  dependencyDigest : String
  authorityClass : ObligationAuthorityClass
  exactness : ExactnessClass
  certificateKind : String
  deriving DecidableEq, Repr

end Mathematics.Resolution
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a3e141bdd44612713fb19950e2f85c21d54d810d50da43a37445a2c053ac6320 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Obligation/Variantfc679196b781c837d6211615046b104d29165baad1824f3036294dad8c80fee6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
