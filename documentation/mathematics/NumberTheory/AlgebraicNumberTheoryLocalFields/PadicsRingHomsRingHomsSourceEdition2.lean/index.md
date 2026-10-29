# Padics Ring Homs Ring Homs Source Edition2

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**56 observed declarations and anonymous commands**, 45 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9c9036dfc78fc47e8a3e9d51ab6c20d47e6b9d51`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/NumberTheory/AlgebraicNumberTheoryLocalFields/PadicsRingHomsRingHomsSourceEdition2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [modPart](declarations/modpart.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [modPart_lt_p](declarations/modpart-lt-p.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [modPart_nonneg](declarations/modpart-nonneg.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [isUnit_den](declarations/isunit-den.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [norm_sub_modPart_aux](declarations/norm-sub-modpart-aux.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [norm_sub_modPart](declarations/norm-sub-modpart.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [exists_mem_range_of_norm_rat_le_one](declarations/exists-mem-range-of-norm-rat-le-one.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [zmod_congr_of_sub_mem_span_aux](declarations/zmod-congr-of-sub-mem-span-aux.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [zmod_congr_of_sub_mem_span](declarations/zmod-congr-of-sub-mem-span.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [zmod_congr_of_sub_mem_max_ideal](declarations/zmod-congr-of-sub-mem-max-ideal.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [exists_mem_range](declarations/exists-mem-range.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [existsUnique_mem_range](declarations/existsunique-mem-range.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [zmodRepr](declarations/zmodrepr.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [zmodRepr_spec](declarations/zmodrepr-spec.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [zmodRepr_unique](declarations/zmodrepr-unique.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [zmodRepr_lt_p](declarations/zmodrepr-lt-p.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [sub_zmodRepr_mem](declarations/sub-zmodrepr-mem.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [toZModHom](declarations/tozmodhom.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [toZMod](declarations/tozmod.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [toZMod_spec](declarations/tozmod-spec.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [ker_toZMod](declarations/ker-tozmod.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [residueField](declarations/residuefield.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [appr](declarations/appr.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [appr_lt](declarations/appr-lt.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [appr_mono](declarations/appr-mono.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [dvd_appr_sub_appr](declarations/dvd-appr-sub-appr.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [appr_spec](declarations/appr-spec.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [toZModPow](declarations/tozmodpow.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [ker_toZModPow](declarations/ker-tozmodpow.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [zmod_cast_comp_toZModPow](declarations/zmod-cast-comp-tozmodpow.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [cast_toZModPow](declarations/cast-tozmodpow.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [denseRange_natCast](declarations/denserange-natcast.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [denseRange_intCast](declarations/denserange-intcast.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [nthHom](declarations/nthhom.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [nthHom_zero](declarations/nthhom-zero.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [pow_dvd_nthHom_sub](declarations/pow-dvd-nthhom-sub.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [isCauSeq_nthHom](declarations/iscauseq-nthhom.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [nthHomSeq](declarations/nthhomseq.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [nthHomSeq_one](declarations/nthhomseq-one.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [nthHomSeq_add](declarations/nthhomseq-add.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [nthHomSeq_mul](declarations/nthhomseq-mul.md) | 540 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [limNthHom](declarations/limnthhom.md) | 558 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [limNthHom_spec](declarations/limnthhom-spec.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [limNthHom_zero](declarations/limnthhom-zero.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [limNthHom_one](declarations/limnthhom-one.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [limNthHom_add](declarations/limnthhom-add.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [limNthHom_mul](declarations/limnthhom-mul.md) | 583 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [lift](declarations/lift.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [lift_sub_val_mem_span](declarations/lift-sub-val-mem-span.md) | 598 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [lift_spec](declarations/lift-spec.md) | 617 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [lift_unique](declarations/lift-unique.md) | 626 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [lift_self](declarations/lift-self.md) | 639 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [ext_of_toZModPow](declarations/ext-of-tozmodpow.md) | 646 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [toZModPow_eq_iff_ext](declarations/tozmodpow-eq-iff-ext.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [isCauSeq_padicNorm_of_pow_dvd_sub](declarations/iscauseq-padicnorm-of-pow-dvd-sub.md) | 666 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [toZModPow_ofIntSeq_of_pow_dvd_sub](declarations/tozmodpow-ofintseq-of-pow-dvd-sub.md) | 681 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3c1b872de2934c01a7898877615f062cd2d000129ac14a9f4d94a984908376b0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
