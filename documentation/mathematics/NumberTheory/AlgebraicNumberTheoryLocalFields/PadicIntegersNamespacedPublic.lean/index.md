# Padic Integers Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**102 observed declarations and anonymous commands**, 75 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicIntegers/Variant2cfc6ee13593fb33e9256a741e816041ba471b650c43574e8a2caa1460cf8232.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `af48ea25e33cf9aadc3b9b67e0b64cf3c2002733`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/NumberTheory/AlgebraicNumberTheoryLocalFields/PadicIntegersNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [PadicInt](declarations/padicint.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [ext](declarations/ext.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [subring](declarations/subring.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [mem_subring_iff](declarations/mem-subring-iff.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [instCommRing](declarations/instcommring.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [mk_zero](declarations/mk-zero.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [coe_add](declarations/coe-add.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [coe_mul](declarations/coe-mul.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [coe_neg](declarations/coe-neg.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [coe_sub](declarations/coe-sub.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [coe_one](declarations/coe-one.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [coe_zero](declarations/coe-zero.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [coe_eq_zero](declarations/coe-eq-zero.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [coe_ne_zero](declarations/coe-ne-zero.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [coe_natCast](declarations/coe-natcast.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [coe_intCast](declarations/coe-intcast.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [Coe.ringHom](declarations/coe-ringhom.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [coe_pow](declarations/coe-pow.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [mk_coe](declarations/mk-coe.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [coe_sum](declarations/coe-sum.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [isOpenEmbedding_coe](declarations/isopenembedding-coe.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [inv](declarations/inv.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [(anonymous)](declarations/instance-source-edition-13.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [intCast_eq](declarations/intcast-eq.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [ofIntSeq](declarations/ofintseq.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [completeSpace](declarations/completespace.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [norm_def](declarations/norm-def.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [(anonymous)](declarations/instance.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [norm_le_one](declarations/norm-le-one.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [nonarchimedean](declarations/nonarchimedean.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [norm_add_eq_max_of_ne](declarations/norm-add-eq-max-of-ne.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [norm_eq_of_norm_add_lt_right](declarations/norm-eq-of-norm-add-lt-right.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [norm_eq_of_norm_add_lt_left](declarations/norm-eq-of-norm-add-lt-left.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [padic_norm_e_of_padicInt](declarations/padic-norm-e-of-padicint.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [norm_intCast_eq_padic_norm](declarations/norm-intcast-eq-padic-norm.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [norm_eq_padic_norm](declarations/norm-eq-padic-norm.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [norm_p](declarations/norm-p.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [norm_p_pow](declarations/norm-p-pow.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [one_le_norm_iff](declarations/one-le-norm-iff.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [norm_natCast_p_sub_one](declarations/norm-natcast-p-sub-one.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [cauSeq_to_rat_cauSeq](declarations/causeq-to-rat-causeq.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `instance` | [complete](declarations/complete.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [exists_pow_neg_lt](declarations/exists-pow-neg-lt.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [exists_pow_neg_lt_rat](declarations/exists-pow-neg-lt-rat.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [norm_int_lt_one_iff_dvd](declarations/norm-int-lt-one-iff-dvd.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [norm_int_le_pow_iff_dvd](declarations/norm-int-le-pow-iff-dvd.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [norm_natCast_eq_one_iff](declarations/norm-natcast-eq-one-iff.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [norm_natCast_lt_one_iff](declarations/norm-natcast-lt-one-iff.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [norm_intCast_eq_one_iff](declarations/norm-intcast-eq-one-iff.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `lemma` | [norm_intCast_lt_one_iff](declarations/norm-intcast-lt-one-iff.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `lemma` | [valuation_coe_nonneg](declarations/valuation-coe-nonneg.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [valuation](declarations/valuation.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `lemma` | [valuation_coe](declarations/valuation-coe.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `lemma` | [valuation_zero](declarations/valuation-zero.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `lemma` | [valuation_one](declarations/valuation-one.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `lemma` | [valuation_p](declarations/valuation-p.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `lemma` | [le_valuation_add](declarations/le-valuation-add.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `lemma` | [valuation_mul](declarations/valuation-mul.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `lemma` | [valuation_pow](declarations/valuation-pow.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `lemma` | [norm_eq_zpow_neg_valuation](declarations/norm-eq-zpow-neg-valuation.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [valuation_p_pow_mul](declarations/valuation-p-pow-mul.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [mul_inv](declarations/mul-inv.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [inv_mul](declarations/inv-mul.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [isUnit_iff](declarations/isunit-iff.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [norm_lt_one_add](declarations/norm-lt-one-add.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [norm_lt_one_mul](declarations/norm-lt-one-mul.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [mem_nonunits](declarations/mem-nonunits.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [not_isUnit_iff](declarations/not-isunit-iff.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [mkUnits](declarations/mkunits.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `lemma` | [val_mkUnits](declarations/val-mkunits.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [mkUnits_eq](declarations/mkunits-eq.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [norm_units](declarations/norm-units.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [unitCoeff](declarations/unitcoeff.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [unitCoeff_coe](declarations/unitcoeff-coe.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [unitCoeff_spec](declarations/unitcoeff-spec.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [isUnit_den](declarations/isunit-den.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [norm_le_pow_iff_le_valuation](declarations/norm-le-pow-iff-le-valuation.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [mem_span_pow_iff_le_valuation](declarations/mem-span-pow-iff-le-valuation.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [norm_le_pow_iff_mem_span_pow](declarations/norm-le-pow-iff-mem-span-pow.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [norm_le_pow_iff_norm_lt_pow_add_one](declarations/norm-le-pow-iff-norm-lt-pow-add-one.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [norm_lt_pow_iff_norm_le_pow_sub_one](declarations/norm-lt-pow-iff-norm-le-pow-sub-one.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [norm_lt_one_iff_dvd](declarations/norm-lt-one-iff-dvd.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [pow_p_dvd_int_iff](declarations/pow-p-dvd-int-iff.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [p_nonunit](declarations/p-nonunit.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [maximalIdeal_eq_span_p](declarations/maximalideal-eq-span-p.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [prime_p](declarations/prime-p.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [irreducible_p](declarations/irreducible-p.md) | 534 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [ideal_eq_span_pow_p](declarations/ideal-eq-span-pow-p.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `instance` | [algebra](declarations/algebra.md) | 572 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [algebraMap_apply](declarations/algebramap-apply.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `instance` | [isFractionRing](declarations/isfractionring.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=469fa9407938af5e90645722339115da7b58ada8bd85a4a4a407694e936ff2ef -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicIntegers/Variant2cfc6ee13593fb33e9256a741e816041ba471b650c43574e8a2caa1460cf8232.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
