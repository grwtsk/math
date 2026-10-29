# Verification target: Opposite Functor Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8fcb439a21a56c7325397635cb79c641600c88e4",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdb2dd529e54a057e6cc94cf50a78363c4eadfab0ec276df3317dff0a4f61773f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OppositeFunctorPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OppositeFunctorPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8fcb439a21a56c7325397635cb79c641600c88e4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdb2dd529e54a057e6cc94cf50a78363c4eadfab0ec276df3317dff0a4f61773f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdb2dd529e54a057e6cc94cf50a78363c4eadfab0ec276df3317dff0a4f61773f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [commShiftFunctorOpInt](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OppositeFunctorPublic.lean/declarations/commshiftfunctoropint.md) | 41 | `declaration-track:fef42793aeaf5d944b7a77f9c7172c7c84911a46f5399eab9d683595e0cec060` |
| 2 | `instance` | [commShift_natTrans_op_int](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OppositeFunctorPublic.lean/declarations/commshift-nattrans-op-int.md) | 48 | `declaration-track:8b06d531949c0577798d11219c6508ec8a0d260292abf37df8eeb39ed5a231d0` |
| 3 | `instance` | [commShift_adjunction_op_int](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OppositeFunctorPublic.lean/declarations/commshift-adjunction-op-int.md) | 56 | `declaration-track:67ebe0a598738c71427d5746d9805b4a05783651a60d13805e58f4c819e71d24` |
| 4 | `lemma` | [op_commShiftIso_hom_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OppositeFunctorPublic.lean/declarations/op-commshiftiso-hom-app.md) | 79 | `result-track:1830324e0d576fb2c91b4abb264b6c3e1d3e9a55a295c44cd4766ddd470800f8` |
| 5 | `lemma` | [op_commShiftIso_inv_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OppositeFunctorPublic.lean/declarations/op-commshiftiso-inv-app.md) | 89 | `result-track:d92d3dd401c30504595c5b822cac12f94718e5996270692b8b4063b7d1a48e46` |
| 6 | `lemma` | [shift_map_op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OppositeFunctorPublic.lean/declarations/shift-map-op.md) | 102 | `result-track:977d50deae70af566955fb436017930b7097a24f1f31cc12eeecca0563220c11` |
| 7 | `lemma` | [map_shift_unop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OppositeFunctorPublic.lean/declarations/map-shift-unop.md) | 108 | `result-track:92c5616b214815a6f99503c811efe99a89a482f1959187cbbae5b2f7177e6be6` |
| 8 | `lemma` | [map_opShiftFunctorEquivalence_unitIso_hom_app_unop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OppositeFunctorPublic.lean/declarations/map-opshiftfunctorequivalence-unitiso-hom-app-unop.md) | 115 | `result-track:e0b27c08ca90b02bde031620e95c54de9c7f3c267955a67e39d27134a3aa089b` |
| 9 | `lemma` | [map_opShiftFunctorEquivalence_unitIso_inv_app_unop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OppositeFunctorPublic.lean/declarations/map-opshiftfunctorequivalence-unitiso-inv-app-unop.md) | 132 | `result-track:013037676263c4a0168647ed48c312b7cf598e0ce6e476c8a994d7474e6978f6` |
| 10 | `lemma` | [map_opShiftFunctorEquivalence_counitIso_hom_app_unop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OppositeFunctorPublic.lean/declarations/map-opshiftfunctorequivalence-counitiso-hom-app-unop.md) | 145 | `result-track:f2d9690933e9f943f993fa40d7bd171454f0f9e9154535affc34c4fd2ce38b1e` |
| 11 | `lemma` | [map_opShiftFunctorEquivalence_counitIso_inv_app_unop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OppositeFunctorPublic.lean/declarations/map-opshiftfunctorequivalence-counitiso-inv-app-unop.md) | 157 | `result-track:d72f5c9cac45f7fc4f85d90a9b04b21d2b7469a02de81fd4893376dad7827695` |
| 12 | `def` | [mapTriangleOpCompTriangleOpEquivalenceFunctorApp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OppositeFunctorPublic.lean/declarations/maptriangleopcomptriangleopequivalencefunctorapp.md) | 185 | `declaration-track:d1ee4748f4723db212d3453fd0a6dc6e78aca62aabfa9a5566a252735fa7d50c` |
| 13 | `def` | [mapTriangleOpCompTriangleOpEquivalenceFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OppositeFunctorPublic.lean/declarations/maptriangleopcomptriangleopequivalencefunctor.md) | 197 | `declaration-track:e7277ad1e4ce55c9c6f94fbcd1e28d71b3268daa1c48fe111032b7e91d462b41` |
| 14 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OppositeFunctorPublic.lean/declarations/instance-source-edition-2.md) | 208 | `declaration-track:df9c45b7b9f96842090fb7a464820208214c8c0016f9e598ca77e4f76d775ec0` |
| 15 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OppositeFunctorPublic.lean/declarations/instance.md) | 217 | `declaration-track:7a877afe1e149781da73e3c92c79f7ca2a3ff44eacd2ff9887ba0a0975b2a426` |
| 16 | `def` | [opMapTriangleCompTriangleOpEquivalenceInverse](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OppositeFunctorPublic.lean/declarations/opmaptrianglecomptriangleopequivalenceinverse.md) | 227 | `declaration-track:3d0d749060533f6ffb84c83468f9d7e79b24fb566e7defa727690ea46d218cd5` |
| 17 | `instance` | [functor_isTriangulated_op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OppositeFunctorPublic.lean/declarations/functor-istriangulated-op.md) | 240 | `declaration-track:3504e5da55b5cfaa6d9f5be5f7bbbe6d1b1fd15e94e15867461312b07409a2e9` |
| 18 | `lemma` | [isTriangulated_of_op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OppositeFunctorPublic.lean/declarations/istriangulated-of-op.md) | 253 | `result-track:36a7df178a5090ba8b9026638bd90a3a1548b177772af41feca04a8343058eb9` |
| 19 | `lemma` | [op_isTriangulated_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OppositeFunctorPublic.lean/declarations/op-istriangulated-iff.md) | 266 | `result-track:07c5950c8da28801d46945b189d66d34dbf1d5819bc61be42e1596ee352007f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=68c5cf7b155f695f0e7c832bcb36bf5cb0aedbe37b0aec30a74ac08eb40f659b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdb2dd529e54a057e6cc94cf50a78363c4eadfab0ec276df3317dff0a4f61773f.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdb2dd529e54a057e6cc94cf50a78363c4eadfab0ec276df3317dff0a4f61773f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
