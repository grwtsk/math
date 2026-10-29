# Verification target: Preserves Functor Category Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7d0e1961c8b7e876644cc235b1d138e9bb1bfde",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant184633153d11e8c42597b8d45a7bb24d21e8bd21c9d87910d9c08644da3caf6a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFunctorCategoryPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFunctorCategoryPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7d0e1961c8b7e876644cc235b1d138e9bb1bfde`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant184633153d11e8c42597b8d45a7bb24d21e8bd21c9d87910d9c08644da3caf6a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant184633153d11e8c42597b8d45a7bb24d21e8bd21c9d87910d9c08644da3caf6a.lean.json)

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
| 1 | `lemma` | [FunctorCategory.prod_preservesColimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFunctorCategoryPublic.lean/declarations/functorcategory-prod-preservescolimits.md) | 60 | `result-track:7c94ddfa561e5eebd66af5af1560201f606bc5cd17c50e08f4da0c5ba5c6de51` |
| 2 | `instance` | [whiskeringLeft_preservesLimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFunctorCategoryPublic.lean/declarations/whiskeringleft-preserveslimitsofshape.md) | 86 | `declaration-track:3b5134857e8c7297d557ff136871b893d3e3762549ccb5d082d68b577d3d5253` |
| 3 | `instance` | [whiskeringLeft_preservesColimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFunctorCategoryPublic.lean/declarations/whiskeringleft-preservescolimitsofshape.md) | 96 | `declaration-track:5a1f7cc82da37d006aaf0d3820fe55987a3d35d96eb73da32e207f911d7e4bde` |
| 4 | `instance` | [whiskeringLeft_preservesLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFunctorCategoryPublic.lean/declarations/whiskeringleft-preserveslimits.md) | 106 | `declaration-track:726e158946f1afc08284eb642991977970428180bcf9edbadc9bf6ea973f445c` |
| 5 | `instance` | [whiskeringLeft_preservesColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFunctorCategoryPublic.lean/declarations/whiskeringleft-preservescolimit.md) | 110 | `declaration-track:a1e0032d0cdfcd08b60507329daf9de2a2058a2fa1a338c83a3309c463acffb2` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFunctorCategoryPublic.lean/declarations/instance-source-edition-5.md) | 114 | `declaration-track:e467f9785d44e709bcc4bda8ac062f4b1f6724598cc3beb56be62bf1fd3bd61f` |
| 7 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFunctorCategoryPublic.lean/declarations/instance-source-edition-6.md) | 118 | `declaration-track:e60dd8179ee4daba445efd2552aa853a4dbe38ae13ea51cff0f10fba11580ab1` |
| 8 | `instance` | [whiskeringRight_preservesLimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFunctorCategoryPublic.lean/declarations/whiskeringright-preserveslimitsofshape.md) | 122 | `declaration-track:0e112bd5fbbd0e3b259521015483bbe2fcde0fd690ea7f65218d879a235e5aff` |
| 9 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFunctorCategoryPublic.lean/declarations/instance-source-edition-2.md) | 132 | `declaration-track:745c0211507a9ed8a91e50a1bd07323e9e333753ab389b2ec78733cd17972c19` |
| 10 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFunctorCategoryPublic.lean/declarations/instance-source-edition-4.md) | 138 | `declaration-track:c689dd5e2f8e4e3d835a06000d3433e11df3c5ad4a99930808f3e725b69e8425` |
| 11 | `def` | [limitCompWhiskeringRightIsoLimitComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFunctorCategoryPublic.lean/declarations/limitcompwhiskeringrightisolimitcomp.md) | 149 | `declaration-track:c0d4a3fcbb70a8c7fe7771c88e4001f7c95dc2faa0d92775869915590717435e` |
| 12 | `theorem` | [limitCompWhiskeringRightIsoLimitComp_inv_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFunctorCategoryPublic.lean/declarations/limitcompwhiskeringrightisolimitcomp-inv.md) | 156 | `result-track:ff311b4c91d3cd1133e749e767295fc43d5043498ea6121c82aa1227eca76787` |
| 13 | `theorem` | [limitCompWhiskeringRightIsoLimitComp_hom_whiskerRight_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFunctorCategoryPublic.lean/declarations/limitcompwhiskeringrightisolimitcomp-hom-whiskerright.md) | 164 | `result-track:9447e15533ae30f2f913cb13622b0feb3f94e1195d7423219e6a0e22b1b89d58` |
| 14 | `instance` | [whiskeringRight_preservesColimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFunctorCategoryPublic.lean/declarations/whiskeringright-preservescolimitsofshape.md) | 172 | `declaration-track:abff0167b6ef6044d9b8190d297600444b9a9c704f3e033fbfd8a598ad1682d5` |
| 15 | `def` | [colimitCompWhiskeringRightIsoColimitComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFunctorCategoryPublic.lean/declarations/colimitcompwhiskeringrightisocolimitcomp.md) | 184 | `declaration-track:96b2ef556361cbca730f5dab8cda0be22a2855c868bea28fc0ab706cfc849d21` |
| 16 | `theorem` | [ι_colimitCompWhiskeringRightIsoColimitComp_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFunctorCategoryPublic.lean/declarations/colimitcompwhiskeringrightisocolimitcomp-hom.md) | 191 | `result-track:05fab24994648948ee7f52461637f8540665a38e3ff7eac0a3e7c49ebf004bd2` |
| 17 | `theorem` | [whiskerRight_ι_colimitCompWhiskeringRightIsoColimitComp_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFunctorCategoryPublic.lean/declarations/whiskerright-colimitcompwhiskeringrightisocolimitcomp-inv.md) | 199 | `result-track:0e0c803815f291b78a8fe0f5d4291c82e27c7093425e8f79453db9368d47cae2` |
| 18 | `instance` | [whiskeringRightPreservesLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFunctorCategoryPublic.lean/declarations/whiskeringrightpreserveslimits.md) | 206 | `declaration-track:51d42a40d078614d1500a243ce315bab0f548a2fabb95451709067be4913e171` |
| 19 | `instance` | [whiskeringRightPreservesColimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFunctorCategoryPublic.lean/declarations/whiskeringrightpreservescolimits.md) | 212 | `declaration-track:cd7d88ddcf8ae524d4458457dd2eca5002b45def6ea270e467ed2a48c8de231c` |
| 20 | `lemma` | [preservesLimit_of_lan_preservesLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFunctorCategoryPublic.lean/declarations/preserveslimit-of-lan-preserveslimit.md) | 219 | `result-track:fa08be3f443d40354db50b1f2f47ec5efcbffd1c1840321cf9cd6ed90cf55aa4` |
| 21 | `lemma` | [preservesFiniteLimits_of_evaluation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFunctorCategoryPublic.lean/declarations/preservesfinitelimits-of-evaluation.md) | 227 | `result-track:4815075ba4c8948b07b27b4c37ce913e787528f1e29a43a82b9a8f44a8b08fd3` |
| 22 | `lemma` | [preservesFiniteColimits_of_evaluation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFunctorCategoryPublic.lean/declarations/preservesfinitecolimits-of-evaluation.md) | 233 | `result-track:9a5a102767ce82841d92abf76f24fedc441b8dcbb773b70904d72628198022f2` |
| 23 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFunctorCategoryPublic.lean/declarations/instance.md) | 252 | `declaration-track:14f9a2076a286e3dfbcf5c06b78f14e1fddec1ef4b2eac636f732086f1ad9ef8` |
| 24 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFunctorCategoryPublic.lean/declarations/instance-source-edition-3.md) | 269 | `declaration-track:bbe95a0d5dcf975c5de54eee046badfdd35ad259684bff25cdc29682bc521396` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f540cb66f76d9570b428d8b59e7a54d6e8bac165028d6133c52e32c553b58b58 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant184633153d11e8c42597b8d45a7bb24d21e8bd21c9d87910d9c08644da3caf6a.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant184633153d11e8c42597b8d45a7bb24d21e8bd21c9d87910d9c08644da3caf6a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
