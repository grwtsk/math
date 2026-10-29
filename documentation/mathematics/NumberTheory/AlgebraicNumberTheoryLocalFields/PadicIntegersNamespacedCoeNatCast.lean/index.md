# Padic Integers Namespaced Coe Nat Cast

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**92 observed declarations and anonymous commands**, 65 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicIntegers/Variantb79b6524db25b3eb6baa489976975e4de5e8c8215a88006ca31ac55f7dc91f59.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5dffcbbec001150d67c0779b143f032447b20fe8`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/NumberTheory/AlgebraicNumberTheoryLocalFields/PadicIntegersNamespacedCoeNatCast.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [PadicInt](declarations/padicint.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [ext](declarations/ext.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [subring](declarations/subring.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [mem_subring_iff](declarations/mem-subring-iff.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [instCommRing](declarations/instcommring.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [mk_zero](declarations/mk-zero.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [coe_add](declarations/coe-add.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [coe_mul](declarations/coe-mul.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [coe_neg](declarations/coe-neg.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [coe_sub](declarations/coe-sub.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [coe_one](declarations/coe-one.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [coe_zero](declarations/coe-zero.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [coe_eq_zero](declarations/coe-eq-zero.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [coe_ne_zero](declarations/coe-ne-zero.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [coe_natCast](declarations/coe-natcast.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [coe_intCast](declarations/coe-intcast.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [Coe.ringHom](declarations/coe-ringhom.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [coe_pow](declarations/coe-pow.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [mk_coe](declarations/mk-coe.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [inv](declarations/inv.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [intCast_eq](declarations/intcast-eq.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [ofIntSeq](declarations/ofintseq.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [completeSpace](declarations/completespace.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [norm_def](declarations/norm-def.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [(anonymous)](declarations/instance-source-edition-13.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [norm_le_one](declarations/norm-le-one.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [nonarchimedean](declarations/nonarchimedean.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [norm_add_eq_max_of_ne](declarations/norm-add-eq-max-of-ne.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [norm_eq_of_norm_add_lt_right](declarations/norm-eq-of-norm-add-lt-right.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [norm_eq_of_norm_add_lt_left](declarations/norm-eq-of-norm-add-lt-left.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [padic_norm_e_of_padicInt](declarations/padic-norm-e-of-padicint.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [norm_intCast_eq_padic_norm](declarations/norm-intcast-eq-padic-norm.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [norm_eq_padic_norm](declarations/norm-eq-padic-norm.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [norm_p](declarations/norm-p.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [norm_p_pow](declarations/norm-p-pow.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [cauSeq_to_rat_cauSeq](declarations/causeq-to-rat-causeq.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [complete](declarations/complete.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [exists_pow_neg_lt](declarations/exists-pow-neg-lt.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [exists_pow_neg_lt_rat](declarations/exists-pow-neg-lt-rat.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [norm_int_lt_one_iff_dvd](declarations/norm-int-lt-one-iff-dvd.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [norm_int_le_pow_iff_dvd](declarations/norm-int-le-pow-iff-dvd.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [valuation_coe_nonneg](declarations/valuation-coe-nonneg.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [valuation](declarations/valuation.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [valuation_coe](declarations/valuation-coe.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [valuation_zero](declarations/valuation-zero.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [valuation_one](declarations/valuation-one.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [valuation_p](declarations/valuation-p.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [le_valuation_add](declarations/le-valuation-add.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `lemma` | [valuation_mul](declarations/valuation-mul.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `lemma` | [valuation_pow](declarations/valuation-pow.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [norm_eq_zpow_neg_valuation](declarations/norm-eq-zpow-neg-valuation.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [valuation_p_pow_mul](declarations/valuation-p-pow-mul.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [mul_inv](declarations/mul-inv.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [inv_mul](declarations/inv-mul.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [isUnit_iff](declarations/isunit-iff.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [norm_lt_one_add](declarations/norm-lt-one-add.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [norm_lt_one_mul](declarations/norm-lt-one-mul.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [mem_nonunits](declarations/mem-nonunits.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [not_isUnit_iff](declarations/not-isunit-iff.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [mkUnits](declarations/mkunits.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [mkUnits_eq](declarations/mkunits-eq.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [norm_units](declarations/norm-units.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [unitCoeff](declarations/unitcoeff.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [unitCoeff_coe](declarations/unitcoeff-coe.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [unitCoeff_spec](declarations/unitcoeff-spec.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [norm_le_pow_iff_le_valuation](declarations/norm-le-pow-iff-le-valuation.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [mem_span_pow_iff_le_valuation](declarations/mem-span-pow-iff-le-valuation.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [norm_le_pow_iff_mem_span_pow](declarations/norm-le-pow-iff-mem-span-pow.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [norm_le_pow_iff_norm_lt_pow_add_one](declarations/norm-le-pow-iff-norm-lt-pow-add-one.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [norm_lt_pow_iff_norm_le_pow_sub_one](declarations/norm-lt-pow-iff-norm-le-pow-sub-one.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [norm_lt_one_iff_dvd](declarations/norm-lt-one-iff-dvd.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [pow_p_dvd_int_iff](declarations/pow-p-dvd-int-iff.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [p_nonnunit](declarations/p-nonnunit.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [maximalIdeal_eq_span_p](declarations/maximalideal-eq-span-p.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [prime_p](declarations/prime-p.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [irreducible_p](declarations/irreducible-p.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [ideal_eq_span_pow_p](declarations/ideal-eq-span-pow-p.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `instance` | [algebra](declarations/algebra.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [algebraMap_apply](declarations/algebramap-apply.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `instance` | [isFractionRing](declarations/isfractionring.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=71ae889946e97a08accc301eafce9eea8aff771e6c80d63c8667f9d2aa8d16d4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicIntegers/Variantb79b6524db25b3eb6baa489976975e4de5e8c8215a88006ca31ac55f7dc91f59.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
