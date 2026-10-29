# Adic Valuation Namespaced Int Valuation Ne Zero

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**48 observed declarations and anonymous commands**, 28 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/AdicValuation/Variant935d030b6c8c2de91bd164df97cdc614cf83d6b4a3030e4996edd0060acac0a7.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `01459b30636367b86f6fa08480022ecb9ff9f71f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/AdicValuationNamespacedIntValuationNeZero.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [intValuationDef](declarations/intvaluationdef.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [intValuationDef_if_pos](declarations/intvaluationdef-if-pos.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [intValuationDef_if_neg](declarations/intvaluationdef-if-neg.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [int_valuation_ne_zero](declarations/int-valuation-ne-zero.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [int_valuation_ne_zero'](declarations/int-valuation-ne-zero-source-edition-2.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [int_valuation_zero_le](declarations/int-valuation-zero-le.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [int_valuation_le_one](declarations/int-valuation-le-one.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [int_valuation_lt_one_iff_dvd](declarations/int-valuation-lt-one-iff-dvd.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [int_valuation_le_pow_iff_dvd](declarations/int-valuation-le-pow-iff-dvd.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [IntValuation.map_zero'](declarations/intvaluation-map-zero.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [IntValuation.map_one'](declarations/intvaluation-map-one.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [IntValuation.map_mul'](declarations/intvaluation-map-mul.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [IntValuation.le_max_iff_min_le](declarations/intvaluation-le-max-iff-min-le.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [IntValuation.map_add_le_max'](declarations/intvaluation-map-add-le-max.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [intValuation](declarations/intvaluation.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [int_valuation_exists_uniformizer](declarations/int-valuation-exists-uniformizer.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [valuation](declarations/valuation.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [valuation_def](declarations/valuation-def.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [valuation_of_mk'](declarations/valuation-of-mk.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [valuation_of_algebraMap](declarations/valuation-of-algebramap.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [valuation_le_one](declarations/valuation-le-one.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [valuation_lt_one_iff_dvd](declarations/valuation-lt-one-iff-dvd.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [valuation_exists_uniformizer](declarations/valuation-exists-uniformizer.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [valuation_uniformizer_ne_zero](declarations/valuation-uniformizer-ne-zero.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [adicValued](declarations/adicvalued.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [adicValued_apply](declarations/adicvalued-apply.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [adicCompletion](declarations/adiccompletion.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [valuedAdicCompletion](declarations/valuedadiccompletion.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [valuedAdicCompletion_def](declarations/valuedadiccompletion-def.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [adicCompletion_completeSpace](declarations/adiccompletion-completespace.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [AdicCompletion.instCoe](declarations/adiccompletion-instcoe.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [adicCompletionIntegers](declarations/adiccompletionintegers.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [mem_adicCompletionIntegers](declarations/mem-adiccompletionintegers.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [adicValued.uniformContinuousConstSMul](declarations/adicvalued-uniformcontinuousconstsmul.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [AdicCompletion.algebra'](declarations/adiccompletion-algebra.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [coe_smul_adicCompletion](declarations/coe-smul-adiccompletion.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [algebraMap_adicCompletion'](declarations/algebramap-adiccompletion-source-edition-2.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [algebraMap_adicCompletion](declarations/algebramap-adiccompletion.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [coe_smul_adicCompletionIntegers](declarations/coe-smul-adiccompletionintegers.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `instance` | [(anonymous)](declarations/instance.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [AdicCompletion.instIsScalarTower'](declarations/adiccompletion-instisscalartower.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3bb98b08a8f83516748e7e297f50d7e8b08fdea858f19131c3bd5896b9cfa4a9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/AdicValuation/Variant935d030b6c8c2de91bd164df97cdc614cf83d6b4a3030e4996edd0060acac0a7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
