# Verification target: Functor Category Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "14566858091c2a75904ec64d96e5647edfd6c225",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantaf0b3b30199d09bd45f33be089a8efda1e66d7eeaaf2a9669988adbf05ee2795.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoryNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoryNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `14566858091c2a75904ec64d96e5647edfd6c225`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantaf0b3b30199d09bd45f33be089a8efda1e66d7eeaaf2a9669988adbf05ee2795.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantaf0b3b30199d09bd45f33be089a8efda1e66d7eeaaf2a9669988adbf05ee2795.lean.json)

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
| 1 | `instance` | [Functor.category](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoryNamespacedPublic.lean/declarations/functor-category.md) | 61 | `declaration-track:bf1b4c6c6a9ba9b5ad406a3565ee8797398b2d8c80b289739b7cb54889deeee7` |
| 2 | `theorem` | [ext'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoryNamespacedPublic.lean/declarations/ext.md) | 69 | `result-track:c5e4140cc1e41688901444582aec5fb76edbef231f7de02a77d5b59c8dcf777e` |
| 3 | `theorem` | [vcomp_eq_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoryNamespacedPublic.lean/declarations/vcomp-eq-comp.md) | 72 | `result-track:5416735212d425c2a4f8720d602e1b18a2572d2b75880b418037cb9aeb9cd78a` |
| 4 | `theorem` | [vcomp_app'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoryNamespacedPublic.lean/declarations/vcomp-app.md) | 75 | `result-track:47c9506382a32197a8bdb4acb71f463b679874343ff42744d73a9dd85a831c30` |
| 5 | `theorem` | [congr_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoryNamespacedPublic.lean/declarations/congr-app.md) | 78 | `result-track:2fcc04594742622575f5fc59bf8ebada1e3ac28a6e5c71df8698de253c57596c` |
| 6 | `theorem` | [id_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoryNamespacedPublic.lean/declarations/id-app.md) | 81 | `result-track:ec79ed75ea2531013bd71eb7b2bb93abc52a973c11bcfa0b38e906aad51ece64` |
| 7 | `theorem` | [comp_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoryNamespacedPublic.lean/declarations/comp-app.md) | 84 | `result-track:51c7f987e7d3d6030954b2a3c8d6acacb7155c8b234a86b37d9bc12bbdd17d07` |
| 8 | `theorem` | [app_naturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoryNamespacedPublic.lean/declarations/app-naturality.md) | 88 | `result-track:cc8e86751f0cc08e5d77f8703be7339c5b07de500a6ca884e4fc19b39f2e2ba8` |
| 9 | `theorem` | [naturality_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoryNamespacedPublic.lean/declarations/naturality-app.md) | 93 | `result-track:ae538064e1a33ffd36ba342c33cfafcf21de5521bb6e5fe845268d3a7b375a7b` |
| 10 | `theorem` | [naturality_app_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoryNamespacedPublic.lean/declarations/naturality-app-app.md) | 98 | `result-track:d64a96559f03a4a974eccd36d9aa0cafa62a3631bfc00c00cce16ad8aed4dc66` |
| 11 | `lemma` | [naturality_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoryNamespacedPublic.lean/declarations/naturality-inv.md) | 105 | `result-track:b10fd7672b50b52476a8c92fcefae3b599a9497eea80b62b202d7abe4975da9d` |
| 12 | `theorem` | [epi_of_epi_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoryNamespacedPublic.lean/declarations/epi-of-epi-app.md) | 113 | `result-track:c1254e5f68474c9614b4c9ed4e5a2771bb5e86f8456b41f76f9f758a1acd1631` |
| 13 | `lemma` | [id_comm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoryNamespacedPublic.lean/declarations/id-comm.md) | 120 | `result-track:8c23bcae24ef200f012bc2bad1b117c388db0d218601aaf4db0c6cf8f35bda0c` |
| 14 | `def` | [hcomp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoryNamespacedPublic.lean/declarations/hcomp.md) | 130 | `declaration-track:bf84b180f40fe140714c798fd44f9fd6fc55d14f6a7d2c3eff19fa1030b9cc61` |
| 15 | `theorem` | [hcomp_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoryNamespacedPublic.lean/declarations/hcomp-app-source-edition-2.md) | 137 | `result-track:8a1b71d015596848014ce546b0fb430cadee53e67388114c16f6c2fa710fb4db` |
| 16 | `theorem` | [hcomp_app'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoryNamespacedPublic.lean/declarations/hcomp-app.md) | 142 | `result-track:83bc3e3cc64cc79a9e5abcb1a16a7fa9a4084d3d6b4c46a96c9e3ec8be78a070` |
| 17 | `theorem` | [hcomp_id_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoryNamespacedPublic.lean/declarations/hcomp-id-app.md) | 147 | `result-track:0dda12f73aafb49fb7935d178bdf3c43de0ffdd8981024837ec5a32360758c7e` |
| 18 | `theorem` | [id_hcomp_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoryNamespacedPublic.lean/declarations/id-hcomp-app.md) | 151 | `result-track:68cca3d8176ed69587a693285788ea0eb01dc92130f46eb32ccd2d441f694aa9` |
| 19 | `theorem` | [exchange](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoryNamespacedPublic.lean/declarations/exchange.md) | 158 | `result-track:6817f4b6c3a5b9b486c22ea36e4b5afabe50e5bcd6098dc0814ed6ba2fdd3508` |
| 20 | `def` | [flip](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoryNamespacedPublic.lean/declarations/flip.md) | 168 | `declaration-track:0506c22fe78583544f2eaa4ce23c9b96ee749d01d4a119823e11c8cf6a9798ca` |
| 21 | `theorem` | [flip_map_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoryNamespacedPublic.lean/declarations/flip-map-app.md) | 176 | `result-track:c2de197f418b1b1e2be010ec1554936080e952c8aebae30f3ac5d3187fe556ba` |
| 22 | `def` | [leftUnitor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoryNamespacedPublic.lean/declarations/leftunitor.md) | 182 | `declaration-track:cde24b151f735acb2bf23909f485365cf938c765429d0357a6da5b670a12764d` |
| 23 | `def` | [rightUnitor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoryNamespacedPublic.lean/declarations/rightunitor.md) | 190 | `declaration-track:198bb2801e46d61e4d6bf6da264ece8f91ad5128798490da02bcd0c4de6bf25d` |
| 24 | `def` | [associator](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoryNamespacedPublic.lean/declarations/associator.md) | 201 | `declaration-track:e4cf17334f593c523c830b42fc1664c5aba65f01866ec3ad87a9813ce1a4d664` |
| 25 | `theorem` | [assoc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoryNamespacedPublic.lean/declarations/assoc.md) | 206 | `result-track:a1acf45ac31cc6c0583ca16fa5f805767189722207d032ea2d085038787883c7` |
| 26 | `def` | [flipFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoryNamespacedPublic.lean/declarations/flipfunctor.md) | 214 | `declaration-track:319d60f3efe073b04640ec1393d8f5202243bcd3ddf5878f69c931dfb2946003` |
| 27 | `theorem` | [map_hom_inv_id_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoryNamespacedPublic.lean/declarations/map-hom-inv-id-app.md) | 223 | `result-track:315791bbbccd1b0b75424e183151603bd39d79726bb63f53a082ca994d5fc06a` |
| 28 | `theorem` | [map_inv_hom_id_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoryNamespacedPublic.lean/declarations/map-inv-hom-id-app.md) | 228 | `result-track:92f54358476251013a7c08dfbc6fea8dbb9a59295dddf82b85396f57f4796134` |
| 29 | `abbrev` | [NatTrans.flipApp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoryNamespacedPublic.lean/declarations/nattrans-flipapp.md) | 236 | `declaration-track:4358820cc1fe69624a354dcba9f7486d54757bdff0281761fdbe5298627e65cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c86c33572c8f0ecb7d2b0d7610199fbb186fad6dd073ad078517c6f7d4ab4727 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantaf0b3b30199d09bd45f33be089a8efda1e66d7eeaaf2a9669988adbf05ee2795.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantaf0b3b30199d09bd45f33be089a8efda1e66d7eeaaf2a9669988adbf05ee2795.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
