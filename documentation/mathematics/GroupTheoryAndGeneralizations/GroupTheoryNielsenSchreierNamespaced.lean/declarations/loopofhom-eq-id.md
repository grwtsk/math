# loopOfHom_eq_id

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6e58b305-9b1c-861d-b77e-4ebd09a9ba94",
  "kind": "theorem",
  "lexical_name": "loopOfHom_eq_id",
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
  "slug": "loopofhom-eq-id",
  "source": {
    "blob": "3842d8ae8d3809070885de9043d528acfc246bc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 203,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variantcba3c4a1d2450c85462809c5284fd49119ea3c9322ee7c368d4704fd60ef1b25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a7a21a39cf75fb0ce66521760eaf762e44112df1b43056085d68e69f7b6281c",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/GroupTheoryAndGeneralizations/GroupTheoryNielsenSchreierNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e58b305-9b1c-861d-b77e-4ebd09a9ba94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem loopOfHom_eq_id {a b : Generators G} (e) (H : e ∈ wideSubquiverSymmetrify T a b) :
    loopOfHom T (of e) = 𝟙 (root' T) := by
  rw [loopOfHom, ← Category.assoc, IsIso.comp_inv_eq, Category.id_comp]
  cases' H with H H
  · rw [treeHom_eq T (Path.cons default ⟨Sum.inl e, H⟩), homOfPath]
    rfl
  · rw [treeHom_eq T (Path.cons default ⟨Sum.inr e, H⟩), homOfPath]
    simp only [IsIso.inv_hom_id, Category.comp_id, Category.assoc, treeHom]
#align is_free_groupoid.spanning_tree.loop_of_hom_eq_id IsFreeGroupoid.SpanningTree.loopOfHom_eq_id

/-- Since a hom gives a loop, any homomorphism from the vertex group at the root
    extends to a functor on the whole groupoid. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GroupTheoryAndGeneralizations/GroupTheoryNielsenSchreierNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variantcba3c4a1d2450c85462809c5284fd49119ea3c9322ee7c368d4704fd60ef1b25.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3842d8ae8d3809070885de9043d528acfc246bc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b7d77b98c35a7de4ceb317d8cbb3bf2a79fbf3cc74b8416b54c36b46215490a2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variantcba3c4a1d2450c85462809c5284fd49119ea3c9322ee7c368d4704fd60ef1b25.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
