# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Projection.Variantca7e6859859d763f3b85d6bc5ea1853df8908a3bee01b703182a390c9ab3bacc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1f5b81e922b2c0ad1d2d10227da3df748484f5ff` · SHA-256 `ca7e6859859d763f3b85d6bc5ea1853df8908a3bee01b703182a390c9ab3bacc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Resolution.Context
import Mathematics.Resolution.Origin

/-!
# Reversible identity-preserving projection

Finite-field origin can be noninjective.  Reversibility is instead supplied by
an identity and source sidecar retained with every projected record.
-/

namespace Mathematics.Resolution

universe u v w

structure ReversibleProjection
    (Source : Type u)
    (View : Type v)
    (Sidecar : Type w) where
  project : Source → View × Sidecar
  rehydrate : View → Sidecar → Source
  roundTrip :
    ∀ source,
      rehydrate (project source).1 (project source).2 = source

theorem ReversibleProjection.rehydrate_project
    (projection : ReversibleProjection Source View Sidecar)
    (source : Source) :
    projection.rehydrate
      (projection.project source).1
      (projection.project source).2 = source :=
  projection.roundTrip source

structure ObligationProjection (Coordinate : Type u) where
  identity : ObligationIdentity
  encodedCoordinate : Coordinate
  originCoordinate : Coordinate
  sourceReference : String
  sourceDigest : String
  redacted : Bool
  deriving DecidableEq, Repr

end Mathematics.Resolution
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=705bffffec009bc025648dee58bcb9590bd1b2ec1771b3dc135a3ed57b595de6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Projection/Variantca7e6859859d763f3b85d6bc5ea1853df8908a3bee01b703182a390c9ab3bacc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
