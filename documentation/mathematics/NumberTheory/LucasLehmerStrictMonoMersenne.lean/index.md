# Lucas Lehmer Strict Mono Mersenne

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**89 observed declarations and anonymous commands**, 61 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LucasLehmer/Variant7abb3a79a455dbc34a075b1118ed32c299a0522b4314578093a376d64cb48fe5.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `87361122d89fb6264c21270da45e4a66d24f9de6`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/NumberTheory/LucasLehmerStrictMonoMersenne.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [mersenne](declarations/mersenne.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [strictMono_mersenne](declarations/strictmono-mersenne.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [mersenne_lt_mersenne](declarations/mersenne-lt-mersenne.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [mersenne_le_mersenne](declarations/mersenne-le-mersenne.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [mersenne_zero](declarations/mersenne-zero.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [mersenne_odd](declarations/mersenne-odd.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [mersenne_pos](declarations/mersenne-pos.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [evalMersenne](declarations/evalmersenne.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [one_lt_mersenne](declarations/one-lt-mersenne.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [succ_mersenne](declarations/succ-mersenne.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [s](declarations/s.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [sZMod](declarations/szmod.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [sMod](declarations/smod.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [mersenne_int_pos](declarations/mersenne-int-pos.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mersenne_int_ne_zero](declarations/mersenne-int-ne-zero.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [sMod_nonneg](declarations/smod-nonneg.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [sMod_mod](declarations/smod-mod.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [sMod_lt](declarations/smod-lt.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [sZMod_eq_s](declarations/szmod-eq-s.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Int.natCast_pow_pred](declarations/int-natcast-pow-pred.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Int.coe_nat_two_pow_pred](declarations/int-coe-nat-two-pow-pred.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [sZMod_eq_sMod](declarations/szmod-eq-smod.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [lucasLehmerResidue](declarations/lucaslehmerresidue.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [residue_eq_zero_iff_sMod_eq_zero](declarations/residue-eq-zero-iff-smod-eq-zero.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [LucasLehmerTest](declarations/lucaslehmertest.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [q](declarations/q.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [X](declarations/x.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [ext](declarations/ext.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [zero_fst](declarations/zero-fst.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [zero_snd](declarations/zero-snd.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [add_fst](declarations/add-fst.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [add_snd](declarations/add-snd.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [neg_fst](declarations/neg-fst.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [neg_snd](declarations/neg-snd.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [mul_fst](declarations/mul-fst.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [mul_snd](declarations/mul-snd.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [one_fst](declarations/one-fst.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [one_snd](declarations/one-snd.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [fst_natCast](declarations/fst-natcast.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [snd_natCast](declarations/snd-natcast.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [ofNat_fst](declarations/ofnat-fst.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [ofNat_snd](declarations/ofnat-snd.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [left_distrib](declarations/left-distrib.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [right_distrib](declarations/right-distrib.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `instance` | [(anonymous)](declarations/instance.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [fst_intCast](declarations/fst-intcast.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [snd_intCast](declarations/snd-intcast.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [coe_mul](declarations/coe-mul.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [coe_natCast](declarations/coe-natcast.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [card_eq](declarations/card-eq.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [card_units_lt](declarations/card-units-lt.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [ω](declarations/anonymous.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [ωb](declarations/b.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [ω_mul_ωb](declarations/mul-b.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [ωb_mul_ω](declarations/b-mul.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [closed_form](declarations/closed-form.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [two_lt_q](declarations/two-lt-q.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [ω_pow_formula](declarations/pow-formula.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [mersenne_coe_X](declarations/mersenne-coe-x.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [ω_pow_eq_neg_one](declarations/pow-eq-neg-one.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [ω_pow_eq_one](declarations/pow-eq-one.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [ωUnit](declarations/unit.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [ωUnit_coe](declarations/unit-coe.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [order_ω](declarations/order.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [order_ineq](declarations/order-ineq.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [lucas_lehmer_sufficiency](declarations/lucas-lehmer-sufficiency.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [sModNat](declarations/smodnat.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [sModNat_eq_sMod](declarations/smodnat-eq-smod.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [sModNatTR](declarations/smodnattr.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [sModNat_aux](declarations/smodnat-aux.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [sModNat_aux_eq](declarations/smodnat-aux-eq.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [sModNatTR_eq_sModNat](declarations/smodnattr-eq-smodnat.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `lemma` | [testTrueHelper](declarations/testtruehelper.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `lemma` | [testFalseHelper](declarations/testfalsehelper.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [isNat_lucasLehmerTest](declarations/isnat-lucaslehmertest.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [isNat_not_lucasLehmerTest](declarations/isnat-not-lucaslehmertest.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `def` | [evalLucasLehmerTest](declarations/evallucaslehmertest.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [modEq_mersenne](declarations/modeq-mersenne.md) | 622 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fa2986dcc6b961bef4570fe35df7b4730391fdaf61307b058c588afe115ca100 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LucasLehmer/Variant7abb3a79a455dbc34a075b1118ed32c299a0522b4314578093a376d64cb48fe5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
