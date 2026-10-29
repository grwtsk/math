# Padic Integers Coe Nat Cast

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**92 observed declarations and anonymous commands**, 65 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicIntegers/Variant6f7ef4146f3158001ce7508e57f020ceca106d4bf8776ed868978d5d04c8868d.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2ee1ab776058358d9da30b976a3075ed249a2667`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/NumberTheory/AlgebraicNumberTheoryLocalFields/PadicIntegersCoeNatCast.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [PadicInt](declarations/padicint.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [ext](declarations/ext.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [subring](declarations/subring.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [mem_subring_iff](declarations/mem-subring-iff.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [instCommRing](declarations/instcommring.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [mk_zero](declarations/mk-zero.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [coe_add](declarations/coe-add.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [coe_mul](declarations/coe-mul.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [coe_neg](declarations/coe-neg.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [coe_sub](declarations/coe-sub.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [coe_one](declarations/coe-one.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [coe_zero](declarations/coe-zero.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [coe_eq_zero](declarations/coe-eq-zero.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [coe_ne_zero](declarations/coe-ne-zero.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [coe_natCast](declarations/coe-natcast.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [coe_intCast](declarations/coe-intcast.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [Coe.ringHom](declarations/coe-ringhom.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [coe_pow](declarations/coe-pow.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [mk_coe](declarations/mk-coe.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [inv](declarations/inv.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [intCast_eq](declarations/intcast-eq.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [ofIntSeq](declarations/ofintseq.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [completeSpace](declarations/completespace.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [norm_def](declarations/norm-def.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [(anonymous)](declarations/instance.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [norm_le_one](declarations/norm-le-one.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [nonarchimedean](declarations/nonarchimedean.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [norm_add_eq_max_of_ne](declarations/norm-add-eq-max-of-ne.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [norm_eq_of_norm_add_lt_right](declarations/norm-eq-of-norm-add-lt-right.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [norm_eq_of_norm_add_lt_left](declarations/norm-eq-of-norm-add-lt-left.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [padic_norm_e_of_padicInt](declarations/padic-norm-e-of-padicint.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [norm_intCast_eq_padic_norm](declarations/norm-intcast-eq-padic-norm.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [norm_eq_padic_norm](declarations/norm-eq-padic-norm.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [norm_p](declarations/norm-p.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [norm_p_pow](declarations/norm-p-pow.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [cauSeq_to_rat_cauSeq](declarations/causeq-to-rat-causeq.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [complete](declarations/complete.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [exists_pow_neg_lt](declarations/exists-pow-neg-lt.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [exists_pow_neg_lt_rat](declarations/exists-pow-neg-lt-rat.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [norm_int_lt_one_iff_dvd](declarations/norm-int-lt-one-iff-dvd.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [norm_int_le_pow_iff_dvd](declarations/norm-int-le-pow-iff-dvd.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [valuation_coe_nonneg](declarations/valuation-coe-nonneg.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [valuation](declarations/valuation.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [valuation_coe](declarations/valuation-coe.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [valuation_zero](declarations/valuation-zero.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [valuation_one](declarations/valuation-one.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [valuation_p](declarations/valuation-p.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [le_valuation_add](declarations/le-valuation-add.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `lemma` | [valuation_mul](declarations/valuation-mul.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `lemma` | [valuation_pow](declarations/valuation-pow.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [norm_eq_zpow_neg_valuation](declarations/norm-eq-zpow-neg-valuation.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [valuation_p_pow_mul](declarations/valuation-p-pow-mul.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [mul_inv](declarations/mul-inv.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [inv_mul](declarations/inv-mul.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [isUnit_iff](declarations/isunit-iff.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [norm_lt_one_add](declarations/norm-lt-one-add.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [norm_lt_one_mul](declarations/norm-lt-one-mul.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [mem_nonunits](declarations/mem-nonunits.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [not_isUnit_iff](declarations/not-isunit-iff.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [mkUnits](declarations/mkunits.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [mkUnits_eq](declarations/mkunits-eq.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [norm_units](declarations/norm-units.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [unitCoeff](declarations/unitcoeff.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [unitCoeff_coe](declarations/unitcoeff-coe.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [unitCoeff_spec](declarations/unitcoeff-spec.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [norm_le_pow_iff_le_valuation](declarations/norm-le-pow-iff-le-valuation.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [mem_span_pow_iff_le_valuation](declarations/mem-span-pow-iff-le-valuation.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [norm_le_pow_iff_mem_span_pow](declarations/norm-le-pow-iff-mem-span-pow.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [norm_le_pow_iff_norm_lt_pow_add_one](declarations/norm-le-pow-iff-norm-lt-pow-add-one.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [norm_lt_pow_iff_norm_le_pow_sub_one](declarations/norm-lt-pow-iff-norm-le-pow-sub-one.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [norm_lt_one_iff_dvd](declarations/norm-lt-one-iff-dvd.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [pow_p_dvd_int_iff](declarations/pow-p-dvd-int-iff.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `instance` | [(anonymous)](declarations/instance-source-edition-13.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [p_nonnunit](declarations/p-nonnunit.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [maximalIdeal_eq_span_p](declarations/maximalideal-eq-span-p.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [prime_p](declarations/prime-p.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [irreducible_p](declarations/irreducible-p.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [ideal_eq_span_pow_p](declarations/ideal-eq-span-pow-p.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `instance` | [algebra](declarations/algebra.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [algebraMap_apply](declarations/algebramap-apply.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `instance` | [isFractionRing](declarations/isfractionring.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=285fc149f3d271f424054dbc1f74a3deec7663d0ff7493dfd0f89af8e7383f90 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicIntegers/Variant6f7ef4146f3158001ce7508e57f020ceca106d4bf8776ed868978d5d04c8868d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
