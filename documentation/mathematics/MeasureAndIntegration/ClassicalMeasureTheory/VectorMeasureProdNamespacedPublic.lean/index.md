# Vector Measure Prod Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**37 observed declarations and anonymous commands**, 31 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ccbd4a15c5845619bac6d506fe64148062840dfe`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureProdNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [HasProd](declarations/hasprod.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [prod](declarations/prod.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [prod_eq_zero_of_not_hasProd](declarations/prod-eq-zero-of-not-hasprod.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [prod_apply](declarations/prod-apply.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [HasProd.flip](declarations/hasprod-flip.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [hasProd_flip_iff](declarations/hasprod-flip-iff.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [stronglyMeasurable_vectorMeasure_prodMk_left](declarations/stronglymeasurable-vectormeasure-prodmk-left.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [integrable_vectorMeasure_prodMk_left](declarations/integrable-vectormeasure-prodmk-left.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [prodOfIsFiniteMeasureLeft](declarations/prodofisfinitemeasureleft.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [prod_eq_of_forall_apply_prod](declarations/prod-eq-of-forall-apply-prod.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [map_prod_swap](declarations/map-prod-swap.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [prod_apply_eq_integral](declarations/prod-apply-eq-integral.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [prod_flip_apply_eq_integral](declarations/prod-flip-apply-eq-integral.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [variation_prod_le](declarations/variation-prod-le.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [Vector Measure Prod Namespaced Public](declarations/prod-vectormeasure.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [integral_prod_swap](declarations/integral-prod-swap.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Vector Measure Prod Namespaced Public](declarations/integral-vectormeasure-prod-right.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Vector Measure Prod Namespaced Public](declarations/integral-vectormeasure-prod-right-source-line-243-occurrence-2.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [Vector Measure Prod Namespaced Public](declarations/integral-vectormeasure-prod-left-source-line-251-occurrence-2.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [Vector Measure Prod Namespaced Public](declarations/integral-vectormeasure-prod-left-source-line-258-occurrence-2.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [Vector Measure Prod Namespaced Public](declarations/integral-vectormeasure-prod-right-source-line-265-occurrence-2.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [Vector Measure Prod Namespaced Public](declarations/integral-vectormeasure-prod-left.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [lintegral_fn_integral_sub](declarations/lintegral-fn-integral-sub.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [continuous_integral_integral](declarations/continuous-integral-integral.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [integral_prod](declarations/integral-prod.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [integral_prod_smul](declarations/integral-prod-smul.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [integral_prod_symm](declarations/integral-prod-symm.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [integral_prod_smul_symm](declarations/integral-prod-smul-symm.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [integral_integral](declarations/integral-integral.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [integral_integral_smul](declarations/integral-integral-smul.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [integral_integral_symm](declarations/integral-integral-symm.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [integral_integral_smul_symm](declarations/integral-integral-smul-symm.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [integral_integral_swap](declarations/integral-integral-swap.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [integral_integral_smul_swap](declarations/integral-integral-smul-swap.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=64d89ffaf58514cbb934697ad69bd2ec86e42592d1511ee8be7f36e7945f83d5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
