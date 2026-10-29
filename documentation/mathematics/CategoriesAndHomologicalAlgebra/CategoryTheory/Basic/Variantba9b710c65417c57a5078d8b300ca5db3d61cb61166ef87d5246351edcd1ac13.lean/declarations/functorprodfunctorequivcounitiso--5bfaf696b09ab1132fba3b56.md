# functorProdFunctorEquivCounitIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8bc5bfa30c34bbbe39af6724633c76233b802b96a186190cd93d2cc0f24d7f79",
  "kind": "def",
  "lexical_name": "functorProdFunctorEquivCounitIso",
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
  "slug": "functorprodfunctorequivcounitiso--5bfaf696b09ab1132fba3b56",
  "source": {
    "blob": "27a66451ff0ece3e5a7f4b1692e4f2e1a17f37e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 385,
    "line": 380,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantba9b710c65417c57a5078d8b300ca5db3d61cb61166ef87d5246351edcd1ac13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5bfaf696b09ab1132fba3b56f39db3f368ea4c79e571e6f8e72ae5f650f03e8e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantba9b710c65417c57a5078d8b300ca5db3d61cb61166ef87d5246351edcd1ac13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8bc5bfa30c34bbbe39af6724633c76233b802b96a186190cd93d2cc0f24d7f79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 380–385.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def functorProdFunctorEquivCounitIso :
    functorProdToProdFunctor A B C ⋙ prodFunctorToFunctorProd A B C ≅ 𝟭 _ :=
  NatIso.ofComponents fun F => NatIso.ofComponents fun X => prod.etaIso (F.obj X)

/-- The equivalence of categories between `(A ⥤ B) × (A ⥤ C)` and `A ⥤ (B × C)` -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantba9b710c65417c57a5078d8b300ca5db3d61cb61166ef87d5246351edcd1ac13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantba9b710c65417c57a5078d8b300ca5db3d61cb61166ef87d5246351edcd1ac13.lean#L380).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27a66451ff0ece3e5a7f4b1692e4f2e1a17f37e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4b7a1536c5b5b3f6a69fc0005e6b7b6f3998ce2949b5f6ff3848dd4a31b3f37e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantba9b710c65417c57a5078d8b300ca5db3d61cb61166ef87d5246351edcd1ac13.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
