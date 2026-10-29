# chainComplexFunctorObjCompMapIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1246f60c35d87f37cd9a8ad28d6c25f8db241407243d699c71d3f5154b6368b7",
  "kind": "def",
  "lexical_name": "chainComplexFunctorObjCompMapIso",
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
  "slug": "chaincomplexfunctorobjcompmapiso",
  "source": {
    "blob": "986429bbcb2af3dc98b95fde84fc38abb2d48b30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 53,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MapHomologicalComplex/Variantf735fa3445dfd6229c216d2f91fc9211d20f7f8547e7d13efb9f0ce2e1819456.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1c0a7e241ea663a8bc02fa81d4b31b6157755c41329496ef215925edd873226c",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/AlgebraicTopology/MapHomologicalComplexNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1246f60c35d87f37cd9a8ad28d6c25f8db241407243d699c71d3f5154b6368b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def chainComplexFunctorObjCompMapIso :
    (chainComplexFunctor C).obj R ⋙ F.mapHomologicalComplex (.down ℕ) ≅
    (chainComplexFunctor D).obj (F.obj R) :=
  calc
    _ ≅ (whiskering ..).obj (sigmaConst.obj R) ⋙
      alternatingFaceMapComplex C ⋙ F.mapHomologicalComplex _ := associator ..
    _ ≅ (whiskering ..).obj (sigmaConst.obj R) ⋙
        (whiskering ..).obj F ⋙ alternatingFaceMapComplex D :=
      isoWhiskerLeft _ (alternatingFaceMapComplexCompMapHomologicalComplexIso _)
    _ ≅ ((whiskering ..).obj (sigmaConst.obj R) ⋙
        (whiskering ..).obj F) ⋙ alternatingFaceMapComplex D :=
      (associator ..).symm
    _ ≅ (whiskering ..).obj (sigmaConst.obj R ⋙ F) ⋙ alternatingFaceMapComplex D :=
      isoWhiskerRight (whiskeringRightObjCompIso ..) _
    _ ≅ (whiskering ..).obj (sigmaConst.obj (F.obj R)) ⋙ alternatingFaceMapComplex D :=
      isoWhiskerRight ((whiskering ..).mapIso (sigmaConstObjCompIso F R)) _

variable {R} in
@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/AlgebraicTopology/MapHomologicalComplexNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MapHomologicalComplex/Variantf735fa3445dfd6229c216d2f91fc9211d20f7f8547e7d13efb9f0ce2e1819456.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `986429bbcb2af3dc98b95fde84fc38abb2d48b30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c6c4da22c2b08872517fb74f8c5fea12b333d58372f6d0a1b54c877b5f12e247 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MapHomologicalComplex/Variantf735fa3445dfd6229c216d2f91fc9211d20f7f8547e7d13efb9f0ce2e1819456.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
