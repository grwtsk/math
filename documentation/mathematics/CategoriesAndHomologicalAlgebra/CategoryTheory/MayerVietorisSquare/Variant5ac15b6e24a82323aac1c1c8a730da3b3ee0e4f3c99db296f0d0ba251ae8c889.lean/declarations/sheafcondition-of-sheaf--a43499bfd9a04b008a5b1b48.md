# sheafCondition_of_sheaf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d894f59a-2daf-f316-a710-7f0791d78acd",
  "kind": "lemma",
  "lexical_name": "sheafCondition_of_sheaf",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "sheafcondition-of-sheaf--a43499bfd9a04b008a5b1b48",
  "source": {
    "blob": "943b7af0295d7d090cae223dc2c9935af7c8d1f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 220,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MayerVietorisSquare/Variant5ac15b6e24a82323aac1c1c8a730da3b3ee0e4f3c99db296f0d0ba251ae8c889.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a43499bfd9a04b008a5b1b48cf2cc2d99dcbe93c8f03f4a8e5fc12bbe63e8ab3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MayerVietorisSquare/Variant5ac15b6e24a82323aac1c1c8a730da3b3ee0e4f3c99db296f0d0ba251ae8c889.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d894f59a-2daf-f316-a710-7f0791d78acd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sheafCondition_of_sheaf {A : Type u'} [Category.{v} A]
    (F : Sheaf J A) : S.SheafCondition F.val := by
  rw [sheafCondition_iff_comp_coyoneda]
  intro X
  exact (Sheaf.isPullback_square_op_map_yoneda_presheafToSheaf_yoneda_iff _ S.toSquare).1
    (S.isPushout.op.map
      (yoneda.obj ⟨_, (isSheaf_iff_isSheaf_of_type _ _).2 (F.cond X.unop)⟩))

end

variable [HasWeakSheafify J (Type v)] [HasSheafify J AddCommGrp.{v}]
  (S : J.MayerVietorisSquare)

/-- The short complex of abelian sheaves
`ℤ[S.X₁] ⟶ ℤ[S.X₂] ⊞ ℤ[S.X₃] ⟶ ℤ[S.X₄]`
where the left map is a difference and the right map a sum. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/MayerVietorisSquare/Variant5ac15b6e24a82323aac1c1c8a730da3b3ee0e4f3c99db296f0d0ba251ae8c889.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MayerVietorisSquare/Variant5ac15b6e24a82323aac1c1c8a730da3b3ee0e4f3c99db296f0d0ba251ae8c889.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `943b7af0295d7d090cae223dc2c9935af7c8d1f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=975973cfa3dd90601da8189ad9d344a815158164d116f4b07fe0901c0e3c857c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MayerVietorisSquare/Variant5ac15b6e24a82323aac1c1c8a730da3b3ee0e4f3c99db296f0d0ba251ae8c889.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
