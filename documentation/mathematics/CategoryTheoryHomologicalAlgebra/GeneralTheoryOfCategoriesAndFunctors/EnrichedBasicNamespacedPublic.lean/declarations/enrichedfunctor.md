# EnrichedFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6c271b65d044862d11f6e8861453d99fd86bee6c2cead4b934fed4a4dd7b5ec4",
  "kind": "structure",
  "lexical_name": "EnrichedFunctor",
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
  "slug": "enrichedfunctor",
  "source": {
    "blob": "b2426f0203ae2c149cbb557430e7f311f60ec97e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 319,
    "line": 300,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant077fd20943cbb03f40c2f76c85b61d424825f1a52afefb506a80aaaeba66dbfd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d908d17eef7379ce302d902a15ac2399a0665641c0cca386abbab107ad3f7237",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EnrichedBasicNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6c271b65d044862d11f6e8861453d99fd86bee6c2cead4b934fed4a4dd7b5ec4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–319.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure EnrichedFunctor (C : Type u₁) [EnrichedCategory V C] (D : Type u₂)
    [EnrichedCategory V D] where
  /-- The application of this functor to an object -/
  obj : C → D
  /-- The `V`-morphism from `X ⟶[V] Y` to `F.obj X ⟶[V] F.obj Y`, for all `X Y : C` -/
  map : ∀ X Y : C, (X ⟶[V] Y) ⟶ obj X ⟶[V] obj Y
  map_id : ∀ X : C, eId V X ≫ map X X = eId V (obj X) := by cat_disch
  map_comp :
    ∀ X Y Z : C,
      eComp V X Y Z ≫ map X Z = (map X Y ⊗ₘ map Y Z) ≫ eComp V (obj X) (obj Y) (obj Z) := by
    cat_disch

attribute [reassoc (attr := simp)] EnrichedFunctor.map_id

attribute [reassoc (attr := simp)] EnrichedFunctor.map_comp

namespace EnrichedFunctor

/-- The identity enriched functor. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EnrichedBasicNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant077fd20943cbb03f40c2f76c85b61d424825f1a52afefb506a80aaaeba66dbfd.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2426f0203ae2c149cbb557430e7f311f60ec97e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5e609d2b6c61f6f7eeee615c068176e4668d501f66e819f0877b532b90f10e00 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant077fd20943cbb03f40c2f76c85b61d424825f1a52afefb506a80aaaeba66dbfd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
