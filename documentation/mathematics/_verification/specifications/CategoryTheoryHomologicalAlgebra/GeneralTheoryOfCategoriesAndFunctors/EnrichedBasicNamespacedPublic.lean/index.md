# Verification target: Enriched Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b2426f0203ae2c149cbb557430e7f311f60ec97e",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant077fd20943cbb03f40c2f76c85b61d424825f1a52afefb506a80aaaeba66dbfd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EnrichedBasicNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EnrichedBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b2426f0203ae2c149cbb557430e7f311f60ec97e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant077fd20943cbb03f40c2f76c85b61d424825f1a52afefb506a80aaaeba66dbfd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant077fd20943cbb03f40c2f76c85b61d424825f1a52afefb506a80aaaeba66dbfd.lean.json)

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
| 1 | `class` | [EnrichedCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EnrichedBasicNamespacedPublic.lean/declarations/enrichedcategory.md) | 66 | `declaration-track:d107d6c5e8e33a0c111ad76a35ac20d47d4fd9f54eee52fcb9c31e92b71b2e0c` |
| 2 | `def` | [eId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EnrichedBasicNamespacedPublic.lean/declarations/eid.md) | 84 | `declaration-track:7adf8e74eabb5fe23d713e162d9a927904370f0ecb5698f0accf191012870bb3` |
| 3 | `def` | [eComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EnrichedBasicNamespacedPublic.lean/declarations/ecomp.md) | 89 | `declaration-track:fc6756f24191f56578cf08fb0f8f3dee288cef5e93e2ea47a6bc82775f8157ee` |
| 4 | `theorem` | [e_id_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EnrichedBasicNamespacedPublic.lean/declarations/e-id-comp.md) | 93 | `result-track:71841f9388d809bee7ee9d66029da825b8551f92579c2ca5a762a31c72cf4e2d` |
| 5 | `theorem` | [e_comp_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EnrichedBasicNamespacedPublic.lean/declarations/e-comp-id.md) | 98 | `result-track:d6e1f3ae6db8d29f204c887120a0ddfdd05bf412d4bb93c58f0ac2577a636f1d` |
| 6 | `theorem` | [e_assoc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EnrichedBasicNamespacedPublic.lean/declarations/e-assoc.md) | 103 | `result-track:24aaeef66320f7646e9a57f451bd68cbfdfdd631fe6ea43b0833ba2bf5523158` |
| 7 | `theorem` | [e_assoc'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EnrichedBasicNamespacedPublic.lean/declarations/e-assoc-source-edition-2.md) | 109 | `result-track:7c047062d0f2084b5a603e583e1255062390fb1f22d31b69630b5beb278cb6d1` |
| 8 | `def` | [TransportEnrichment](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EnrichedBasicNamespacedPublic.lean/declarations/transportenrichment.md) | 123 | `declaration-track:e442e582e418859672de37ad7ea44925fb7630e9cbc678b25dc8d0984feb99d2` |
| 9 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EnrichedBasicNamespacedPublic.lean/declarations/instance.md) | 131 | `declaration-track:0ae433656ad722960bb0c1c1d6b5c0cd91bac3608a87373dbdbfe172537f2b92` |
| 10 | `lemma` | [TransportEnrichment.eId_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EnrichedBasicNamespacedPublic.lean/declarations/transportenrichment-eid-eq.md) | 154 | `result-track:4211d5531aff77195aa4b1097cb1f71ebbe827cd4e22f016196a301d97932233` |
| 11 | `lemma` | [TransportEnrichment.eComp_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EnrichedBasicNamespacedPublic.lean/declarations/transportenrichment-ecomp-eq.md) | 158 | `result-track:f39d1cb3283ea2ed193f0caadb07599a7c81d792b7d3e1fff91a99ca45101442` |
| 12 | `def` | [categoryOfEnrichedCategoryType](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EnrichedBasicNamespacedPublic.lean/declarations/categoryofenrichedcategorytype.md) | 167 | `declaration-track:8cd0e2faa36cb02a48ceff10fa364c1ef6a583e78efe6e69b72f50c70613665e` |
| 13 | `def` | [enrichedCategoryTypeOfCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EnrichedBasicNamespacedPublic.lean/declarations/enrichedcategorytypeofcategory.md) | 180 | `declaration-track:54f985cc10665df49d6d3aae2c61329981507b2891fb12720b2fdbee56f1b56c` |
| 14 | `def` | [enrichedCategoryTypeEquivCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EnrichedBasicNamespacedPublic.lean/declarations/enrichedcategorytypeequivcategory.md) | 189 | `declaration-track:2ed95d79c173e1ba4f109fcbde7a459d4c3f9504263f346e5fda4b593b2285a4` |
| 15 | `def` | [ForgetEnrichment](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EnrichedBasicNamespacedPublic.lean/declarations/forgetenrichment.md) | 216 | `declaration-track:fc33c7627cc96064acb296b25260986afdddbfdf44388b346eac3198cb1c62dc` |
| 16 | `def` | [ForgetEnrichment.of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EnrichedBasicNamespacedPublic.lean/declarations/forgetenrichment-of.md) | 224 | `declaration-track:13e8f816a929555d1c69257e80d43ef1f9d871d8cc23956be9b55416cb20446e` |
| 17 | `def` | [ForgetEnrichment.to](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EnrichedBasicNamespacedPublic.lean/declarations/forgetenrichment-to.md) | 229 | `declaration-track:b7651d617d76fd7c71788d521a26fe57d9457d3fb2c7e999b2f850f4581f1ee0` |
| 18 | `theorem` | [ForgetEnrichment.to_of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EnrichedBasicNamespacedPublic.lean/declarations/forgetenrichment-to-of.md) | 233 | `result-track:8e667320cb559a2c787fc28541d7b612e2e64200d706863eac93d5bec0bfcbf2` |
| 19 | `theorem` | [ForgetEnrichment.of_to](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EnrichedBasicNamespacedPublic.lean/declarations/forgetenrichment-of-to.md) | 237 | `result-track:1b3f9507fa0b32dc70b6b180e7dcaf998d547b812f24114b613a739dfe47973d` |
| 20 | `instance` | [categoryForgetEnrichment](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EnrichedBasicNamespacedPublic.lean/declarations/categoryforgetenrichment.md) | 241 | `declaration-track:72bdaf2f533018805d9a5d155a9ab6d5f9d92fb91f8c076e54af77455c6e30db` |
| 21 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EnrichedBasicNamespacedPublic.lean/declarations/example.md) | 247 | `declaration-track:762b3e5329975a8f93078632b9dce7be61180a5023c6d76d9de26ba7ff63de7c` |
| 22 | `def` | [ForgetEnrichment.homOf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EnrichedBasicNamespacedPublic.lean/declarations/forgetenrichment-homof.md) | 252 | `declaration-track:be256a045ba283d4af9db29b97f36b4d62ee9181bb462fac1748d5fc9b08334e` |
| 23 | `def` | [ForgetEnrichment.homTo](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EnrichedBasicNamespacedPublic.lean/declarations/forgetenrichment-homto.md) | 257 | `declaration-track:3f69f72772b0aada60db85cd3e381ecc352d899243f4d0ca98bb05cabc507289` |
| 24 | `theorem` | [ForgetEnrichment.homTo_homOf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EnrichedBasicNamespacedPublic.lean/declarations/forgetenrichment-homto-homof.md) | 262 | `result-track:0554e2ec73618ed9b1118e2528fb48626a62f7c2ad958602302b9d8a96dfff70` |
| 25 | `theorem` | [ForgetEnrichment.homOf_homTo](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EnrichedBasicNamespacedPublic.lean/declarations/forgetenrichment-homof-homto.md) | 267 | `result-track:b8cb0b8d587025e4c4647a11e373e0440efb9a0defacd99c3c39f8df8d83bf6f` |
| 26 | `theorem` | [ForgetEnrichment.homTo_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EnrichedBasicNamespacedPublic.lean/declarations/forgetenrichment-homto-id.md) | 273 | `result-track:9373e6d94dd46d6ae3b368a9e40763bb21c37f949d5c3ab6fe6ddd0c3ea45d83` |
| 27 | `theorem` | [ForgetEnrichment.homOf_eId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EnrichedBasicNamespacedPublic.lean/declarations/forgetenrichment-homof-eid.md) | 278 | `result-track:00c7cd90b1f26ec5afd7a6f6015d70bac94bbc887f46b03d34e64608eb49a981` |
| 28 | `theorem` | [ForgetEnrichment.homTo_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EnrichedBasicNamespacedPublic.lean/declarations/forgetenrichment-homto-comp.md) | 284 | `result-track:e3b87dd6a11f3d3afecbf32b60c450cdbe7f2bb5c955a29a1031a5eae92b2cac` |
| 29 | `theorem` | [ForgetEnrichment.homOf_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EnrichedBasicNamespacedPublic.lean/declarations/forgetenrichment-homof-comp.md) | 289 | `result-track:385d39e76192a088ec5cd58842a228c59faafb548d8b7016c9267f4d7720c9cc` |
| 30 | `structure` | [EnrichedFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EnrichedBasicNamespacedPublic.lean/declarations/enrichedfunctor.md) | 300 | `declaration-track:d908d17eef7379ce302d902a15ac2399a0665641c0cca386abbab107ad3f7237` |
| 31 | `def` | [id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EnrichedBasicNamespacedPublic.lean/declarations/id.md) | 320 | `declaration-track:5642c75cd0e8126d128cd33a7f269169f7e4c0c6e152131bf49c34b4692bdd15` |
| 32 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EnrichedBasicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 324 | `declaration-track:765af8780ff62c1d2cfb0f822f8bf624bd62bc083c5513a2b1eec6b75ea01361` |
| 33 | `def` | [comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EnrichedBasicNamespacedPublic.lean/declarations/comp.md) | 329 | `declaration-track:9410c85980b6f052e1b2765f1c048add92acc883200ac4b3ac69008c83f0e9e5` |
| 34 | `lemma` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EnrichedBasicNamespacedPublic.lean/declarations/ext.md) | 335 | `result-track:4662f1cb6678913cbe4db2af9bf668d8fb86a75047db4158e21a3174bf523638` |
| 35 | `def` | [forget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EnrichedBasicNamespacedPublic.lean/declarations/forget.md) | 356 | `declaration-track:3ce0d48ed85d891569226595fc8ac8b54fdc3f78d21f9f2b6f774df5d8cba6b1` |
| 36 | `def` | [forgetComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EnrichedBasicNamespacedPublic.lean/declarations/forgetcomp.md) | 372 | `declaration-track:0fadb0fda00809e262763a8303a2362219663062951a89bad3ce1afd476d0332` |
| 37 | `def` | [forgetId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EnrichedBasicNamespacedPublic.lean/declarations/forgetid.md) | 381 | `declaration-track:41bbc11fecc35433af22a098fefe8886984ea6550a276101a6bbc5d1efe7beb0` |
| 38 | `structure` | [GradedNatTrans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EnrichedBasicNamespacedPublic.lean/declarations/gradednattrans.md) | 442 | `declaration-track:faaf63260afaac5bfdc7cf6ffddf0f874a5a2739c5984bbccdc9f9f1ac77c46a` |
| 39 | `structure` | [EnrichedNatTrans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EnrichedBasicNamespacedPublic.lean/declarations/enrichednattrans.md) | 455 | `declaration-track:93c627f7199c687448017434baa194df64a5abba97972688b8e1b3ca9fff63ec` |
| 40 | `instance` | [category](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EnrichedBasicNamespacedPublic.lean/declarations/category.md) | 464 | `declaration-track:6cbbb5be863582979edd8ca5b71119aaebb566574af4556e5b35f91bfc1460f8` |
| 41 | `lemma` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EnrichedBasicNamespacedPublic.lean/declarations/hom-ext.md) | 470 | `result-track:86b0a22ba2d1f62384b62279e375f750b6e3294cf889d695d7bce09789ab2f07` |
| 42 | `def` | [isoMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EnrichedBasicNamespacedPublic.lean/declarations/isomk.md) | 481 | `declaration-track:3a7a5c4e4f216cefbdb4859fc09de6865828798e7df4607957a80736b1aed0c9` |
| 43 | `def` | [enrichedNatTransYoneda](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EnrichedBasicNamespacedPublic.lean/declarations/enrichednattransyoneda.md) | 497 | `declaration-track:bbf0f887d2a6e4e928043621187919550df7e8da55d0c0502be603afc5354c70` |
| 44 | `def` | [enrichedFunctorTypeEquivFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EnrichedBasicNamespacedPublic.lean/declarations/enrichedfunctortypeequivfunctor.md) | 520 | `declaration-track:f3d182f7f768731b32d9a249c2b0830b13da54ca8debd76f39bff4eaaa987f17` |
| 45 | `def` | [enrichedNatTransYonedaTypeIsoYonedaNatTrans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EnrichedBasicNamespacedPublic.lean/declarations/enrichednattransyonedatypeisoyonedanattrans.md) | 538 | `declaration-track:939c6416f279e16e35c793dc9a0aaa3c9ecbcc4ebf66efb26e4d8044cdf3d81c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6e44ff8bf4150a9578a0dddc18ee4cfd06d8ff970a6ca3104e75a0e3d5efbf69 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant077fd20943cbb03f40c2f76c85b61d424825f1a52afefb506a80aaaeba66dbfd.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant077fd20943cbb03f40c2f76c85b61d424825f1a52afefb506a80aaaeba66dbfd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
