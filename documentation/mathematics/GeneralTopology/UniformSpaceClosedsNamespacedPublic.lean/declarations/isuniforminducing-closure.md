# isUniformInducing_closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:14a3d360-45e4-1f1b-ab47-d8150b012929",
  "kind": "theorem",
  "lexical_name": "isUniformInducing_closure",
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
  "slug": "isuniforminducing-closure",
  "source": {
    "blob": "71f644d7efa8501c39d7c8a423bba828a242c8c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 227,
    "path": "GRWTSK/Topology/GeneralTopology/Closeds/Variant8dbd87dfea8aa0091c6b10a26a0ecc53cc3ea4019b9a8136be96162d5cbc7aa4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7938b85817bb392ebcf8d2e7105b15b5c02bb489cf0a04f3638e825272854d83",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/GeneralTopology/UniformSpaceClosedsNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14a3d360-45e4-1f1b-ab47-d8150b012929`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isUniformInducing_closure : IsUniformInducing (closure (X := α)) := by
  refine ⟨le_antisymm ?_ <| Filter.map_le_iff_le_comap.mp uniformContinuous_closure⟩
  rw [(𝓤 α).basis_sets.uniformity_hausdorff.comap _ |>.le_basis_iff
    (𝓤 α).basis_sets.uniformity_hausdorff, Function.comp_id]
  intro U hU
  obtain ⟨V : SetRel α α, hV, hVU⟩ := comp_mem_uniformity_sets hU
  refine ⟨V, hV, fun ⟨s, t⟩ ⟨hst, hts⟩ => ?_⟩
  simp only [mem_hausdorffEntourage] at *
  constructor
  · grw [subset_closure (s := s), hst, closure_subset_preimage hV t, ← hVU, SetRel.preimage_comp]
  · grw [subset_closure (s := t), hts, closure_subset_image hV s, ← hVU, SetRel.image_comp]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GeneralTopology/UniformSpaceClosedsNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Closeds/Variant8dbd87dfea8aa0091c6b10a26a0ecc53cc3ea4019b9a8136be96162d5cbc7aa4.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71f644d7efa8501c39d7c8a423bba828a242c8c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ca0fedd1dea10e4cfa77f10d79cbdd4f98f2b0c5a9aad747cb82a19e1a598966 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Closeds/Variant8dbd87dfea8aa0091c6b10a26a0ecc53cc3ea4019b9a8136be96162d5cbc7aa4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
