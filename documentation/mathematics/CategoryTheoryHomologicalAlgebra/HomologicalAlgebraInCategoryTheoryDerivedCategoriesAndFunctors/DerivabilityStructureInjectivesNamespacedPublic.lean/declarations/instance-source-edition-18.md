# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6d0daecd0bbe9e6ee4ebd492ddd8bd8ca58e767f87144e24254766d97835ad3d",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance-source-edition-18",
  "source": {
    "blob": "f0013b3c9ea35c58b7eea99d6d03c123e1fbcd11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 380,
    "line": 365,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DerivabilityStructureInjectives/Variantc2e3b1b0b3818228400713c6e03dab38cfad3c6a98591f7fded323bfdd38650b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e6104647a38aef9cb5c294be80e7d6fc95b7298dc41dbf7d415cf8c30037e274",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivabilityStructureInjectivesNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6d0daecd0bbe9e6ee4ebd492ddd8bd8ca58e767f87144e24254766d97835ad3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 365–380.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (K : HomotopyCategory.Plus C) [∀ (n : ℤ), Injective (K.obj.as.X n)] :
    IsIso (α.app K) := by
  have (Y : HomotopyCategory.Plus (InjectiveObject C)) :
      IsIso (α.app ((InjectiveObject.ι C).mapHomotopyCategoryPlus.obj Y)) :=
    (localizerMorphism_derives F).isIso_of_isRightDerivedFunctor _ _
  obtain ⟨Y, ⟨e⟩⟩ : (InjectiveObject.ι C).mapHomotopyCategoryPlus.essImage K := by
    obtain ⟨X, hX⟩ := K
    obtain ⟨K, rfl⟩ := HomotopyCategory.quotient_obj_surjective X
    refine ⟨(quotient _).obj
      ((CochainComplex.Plus.fibrantObjectEquivalence C).inverse.obj
      ⟨⟨K, by simpa using hX⟩, ?_⟩), ⟨Iso.refl _⟩⟩
    dsimp [fibrantObjects]
    rwa [CochainComplex.Plus.modelCategoryQuillen.isFibrant_iff]
  rw [← NatTrans.isIso_app_iff_of_iso α e]
  infer_instance

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivabilityStructureInjectivesNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DerivabilityStructureInjectives/Variantc2e3b1b0b3818228400713c6e03dab38cfad3c6a98591f7fded323bfdd38650b.lean#L365).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0013b3c9ea35c58b7eea99d6d03c123e1fbcd11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=080616e791a135f975cddcdab81c01ff2cba91b21a072124f7ce0c58d7be97a2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DerivabilityStructureInjectives/Variantc2e3b1b0b3818228400713c6e03dab38cfad3c6a98591f7fded323bfdd38650b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
