# isColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c4a10ddbf61be9f6b0059587e6d82d5bf74b1d1f29f1d88d7ddc17e4600ae0df",
  "kind": "def",
  "lexical_name": "isColimit",
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
  "slug": "iscolimit",
  "source": {
    "blob": "c969ed446219487218cc24430d159a63c24b57c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 125,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant7f93fdf572481b0928f547da102fa493939d072f1c1ad887b0f908f02e90d611.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e29332be0bd41e203969e8990f404d420270969e314dcb25f36f1f2bf2a84fb2",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/KernelCokernelComp.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c4a10ddbf61be9f6b0059587e6d82d5bf74b1d1f29f1d88d7ddc17e4600ae0df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def isColimit : IsColimit (CokernelCofork.ofπ _ (φ_π f g)) :=
  CokernelCofork.IsColimit.ofπ' _ _ (fun {A} k hk ↦ by
    refine ⟨cokernel.desc _ (biprod.inr ≫ k) ?_, ?_⟩
    all_goals
      obtain ⟨k₁, k₂, rfl⟩ := biprod.decomp_hom_from k
      simp only [comp_add, φ_snd_assoc, biprod.ext_from_iff, inl_φ_assoc,
        BinaryBicone.inl_fst_assoc, BinaryBicone.inl_snd_assoc, zero_comp, add_zero, comp_zero,
        inr_φ_fst_assoc, neg_comp, id_comp, BinaryBicone.inr_snd_assoc, neg_add_eq_zero] at hk
      obtain ⟨hk, rfl⟩ := hk
      aesop)

/-- The "snake input" which gives the exact sequence
`0 ⟶ ker f ⟶ ker (f ≫ g) ⟶ ker g ⟶ coker f ⟶ coker (f ≫ g) ⟶ coker g ⟶ 0`,
see `kernelCokernelCompSequence_exact`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/KernelCokernelComp.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant7f93fdf572481b0928f547da102fa493939d072f1c1ad887b0f908f02e90d611.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c969ed446219487218cc24430d159a63c24b57c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=621ca31cbd52286750a2aa13b6b0c15c4ee1f070461e29a9a8e3eb0bb9f30cf1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KernelCokernelComp/Variant7f93fdf572481b0928f547da102fa493939d072f1c1ad887b0f908f02e90d611.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
