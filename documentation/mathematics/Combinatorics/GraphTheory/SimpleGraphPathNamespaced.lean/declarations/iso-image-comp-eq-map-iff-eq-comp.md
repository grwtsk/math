# iso_image_comp_eq_map_iff_eq_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0da41241-5c48-aa91-7b79-3b9b8b3e6feb",
  "kind": "theorem",
  "lexical_name": "iso_image_comp_eq_map_iff_eq_comp",
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
  "slug": "iso-image-comp-eq-map-iff-eq-comp",
  "source": {
    "blob": "550ea2a70d013bce47ef461a3e3ba0fc60361346",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1162,
    "line": 1156,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantd052d755c7a94ad9d3a136521f257aea1b73b984fb53f2c7e4ea46757392fce5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f748f02f4e827843d9075ffff970818bdcb17d368336c906fefe22fa9aa3f699",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0da41241-5c48-aa91-7b79-3b9b8b3e6feb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1156–1162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iso_image_comp_eq_map_iff_eq_comp {C : G.ConnectedComponent} :
    G'.connectedComponentMk (φ v) = C.map ↑(↑φ : G ↪g G') ↔ G.connectedComponentMk v = C := by
  refine C.ind fun u => ?_
  simp only [Iso.reachable_iff, ConnectedComponent.map_mk, RelEmbedding.coe_toRelHom,
    RelIso.coe_toRelEmbedding, ConnectedComponent.eq]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantd052d755c7a94ad9d3a136521f257aea1b73b984fb53f2c7e4ea46757392fce5.lean#L1156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `550ea2a70d013bce47ef461a3e3ba0fc60361346` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=01705dc1d944fcd215c006020ccefc2d0b0eba958efcc488aa3bcb5e67fa5032 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantd052d755c7a94ad9d3a136521f257aea1b73b984fb53f2c7e4ea46757392fce5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
