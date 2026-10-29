# Linear Locally Finite

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 23 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant6332710121a2673840c46a8b27df92b14fa22d42448562732aaaf6efc58da2e9.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `146b2e4a2d9d0bcd6bdaeabd50f0c16bead9d711`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/OrderLatticesOrderedAlgebraicStructures/OrderedSets/LinearLocallyFinite.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [succFn](declarations/succfn.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [succFn_spec](declarations/succfn-spec.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [le_succFn](declarations/le-succfn.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [isGLB_Ioc_of_isGLB_Ioi](declarations/isglb-ioc-of-isglb-ioi.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [isMax_of_succFn_le](declarations/ismax-of-succfn-le.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [succFn_le_of_lt](declarations/succfn-le-of-lt.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [le_of_lt_succFn](declarations/le-of-lt-succfn.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [toZ](declarations/toz.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [toZ_of_ge](declarations/toz-of-ge.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [toZ_of_lt](declarations/toz-of-lt.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [toZ_of_eq](declarations/toz-of-eq.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [iterate_succ_toZ](declarations/iterate-succ-toz.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [iterate_pred_toZ](declarations/iterate-pred-toz.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [toZ_nonneg](declarations/toz-nonneg.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [toZ_neg](declarations/toz-neg.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [toZ_iterate_succ_le](declarations/toz-iterate-succ-le.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [toZ_iterate_pred_ge](declarations/toz-iterate-pred-ge.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [toZ_iterate_succ_of_not_isMax](declarations/toz-iterate-succ-of-not-ismax.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [toZ_iterate_pred_of_not_isMin](declarations/toz-iterate-pred-of-not-ismin.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [le_of_toZ_le](declarations/le-of-toz-le.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [toZ_mono](declarations/toz-mono.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [toZ_le_iff](declarations/toz-le-iff.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [toZ_iterate_succ](declarations/toz-iterate-succ.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [toZ_iterate_pred](declarations/toz-iterate-pred.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [injective_toZ](declarations/injective-toz.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [orderIsoRangeToZOfLinearSuccPredArch](declarations/orderisorangetozoflinearsuccpredarch.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [orderIsoIntOfLinearSuccPredArch](declarations/orderisointoflinearsuccpredarch.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [orderIsoNatOfLinearSuccPredArch](declarations/orderisonatoflinearsuccpredarch.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [orderIsoRangeOfLinearSuccPredArch](declarations/orderisorangeoflinearsuccpredarch.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ffbe2735c68d84a128997d301bcf65b35418603f4af7277b30858141470c7d5f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant6332710121a2673840c46a8b27df92b14fa22d42448562732aaaf6efc58da2e9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
