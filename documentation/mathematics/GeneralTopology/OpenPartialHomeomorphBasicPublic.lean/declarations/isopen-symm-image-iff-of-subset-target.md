# isOpen_symm_image_iff_of_subset_target

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4acd020f153386f3b70cab436fb7a9c689ba2a43",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 108,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c0/c0a50ce74ed65fe5dd9fa25f901c9eeeb3241e3da4539805d58893ef8a6563a3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6bb10e7b-ea70-b498-bd5f-84de5ca6128a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fe178b18-32ff-3f56-40c2-dd97ad5ef8c3",
  "kind": "lemma",
  "lexical_name": "isOpen_symm_image_iff_of_subset_target",
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
  "slug": "isopen-symm-image-iff-of-subset-target",
  "source": {
    "blob": "4acd020f153386f3b70cab436fb7a9c689ba2a43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 108,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantc0a50ce74ed65fe5dd9fa25f901c9eeeb3241e3da4539805d58893ef8a6563a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10938c44d66a27a6d75093510a0698b0b6e59115d3fab4c3fe423ebf2e5ab05f",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/GeneralTopology/OpenPartialHomeomorphBasicPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe178b18-32ff-3f56-40c2-dd97ad5ef8c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isOpen_symm_image_iff_of_subset_target {t : Set Y} (hs : t ⊆ e.target) :
    IsOpen (e.symm '' t) ↔ IsOpen t := by
  refine ⟨fun h ↦ ?_, fun h ↦ e.symm.isOpen_image_of_subset_source h hs⟩
  have hs' : e.symm '' t ⊆ e.source := by
    rw [e.symm_image_eq_source_inter_preimage hs]
    apply Set.inter_subset_left
  rw [← e.image_symm_image_of_subset_target hs]
  exact e.isOpen_image_of_subset_source h hs'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GeneralTopology/OpenPartialHomeomorphBasicPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantc0a50ce74ed65fe5dd9fa25f901c9eeeb3241e3da4539805d58893ef8a6563a3.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4acd020f153386f3b70cab436fb7a9c689ba2a43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=94f2732ddbcea52f89837068d1f40e3213730ce62a7341f17828c5fee33d5db9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/SourceCorpus/FormalResearch/Objects/c0/c0a50ce74ed65fe5dd9fa25f901c9eeeb3241e3da4539805d58893ef8a6563a3.lean","GRWTSK/Topology/GeneralTopology/Basic/Variantc0a50ce74ed65fe5dd9fa25f901c9eeeb3241e3da4539805d58893ef8a6563a3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
