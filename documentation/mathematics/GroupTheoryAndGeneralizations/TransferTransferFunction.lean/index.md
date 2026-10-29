# Transfer Transfer Function

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 24 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/Transfer/Variant2d2ccd4979d29098b971fa87381eae85f6dd96aac1cfd406a21d0c465502ab15.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d938268f96e7bb9c3981cc60c51fc4f0081960a1`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GroupTheoryAndGeneralizations/TransferTransferFunction.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [diff](declarations/diff.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [diff_mul_diff](declarations/diff-mul-diff.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [diff_self](declarations/diff-self.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [diff_inv](declarations/diff-inv.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [smul_diff_smul](declarations/smul-diff-smul.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [transferFunction](declarations/transferfunction.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [transferFunction_apply](declarations/transferfunction-apply.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [coe_transferFunction](declarations/coe-transferfunction.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [transferSet](declarations/transferset.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [mem_transferSet](declarations/mem-transferset.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [transferTransversal](declarations/transfertransversal.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [transferTransversal_apply](declarations/transfertransversal-apply-source-edition-3.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [transferTransversal_apply'](declarations/transfertransversal-apply.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [transferTransversal_apply''](declarations/transfertransversal-apply-source-edition-2.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [transfer](declarations/transfer.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [transfer_def](declarations/transfer-def.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [transfer_eq_prod_quotient_orbitRel_zpowers_quot](declarations/transfer-eq-prod-quotient-orbitrel-zpowers-quot.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [transfer_eq_pow_aux](declarations/transfer-eq-pow-aux.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [transfer_eq_pow](declarations/transfer-eq-pow.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [transfer_center_eq_pow](declarations/transfer-center-eq-pow.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [transferCenterPow](declarations/transfercenterpow.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [transferCenterPow_apply](declarations/transfercenterpow-apply.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [transferSylow](declarations/transfersylow.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [transferSylow_eq_pow_aux](declarations/transfersylow-eq-pow-aux.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [transferSylow_eq_pow](declarations/transfersylow-eq-pow.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [transferSylow_restrict_eq_pow](declarations/transfersylow-restrict-eq-pow.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [ker_transferSylow_isComplement'](declarations/ker-transfersylow-iscomplement.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [not_dvd_card_ker_transferSylow](declarations/not-dvd-card-ker-transfersylow.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [ker_transferSylow_disjoint](declarations/ker-transfersylow-disjoint.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [normalizer_le_centralizer](declarations/normalizer-le-centralizer.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [isComplement'](declarations/iscomplement.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5505932dc855745a60ba1e2701b3ff813c858eb6f656fa86630311bde65080f6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Transfer/Variant2d2ccd4979d29098b971fa87381eae85f6dd96aac1cfd406a21d0c465502ab15.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
