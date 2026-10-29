# Lucas Lehmer Namespaced Strict Mono Mersenne

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**89 observed declarations and anonymous commands**, 61 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LucasLehmer/Variant8a1cb513a2883f0a76a260b52ef2c86d938b3f955a811f5aea19e90fa7cb30a6.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c0dc5696d66c140fd6e545db377974fe719cbb75`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/NumberTheory/LucasLehmerNamespacedStrictMonoMersenne.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [mersenne](declarations/mersenne.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [strictMono_mersenne](declarations/strictmono-mersenne.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [mersenne_lt_mersenne](declarations/mersenne-lt-mersenne.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [mersenne_le_mersenne](declarations/mersenne-le-mersenne.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [mersenne_zero](declarations/mersenne-zero.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [mersenne_odd](declarations/mersenne-odd.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [mersenne_pos](declarations/mersenne-pos.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [evalMersenne](declarations/evalmersenne.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [one_lt_mersenne](declarations/one-lt-mersenne.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [succ_mersenne](declarations/succ-mersenne.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [s](declarations/s.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [sZMod](declarations/szmod.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [sMod](declarations/smod.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [mersenne_int_pos](declarations/mersenne-int-pos.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mersenne_int_ne_zero](declarations/mersenne-int-ne-zero.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [sMod_nonneg](declarations/smod-nonneg.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [sMod_mod](declarations/smod-mod.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [sMod_lt](declarations/smod-lt.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [sZMod_eq_s](declarations/szmod-eq-s.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Int.natCast_pow_pred](declarations/int-natcast-pow-pred.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Int.coe_nat_two_pow_pred](declarations/int-coe-nat-two-pow-pred.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [sZMod_eq_sMod](declarations/szmod-eq-smod.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [lucasLehmerResidue](declarations/lucaslehmerresidue.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [residue_eq_zero_iff_sMod_eq_zero](declarations/residue-eq-zero-iff-smod-eq-zero.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [LucasLehmerTest](declarations/lucaslehmertest.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [q](declarations/q.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [X](declarations/x.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [ext](declarations/ext.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [zero_fst](declarations/zero-fst.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [zero_snd](declarations/zero-snd.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [add_fst](declarations/add-fst.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [add_snd](declarations/add-snd.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [neg_fst](declarations/neg-fst.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [neg_snd](declarations/neg-snd.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [mul_fst](declarations/mul-fst.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [mul_snd](declarations/mul-snd.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [one_fst](declarations/one-fst.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [one_snd](declarations/one-snd.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [fst_natCast](declarations/fst-natcast.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [snd_natCast](declarations/snd-natcast.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [ofNat_fst](declarations/ofnat-fst.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [ofNat_snd](declarations/ofnat-snd.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [left_distrib](declarations/left-distrib.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [right_distrib](declarations/right-distrib.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [(anonymous)](declarations/instance.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [fst_intCast](declarations/fst-intcast.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [snd_intCast](declarations/snd-intcast.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [coe_mul](declarations/coe-mul.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [coe_natCast](declarations/coe-natcast.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [card_eq](declarations/card-eq.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [card_units_lt](declarations/card-units-lt.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [ω](declarations/anonymous.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [ωb](declarations/b.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [ω_mul_ωb](declarations/mul-b.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [ωb_mul_ω](declarations/b-mul.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [closed_form](declarations/closed-form.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [two_lt_q](declarations/two-lt-q.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [ω_pow_formula](declarations/pow-formula.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [mersenne_coe_X](declarations/mersenne-coe-x.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [ω_pow_eq_neg_one](declarations/pow-eq-neg-one.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [ω_pow_eq_one](declarations/pow-eq-one.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [ωUnit](declarations/unit.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [ωUnit_coe](declarations/unit-coe.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [order_ω](declarations/order.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [order_ineq](declarations/order-ineq.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [lucas_lehmer_sufficiency](declarations/lucas-lehmer-sufficiency.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [sModNat](declarations/smodnat.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [sModNat_eq_sMod](declarations/smodnat-eq-smod.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [sModNatTR](declarations/smodnattr.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [sModNat_aux](declarations/smodnat-aux.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [sModNat_aux_eq](declarations/smodnat-aux-eq.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [sModNatTR_eq_sModNat](declarations/smodnattr-eq-smodnat.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `lemma` | [testTrueHelper](declarations/testtruehelper.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `lemma` | [testFalseHelper](declarations/testfalsehelper.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [isNat_lucasLehmerTest](declarations/isnat-lucaslehmertest.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [isNat_not_lucasLehmerTest](declarations/isnat-not-lucaslehmertest.md) | 583 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `def` | [evalLucasLehmerTest](declarations/evallucaslehmertest.md) | 590 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [modEq_mersenne](declarations/modeq-mersenne.md) | 630 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=319bf2ad5929d0a03cba8e34a12f60697533d9f277a0c28468e46483bddbf83b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LucasLehmer/Variant8a1cb513a2883f0a76a260b52ef2c86d938b3f955a811f5aea19e90fa7cb30a6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
