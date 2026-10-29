# Ind.exists_nonempty_arrow_mk_iso_ind_lim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cfe910ef-67dd-50a9-9d1e-45aa272a14ae",
  "kind": "theorem",
  "lexical_name": "Ind.exists_nonempty_arrow_mk_iso_ind_lim",
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
  "slug": "ind-exists-nonempty-arrow-mk-iso-ind-lim",
  "source": {
    "blob": "f0985222e3dd600bff126261770fddcbf791781e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 291,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant5221d1abadff87293627e0ea06580fe98b7e82bf8524981618cc45edbe3de18e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4dcb8391619741f470d0e1431d2a671b9f35bf19b3c007c105717507cc290423",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndizationCategoryNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cfe910ef-67dd-50a9-9d1e-45aa272a14ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ind.exists_nonempty_arrow_mk_iso_ind_lim {A B : Ind C} {f : A ⟶ B} :
    ∃ (I : Type v) (_ : SmallCategory I) (_ : IsFiltered I) (F G : I ⥤ C) (φ : F ⟶ G),
      Nonempty (Arrow.mk f ≅ Arrow.mk ((Ind.lim _).map φ)) := by
  obtain ⟨P⟩ := nonempty_indParallelPairPresentation A.2 B.2
    (Ind.inclusion _ |>.map f) (Ind.inclusion _ |>.map f)
  refine ⟨P.I, inferInstance, inferInstance, P.F₁, P.F₂, P.φ, ⟨Arrow.isoMk ?_ ?_ ?_⟩⟩
  · exact P.parallelPairIsoParallelPairCompIndYoneda.app WalkingParallelPair.zero
  · exact P.parallelPairIsoParallelPairCompIndYoneda.app WalkingParallelPair.one
  · simpa using
      (P.parallelPairIsoParallelPairCompIndYoneda.hom.naturality WalkingParallelPairHom.left).symm

section Small

variable (C : Type u) [SmallCategory C] [HasFiniteColimits C]

/-- For small finitely cocomplete categories `C : Type u`, the category of Ind-objects `Ind C` is
equivalent to the category of left-exact functors `Cᵒᵖ ⥤ Type u` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndizationCategoryNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant5221d1abadff87293627e0ea06580fe98b7e82bf8524981618cc45edbe3de18e.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0985222e3dd600bff126261770fddcbf791781e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b7facb893b537863da93097b6867f7939c160bae6e3556069826ae5fee90da0f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant5221d1abadff87293627e0ea06580fe98b7e82bf8524981618cc45edbe3de18e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
