# Dyadic Mertens Pair Kernel

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 20 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Moebius/DyadicMertensPairKernel.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d5a566b331cac8a1b8d193f0ad39cde081191605`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DyadicMertensPairKernel.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [weightedMertensDyadicWeight](declarations/weightedmertensdyadicweight.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [weightedMertensBaseTerm_eq_weight](declarations/weightedmertensbaseterm-eq-weight.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [weightedMertensDyadicWeight_nonneg](declarations/weightedmertensdyadicweight-nonneg.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [weightedMertensDyadicWeight_eq_inv_sub_inv_succ](declarations/weightedmertensdyadicweight-eq-inv-sub-inv-succ.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [sum_weightedMertensDyadicWeight_Ico](declarations/sum-weightedmertensdyadicweight-ico.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [weightedMertensPairKernel](declarations/weightedmertenspairkernel.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [weightedMertensPairLower](declarations/weightedmertenspairlower.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [weightedMertensPairKernel_eq_sum_Ico_lower](declarations/weightedmertenspairkernel-eq-sum-ico-lower.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [weightedMertensPairKernel_closed](declarations/weightedmertenspairkernel-closed.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [weightedMertensPairKernel_nonneg](declarations/weightedmertenspairkernel-nonneg.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [weightedMertensPairKernel_le_inv_left](declarations/weightedmertenspairkernel-le-inv-left.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [pickupMertensPrefix_fixed_inventory](declarations/pickupmertensprefix-fixed-inventory.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [pickupMertensPrefix_sq_fixed_inventory](declarations/pickupmertensprefix-sq-fixed-inventory.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [weightedMertensDyadicPairQuadratic](declarations/weightedmertensdyadicpairquadratic.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [weightedMertensDyadicBlock_eq_pairQuadratic](declarations/weightedmertensdyadicblock-eq-pairquadratic.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [weightedMertensDyadicPairDiagonal](declarations/weightedmertensdyadicpairdiagonal.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [weightedMertensDyadicPairOffDiagonal](declarations/weightedmertensdyadicpairoffdiagonal.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [weightedMertensDyadicPairQuadratic_eq_diagonal_add_offDiagonal](declarations/weightedmertensdyadicpairquadratic-eq-diagonal-add-offdiagonal.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [weightedMertensDyadicBlock_eq_pairDiagonal_add_offDiagonal](declarations/weightedmertensdyadicblock-eq-pairdiagonal-add-offdiagonal.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [moebiusReal_sq_le_one](declarations/moebiusreal-sq-le-one.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [weightedMertensDyadicPairDiagonal_nonneg](declarations/weightedmertensdyadicpairdiagonal-nonneg.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [weightedMertensDyadicPairDiagonal_le_two](declarations/weightedmertensdyadicpairdiagonal-le-two.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [SubpolynomialDyadicMertensPairCorrelation](declarations/subpolynomialdyadicmertenspaircorrelation.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [pairCorrelation_of_dyadicBlock](declarations/paircorrelation-of-dyadicblock.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [dyadicBlock_of_pairCorrelation](declarations/dyadicblock-of-paircorrelation.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [subpolynomialDyadicMertensPairCorrelation_iff_block](declarations/subpolynomialdyadicmertenspaircorrelation-iff-block.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [riemannHypothesis_of_subpolynomialDyadicMertensPairCorrelation](declarations/riemannhypothesis-of-subpolynomialdyadicmertenspaircorrelation.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=33ad886750c7b5718049330d2cbe53f9c8164a9639be9e9aa742165de70b48b2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/DyadicMertensPairKernel.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
