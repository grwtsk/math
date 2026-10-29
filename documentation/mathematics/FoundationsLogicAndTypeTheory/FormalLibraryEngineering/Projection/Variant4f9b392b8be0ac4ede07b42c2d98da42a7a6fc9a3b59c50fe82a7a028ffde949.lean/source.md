# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Projection.Variant4f9b392b8be0ac4ede07b42c2d98da42a7a6fc9a3b59c50fe82a7a028ffde949

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `db963ba2cd786b41d79469fef53f9d960bc2ce27` · SHA-256 `d9868eb747cd0265a8385bd28b1d8e2330cad7691f6d714bdbbd6f733a399722`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReversibleProjection.Variantca7e6859859d763f3b85d6bc5ea1853df8908a3bee01b703182a390c9ab3bacc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ca7e6859859d763f3b85d6bc5ea1853df8908a3bee01b703182a390c9ab3bacc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ReversibleProjection.Variantca7e6859859d763f3b85d6bc5ea1853df8908a3bee01b703182a390c9ab3bacc","mathematical_subject":"Foundations.Unclassified","original_sha256":"ca7e6859859d763f3b85d6bc5ea1853df8908a3bee01b703182a390c9ab3bacc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Resolution/Projection.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Resolution.Context
import Mathematics.Resolution.Origin

/-!
# Reversible identity-preserving projection

Finite-field origin can be noninjective.  Reversibility is instead supplied by
an identity and source sidecar retained with every projected record.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReversibleProjection.Variantca7e6859859d763f3b85d6bc5ea1853df8908a3bee01b703182a390c9ab3bacc

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

<!-- DOCUMENTATION RELOCATION /1 original-sha256=02aed78529b7aa3784833a20f421808ad9d34c235d1393db565b94267e2e36c3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Projection/Variant4f9b392b8be0ac4ede07b42c2d98da42a7a6fc9a3b59c50fe82a7a028ffde949.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
