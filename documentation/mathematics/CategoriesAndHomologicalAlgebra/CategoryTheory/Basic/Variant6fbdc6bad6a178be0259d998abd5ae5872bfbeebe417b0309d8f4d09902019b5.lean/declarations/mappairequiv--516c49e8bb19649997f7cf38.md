# mapPairEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:408881424729a0e0b26fa9361626f8d5d3c4e0fef50b8b41834b61e5d72afb2c",
  "kind": "def",
  "lexical_name": "mapPairEquiv",
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
  "slug": "mappairequiv--516c49e8bb19649997f7cf38",
  "source": {
    "blob": "6688df35d8d818f5188a06e0027162309425bb9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 656,
    "line": 640,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6fbdc6bad6a178be0259d998abd5ae5872bfbeebe417b0309d8f4d09902019b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:516c49e8bb19649997f7cf38aacf3ceb39074ff3bf7accc1905a95a4076e7448",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6fbdc6bad6a178be0259d998abd5ae5872bfbeebe417b0309d8f4d09902019b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:408881424729a0e0b26fa9361626f8d5d3c4e0fef50b8b41834b61e5d72afb2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 640–656.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapPairEquiv (e : C ≌ C') (e' : D ≌ D') : C ⋆ D ≌ C' ⋆ D' where
  functor := mapPair e.functor e'.functor
  inverse := mapPair e.inverse e'.inverse
  unitIso :=
    mapPairId.symm ≪≫
      mapIsoWhiskerRight e.unitIso _ ≪≫
      mapIsoWhiskerLeft _ e'.unitIso ≪≫
      mapPairComp _ _ _ _
  counitIso :=
    (mapPairComp _ _ _ _).symm ≪≫
      mapIsoWhiskerRight e.counitIso _ ≪≫
      mapIsoWhiskerLeft _ e'.counitIso ≪≫
      mapPairId
  functor_unitIso_comp x := by
    cases x <;>
    simp [← (inclLeft C' D').map_comp, ← (inclRight C' D').map_comp]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6fbdc6bad6a178be0259d998abd5ae5872bfbeebe417b0309d8f4d09902019b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6fbdc6bad6a178be0259d998abd5ae5872bfbeebe417b0309d8f4d09902019b5.lean#L640).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6688df35d8d818f5188a06e0027162309425bb9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0a11f291acfcedf1fbe8ef17ee0fb99c08cc193d7ecc563ec761898d5b17a4c8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6fbdc6bad6a178be0259d998abd5ae5872bfbeebe417b0309d8f4d09902019b5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
