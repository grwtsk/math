# isColimitOfEval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8bde93d6b91e57b24df92e58b36a4df169f120eb091a73181d5aa7bc8be862fc",
  "kind": "def",
  "lexical_name": "isColimitOfEval",
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
  "slug": "iscolimitofeval",
  "source": {
    "blob": "42169f506cdbb2050e7af8d1f92b3fc00b3b3084",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 116,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Variant24def4b9b56bc4ecc1b231c2013df68e86c030ccee7e89077781c694a3ec8150.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:56f1179e96071048e08183061f6e9f2599e6aa008170a51a3be9dbacf0c5381b",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologicalComplexLimitsPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8bde93d6b91e57b24df92e58b36a4df169f120eb091a73181d5aa7bc8be862fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isColimitOfEval (s : Cocone F)
    (hs : ∀ (i : ι), IsColimit ((eval C c i).mapCocone s)) : IsColimit s where
  desc t :=
    { f := fun i => (hs i).desc ((eval C c i).mapCocone t)
      comm' := fun i i' _ => by
        apply IsColimit.hom_ext (hs i)
        intro j
        have eq := fun k => (hs k).fac ((eval C c k).mapCocone t)
        simp only [Functor.mapCocone_ι_app, eval_map] at eq
        simp only [Functor.mapCocone_ι_app, eval_map]
        rw [reassoc_of% (eq i), Hom.comm_assoc, eq i', Hom.comm] }
  fac t j := by
    ext i
    apply (hs i).fac
  uniq t m hm := by
    ext i
    apply (hs i).uniq ((eval C c i).mapCocone t)
    intro j
    dsimp
    simp only [← comp_f, hm]


variable [∀ (n : ι), HasColimit (F ⋙ HomologicalComplex.eval C c n)]

set_option backward.defeqAttrib.useBackward true in
/-- A cocone for a functor `F : J ⥤ HomologicalComplex C c` which is given in degree `n` by
the colimit of `F ⋙ eval C c n`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologicalComplexLimitsPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Variant24def4b9b56bc4ecc1b231c2013df68e86c030ccee7e89077781c694a3ec8150.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42169f506cdbb2050e7af8d1f92b3fc00b3b3084` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8f0db3fb14ce5a989613bf634c1c22f770acdb5165a44a8275879bb281f39fdd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Variant24def4b9b56bc4ecc1b231c2013df68e86c030ccee7e89077781c694a3ec8150.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
