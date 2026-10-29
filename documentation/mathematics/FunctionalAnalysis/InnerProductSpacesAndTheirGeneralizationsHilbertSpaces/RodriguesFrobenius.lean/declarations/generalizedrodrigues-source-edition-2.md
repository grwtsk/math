# GeneralizedRodrigues

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:47ff7503af33b81cc04151c4c68c8b9b6ad425e1cce16c7fd89f3ced5eb4a6c4",
  "kind": "structure",
  "lexical_name": "GeneralizedRodrigues",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "documentation/mathematics/_support/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "generalizedrodrigues-source-edition-2",
  "source": {
    "blob": "1e20714831b2902952d8cecd5183c607ba55b7d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 40,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/RodriguesFrobenius/Variant09716f9978e1433e08f7b10f7e906a9a4cf3c8431406286844a567cc0326c012.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a6cf0ef8507321cfca541434765fbbf4f3f45db52c2c3b8e3d1efc08a42b1108",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RodriguesFrobenius.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:47ff7503af33b81cc04151c4c68c8b9b6ad425e1cce16c7fd89f3ced5eb4a6c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure GeneralizedRodrigues (H : Type u)
    [NormedAddCommGroup H]
    [InnerProductSpace ℝ H] where
  generator : SkewAdjointGenerator H
  time : ℝ
  rotation : H ≃ₗᵢ[ℝ] H
  realizationCertificate : ObjectAddress

/-- The executable geometric transport is the certified linear isometry. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RodriguesFrobenius.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/RodriguesFrobenius/Variant09716f9978e1433e08f7b10f7e906a9a4cf3c8431406286844a567cc0326c012.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e20714831b2902952d8cecd5183c607ba55b7d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=395c1c5b937950dce622afbfabb146ed9ec00ebb9928b2790c9668dc633b75ba -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/RodriguesFrobenius/Variant09716f9978e1433e08f7b10f7e906a9a4cf3c8431406286844a567cc0326c012.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
