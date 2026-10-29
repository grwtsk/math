# Vector Measure Prod Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**37 observed declarations and anonymous commands**, 31 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/MeasureTheory/Prod/Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9a11edce1155ee73b04ed856f70353e9c9c7b81f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureProdPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [HasProd](declarations/hasprod.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [prod](declarations/prod.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [prod_eq_zero_of_not_hasProd](declarations/prod-eq-zero-of-not-hasprod.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [prod_apply](declarations/prod-apply.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [HasProd.flip](declarations/hasprod-flip.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [hasProd_flip_iff](declarations/hasprod-flip-iff.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [stronglyMeasurable_vectorMeasure_prodMk_left](declarations/stronglymeasurable-vectormeasure-prodmk-left.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [integrable_vectorMeasure_prodMk_left](declarations/integrable-vectormeasure-prodmk-left.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [prodOfIsFiniteMeasureLeft](declarations/prodofisfinitemeasureleft.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [prod_eq_of_forall_apply_prod](declarations/prod-eq-of-forall-apply-prod.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [map_prod_swap](declarations/map-prod-swap.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [prod_apply_eq_integral](declarations/prod-apply-eq-integral.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [prod_flip_apply_eq_integral](declarations/prod-flip-apply-eq-integral.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [variation_prod_le](declarations/variation-prod-le.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [(anonymous)](declarations/instance.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [_root_.MeasureTheory.Integrable.prod_vectorMeasure](declarations/root-measuretheory-integrable-prod-vectormeasure.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [integral_prod_swap](declarations/integral-prod-swap.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [_root_.MeasureTheory.StronglyMeasurable.integral_vectorMeasure_prod_right](declarations/root-measuretheory-stronglymeasurable-integral-vectormeasure-prod-right-source-edition-2.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [_root_.MeasureTheory.StronglyMeasurable.integral_vectorMeasure_prod_right'](declarations/root-measuretheory-stronglymeasurable-integral-vectormeasure-prod-right.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [_root_.MeasureTheory.StronglyMeasurable.integral_vectorMeasure_prod_left](declarations/root-measuretheory-stronglymeasurable-integral-vectormeasure-prod-left-source-edition-2.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [_root_.MeasureTheory.StronglyMeasurable.integral_vectorMeasure_prod_left'](declarations/root-measuretheory-stronglymeasurable-integral-vectormeasure-prod-left.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [_root_.MeasureTheory.AEStronglyMeasurable.integral_vectorMeasure_prod_right'](declarations/root-measuretheory-aestronglymeasurable-integral-vectormeasure-prod-righ.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [_root_.MeasureTheory.Integrable.integral_vectorMeasure_prod_left](declarations/root-measuretheory-integrable-integral-vectormeasure-prod-left.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [lintegral_fn_integral_sub](declarations/lintegral-fn-integral-sub.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [continuous_integral_integral](declarations/continuous-integral-integral.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [integral_prod](declarations/integral-prod.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [integral_prod_smul](declarations/integral-prod-smul.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [integral_prod_symm](declarations/integral-prod-symm.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [integral_prod_smul_symm](declarations/integral-prod-smul-symm.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [integral_integral](declarations/integral-integral.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [integral_integral_smul](declarations/integral-integral-smul.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [integral_integral_symm](declarations/integral-integral-symm.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [integral_integral_smul_symm](declarations/integral-integral-smul-symm.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [integral_integral_swap](declarations/integral-integral-swap.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [integral_integral_smul_swap](declarations/integral-integral-smul-swap.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b50d8f59bfa161d0c183179f2155e626a9197f9292f57c07f61a7bb871ad619f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Prod/Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
