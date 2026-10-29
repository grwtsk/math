# NNRat Defs

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**105 observed declarations and anonymous commands**, 93 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/Defs/Variantbb68978e3836c15c1e759f8d3ff4840966ffa88d38e3fb1e3b7ef56415a1a5c8.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dcee1417729a3d28a5e9d1e4082beec9138ca435`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/NNRatDefs.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [Rat.instZeroLEOneClass](declarations/rat-instzeroleoneclass.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [Rat.instPosMulMono](declarations/rat-instposmulmono.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [instNontrivial](declarations/instnontrivial.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [instOrderBot](declarations/instorderbot.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [val_eq_cast](declarations/val-eq-cast.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [instCharZero](declarations/instcharzero.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [canLift](declarations/canlift.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [ext](declarations/ext.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [coe_injective](declarations/coe-injective.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [coe_inj](declarations/coe-inj.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [ne_iff](declarations/ne-iff.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [coe_mk](declarations/coe-mk.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [«forall»](declarations/forall.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [«exists»](declarations/exists.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [_root_.Rat.toNNRat](declarations/root-rat-tonnrat.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [_root_.Rat.coe_toNNRat](declarations/root-rat-coe-tonnrat.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [_root_.Rat.le_coe_toNNRat](declarations/root-rat-le-coe-tonnrat.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [coe_nonneg](declarations/coe-nonneg.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [coe_zero](declarations/coe-zero.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [num_zero](declarations/num-zero.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [den_zero](declarations/den-zero.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [coe_one](declarations/coe-one.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [num_one](declarations/num-one.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [den_one](declarations/den-one.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [coe_add](declarations/coe-add.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [coe_mul](declarations/coe-mul.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [coe_pow](declarations/coe-pow.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [num_pow](declarations/num-pow.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [den_pow](declarations/den-pow.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [coe_sub](declarations/coe-sub.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [coe_eq_zero](declarations/coe-eq-zero.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [coe_ne_zero](declarations/coe-ne-zero.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [coe_le_coe](declarations/coe-le-coe.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [coe_lt_coe](declarations/coe-lt-coe.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [coe_pos](declarations/coe-pos.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [coe_mono](declarations/coe-mono.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [toNNRat_mono](declarations/tonnrat-mono.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [toNNRat_coe](declarations/tonnrat-coe.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [toNNRat_coe_nat](declarations/tonnrat-coe-nat.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [gi](declarations/gi.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [coeHom](declarations/coehom.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [coe_natCast](declarations/coe-natcast.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [mk_natCast](declarations/mk-natcast.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [coe_coeHom](declarations/coe-coehom.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [nsmul_coe](declarations/nsmul-coe.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [bddAbove_coe](declarations/bddabove-coe.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [bddBelow_coe](declarations/bddbelow-coe.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [coe_max](declarations/coe-max.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [coe_min](declarations/coe-min.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [sub_def](declarations/sub-def.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [abs_coe](declarations/abs-coe.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [nonpos_iff_eq_zero](declarations/nonpos-iff-eq-zero.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [toNNRat_zero](declarations/tonnrat-zero.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [toNNRat_one](declarations/tonnrat-one.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [toNNRat_pos](declarations/tonnrat-pos.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [toNNRat_eq_zero](declarations/tonnrat-eq-zero.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [toNNRat_le_toNNRat_iff](declarations/tonnrat-le-tonnrat-iff.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [toNNRat_lt_toNNRat_iff'](declarations/tonnrat-lt-tonnrat-iff-source-edition-2.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [toNNRat_lt_toNNRat_iff](declarations/tonnrat-lt-tonnrat-iff.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [toNNRat_lt_toNNRat_iff_of_nonneg](declarations/tonnrat-lt-tonnrat-iff-of-nonneg.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [toNNRat_add](declarations/tonnrat-add.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [toNNRat_add_le](declarations/tonnrat-add-le.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [toNNRat_le_iff_le_coe](declarations/tonnrat-le-iff-le-coe.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [le_toNNRat_iff_coe_le](declarations/le-tonnrat-iff-coe-le-source-edition-2.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [le_toNNRat_iff_coe_le'](declarations/le-tonnrat-iff-coe-le.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [toNNRat_lt_iff_lt_coe](declarations/tonnrat-lt-iff-lt-coe.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [lt_toNNRat_iff_coe_lt](declarations/lt-tonnrat-iff-coe-lt.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [toNNRat_mul](declarations/tonnrat-mul.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [Rat.nnabs](declarations/rat-nnabs.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [Rat.coe_nnabs](declarations/rat-coe-nnabs.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `lemma` | [num_coe](declarations/num-coe.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [natAbs_num_coe](declarations/natabs-num-coe.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `lemma` | [den_coe](declarations/den-coe.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `lemma` | [num_ne_zero](declarations/num-ne-zero.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `lemma` | [num_pos](declarations/num-pos.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `lemma` | [den_pos](declarations/den-pos.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `lemma` | [den_ne_zero](declarations/den-ne-zero.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `lemma` | [coprime_num_den](declarations/coprime-num-den.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `lemma` | [num_natCast](declarations/num-natcast.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `lemma` | [den_natCast](declarations/den-natcast.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `lemma` | [num_ofNat](declarations/num-ofnat.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `lemma` | [den_ofNat](declarations/den-ofnat.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [ext_num_den](declarations/ext-num-den.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [ext_num_den_iff](declarations/ext-num-den-iff.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [divNat](declarations/divnat.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `lemma` | [coe_divNat](declarations/coe-divnat.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `lemma` | [mk_divInt](declarations/mk-divint.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `lemma` | [divNat_inj](declarations/divnat-inj.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `lemma` | [divNat_zero](declarations/divnat-zero.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `lemma` | [num_divNat_den](declarations/num-divnat-den.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `lemma` | [natCast_eq_divNat](declarations/natcast-eq-divnat.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `lemma` | [divNat_mul_divNat](declarations/divnat-mul-divnat.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `lemma` | [divNat_mul_left](declarations/divnat-mul-left.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `lemma` | [divNat_mul_right](declarations/divnat-mul-right.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `lemma` | [mul_den_eq_num](declarations/mul-den-eq-num.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `lemma` | [den_mul_eq_num](declarations/den-mul-eq-num.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `def` | [numDenCasesOn.](declarations/numdencaseson.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `lemma` | [add_def](declarations/add-def.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `lemma` | [mul_def](declarations/mul-def.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [lt_def](declarations/lt-def.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [le_def](declarations/le-def.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `lemma` | [nnratCast_eq](declarations/nnratcast-eq.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `lemma` | [nnratCast_le](declarations/nnratcast-le.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `lemma` | [nnratCast_lt](declarations/nnratcast-lt.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `lemma` | [nnratCast_ne](declarations/nnratcast-ne.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=053826a0dc9f47b2cc61c7af8b9c505815a279bc4473b0b71ff33cda279ddbb8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Defs/Variantbb68978e3836c15c1e759f8d3ff4840966ffa88d38e3fb1e3b7ef56415a1a5c8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
