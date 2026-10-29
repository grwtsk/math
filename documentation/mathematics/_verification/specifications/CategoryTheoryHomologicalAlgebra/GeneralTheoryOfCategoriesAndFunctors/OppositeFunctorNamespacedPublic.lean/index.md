# Verification target: Opposite Functor Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "943474ece7008267fbaa1412881c9861ddaa55f2",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant5cf70c1e51aaba0463b63c7221ef15437ddad273b26833656be883815989f60e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OppositeFunctorNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OppositeFunctorNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `943474ece7008267fbaa1412881c9861ddaa55f2`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant5cf70c1e51aaba0463b63c7221ef15437ddad273b26833656be883815989f60e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant5cf70c1e51aaba0463b63c7221ef15437ddad273b26833656be883815989f60e.lean.json)

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
| 1 | `instance` | [commShiftFunctorOpInt](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OppositeFunctorNamespacedPublic.lean/declarations/commshiftfunctoropint.md) | 49 | `declaration-track:8a84f405ec203009bb7e7113300a96f6bcb43a34bbd68df1de1da30caebb3b28` |
| 2 | `instance` | [commShift_natTrans_op_int](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OppositeFunctorNamespacedPublic.lean/declarations/commshift-nattrans-op-int.md) | 56 | `declaration-track:d65d512a9157d229f9242db1d2072dff7a84987ef0947cd6cddb9c944ae50ad1` |
| 3 | `instance` | [commShift_adjunction_op_int](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OppositeFunctorNamespacedPublic.lean/declarations/commshift-adjunction-op-int.md) | 64 | `declaration-track:a3e07dc2ccb88a50e0e5e3e9dd7512c4403c2a3f3034d4b8dbd02bb2e8595054` |
| 4 | `lemma` | [op_commShiftIso_hom_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OppositeFunctorNamespacedPublic.lean/declarations/op-commshiftiso-hom-app.md) | 87 | `result-track:5c9eaebd931ba302ad9afbcfc4f849fc2d86b81905cb2ed791ba0525d143630e` |
| 5 | `lemma` | [op_commShiftIso_inv_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OppositeFunctorNamespacedPublic.lean/declarations/op-commshiftiso-inv-app.md) | 97 | `result-track:02515a98de28117bafc507c1442c4490cf9cdbf020e82cf479e55baee84ea37f` |
| 6 | `lemma` | [shift_map_op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OppositeFunctorNamespacedPublic.lean/declarations/shift-map-op.md) | 110 | `result-track:56d7aeefb92179ea1f59c5c5b36459433e0dd411ef0c09b706d54ee03c9fc8c7` |
| 7 | `lemma` | [map_shift_unop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OppositeFunctorNamespacedPublic.lean/declarations/map-shift-unop.md) | 116 | `result-track:215879454fa4076de5bc3d19e35a12d0b9009e9af6c3423a7733d5ffbce21b68` |
| 8 | `lemma` | [map_opShiftFunctorEquivalence_unitIso_hom_app_unop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OppositeFunctorNamespacedPublic.lean/declarations/map-opshiftfunctorequivalence-unitiso-hom-app-unop.md) | 123 | `result-track:2fa919c445c1569c001bb9e731a27ad8c87e0e922794b580a1e2054a497d482e` |
| 9 | `lemma` | [map_opShiftFunctorEquivalence_unitIso_inv_app_unop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OppositeFunctorNamespacedPublic.lean/declarations/map-opshiftfunctorequivalence-unitiso-inv-app-unop.md) | 140 | `result-track:f3e82a04c5f4592288c7207b71c12335dcfa845cdbe92fcc7a85a15f99a3bf7f` |
| 10 | `lemma` | [map_opShiftFunctorEquivalence_counitIso_hom_app_unop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OppositeFunctorNamespacedPublic.lean/declarations/map-opshiftfunctorequivalence-counitiso-hom-app-unop.md) | 153 | `result-track:c9dda73a6903d3b5521f6092fe297a5b7c900226b17913a93bc68d9f1c0f38e3` |
| 11 | `lemma` | [map_opShiftFunctorEquivalence_counitIso_inv_app_unop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OppositeFunctorNamespacedPublic.lean/declarations/map-opshiftfunctorequivalence-counitiso-inv-app-unop.md) | 165 | `result-track:da44028b32f8f37d8c07c595f5924fa2c049aafdf08e3998429ed55a6165f5b6` |
| 12 | `def` | [mapTriangleOpCompTriangleOpEquivalenceFunctorApp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OppositeFunctorNamespacedPublic.lean/declarations/maptriangleopcomptriangleopequivalencefunctorapp.md) | 193 | `declaration-track:6f96414adb842fb034bcaf8e7f04176a403b711c87c26432a02c9ff3dfd82e25` |
| 13 | `def` | [mapTriangleOpCompTriangleOpEquivalenceFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OppositeFunctorNamespacedPublic.lean/declarations/maptriangleopcomptriangleopequivalencefunctor.md) | 205 | `declaration-track:1d2e560fceccef6c2b5470f38d82052c7f887557bec3fefdfbf35b1675080f69` |
| 14 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OppositeFunctorNamespacedPublic.lean/declarations/instance.md) | 216 | `declaration-track:6a9f5f2fbd807a746c057a4e235fadd9d0570c90a03fa82842e1f982fb3b79fe` |
| 15 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OppositeFunctorNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 225 | `declaration-track:f6fe92d7abb34d59cb7cd8ad246b30894947dae349fdbd59c19d579885653da7` |
| 16 | `def` | [opMapTriangleCompTriangleOpEquivalenceInverse](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OppositeFunctorNamespacedPublic.lean/declarations/opmaptrianglecomptriangleopequivalenceinverse.md) | 235 | `declaration-track:1d42746bd4971f4b4481cc334101424390c06f4169e33e5ab636d762368563c7` |
| 17 | `instance` | [functor_isTriangulated_op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OppositeFunctorNamespacedPublic.lean/declarations/functor-istriangulated-op.md) | 248 | `declaration-track:b0b68997d3a2005c1a77fce4e6e147e00280ddc32d448ba8018b2a7b22dfd064` |
| 18 | `lemma` | [isTriangulated_of_op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OppositeFunctorNamespacedPublic.lean/declarations/istriangulated-of-op.md) | 261 | `result-track:37dbd036d4e15576a775a7e484e84eb159c87457aad9b40fac90bc0f0a5bb10a` |
| 19 | `lemma` | [op_isTriangulated_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OppositeFunctorNamespacedPublic.lean/declarations/op-istriangulated-iff.md) | 274 | `result-track:4350e16823376155f4f1e466cd8753907d1c0ca237309e6cd420e12001fde1b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1126dc1293738b4d954279247cf35c52b0493c064ae5e77b99c47a36ae789af1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant5cf70c1e51aaba0463b63c7221ef15437ddad273b26833656be883815989f60e.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant5cf70c1e51aaba0463b63c7221ef15437ddad273b26833656be883815989f60e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
