# Verification target: Limits Of Products And Equalizers Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc904aa65145d39bac6555ece30e70bcdde11f95",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant42d01a8a103a242dbb2126cf39357a2b5c88da9879af03528c29631deeb36360.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc904aa65145d39bac6555ece30e70bcdde11f95`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant42d01a8a103a242dbb2126cf39357a2b5c88da9879af03528c29631deeb36360.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant42d01a8a103a242dbb2126cf39357a2b5c88da9879af03528c29631deeb36360.lean.json)

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
| 1 | `def` | [buildLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersNamespacedPublic.lean/declarations/buildlimit.md) | 67 | `declaration-track:41cd068d34af07afc8052bdc5d7a3a31f9cbb36337b27ae8e177fddc66b58ef5` |
| 2 | `def` | [buildIsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersNamespacedPublic.lean/declarations/buildislimit.md) | 88 | `declaration-track:6e3186be8745a9016ab3c06e21a4be3e16688c9c44f08aa960c0d22979239082` |
| 3 | `def` | [limitConeOfEqualizerAndProduct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersNamespacedPublic.lean/declarations/limitconeofequalizerandproduct.md) | 108 | `declaration-track:1b210c81857d146471fa4a92e45334528411e556f9c80765b1017f9ba76cdec0` |
| 4 | `theorem` | [hasLimit_of_equalizer_and_product](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersNamespacedPublic.lean/declarations/haslimit-of-equalizer-and-product.md) | 122 | `result-track:b686df8b49893e45dbdee0315ea6d216b14c20c687b26c34d68cb2b1b55cfbf2` |
| 5 | `def` | [limitSubobjectProduct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersNamespacedPublic.lean/declarations/limitsubobjectproduct.md) | 128 | `declaration-track:29c3ab95e19689a46ed3f40f8e269f3a1858f5cc979e0a5aea94828901b10a77` |
| 6 | `instance` | [limitSubobjectProduct_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersNamespacedPublic.lean/declarations/limitsubobjectproduct-mono.md) | 134 | `declaration-track:9f53587c9a112ad2fc6ffdc2e5ede57c1f3cd8120eae922b69e70889aa437d7f` |
| 7 | `theorem` | [has_limits_of_hasEqualizers_and_products](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersNamespacedPublic.lean/declarations/has-limits-of-hasequalizers-and-products.md) | 140 | `result-track:32c895bade817b6652eef98837153a381cfbb3a7959a5b20c09bfd39df7d2724` |
| 8 | `theorem` | [hasFiniteLimits_of_hasEqualizers_and_finite_products](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersNamespacedPublic.lean/declarations/hasfinitelimits-of-hasequalizers-and-finite-products.md) | 147 | `result-track:0437cd571f8a827333278c638a63ff1e6f1830bb9bc5669543975f21c912caed` |
| 9 | `lemma` | [preservesLimit_of_preservesEqualizers_and_product](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersNamespacedPublic.lean/declarations/preserveslimit-of-preservesequalizers-and-product.md) | 165 | `result-track:c2986a7e881eb9daa4ab8e36b9711f69a5c0e019196b5c847f9e0c7fcb65a5d0` |
| 10 | `lemma` | [preservesFiniteLimits_of_preservesEqualizers_and_finiteProducts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersNamespacedPublic.lean/declarations/preservesfinitelimits-of-preservesequalizers-and-finiteproducts.md) | 204 | `result-track:5cf5d6268fd68ec6922e3eaf59e21ae3c42b66077bb069c26994f9e2a1ab1b5b` |
| 11 | `lemma` | [preservesLimits_of_preservesEqualizers_and_products](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersNamespacedPublic.lean/declarations/preserveslimits-of-preservesequalizers-and-products.md) | 213 | `result-track:0f5ec2844a526ff5da996b420504d24191c94484df4513f776fc3d7a8a3a814b` |
| 12 | `def` | [createsLimitsOfShapeOfCreatesEqualizersAndProducts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersNamespacedPublic.lean/declarations/createslimitsofshapeofcreatesequalizersandproducts.md) | 235 | `declaration-track:064e22cceaa5f2c6c637814989127a91c29f5cecedcb3c30698da644c74bbd16` |
| 13 | `def` | [createsFiniteLimitsOfCreatesEqualizersAndFiniteProducts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersNamespacedPublic.lean/declarations/createsfinitelimitsofcreatesequalizersandfiniteproducts.md) | 256 | `declaration-track:ac0c75a6305e1f4c512a4a67affc5f7b2a7a5a6bb6cf1678e9000fc227325c56` |
| 14 | `def` | [createsLimitsOfSizeOfCreatesEqualizersAndProducts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersNamespacedPublic.lean/declarations/createslimitsofsizeofcreatesequalizersandproducts.md) | 269 | `declaration-track:19cd508e4ca917cecf20a96360ea16b81ad7fa799a3aa79e647061b056669da8` |
| 15 | `theorem` | [hasFiniteLimits_of_hasTerminal_and_pullbacks](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersNamespacedPublic.lean/declarations/hasfinitelimits-of-hasterminal-and-pullbacks.md) | 275 | `result-track:cb0da5e6ae7400ce62c8593f8ccd8c741bf180882bde770b46259772df12d5d9` |
| 16 | `lemma` | [preservesFiniteLimits_of_preservesTerminal_and_pullbacks](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersNamespacedPublic.lean/declarations/preservesfinitelimits-of-preservesterminal-and-pullbacks.md) | 284 | `result-track:ac15000e763209016afe30350da3fb6839b476c9d0ff1bb44037804d20422d1f` |
| 17 | `def` | [createsFiniteLimitsOfCreatesTerminalAndPullbacks](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersNamespacedPublic.lean/declarations/createsfinitelimitsofcreatesterminalandpullbacks.md) | 303 | `declaration-track:d0db86263c8c1db389ebee9b56a4f9fab919eb86ea099bab1685a6f13ec2c6de` |
| 18 | `def` | [buildColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersNamespacedPublic.lean/declarations/buildcolimit.md) | 330 | `declaration-track:2f5900b9422413d4b3f3fd72d1cd9c0062a7c444659b2b7369105c328908835a` |
| 19 | `def` | [buildIsColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersNamespacedPublic.lean/declarations/buildiscolimit.md) | 354 | `declaration-track:d2627a76d4a97115caa93f56d61d2775895f1f8dc6b3a613b51aef50ce653cc1` |
| 20 | `def` | [colimitCoconeOfCoequalizerAndCoproduct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersNamespacedPublic.lean/declarations/colimitcoconeofcoequalizerandcoproduct.md) | 382 | `declaration-track:bdc79ea95940ac9572c875cb02f85c715d02382bef7d60f9b7397ccb8e33b717` |
| 21 | `theorem` | [hasColimit_of_coequalizer_and_coproduct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersNamespacedPublic.lean/declarations/hascolimit-of-coequalizer-and-coproduct.md) | 396 | `result-track:805939b37cb5a8630897a3a7f6478b99864be1b0822f5e252f028d322c321951` |
| 22 | `def` | [colimitQuotientCoproduct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersNamespacedPublic.lean/declarations/colimitquotientcoproduct.md) | 402 | `declaration-track:88a38e5ca5ca22679da6ae0c6b82eee87997818381fa78a600709d42248d23fe` |
| 23 | `instance` | [colimitQuotientCoproduct_epi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersNamespacedPublic.lean/declarations/colimitquotientcoproduct-epi.md) | 408 | `declaration-track:25d8f8d384e87461ba7985126c3a627a667614f7a98698ecbaf4a7b5e61eb6dc` |
| 24 | `theorem` | [has_colimits_of_hasCoequalizers_and_coproducts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersNamespacedPublic.lean/declarations/has-colimits-of-hascoequalizers-and-coproducts.md) | 414 | `result-track:8f0d7c374afcff6660c014d542fda68e82c95967da21f9c5b88e643e85ec057c` |
| 25 | `theorem` | [hasFiniteColimits_of_hasCoequalizers_and_finite_coproducts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersNamespacedPublic.lean/declarations/hasfinitecolimits-of-hascoequalizers-and-finite-coproducts.md) | 421 | `result-track:16dc16c2a201c95f82721f4f7e47df8c0f5cbfd7b125aa87570bc065540d485f` |
| 26 | `lemma` | [preservesColimit_of_preservesCoequalizers_and_coproduct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersNamespacedPublic.lean/declarations/preservescolimit-of-preservescoequalizers-and-coproduct.md) | 436 | `result-track:b52415b13f0950d9d37917c1026acf45f3aa1db363caea78e4a2e39f00e57803` |
| 27 | `lemma` | [preservesFiniteColimits_of_preservesCoequalizers_and_finiteCoproducts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersNamespacedPublic.lean/declarations/preservesfinitecolimits-of-preservescoequalizers-and-finitecoproducts.md) | 478 | `result-track:3e80cbc76cfe5c554deffe11f6d635453152ce4f2fc2166c0ddccd8dfe23f99c` |
| 28 | `lemma` | [preservesColimits_of_preservesCoequalizers_and_coproducts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersNamespacedPublic.lean/declarations/preservescolimits-of-preservescoequalizers-and-coproducts.md) | 487 | `result-track:c166c36455eeeb26259314ddd9814f49b907d9b314d4df71ded2f54f444c6e5e` |
| 29 | `def` | [createsColimitsOfShapeOfCreatesCoequalizersAndCoproducts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersNamespacedPublic.lean/declarations/createscolimitsofshapeofcreatescoequalizersandcoproducts.md) | 509 | `declaration-track:4d2987e1fe60f995dfd9d6a1d3a3c5c179b7c50452ef342fe869f70777d4923d` |
| 30 | `def` | [createsFiniteColimitsOfCreatesCoequalizersAndFiniteCoproducts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersNamespacedPublic.lean/declarations/createsfinitecolimitsofcreatescoequalizersandfinitecoproducts.md) | 530 | `declaration-track:5c54121955c87989e6c81acadb5344f23fe2d582faaf681303af583706b4b7d8` |
| 31 | `def` | [createsColimitsOfSizeOfCreatesCoequalizersAndCoproducts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersNamespacedPublic.lean/declarations/createscolimitsofsizeofcreatescoequalizersandcoproducts.md) | 543 | `declaration-track:e048f9bceecf34095263fa8b71833a9645854e68dbcf78fbd61353c771bf52c7` |
| 32 | `theorem` | [hasFiniteColimits_of_hasInitial_and_pushouts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersNamespacedPublic.lean/declarations/hasfinitecolimits-of-hasinitial-and-pushouts.md) | 549 | `result-track:bdb8cff58f159cab7924f11c151f579758d7f1fcca923f1fd0236b348890004d` |
| 33 | `lemma` | [preservesFiniteColimits_of_preservesInitial_and_pushouts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersNamespacedPublic.lean/declarations/preservesfinitecolimits-of-preservesinitial-and-pushouts.md) | 558 | `result-track:2241a877b5b7b0f31c4e571e651ea5b6161b230fcf41a30d0b0952e90fccacbf` |
| 34 | `def` | [createsFiniteColimitsOfCreatesInitialAndPushouts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersNamespacedPublic.lean/declarations/createsfinitecolimitsofcreatesinitialandpushouts.md) | 579 | `declaration-track:7ec12f12f7f2edfe22e594b2642a4773a4b59f53820ca1b605501328048e7056` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ef29b2486171e4a0bf04a01f864fdffcf7c93627aaa66db3f2cd0208f551367c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant42d01a8a103a242dbb2126cf39357a2b5c88da9879af03528c29631deeb36360.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant42d01a8a103a242dbb2126cf39357a2b5c88da9879af03528c29631deeb36360.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
