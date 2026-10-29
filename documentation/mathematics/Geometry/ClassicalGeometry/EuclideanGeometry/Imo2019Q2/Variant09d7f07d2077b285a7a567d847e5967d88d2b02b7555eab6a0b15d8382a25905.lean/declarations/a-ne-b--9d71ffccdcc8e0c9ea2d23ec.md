# A₂_ne_B

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f034e22976e9b98bf5355d1866ec621c2d15b1b8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 366,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/09/09d7f07d2077b285a7a567d847e5967d88d2b02b7555eab6a0b15d8382a25905.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7bbe643e-c390-6d40-9bef-4f9f314ba509",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0b0751e9-0138-0c8c-c88b-d6216bb84fc5",
  "kind": "theorem",
  "lexical_name": "A₂_ne_B",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "a-ne-b--9d71ffccdcc8e0c9ea2d23ec",
  "source": {
    "blob": "f034e22976e9b98bf5355d1866ec621c2d15b1b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 378,
    "line": 366,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2019Q2/Variant09d7f07d2077b285a7a567d847e5967d88d2b02b7555eab6a0b15d8382a25905.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d71ffccdcc8e0c9ea2d23ec4f0b7718b1cad94e4d5d96aa7c33d2e3e39482a9",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2019Q2/Variant09d7f07d2077b285a7a567d847e5967d88d2b02b7555eab6a0b15d8382a25905.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b0751e9-0138-0c8c-c88b-d6216bb84fc5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 366–378.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem A₂_ne_B : cfg.A₂ ≠ cfg.B := by
  intro h
  have h₁ := cfg.sbtw_A_A₁_A₂
  rw [h] at h₁
  refine' cfg.not_collinear_ABC _
  have hc : Collinear ℝ ({cfg.A, cfg.C, cfg.B, cfg.A₁} : Set Pt) :=
    collinear_insert_insert_of_mem_affineSpan_pair h₁.left_mem_affineSpan
      cfg.sbtw_B_A₁_C.right_mem_affineSpan
  refine' hc.subset _
  rw [Set.pair_comm _ cfg.A₁, Set.insert_comm _ cfg.A₁, Set.insert_comm _ cfg.A₁, Set.pair_comm]
  exact Set.subset_insert _ _
#align imo2019_q2.imo2019q2_cfg.A₂_ne_B Imo2019Q2.Imo2019q2Cfg.A₂_ne_B

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../_verification/specifications/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2019Q2/Variant09d7f07d2077b285a7a567d847e5967d88d2b02b7555eab6a0b15d8382a25905.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2019Q2/Variant09d7f07d2077b285a7a567d847e5967d88d2b02b7555eab6a0b15d8382a25905.lean#L366).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f034e22976e9b98bf5355d1866ec621c2d15b1b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=01effd99b233c8fd376ecb849864de2cdcaebed676fff6f4764c70f29180a962 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2019Q2/Variant09d7f07d2077b285a7a567d847e5967d88d2b02b7555eab6a0b15d8382a25905.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/09/09d7f07d2077b285a7a567d847e5967d88d2b02b7555eab6a0b15d8382a25905.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
