# nhds_basis_clopen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9f39f696-58e1-e615-615e-fb42c53de4a2",
  "kind": "theorem",
  "lexical_name": "nhds_basis_clopen",
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
  "slug": "nhds-basis-clopen",
  "source": {
    "blob": "5cca9a9fa294e526b3e00dce3c45e10033d61bca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 41,
    "path": "GRWTSK/Topology/GeneralTopology/Profinite/Variant9da4236873824b37b7b6642fb7b3bd53173f78b0e4fca5b1f067a12b3efffac1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa6e235e0597286070e1521114e7e8352650fb1281d0492028b3ed19c575738d",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/GeneralTopology/SeparationProfiniteNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f39f696-58e1-e615-615e-fb42c53de4a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nhds_basis_clopen (x : X) : (𝓝 x).HasBasis (fun s : Set X => x ∈ s ∧ IsClopen s) id :=
  ⟨fun U => by
    constructor
    · have hx : connectedComponent x = {x} :=
        totallyDisconnectedSpace_iff_connectedComponent_singleton.mp ‹_› x
      rw [connectedComponent_eq_iInter_isClopen] at hx
      intro hU
      let N := { s // IsClopen s ∧ x ∈ s }
      rsuffices ⟨⟨s, hs, hs'⟩, hs''⟩ : ∃ s : N, s.val ⊆ U
      · exact ⟨s, ⟨hs', hs⟩, hs''⟩
      haveI : Nonempty N := ⟨⟨univ, isClopen_univ, mem_univ x⟩⟩
      have hNcl : ∀ s : N, IsClosed s.val := fun s => s.property.1.1
      have hdir : Directed Superset fun s : N => s.val := by
        rintro ⟨s, hs, hxs⟩ ⟨t, ht, hxt⟩
        exact ⟨⟨s ∩ t, hs.inter ht, ⟨hxs, hxt⟩⟩, inter_subset_left, inter_subset_right⟩
      have h_nhds : ∀ y ∈ ⋂ s : N, s.val, U ∈ 𝓝 y := fun y y_in => by
        rw [hx, mem_singleton_iff] at y_in
        rwa [y_in]
      exact exists_subset_nhds_of_compactSpace hdir hNcl h_nhds
    · rintro ⟨V, ⟨hxV, -, V_op⟩, hUV : V ⊆ U⟩
      rw [mem_nhds_iff]
      exact ⟨V, hUV, V_op, hxV⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GeneralTopology/SeparationProfiniteNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Profinite/Variant9da4236873824b37b7b6642fb7b3bd53173f78b0e4fca5b1f067a12b3efffac1.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5cca9a9fa294e526b3e00dce3c45e10033d61bca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4c451f1cf87c24a6e95ef71f05545505cb29e17c3ab33bc80795625d18f2ec81 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Profinite/Variant9da4236873824b37b7b6642fb7b3bd53173f78b0e4fca5b1f067a12b3efffac1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
