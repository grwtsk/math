# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bf5e98f83bd1ead8ceb965aba9555ede9e4bcc082ac21c5189d64b40692c849f",
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
  "slug": "instance-source-edition-2",
  "source": {
    "blob": "d984fdfbd8d114e02833706ddaeb2b8921702907",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 60,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monomorphisms/Variantef3dafc9ab245025092d1fafa7a27a7fec3a3243649502aec9c11784965af334.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5038e840353a9ecd017ddb29f26e621dbf0b27c53c7f3f77577da6d14c19a3b8",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesMonomorphismsPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bf5e98f83bd1ead8ceb965aba9555ede9e4bcc082ac21c5189d64b40692c849f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (T : Type u') : MorphismProperty.IsStableUnderCoproductsOfShape
    (monomorphisms (Type u)) T :=
  IsStableUnderCoproductsOfShape.mk _ _ (by
    intro X₁ X₂ _ _ f h
    simp only [monomorphisms.iff, mono_iff_injective] at h ⊢
    intro x₁ x₂ hx
    obtain ⟨i₁, x₁, rfl⟩ := Cofan.inj_jointly_surjective_of_isColimit
      (coproductIsCoproduct X₁) x₁
    obtain ⟨i₂, x₂, rfl⟩ := Cofan.inj_jointly_surjective_of_isColimit
      (coproductIsCoproduct X₁) x₂
    simp only [cofan_mk_inj] at hx ⊢
    replace hx : Sigma.ι X₂ i₁ (f i₁ x₁) = Sigma.ι X₂ i₂ (f i₂ x₂) := by
      have h₁ := congr_hom (Sigma.ι_map f i₁) x₁
      have h₂ := congr_hom (Sigma.ι_map f i₂) x₂
      simp only [comp_apply] at h₁ h₂ hx
      simpa [← h₁, ← h₂]
    obtain rfl := Cofan.eq_of_inj_apply_eq_of_isColimit (coproductIsCoproduct X₂) _ _ hx
    obtain rfl := h _ (Cofan.inj_injective_of_isColimit (coproductIsCoproduct X₂) i₁ hx)
    rfl)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesMonomorphismsPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monomorphisms/Variantef3dafc9ab245025092d1fafa7a27a7fec3a3243649502aec9c11784965af334.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d984fdfbd8d114e02833706ddaeb2b8921702907` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a10c41a6491914d0bca262c83b140c07df1c12cc17170e6c81f1b62b629140c2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monomorphisms/Variantef3dafc9ab245025092d1fafa7a27a7fec3a3243649502aec9c11784965af334.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
