# Int Init Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**70 observed declarations and anonymous commands**, 62 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/Init/Variant5e3f93656d7cdffbe78c407b3384a379a95d65b284f859c87ffcf584fcef8619.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a2b65e2829a5030ca2996142f86850a585101d39`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/NumberTheory/ElementaryNumberTheory/IntInitNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [neg_eq_neg](declarations/neg-eq-neg.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
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
| 17 | `def` | [inductionOn'](declarations/inductionon.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [inductionOn'_self](declarations/inductionon-self.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [inductionOn'_add_one](declarations/inductionon-add-one.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [inductionOn'_sub_one](declarations/inductionon-sub-one.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [negInduction](declarations/neginduction.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [leInduction](declarations/leinduction.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [leInduction_base](declarations/leinduction-base.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [leInduction_add_one](declarations/leinduction-add-one.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [leInductionDown](declarations/leinductiondown.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [leInductionDown_base](declarations/leinductiondown-base.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [leInductionDown_sub_one](declarations/leinductiondown-sub-one.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [strongRec](declarations/strongrec.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [strongRec_of_lt](declarations/strongrec-of-lt.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [sign_mul_self_eq_natAbs](declarations/sign-mul-self-eq-natabs.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [natCast_div](declarations/natcast-div.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [ediv_of_neg_of_pos](declarations/ediv-of-neg-of-pos.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [natCast_mod](declarations/natcast-mod.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [div_le_iff_of_dvd_of_pos](declarations/div-le-iff-of-dvd-of-pos.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [div_le_iff_of_dvd_of_neg](declarations/div-le-iff-of-dvd-of-neg.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [div_lt_iff_of_dvd_of_pos](declarations/div-lt-iff-of-dvd-of-pos.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [div_lt_iff_of_dvd_of_neg](declarations/div-lt-iff-of-dvd-of-neg.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [le_div_iff_of_dvd_of_pos](declarations/le-div-iff-of-dvd-of-pos.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [le_div_iff_of_dvd_of_neg](declarations/le-div-iff-of-dvd-of-neg.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [lt_div_iff_of_dvd_of_pos](declarations/lt-div-iff-of-dvd-of-pos.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [lt_div_iff_of_dvd_of_neg](declarations/lt-div-iff-of-dvd-of-neg.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [div_le_div_iff_of_dvd_of_pos_of_pos](declarations/div-le-div-iff-of-dvd-of-pos-of-pos.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [div_le_div_iff_of_dvd_of_pos_of_neg](declarations/div-le-div-iff-of-dvd-of-pos-of-neg.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [div_le_div_iff_of_dvd_of_neg_of_pos](declarations/div-le-div-iff-of-dvd-of-neg-of-pos.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [div_le_div_iff_of_dvd_of_neg_of_neg](declarations/div-le-div-iff-of-dvd-of-neg-of-neg.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [div_lt_div_iff_of_dvd_of_pos](declarations/div-lt-div-iff-of-dvd-of-pos.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [div_lt_div_iff_of_dvd_of_pos_of_neg](declarations/div-lt-div-iff-of-dvd-of-pos-of-neg.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [div_lt_div_iff_of_dvd_of_neg_of_pos](declarations/div-lt-div-iff-of-dvd-of-neg-of-pos.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [div_lt_div_iff_of_dvd_of_neg_of_neg](declarations/div-lt-div-iff-of-dvd-of-neg-of-neg.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [emod_two_eq_zero_or_one](declarations/emod-two-eq-zero-or-one.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [dvd_mul_of_div_dvd](declarations/dvd-mul-of-div-dvd.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [div_dvd_iff_dvd_mul](declarations/div-dvd-iff-dvd-mul.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [mul_dvd_of_dvd_div](declarations/mul-dvd-of-dvd-div.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [dvd_div_of_mul_dvd](declarations/dvd-div-of-mul-dvd.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [dvd_div_iff_mul_dvd](declarations/dvd-div-iff-mul-dvd.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [exists_lt_and_lt_iff_not_dvd](declarations/exists-lt-and-lt-iff-not-dvd.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [eq_mul_div_of_mul_eq_mul_of_dvd_left](declarations/eq-mul-div-of-mul-eq-mul-of-dvd-left.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `lemma` | [ofNat_add_negSucc_of_ge](declarations/ofnat-add-negsucc-of-ge.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `lemma` | [le_iff_pos_of_dvd](declarations/le-iff-pos-of-dvd.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [le_add_iff_lt_of_dvd_sub](declarations/le-add-iff-lt-of-dvd-sub.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `lemma` | [sign_add_eq_of_sign_eq](declarations/sign-add-eq-of-sign-eq.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `lemma` | [toNat_pred_coe_of_pos](declarations/tonat-pred-coe-of-pos.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `lemma` | [toNat_lt_of_ne_zero](declarations/tonat-lt-of-ne-zero.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [natMod](declarations/natmod.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `lemma` | [natMod_lt](declarations/natmod-lt.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `lemma` | [pow_eq](declarations/pow-eq.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `lemma` | [gcd_ofNat_negSucc](declarations/gcd-ofnat-negsucc.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `lemma` | [gcd_negSucc_ofNat](declarations/gcd-negsucc-ofnat.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `lemma` | [gcd_negSucc_negSucc](declarations/gcd-negsucc-negsucc.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [gcd_right_comm](declarations/gcd-right-comm.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7f63088777077800deb9d4907cd63dcf125a1a753fe1fe04250f03832b525053 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Init/Variant5e3f93656d7cdffbe78c407b3384a379a95d65b284f859c87ffcf584fcef8619.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
