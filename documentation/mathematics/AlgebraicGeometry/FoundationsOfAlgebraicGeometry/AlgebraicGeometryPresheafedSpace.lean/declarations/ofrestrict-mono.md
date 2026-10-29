# ofRestrict_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:efb410e4a669a10080b735b0a282834a3fe1f0b6e61c098fcbd22526afa42fb0",
  "kind": "instance",
  "lexical_name": "ofRestrict_mono",
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
  "slug": "ofrestrict-mono",
  "source": {
    "blob": "633efd4b83e70dbcb968d6e1351f17be36986f1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 413,
    "line": 381,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant932e581e4aa11b4d1074a770e2aaec768c95e46660abc7cf04802b468984411b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d0420b52b7ed3cc501d4630c38f07f5404759cbd5f7871e85e0742d666d04382",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryPresheafedSpace.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:efb410e4a669a10080b735b0a282834a3fe1f0b6e61c098fcbd22526afa42fb0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 381–413.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance ofRestrict_mono {U : TopCat} (X : PresheafedSpace C) (f : U ⟶ X.1) (hf : OpenEmbedding f) :
    Mono (X.ofRestrict hf) := by
  haveI : Mono f := (TopCat.mono_iff_injective _).mpr hf.inj
  constructor
  intro Z g₁ g₂ eq
  ext1
  · have := congr_arg PresheafedSpace.Hom.base eq
    simp only [PresheafedSpace.comp_base, PresheafedSpace.ofRestrict_base] at this
    rw [cancel_mono] at this
    exact this
  · ext V
    have hV : (Opens.map (X.ofRestrict hf).base).obj (hf.isOpenMap.functor.obj V) = V := by
      ext1
      exact Set.preimage_image_eq _ hf.inj
    haveI :
      IsIso (hf.isOpenMap.adjunction.counit.app (unop (op (hf.isOpenMap.functor.obj V)))) :=
        NatIso.isIso_app_of_isIso
          (whiskerLeft hf.isOpenMap.functor hf.isOpenMap.adjunction.counit) V
    have := PresheafedSpace.congr_app eq (op (hf.isOpenMap.functor.obj V))
    simp only [PresheafedSpace.comp_c_app, PresheafedSpace.ofRestrict_c_app, Category.assoc,
      cancel_epi] at this
    have h : _ ≫ _ = _ ≫ _ ≫ _ :=
      congr_arg (fun f => (X.restrict hf).presheaf.map (eqToHom hV).op ≫ f) this
    erw [g₁.c.naturality, g₂.c.naturality_assoc] at h
    simp only [Presheaf.pushforwardObj_map, eqToHom_op, Category.assoc, eqToHom_map,
      eqToHom_trans] at h
    rw [← IsIso.comp_inv_eq, inv_eqToHom, Category.assoc, eqToHom_trans] at h
    rw [NatTrans.comp_app]
    simpa using h

set_option linter.uppercaseLean3 false in
#align algebraic_geometry.PresheafedSpace.of_restrict_mono AlgebraicGeometry.PresheafedSpace.ofRestrict_mono

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryPresheafedSpace.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant932e581e4aa11b4d1074a770e2aaec768c95e46660abc7cf04802b468984411b.lean#L381).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `633efd4b83e70dbcb968d6e1351f17be36986f1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d6fdf7e6d5f1182451c9360bab5698b95bf09865be7e3f45f8aae1740c536c10 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant932e581e4aa11b4d1074a770e2aaec768c95e46660abc7cf04802b468984411b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
