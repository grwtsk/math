# Int Init Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**61 observed declarations and anonymous commands**, 55 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bf242421449fec473d805dcddb1bd0fd08e9b683`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/NumberTheory/ElementaryNumberTheory/IntInitNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [neg_eq_neg](declarations/neg-eq-neg.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [succ](declarations/succ.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [pred](declarations/pred.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [pred_succ](declarations/pred-succ.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [succ_pred](declarations/succ-pred.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [neg_succ](declarations/neg-succ.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [succ_neg_succ](declarations/succ-neg-succ.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [neg_pred](declarations/neg-pred.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [pred_neg_pred](declarations/pred-neg-pred.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [pred_nat_succ](declarations/pred-nat-succ.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [neg_nat_succ](declarations/neg-nat-succ.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [succ_neg_natCast_succ](declarations/succ-neg-natcast-succ.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [natCast_pred_of_pos](declarations/natcast-pred-of-pos.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [lt_succ_self](declarations/lt-succ-self.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [pred_self_lt](declarations/pred-self-lt.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [induction_on](declarations/induction-on.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [inductionOn'](declarations/inductionon.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [inductionOn'_self](declarations/inductionon-self.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [inductionOn'_sub_one](declarations/inductionon-sub-one.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [negInduction](declarations/neginduction.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [le_induction](declarations/le-induction.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [le_induction_down](declarations/le-induction-down.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [strongRec](declarations/strongrec.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [strongRec_of_lt](declarations/strongrec-of-lt.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [sign_mul_self_eq_natAbs](declarations/sign-mul-self-eq-natabs.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [natCast_div](declarations/natcast-div.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [ediv_of_neg_of_pos](declarations/ediv-of-neg-of-pos.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [natCast_mod](declarations/natcast-mod.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [div_le_iff_of_dvd_of_pos](declarations/div-le-iff-of-dvd-of-pos.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [div_le_iff_of_dvd_of_neg](declarations/div-le-iff-of-dvd-of-neg.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [div_lt_iff_of_dvd_of_pos](declarations/div-lt-iff-of-dvd-of-pos.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [div_lt_iff_of_dvd_of_neg](declarations/div-lt-iff-of-dvd-of-neg.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [le_div_iff_of_dvd_of_pos](declarations/le-div-iff-of-dvd-of-pos.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [le_div_iff_of_dvd_of_neg](declarations/le-div-iff-of-dvd-of-neg.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [lt_div_iff_of_dvd_of_pos](declarations/lt-div-iff-of-dvd-of-pos.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [lt_div_iff_of_dvd_of_neg](declarations/lt-div-iff-of-dvd-of-neg.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [div_le_div_iff_of_dvd_of_pos_of_pos](declarations/div-le-div-iff-of-dvd-of-pos-of-pos.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [div_le_div_iff_of_dvd_of_pos_of_neg](declarations/div-le-div-iff-of-dvd-of-pos-of-neg.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [div_le_div_iff_of_dvd_of_neg_of_pos](declarations/div-le-div-iff-of-dvd-of-neg-of-pos.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [div_le_div_iff_of_dvd_of_neg_of_neg](declarations/div-le-div-iff-of-dvd-of-neg-of-neg.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [div_lt_div_iff_of_dvd_of_pos](declarations/div-lt-div-iff-of-dvd-of-pos.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [div_lt_div_iff_of_dvd_of_pos_of_neg](declarations/div-lt-div-iff-of-dvd-of-pos-of-neg.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [div_lt_div_iff_of_dvd_of_neg_of_pos](declarations/div-lt-div-iff-of-dvd-of-neg-of-pos.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [div_lt_div_iff_of_dvd_of_neg_of_neg](declarations/div-lt-div-iff-of-dvd-of-neg-of-neg.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [emod_two_eq_zero_or_one](declarations/emod-two-eq-zero-or-one.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [dvd_mul_of_div_dvd](declarations/dvd-mul-of-div-dvd.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [div_dvd_iff_dvd_mul](declarations/div-dvd-iff-dvd-mul.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [mul_dvd_of_dvd_div](declarations/mul-dvd-of-dvd-div.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [dvd_div_of_mul_dvd](declarations/dvd-div-of-mul-dvd.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [dvd_div_iff_mul_dvd](declarations/dvd-div-iff-mul-dvd.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [exists_lt_and_lt_iff_not_dvd](declarations/exists-lt-and-lt-iff-not-dvd.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [eq_mul_div_of_mul_eq_mul_of_dvd_left](declarations/eq-mul-div-of-mul-eq-mul-of-dvd-left.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [ofNat_add_negSucc_of_ge](declarations/ofnat-add-negsucc-of-ge.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [le_iff_pos_of_dvd](declarations/le-iff-pos-of-dvd.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [le_add_iff_lt_of_dvd_sub](declarations/le-add-iff-lt-of-dvd-sub.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [sign_add_eq_of_sign_eq](declarations/sign-add-eq-of-sign-eq.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [toNat_pred_coe_of_pos](declarations/tonat-pred-coe-of-pos.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `lemma` | [toNat_lt''](declarations/tonat-lt.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [natMod](declarations/natmod.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [natMod_lt](declarations/natmod-lt.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `lemma` | [pow_eq](declarations/pow-eq.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6892a1b86ecbf07b1a87cffd56914024c41728211cd8c1cfd92d1b6e7a8afe7f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Init/Variant6282f3a9e7a0464a1716d7f22ebea3e2378bf417ad8c5c9e1d720dab02fa0496.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
