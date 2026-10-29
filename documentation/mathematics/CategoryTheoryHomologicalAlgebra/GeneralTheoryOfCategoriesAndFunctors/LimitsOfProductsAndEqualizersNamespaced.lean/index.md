# Limits Of Products And Equalizers Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 16 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant6250c74828d37d96ad5219a1572a5e7924166316217f57069140c564f84c5648.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `25760eb77a0bbba6ede8a4dfe0d9d8d1619561f6`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [buildLimit](declarations/buildlimit.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [buildIsLimit](declarations/buildislimit.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [limitConeOfEqualizerAndProduct](declarations/limitconeofequalizerandproduct.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [hasLimit_of_equalizer_and_product](declarations/haslimit-of-equalizer-and-product.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [limitSubobjectProduct](declarations/limitsubobjectproduct.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [limitSubobjectProduct_mono](declarations/limitsubobjectproduct-mono.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [has_limits_of_hasEqualizers_and_products](declarations/has-limits-of-hasequalizers-and-products.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [hasFiniteLimits_of_hasEqualizers_and_finite_products](declarations/hasfinitelimits-of-hasequalizers-and-finite-products.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [preservesLimit_of_preservesEqualizers_and_product](declarations/preserveslimit-of-preservesequalizers-and-product.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [preservesFiniteLimits_of_preservesEqualizers_and_finiteProducts](declarations/preservesfinitelimits-of-preservesequalizers-and-finiteproducts.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [preservesLimits_of_preservesEqualizers_and_products](declarations/preserveslimits-of-preservesequalizers-and-products.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [createsLimitsOfShapeOfCreatesEqualizersAndProducts](declarations/createslimitsofshapeofcreatesequalizersandproducts.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [createsFiniteLimitsOfCreatesEqualizersAndFiniteProducts](declarations/createsfinitelimitsofcreatesequalizersandfiniteproducts.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [createsLimitsOfSizeOfCreatesEqualizersAndProducts](declarations/createslimitsofsizeofcreatesequalizersandproducts.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [hasFiniteLimits_of_hasTerminal_and_pullbacks](declarations/hasfinitelimits-of-hasterminal-and-pullbacks.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [preservesFiniteLimits_of_preservesTerminal_and_pullbacks](declarations/preservesfinitelimits-of-preservesterminal-and-pullbacks.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [createsFiniteLimitsOfCreatesTerminalAndPullbacks](declarations/createsfinitelimitsofcreatesterminalandpullbacks.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [buildColimit](declarations/buildcolimit.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [buildIsColimit](declarations/buildiscolimit.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [colimitCoconeOfCoequalizerAndCoproduct](declarations/colimitcoconeofcoequalizerandcoproduct.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [hasColimit_of_coequalizer_and_coproduct](declarations/hascolimit-of-coequalizer-and-coproduct.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [colimitQuotientCoproduct](declarations/colimitquotientcoproduct.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [colimitQuotientCoproduct_epi](declarations/colimitquotientcoproduct-epi.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [has_colimits_of_hasCoequalizers_and_coproducts](declarations/has-colimits-of-hascoequalizers-and-coproducts.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [hasFiniteColimits_of_hasCoequalizers_and_finite_coproducts](declarations/hasfinitecolimits-of-hascoequalizers-and-finite-coproducts.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [preservesColimit_of_preservesCoequalizers_and_coproduct](declarations/preservescolimit-of-preservescoequalizers-and-coproduct.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [preservesFiniteColimits_of_preservesCoequalizers_and_finiteCoproducts](declarations/preservesfinitecolimits-of-preservescoequalizers-and-finitecoproducts.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [preservesColimits_of_preservesCoequalizers_and_coproducts](declarations/preservescolimits-of-preservescoequalizers-and-coproducts.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [createsColimitsOfShapeOfCreatesCoequalizersAndCoproducts](declarations/createscolimitsofshapeofcreatescoequalizersandcoproducts.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [createsFiniteColimitsOfCreatesCoequalizersAndFiniteCoproducts](declarations/createsfinitecolimitsofcreatescoequalizersandfinitecoproducts.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [createsColimitsOfSizeOfCreatesCoequalizersAndCoproducts](declarations/createscolimitsofsizeofcreatescoequalizersandcoproducts.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [hasFiniteColimits_of_hasInitial_and_pushouts](declarations/hasfinitecolimits-of-hasinitial-and-pushouts.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [preservesFiniteColimits_of_preservesInitial_and_pushouts](declarations/preservesfinitecolimits-of-preservesinitial-and-pushouts.md) | 540 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [createsFiniteColimitsOfCreatesInitialAndPushouts](declarations/createsfinitecolimitsofcreatesinitialandpushouts.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3f2c62a42a7aa05a00649907f0bac1b795d48a7697e0dc95c0c451687704e148 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant6250c74828d37d96ad5219a1572a5e7924166316217f57069140c564f84c5648.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
