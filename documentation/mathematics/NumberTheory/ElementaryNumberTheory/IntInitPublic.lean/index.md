# Int Init Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**70 observed declarations and anonymous commands**, 62 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/Init/Variante546003e52f14aa979b6291b39f7e9c0e7a5b3e39ea83f8d8064a68a28e9df9e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fb55fc31647617a5556331fdc54dcbae5facd9a7`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/NumberTheory/ElementaryNumberTheory/IntInitPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [neg_eq_neg](declarations/neg-eq-neg.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [succ](declarations/succ.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [pred](declarations/pred.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [pred_succ](declarations/pred-succ.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [succ_pred](declarations/succ-pred.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [neg_succ](declarations/neg-succ.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [succ_neg_succ](declarations/succ-neg-succ.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [neg_pred](declarations/neg-pred.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [pred_neg_pred](declarations/pred-neg-pred.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [pred_nat_succ](declarations/pred-nat-succ.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [neg_nat_succ](declarations/neg-nat-succ.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [succ_neg_natCast_succ](declarations/succ-neg-natcast-succ.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [natCast_pred_of_pos](declarations/natcast-pred-of-pos.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [lt_succ_self](declarations/lt-succ-self.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [pred_self_lt](declarations/pred-self-lt.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [induction_on](declarations/induction-on.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [inductionOn'](declarations/inductionon.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [inductionOn'_self](declarations/inductionon-self.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [inductionOn'_add_one](declarations/inductionon-add-one.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [inductionOn'_sub_one](declarations/inductionon-sub-one.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [negInduction](declarations/neginduction.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [leInduction](declarations/leinduction.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [leInduction_base](declarations/leinduction-base.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [leInduction_add_one](declarations/leinduction-add-one.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [leInductionDown](declarations/leinductiondown.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [leInductionDown_base](declarations/leinductiondown-base.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [leInductionDown_sub_one](declarations/leinductiondown-sub-one.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [strongRec](declarations/strongrec.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [strongRec_of_lt](declarations/strongrec-of-lt.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [sign_mul_self_eq_natAbs](declarations/sign-mul-self-eq-natabs.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [natCast_div](declarations/natcast-div.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [ediv_of_neg_of_pos](declarations/ediv-of-neg-of-pos.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [natCast_mod](declarations/natcast-mod.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [div_le_iff_of_dvd_of_pos](declarations/div-le-iff-of-dvd-of-pos.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [div_le_iff_of_dvd_of_neg](declarations/div-le-iff-of-dvd-of-neg.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [div_lt_iff_of_dvd_of_pos](declarations/div-lt-iff-of-dvd-of-pos.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [div_lt_iff_of_dvd_of_neg](declarations/div-lt-iff-of-dvd-of-neg.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [le_div_iff_of_dvd_of_pos](declarations/le-div-iff-of-dvd-of-pos.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [le_div_iff_of_dvd_of_neg](declarations/le-div-iff-of-dvd-of-neg.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [lt_div_iff_of_dvd_of_pos](declarations/lt-div-iff-of-dvd-of-pos.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [lt_div_iff_of_dvd_of_neg](declarations/lt-div-iff-of-dvd-of-neg.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [div_le_div_iff_of_dvd_of_pos_of_pos](declarations/div-le-div-iff-of-dvd-of-pos-of-pos.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [div_le_div_iff_of_dvd_of_pos_of_neg](declarations/div-le-div-iff-of-dvd-of-pos-of-neg.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [div_le_div_iff_of_dvd_of_neg_of_pos](declarations/div-le-div-iff-of-dvd-of-neg-of-pos.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [div_le_div_iff_of_dvd_of_neg_of_neg](declarations/div-le-div-iff-of-dvd-of-neg-of-neg.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [div_lt_div_iff_of_dvd_of_pos](declarations/div-lt-div-iff-of-dvd-of-pos.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [div_lt_div_iff_of_dvd_of_pos_of_neg](declarations/div-lt-div-iff-of-dvd-of-pos-of-neg.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [div_lt_div_iff_of_dvd_of_neg_of_pos](declarations/div-lt-div-iff-of-dvd-of-neg-of-pos.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [div_lt_div_iff_of_dvd_of_neg_of_neg](declarations/div-lt-div-iff-of-dvd-of-neg-of-neg.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [emod_two_eq_zero_or_one](declarations/emod-two-eq-zero-or-one.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [dvd_mul_of_div_dvd](declarations/dvd-mul-of-div-dvd.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [div_dvd_iff_dvd_mul](declarations/div-dvd-iff-dvd-mul.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [mul_dvd_of_dvd_div](declarations/mul-dvd-of-dvd-div.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [dvd_div_of_mul_dvd](declarations/dvd-div-of-mul-dvd.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [dvd_div_iff_mul_dvd](declarations/dvd-div-iff-mul-dvd.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [exists_lt_and_lt_iff_not_dvd](declarations/exists-lt-and-lt-iff-not-dvd.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [eq_mul_div_of_mul_eq_mul_of_dvd_left](declarations/eq-mul-div-of-mul-eq-mul-of-dvd-left.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `lemma` | [ofNat_add_negSucc_of_ge](declarations/ofnat-add-negsucc-of-ge.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `lemma` | [le_iff_pos_of_dvd](declarations/le-iff-pos-of-dvd.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [le_add_iff_lt_of_dvd_sub](declarations/le-add-iff-lt-of-dvd-sub.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `lemma` | [sign_add_eq_of_sign_eq](declarations/sign-add-eq-of-sign-eq.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `lemma` | [toNat_pred_coe_of_pos](declarations/tonat-pred-coe-of-pos.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `lemma` | [toNat_lt_of_ne_zero](declarations/tonat-lt-of-ne-zero.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [natMod](declarations/natmod.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `lemma` | [natMod_lt](declarations/natmod-lt.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `lemma` | [pow_eq](declarations/pow-eq.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `lemma` | [gcd_ofNat_negSucc](declarations/gcd-ofnat-negsucc.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `lemma` | [gcd_negSucc_ofNat](declarations/gcd-negsucc-ofnat.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `lemma` | [gcd_negSucc_negSucc](declarations/gcd-negsucc-negsucc.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [gcd_right_comm](declarations/gcd-right-comm.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ce7e0579457f683351ea56c9b814c4a23cdf871053fe078bf760827d85a4f48e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Init/Variante546003e52f14aa979b6291b39f7e9c0e7a5b3e39ea83f8d8064a68a28e9df9e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
