# Continuous Function Basic

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**72 observed declarations and anonymous commands**, 42 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2d5fba1b99da404407efb85573bf4a3f2eafa102`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/ContinuousFunctionBasic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [ContinuousMap](declarations/continuousmap.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `class` | [ContinuousMapClass](declarations/continuousmapclass.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [map_continuousAt](declarations/map-continuousat.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [map_continuousWithinAt](declarations/map-continuouswithinat.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [toContinuousMap](declarations/tocontinuousmap-source-edition-2.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [toContinuousMapClass](declarations/tocontinuousmapclass.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [toFun_eq_coe](declarations/tofun-eq-coe.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [Simps.apply](declarations/simps-apply.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [coe_coe](declarations/coe-coe.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [ext](declarations/ext.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [copy](declarations/copy.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [coe_copy](declarations/coe-copy.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [copy_eq](declarations/copy-eq.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [continuous](declarations/continuous.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [continuous_set_coe](declarations/continuous-set-coe.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [continuousAt](declarations/continuousat.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [congr_fun](declarations/congr-fun.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [congr_arg](declarations/congr-arg.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [coe_injective](declarations/coe-injective.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [coe_mk](declarations/coe-mk.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [map_specializes](declarations/map-specializes.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [equivFnOfDiscrete](declarations/equivfnofdiscrete.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [id](declarations/id.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [coe_id](declarations/coe-id.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [const](declarations/const.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [coe_const](declarations/coe-const.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [constPi](declarations/constpi.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [id_apply](declarations/id-apply.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [const_apply](declarations/const-apply.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [comp](declarations/comp.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [coe_comp](declarations/coe-comp.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [comp_apply](declarations/comp-apply.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [comp_assoc](declarations/comp-assoc.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [id_comp](declarations/id-comp.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [comp_id](declarations/comp-id.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [const_comp](declarations/const-comp.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [comp_const](declarations/comp-const.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [cancel_right](declarations/cancel-right.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [cancel_left](declarations/cancel-left.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [fst](declarations/fst.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [snd](declarations/snd.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [prodMk](declarations/prodmk.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [prodMap](declarations/prodmap.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [prod_eval](declarations/prod-eval.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [prodSwap](declarations/prodswap.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [sigmaMk](declarations/sigmamk.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [pi](declarations/pi.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [pi_eval](declarations/pi-eval.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [eval](declarations/eval.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [piMap](declarations/pimap.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [restrict](declarations/restrict.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [coe_restrict](declarations/coe-restrict.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [restrict_apply](declarations/restrict-apply.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [restrict_apply_mk](declarations/restrict-apply-mk.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [injective_restrict](declarations/injective-restrict.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [restrictPreimage](declarations/restrictpreimage.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [liftCover](declarations/liftcover.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [liftCover_coe](declarations/liftcover-coe-source-edition-2.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [liftCover_restrict](declarations/liftcover-restrict-source-edition-2.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [liftCover'](declarations/liftcover-source-edition-2.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [liftCover_coe'](declarations/liftcover-coe.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [liftCover_restrict'](declarations/liftcover-restrict.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [toContinuousMap](declarations/tocontinuousmap.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [coe_refl](declarations/coe-refl.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [coe_trans](declarations/coe-trans.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [symm_comp_toContinuousMap](declarations/symm-comp-tocontinuousmap.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [toContinuousMap_comp_symm](declarations/tocontinuousmap-comp-symm.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=560e70a7cb06c4741a420235eb699bcc781b8ffe3812af5c6483d37021f5feed -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
