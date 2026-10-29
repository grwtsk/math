# exists_nonneg_left_iff_sameRay

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cc3ac441c34d11fca1c78983a9d0cb1b60b06143",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 724,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f9/f9d5e142c84ab663559c31f3d0c26024c9dee4c894adf440d5b24008df5176c7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:97897ed7-d464-9602-b8a1-56a71636b7b7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:84d3f758-49c4-78da-102c-5d5a8aa530c9",
  "kind": "theorem",
  "lexical_name": "exists_nonneg_left_iff_sameRay",
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
  "slug": "exists-nonneg-left-iff-sameray",
  "source": {
    "blob": "cc3ac441c34d11fca1c78983a9d0cb1b60b06143",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 730,
    "line": 724,
    "path": "GRWTSK/Algebra/LinearAlgebra/Ray/Variantf9d5e142c84ab663559c31f3d0c26024c9dee4c894adf440d5b24008df5176c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e04391a9660d439df5af5aee906d220c5decb89283cc187393ec213ceb3297e",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayAligned.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84d3f758-49c4-78da-102c-5d5a8aa530c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 724–730.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_nonneg_left_iff_sameRay (hx : x ≠ 0) :
    (∃ r : R, 0 ≤ r ∧ r • x = y) ↔ SameRay R x y := by
  refine' ⟨fun h => _, fun h => h.exists_nonneg_left hx⟩
  rcases h with ⟨r, hr, rfl⟩
  exact SameRay.sameRay_nonneg_smul_right x hr
#align exists_nonneg_left_iff_same_ray exists_nonneg_left_iff_sameRay

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayAligned.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Ray/Variantf9d5e142c84ab663559c31f3d0c26024c9dee4c894adf440d5b24008df5176c7.lean#L724).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc3ac441c34d11fca1c78983a9d0cb1b60b06143` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9b65bdd2a31a86a50bd897df850623cbfdbe4d3bde0c4cfdf6f53efbc3e147c2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Ray/Variantf9d5e142c84ab663559c31f3d0c26024c9dee4c894adf440d5b24008df5176c7.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/f9/f9d5e142c84ab663559c31f3d0c26024c9dee4c894adf440d5b24008df5176c7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
