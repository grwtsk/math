# exist_mul_closure_nhds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8062fc8d-9b02-75c0-9ece-87ecbf98304c",
  "kind": "lemma",
  "lexical_name": "exist_mul_closure_nhds",
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
  "slug": "exist-mul-closure-nhds",
  "source": {
    "blob": "50595f09d50a3d32037ed65853a87615d4e61f43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 531,
    "line": 511,
    "path": "GRWTSK/Topology/GeneralTopology/OpenSubgroup/Variantb1a9ed0b5c28d2db729a278021babcfa48ca07932bf26526616b308b1257a243.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02dc02a16c8384d77be170e43c16ba2204d6e7208f46411ddc0250bab4ac3e5a",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8062fc8d-9b02-75c0-9ece-87ecbf98304c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 511–531.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exist_mul_closure_nhds {W : Set G} (WClopen : IsClopen W) : ∃ T ∈ 𝓝 (1 : G), W * T ⊆ W := by
  apply WClopen.isClosed.isCompact.induction_on (p := fun S ↦ ∃ T ∈ 𝓝 (1 : G), S * T ⊆ W)
    ⟨Set.univ ,by simp only [univ_mem, empty_mul, empty_subset, and_self]⟩
    (fun _ _ huv ⟨T, hT, mem⟩ ↦ ⟨T, hT, (mul_subset_mul_right huv).trans mem⟩)
    fun U V ⟨T₁, hT₁, mem1⟩ ⟨T₂, hT₂, mem2⟩ ↦ ⟨T₁ ∩ T₂, inter_mem hT₁ hT₂, by
      rw [union_mul]
      exact union_subset (mul_subset_mul_left inter_subset_left |>.trans mem1)
        (mul_subset_mul_left inter_subset_right |>.trans mem2) ⟩
  intro x memW
  have : (x, 1) ∈ (fun p ↦ p.1 * p.2) ⁻¹' W := by simp [memW]
  rcases isOpen_prod_iff.mp (continuous_mul.isOpen_preimage W <| WClopen.2) x 1 this with
    ⟨U, V, Uopen, Vopen, xmemU, onememV, prodsub⟩
  have h6 : U * V ⊆ W := mul_subset_iff.mpr (fun _ hx _ hy ↦ prodsub (mk_mem_prod hx hy))
  exact ⟨U ∩ W, ⟨U, Uopen.mem_nhds xmemU, W, fun _ a ↦ a, rfl⟩,
    V, IsOpen.mem_nhds Vopen onememV, fun _ a ↦ h6 ((mul_subset_mul_right inter_subset_left) a)⟩

@[deprecated (since := "2025-05-22")] alias exist_mul_closure_nhd := exist_mul_closure_nhds
@[deprecated (since := "2025-05-22")] alias _root_.IsTopologicalAddGroup.exist_add_closure_nhd :=
  IsTopologicalAddGroup.exist_add_closure_nhds

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OpenSubgroup/Variantb1a9ed0b5c28d2db729a278021babcfa48ca07932bf26526616b308b1257a243.lean#L511).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50595f09d50a3d32037ed65853a87615d4e61f43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9e5a1da19b8d92869a4a919ff4326c22647f747ba723895182716a27ffd6b942 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/OpenSubgroup/Variantb1a9ed0b5c28d2db729a278021babcfa48ca07932bf26526616b308b1257a243.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
