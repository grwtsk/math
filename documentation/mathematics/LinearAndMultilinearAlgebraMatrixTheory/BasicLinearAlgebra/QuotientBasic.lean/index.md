# Quotient Basic

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**59 observed declarations and anonymous commands**, 45 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4c2c4f0c1592c418dafa3faf8fcdddb5f5350c70`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientBasic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [restrictScalarsEquiv](declarations/restrictscalarsequiv.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [restrictScalarsEquiv_mk](declarations/restrictscalarsequiv-mk.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [restrictScalarsEquiv_symm_mk](declarations/restrictscalarsequiv-symm-mk.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [nontrivial_of_lt_top](declarations/nontrivial-of-lt-top.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [QuotientBot.infinite](declarations/quotientbot-infinite.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [QuotientTop.unique](declarations/quotienttop-unique.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [QuotientTop.fintype](declarations/quotienttop-fintype.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [subsingleton_quotient_iff_eq_top](declarations/subsingleton-quotient-iff-eq-top.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [unique_quotient_iff_eq_top](declarations/unique-quotient-iff-eq-top.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [Quotient.fintype](declarations/quotient-fintype.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [card_eq_card_quotient_mul_card](declarations/card-eq-card-quotient-mul-card.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [strictMono_comap_prod_map](declarations/strictmono-comap-prod-map.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [liftQ](declarations/liftq.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [liftQ_apply](declarations/liftq-apply.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [liftQ_mkQ](declarations/liftq-mkq.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [pi_liftQ_eq_liftQ_pi](declarations/pi-liftq-eq-liftq-pi.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [liftQSpanSingleton](declarations/liftqspansingleton.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [liftQSpanSingleton_apply](declarations/liftqspansingleton-apply.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [range_mkQ](declarations/range-mkq.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [ker_mkQ](declarations/ker-mkq.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [le_comap_mkQ](declarations/le-comap-mkq.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [mkQ_map_self](declarations/mkq-map-self.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [comap_map_mkQ](declarations/comap-map-mkq.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [map_mkQ_eq_top](declarations/map-mkq-eq-top.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [mapQ](declarations/mapq.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [mapQ_apply](declarations/mapq-apply.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [mapQ_mkQ](declarations/mapq-mkq.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [mapQ_zero](declarations/mapq-zero.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [mapQ_comp](declarations/mapq-comp.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [mapQ_id](declarations/mapq-id.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [mapQ_pow](declarations/mapq-pow.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [comap_liftQ](declarations/comap-liftq.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [map_liftQ](declarations/map-liftq.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [ker_liftQ](declarations/ker-liftq.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [range_liftQ](declarations/range-liftq.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [ker_liftQ_eq_bot](declarations/ker-liftq-eq-bot-source-edition-2.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [ker_liftQ_eq_bot'](declarations/ker-liftq-eq-bot.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `abbrev` | [factor](declarations/factor.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [factor_mk](declarations/factor-mk.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [factor_comp_mk](declarations/factor-comp-mk.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [factor_comp](declarations/factor-comp.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [factor_comp_apply](declarations/factor-comp-apply.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [factor_surjective](declarations/factor-surjective.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [comapMkQRelIso](declarations/comapmkqreliso.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [comapMkQOrderEmbedding](declarations/comapmkqorderembedding.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [comapMkQOrderEmbedding_eq](declarations/comapmkqorderembedding-eq.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [span_preimage_eq](declarations/span-preimage-eq.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [Quotient.equiv](declarations/quotient-equiv.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [Quotient.equiv_symm](declarations/quotient-equiv-symm.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [Quotient.equiv_trans](declarations/quotient-equiv-trans.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [range_mkQ_comp](declarations/range-mkq-comp.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [ker_le_range_iff](declarations/ker-le-range-iff.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [range_eq_top_of_cancel](declarations/range-eq-top-of-cancel.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [quotEquivOfEqBot](declarations/quotequivofeqbot.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [quotEquivOfEqBot_apply_mk](declarations/quotequivofeqbot-apply-mk.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [quotEquivOfEqBot_symm_apply](declarations/quotequivofeqbot-symm-apply.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [coe_quotEquivOfEqBot_symm](declarations/coe-quotequivofeqbot-symm.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [Quotient.equiv_refl](declarations/quotient-equiv-refl.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [mapQLinear](declarations/mapqlinear.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1b6795d70e7cba6ae13940327c1571c33c5da69280392283b699928de3497bcd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variant50f15eda2edd50c8d565113ed5a87dd1e45ac835b58e8fdd613fe529481ddceb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
