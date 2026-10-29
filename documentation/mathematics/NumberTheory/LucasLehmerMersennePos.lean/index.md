# Lucas Lehmer Mersenne Pos

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**79 observed declarations and anonymous commands**, 54 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `57a29880b082de9417c229bbe3ecdb51649a86bd`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/NumberTheory/LucasLehmerMersennePos.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [mersenne](declarations/mersenne.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [mersenne_pos](declarations/mersenne-pos.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [one_lt_mersenne](declarations/one-lt-mersenne.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [succ_mersenne](declarations/succ-mersenne.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [s](declarations/s.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [sZMod](declarations/szmod.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [sMod](declarations/smod.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [mersenne_int_pos](declarations/mersenne-int-pos.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [mersenne_int_ne_zero](declarations/mersenne-int-ne-zero.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [sMod_nonneg](declarations/smod-nonneg.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [sMod_mod](declarations/smod-mod.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [sMod_lt](declarations/smod-lt.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [sZMod_eq_s](declarations/szmod-eq-s.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [Int.coe_nat_pow_pred](declarations/int-coe-nat-pow-pred.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [Int.coe_nat_two_pow_pred](declarations/int-coe-nat-two-pow-pred.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [sZMod_eq_sMod](declarations/szmod-eq-smod.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [lucasLehmerResidue](declarations/lucaslehmerresidue.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [residue_eq_zero_iff_sMod_eq_zero](declarations/residue-eq-zero-iff-smod-eq-zero.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [LucasLehmerTest](declarations/lucaslehmertest.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [q](declarations/q.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [X](declarations/x.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [ext](declarations/ext.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [zero_fst](declarations/zero-fst.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [zero_snd](declarations/zero-snd.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [add_fst](declarations/add-fst.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [add_snd](declarations/add-snd.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [neg_fst](declarations/neg-fst.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [neg_snd](declarations/neg-snd.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [mul_fst](declarations/mul-fst.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [mul_snd](declarations/mul-snd.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [one_fst](declarations/one-fst.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [one_snd](declarations/one-snd.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [nat_coe_fst](declarations/nat-coe-fst.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [nat_coe_snd](declarations/nat-coe-snd.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [ofNat_fst](declarations/ofnat-fst.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [ofNat_snd](declarations/ofnat-snd.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [left_distrib](declarations/left-distrib.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [right_distrib](declarations/right-distrib.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [(anonymous)](declarations/instance.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [int_coe_fst](declarations/int-coe-fst.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [int_coe_snd](declarations/int-coe-snd.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [coe_mul](declarations/coe-mul.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [coe_nat](declarations/coe-nat.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [card_eq](declarations/card-eq.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [card_units_lt](declarations/card-units-lt.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [ω](declarations/anonymous.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [ωb](declarations/b.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [ω_mul_ωb](declarations/mul-b.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [ωb_mul_ω](declarations/b-mul.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [closed_form](declarations/closed-form.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [two_lt_q](declarations/two-lt-q.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [ω_pow_formula](declarations/pow-formula.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [mersenne_coe_X](declarations/mersenne-coe-x.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [ω_pow_eq_neg_one](declarations/pow-eq-neg-one.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [ω_pow_eq_one](declarations/pow-eq-one.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [ωUnit](declarations/unit.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [ωUnit_coe](declarations/unit-coe.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [order_ω](declarations/order.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [order_ineq](declarations/order-ineq.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [lucas_lehmer_sufficiency](declarations/lucas-lehmer-sufficiency.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [sMod'](declarations/smod-source-edition-2.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [sMod'_eq_sMod](declarations/smod-eq-smod.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `lemma` | [testTrueHelper](declarations/testtruehelper.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `lemma` | [testFalseHelper](declarations/testfalsehelper.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [isNat_lucasLehmerTest](declarations/isnat-lucaslehmertest.md) | 583 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [isNat_not_lucasLehmerTest](declarations/isnat-not-lucaslehmertest.md) | 587 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [evalLucasLehmerTest](declarations/evallucaslehmertest.md) | 594 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [modEq_mersenne](declarations/modeq-mersenne.md) | 634 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c2e2184d0092e76e9f0f80105234ee0e5102428c0cbe15796b0eaf718dc32547 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
