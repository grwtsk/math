# Verification target: Bridge Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f3925a2ccf091f8e84837a09ced796486e718897",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bridge/Variantdbc9b7bd9e5ed5699467951d34a787393eaf49e7f6de5fb5f273f3d93504f53a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BridgeNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BridgeNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f3925a2ccf091f8e84837a09ced796486e718897`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bridge/Variantdbc9b7bd9e5ed5699467951d34a787393eaf49e7f6de5fb5f273f3d93504f53a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Bridge/Variantdbc9b7bd9e5ed5699467951d34a787393eaf49e7f6de5fb5f273f3d93504f53a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Logic.Category.Hom` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CategoricalBridgeEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BridgeNamespaced.lean/declarations/categoricalbridgeequivalence.md) | 15 | `declaration-track:ea75103108c0cf40544af7df22a595f6b5d286ddcb5ee3f200efdb0843726ff2` |
| 2 | `theorem` | [CategoricalBridgeEquivalence.object_injective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BridgeNamespaced.lean/declarations/categoricalbridgeequivalence-object-injective.md) | 41 | `result-track:efe41385f139247cc82e940e41cf09d60365d77482b56a064ec7e051756a6abb` |
| 3 | `theorem` | [CategoricalBridgeEquivalence.object_surjective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BridgeNamespaced.lean/declarations/categoricalbridgeequivalence-object-surjective.md) | 52 | `result-track:1ebecd0e939137d977101a3c63bce5d570ee44f4e63d8f0595d5433b08c05049` |
| 4 | `theorem` | [CategoricalBridgeEquivalence.object_bijective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BridgeNamespaced.lean/declarations/categoricalbridgeequivalence-object-bijective.md) | 59 | `result-track:d76e99e19bedbf30eb6b2824e4afb7250dbe658ca9103e9fa05143afa7482816` |
| 5 | `theorem` | [CategoricalBridgeEquivalence.morphism_injective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BridgeNamespaced.lean/declarations/categoricalbridgeequivalence-morphism-injective.md) | 66 | `result-track:0c2b2c7d30e1ccac559c708b79b66db55d9fc0e78183442b87d53d62d7c289b0` |
| 6 | `theorem` | [CategoricalBridgeEquivalence.morphism_surjective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BridgeNamespaced.lean/declarations/categoricalbridgeequivalence-morphism-surjective.md) | 74 | `result-track:60194fb4db05301b1a79c070c143a6b39f4e29b2e76bdd1dd7ce17d6191a0b6e` |
| 7 | `structure` | [LayerCategories](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BridgeNamespaced.lean/declarations/layercategories.md) | 82 | `declaration-track:21603c013a99e366131fb82a83bdee3d4c6051c7fcd8e1cdecec542acfaa6b01` |
| 8 | `structure` | [LayerObjectRoundTrips](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BridgeNamespaced.lean/declarations/layerobjectroundtrips.md) | 107 | `declaration-track:95fb7d8d52e2ab829e050e028b2584bd5126b89f64a5005d1785305af2d891d6` |
| 9 | `structure` | [LayerHomRoundTrips](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BridgeNamespaced.lean/declarations/layerhomroundtrips.md) | 133 | `declaration-track:e08c16658ace28f82dfdb0278296984578ecef46838eeb6c34331dd1cc3945cb` |
| 10 | `structure` | [LayerCategoryEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BridgeNamespaced.lean/declarations/layercategoryequivalence.md) | 143 | `declaration-track:db2b7a27e44efd98195f3fe883d4bd6d3eaf7ef016d4ace16ecdea67bc8388e2` |
| 11 | `def` | [LayerCategoryEquivalence.logicToWisdom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BridgeNamespaced.lean/declarations/layercategoryequivalence-logictowisdom.md) | 153 | `declaration-track:169fef96058e01c08abe6cf8309a02128d5dd9e2f21e4f89efe51af23337042a` |
| 12 | `def` | [LayerCategoryEquivalence.wisdomToLogic](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BridgeNamespaced.lean/declarations/layercategoryequivalence-wisdomtologic.md) | 177 | `declaration-track:6fad274594dde5519c04d924340c8ea7e2469e3e6c467dea54878949bf174f55` |
| 13 | `theorem` | [LayerCategoryEquivalence.logic_wisdom_object_round_trip](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BridgeNamespaced.lean/declarations/layercategoryequivalence-logic-wisdom-object-round-trip.md) | 201 | `result-track:b5e9c7744aaaf01aefbbdae3a5ce2e1719c13689b95702b0398f289e27962af3` |
| 14 | `theorem` | [LayerCategoryEquivalence.wisdom_logic_object_round_trip](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BridgeNamespaced.lean/declarations/layercategoryequivalence-wisdom-logic-object-round-trip.md) | 213 | `result-track:0521b1142db3b24d09057bf67b83681b92691ea63f93be18f565482f2c635c11` |
| 15 | `theorem` | [LayerCategoryEquivalence.logicToWisdom_object_bijective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BridgeNamespaced.lean/declarations/layercategoryequivalence-logictowisdom-object-bijective.md) | 225 | `result-track:853ac831126db1f731e398fb210b3c5586ae174d2be51393730d6717a94c3da9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1b52eb74b80e17f5b1304d4570de0ffddec4a7965bd45c20c4f00349eb1042a9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bridge/Variantdbc9b7bd9e5ed5699467951d34a787393eaf49e7f6de5fb5f273f3d93504f53a.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Bridge/Variantdbc9b7bd9e5ed5699467951d34a787393eaf49e7f6de5fb5f273f3d93504f53a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
