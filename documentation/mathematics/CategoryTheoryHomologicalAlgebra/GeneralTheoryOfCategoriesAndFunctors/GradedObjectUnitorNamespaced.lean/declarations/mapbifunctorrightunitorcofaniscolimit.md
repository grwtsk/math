# mapBifunctorRightUnitorCofanIsColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:978166ef827037aa74ed12845cc6fa4952f48ba584c8a9bf9585fe51709a00fa",
  "kind": "def",
  "lexical_name": "mapBifunctorRightUnitorCofanIsColimit",
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
  "slug": "mapbifunctorrightunitorcofaniscolimit",
  "source": {
    "blob": "0f80d2a0396b1a879a505789c245c21033ccd38b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 191,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant23af1042b33d7f37b68556f717cd6409b65e24e082fbfad3e2a3f6db6caa538e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:36bf35d36078a33245993aabe476bcd4edcf3e1050a923b1e9caea74e994440e",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectUnitorNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:978166ef827037aa74ed12845cc6fa4952f48ba584c8a9bf9585fe51709a00fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def mapBifunctorRightUnitorCofanIsColimit (j : J) :
    IsColimit (mapBifunctorRightUnitorCofan F Y e p hp X j) :=
  mkCofanColimit _
    (fun s => e.inv.app (X j) ≫
      (F.obj (X j)).map (singleObjApplyIso (0 : I) Y).inv ≫ s.inj ⟨⟨j, 0⟩, hp j⟩)
    (fun s => by
      rintro ⟨⟨j', i⟩, h⟩
      by_cases hi : i = 0
      · subst hi
        simp only [Set.mem_preimage, hp, Set.mem_singleton_iff] at h
        subst h
        dsimp
        rw [mapBifunctorRightUnitorCofan_inj, assoc, Iso.hom_inv_id_app_assoc,
          ← Functor.map_comp_assoc, Iso.hom_inv_id, Functor.map_id, id_comp]
      · apply IsInitial.hom_ext
        exact mapBifunctorObjObjSingle₀IsInitial _ _ _ _ hi)
    (fun s m hm => by
      dsimp
      rw [← hm ⟨⟨j, 0⟩, hp j⟩, mapBifunctorRightUnitorCofan_inj, assoc, ← Functor.map_comp_assoc,
        Iso.inv_hom_id, Functor.map_id, id_comp, Iso.inv_hom_id_app_assoc])

include e hp in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectUnitorNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant23af1042b33d7f37b68556f717cd6409b65e24e082fbfad3e2a3f6db6caa538e.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f80d2a0396b1a879a505789c245c21033ccd38b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fff2d29168e4a9e8b21c0c1a77a59da8075d31ef1299558995f7655528cf089c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant23af1042b33d7f37b68556f717cd6409b65e24e082fbfad3e2a3f6db6caa538e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
