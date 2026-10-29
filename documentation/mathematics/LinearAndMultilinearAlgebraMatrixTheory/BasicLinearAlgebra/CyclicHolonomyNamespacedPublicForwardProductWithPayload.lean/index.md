# Cyclic Holonomy Namespaced Public Forward Product With Payload

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**52 observed declarations and anonymous commands**, 35 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `68a18bf167ec625c0ba80015abe96b4d64f04b94`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicHolonomyNamespacedPublicForwardProductWithPayload.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [cycleLength](declarations/cyclelength.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [cycleLength_pos](declarations/cyclelength-pos.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [card_coverPhase](declarations/card-coverphase.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [advance](declarations/advance.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [successor_iterate_eq_advance](declarations/successor-iterate-eq-advance.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [advance_zero](declarations/advance-zero.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [advance_one](declarations/advance-one.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [advance_succ](declarations/advance-succ.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [advance_successor](declarations/advance-successor.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [advance_add](declarations/advance-add.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [advance_cycle](declarations/advance-cycle.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [advance_mod_cycle](declarations/advance-mod-cycle.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [advance_half](declarations/advance-half.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [forwardProduct_add](declarations/forwardproduct-add.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [forwardProduct_one](declarations/forwardproduct-one.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [monodromy](declarations/monodromy.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [forwardProduct_cycle_add](declarations/forwardproduct-cycle-add.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [holonomyGroupAt](declarations/holonomygroupat.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [mem_holonomyGroupAt_iff](declarations/mem-holonomygroupat-iff.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [StepsInSubgroup](declarations/stepsinsubgroup.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [forwardProduct_mem_subgroup](declarations/forwardproduct-mem-subgroup.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [monodromy_mem_subgroup](declarations/monodromy-mem-subgroup.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [transport_intertwines_monodromy](declarations/transport-intertwines-monodromy.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [monodromy_advance_eq_conjugate](declarations/monodromy-advance-eq-conjugate.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [monodromy_successor_eq_conjugate](declarations/monodromy-successor-eq-conjugate.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [monodromy_successor_mem_of_mem_normalizer](declarations/monodromy-successor-mem-of-mem-normalizer.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [monodromy_successor_mem_of_normal](declarations/monodromy-successor-mem-of-normal.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [ClosesAfterCircuit](declarations/closesaftercircuit.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [closesAfterCircuit_iff_monodromy_fixed](declarations/closesaftercircuit-iff-monodromy-fixed.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [IsParallelSection](declarations/isparallelsection.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [forwardProduct_apply_of_isParallelSection](declarations/forwardproduct-apply-of-isparallelsection.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [isParallelSection_closesAfterCircuit](declarations/isparallelsection-closesaftercircuit.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [halfTransport](declarations/halftransport.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [monodromy_eq_halfTransport_trans_self](declarations/monodromy-eq-halftransport-trans-self.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `structure` | [PathDecomposition](declarations/pathdecomposition.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [decomposeSteps](declarations/decomposesteps.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [decomposeSteps_recompose](declarations/decomposesteps-recompose.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [forwardProduct_laps_add](declarations/forwardproduct-laps-add.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [forwardProduct_decomposition](declarations/forwardproduct-decomposition.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `abbrev` | [OneLapIndex](declarations/onelapindex.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [oneLapStart](declarations/onelapstart.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [oneLapEnd](declarations/onelapend.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [oneLapPhase](declarations/onelapphase.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [oneLapProduct](declarations/onelapproduct.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [oneLapPhase_start](declarations/onelapphase-start.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [oneLapPhase_end](declarations/onelapphase-end.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [oneLapProduct_start](declarations/onelapproduct-start.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [oneLapProduct_end](declarations/onelapproduct-end.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [forwardProductWithPayload](declarations/forwardproductwithpayload.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [forwardProduct_preserves_payload](declarations/forwardproduct-preserves-payload.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [monodromyWithPayload](declarations/monodromywithpayload.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [monodromy_preserves_payload](declarations/monodromy-preserves-payload.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f2cb51bd6858c80ab8a188a14914dd13e0858c6158303fbd554e69a1fa6bac05 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/CyclicHolonomy/Variant8c023ab2404a0837420e7192004609ebc44a28f770846e4e4420d3f73703ed44.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
