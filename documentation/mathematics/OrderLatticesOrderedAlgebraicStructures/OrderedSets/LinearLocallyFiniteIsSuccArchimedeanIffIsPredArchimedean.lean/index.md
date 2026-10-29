# Linear Locally Finite Is Succ Archimedean Iff Is Pred Archimedean

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**38 observed declarations and anonymous commands**, 24 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant90ae0acc88f853f56451f878819f346177707db83f0ed0e6a1f1e673330e7370.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `733efb872ae3c3ab2e3419290b3e0e74a5f5eedc`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/OrderLatticesOrderedAlgebraicStructures/OrderedSets/LinearLocallyFiniteIsSuccArchimedeanIffIsPredArchimedean.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](declarations/instance.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [isSuccArchimedean_of_isPredArchimedean](declarations/issuccarchimedean-of-ispredarchimedean.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [isSuccArchimedean_iff_isPredArchimedean](declarations/issuccarchimedean-iff-ispredarchimedean.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [succFn](declarations/succfn.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [succFn_spec](declarations/succfn-spec.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [le_succFn](declarations/le-succfn.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [isGLB_Ioc_of_isGLB_Ioi](declarations/isglb-ioc-of-isglb-ioi.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [isMax_of_succFn_le](declarations/ismax-of-succfn-le.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [succFn_le_of_lt](declarations/succfn-le-of-lt.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [le_of_lt_succFn](declarations/le-of-lt-succfn.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [succOrder](declarations/succorder.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [predOrder](declarations/predorder.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [toZ](declarations/toz.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [toZ_of_ge](declarations/toz-of-ge.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [toZ_of_lt](declarations/toz-of-lt.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [toZ_of_eq](declarations/toz-of-eq.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [iterate_succ_toZ](declarations/iterate-succ-toz.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [iterate_pred_toZ](declarations/iterate-pred-toz.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [toZ_nonneg](declarations/toz-nonneg.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [toZ_neg](declarations/toz-neg.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [toZ_iterate_succ_le](declarations/toz-iterate-succ-le.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [toZ_iterate_pred_ge](declarations/toz-iterate-pred-ge.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [toZ_iterate_succ_of_not_isMax](declarations/toz-iterate-succ-of-not-ismax.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [toZ_iterate_pred_of_not_isMin](declarations/toz-iterate-pred-of-not-ismin.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [le_of_toZ_le](declarations/le-of-toz-le.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [toZ_mono](declarations/toz-mono.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [toZ_le_iff](declarations/toz-le-iff.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [toZ_iterate_succ](declarations/toz-iterate-succ.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [toZ_iterate_pred](declarations/toz-iterate-pred.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [injective_toZ](declarations/injective-toz.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [orderIsoRangeToZOfLinearSuccPredArch](declarations/orderisorangetozoflinearsuccpredarch.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [orderIsoIntOfLinearSuccPredArch](declarations/orderisointoflinearsuccpredarch.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [orderIsoNatOfLinearSuccPredArch](declarations/orderisonatoflinearsuccpredarch.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [orderIsoRangeOfLinearSuccPredArch](declarations/orderisorangeoflinearsuccpredarch.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c2a5078a2feda615cd9b00a0e0c381db0b705cf49014396a92741264d2673386 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variant90ae0acc88f853f56451f878819f346177707db83f0ed0e6a1f1e673330e7370.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
