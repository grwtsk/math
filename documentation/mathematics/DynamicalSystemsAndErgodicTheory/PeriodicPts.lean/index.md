# Periodic Pts

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**93 observed declarations and anonymous commands**, 87 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PeriodicPts/Variante8b537d4ea9515f0af073096feb6948d3fb07f46acc9f126bfc535e7ca66e127.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6c765b5f701ae5a51aaa3893473b7aff51e0d3fa`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsPeriodicPt](declarations/isperiodicpt.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [IsFixedPt.isPeriodicPt](declarations/isfixedpt-isperiodicpt.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [is_periodic_id](declarations/is-periodic-id.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [isPeriodicPt_zero](declarations/isperiodicpt-zero.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [isFixedPt](declarations/isfixedpt.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [map](declarations/map.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [apply_iterate](declarations/apply-iterate.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [apply](declarations/apply.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [add](declarations/add.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [left_of_add](declarations/left-of-add.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [right_of_add](declarations/right-of-add.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [sub](declarations/sub.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [mul_const](declarations/mul-const.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [const_mul](declarations/const-mul.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [trans_dvd](declarations/trans-dvd.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [iterate](declarations/iterate.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [comp](declarations/comp.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [comp_lcm](declarations/comp-lcm.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [left_of_comp](declarations/left-of-comp.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [iterate_mod_apply](declarations/iterate-mod-apply.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [mod](declarations/mod.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [gcd](declarations/gcd.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [eq_of_apply_eq_same](declarations/eq-of-apply-eq-same.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [eq_of_apply_eq](declarations/eq-of-apply-eq.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [ptsOfPeriod](declarations/ptsofperiod.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [mem_ptsOfPeriod](declarations/mem-ptsofperiod.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [Semiconj.mapsTo_ptsOfPeriod](declarations/semiconj-mapsto-ptsofperiod.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [bijOn_ptsOfPeriod](declarations/bijon-ptsofperiod.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [directed_ptsOfPeriod_pNat](declarations/directed-ptsofperiod-pnat.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [periodicPts](declarations/periodicpts.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [mk_mem_periodicPts](declarations/mk-mem-periodicpts.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [mem_periodicPts](declarations/mem-periodicpts.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [isPeriodicPt_of_mem_periodicPts_of_isPeriodicPt_iterate](declarations/isperiodicpt-of-mem-periodicpts-of-isperiodicpt-iterate.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [bUnion_ptsOfPeriod](declarations/bunion-ptsofperiod.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [iUnion_pNat_ptsOfPeriod](declarations/iunion-pnat-ptsofperiod.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [bijOn_periodicPts](declarations/bijon-periodicpts.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [Semiconj.mapsTo_periodicPts](declarations/semiconj-mapsto-periodicpts.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [minimalPeriod](declarations/minimalperiod.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [isPeriodicPt_minimalPeriod](declarations/isperiodicpt-minimalperiod.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [iterate_minimalPeriod](declarations/iterate-minimalperiod.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [iterate_add_minimalPeriod_eq](declarations/iterate-add-minimalperiod-eq.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [iterate_mod_minimalPeriod_eq](declarations/iterate-mod-minimalperiod-eq.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [minimalPeriod_pos_of_mem_periodicPts](declarations/minimalperiod-pos-of-mem-periodicpts.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [minimalPeriod_eq_zero_of_nmem_periodicPts](declarations/minimalperiod-eq-zero-of-nmem-periodicpts.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [IsPeriodicPt.minimalPeriod_pos](declarations/isperiodicpt-minimalperiod-pos.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [minimalPeriod_pos_iff_mem_periodicPts](declarations/minimalperiod-pos-iff-mem-periodicpts.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [minimalPeriod_eq_zero_iff_nmem_periodicPts](declarations/minimalperiod-eq-zero-iff-nmem-periodicpts.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [IsPeriodicPt.minimalPeriod_le](declarations/isperiodicpt-minimalperiod-le.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [minimalPeriod_apply_iterate](declarations/minimalperiod-apply-iterate.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [minimalPeriod_apply](declarations/minimalperiod-apply.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [le_of_lt_minimalPeriod_of_iterate_eq](declarations/le-of-lt-minimalperiod-of-iterate-eq.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [eq_of_lt_minimalPeriod_of_iterate_eq](declarations/eq-of-lt-minimalperiod-of-iterate-eq.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [eq_iff_lt_minimalPeriod_of_iterate_eq](declarations/eq-iff-lt-minimalperiod-of-iterate-eq.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [minimalPeriod_id](declarations/minimalperiod-id.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [minimalPeriod_eq_one_iff_isFixedPt](declarations/minimalperiod-eq-one-iff-isfixedpt.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [IsPeriodicPt.eq_zero_of_lt_minimalPeriod](declarations/isperiodicpt-eq-zero-of-lt-minimalperiod.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [not_isPeriodicPt_of_pos_of_lt_minimalPeriod](declarations/not-isperiodicpt-of-pos-of-lt-minimalperiod.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [IsPeriodicPt.minimalPeriod_dvd](declarations/isperiodicpt-minimalperiod-dvd.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [isPeriodicPt_iff_minimalPeriod_dvd](declarations/isperiodicpt-iff-minimalperiod-dvd.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [minimalPeriod_eq_minimalPeriod_iff](declarations/minimalperiod-eq-minimalperiod-iff.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [minimalPeriod_eq_prime](declarations/minimalperiod-eq-prime.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [minimalPeriod_eq_prime_pow](declarations/minimalperiod-eq-prime-pow.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [Commute.minimalPeriod_of_comp_dvd_lcm](declarations/commute-minimalperiod-of-comp-dvd-lcm.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [Commute.minimalPeriod_of_comp_dvd_mul](declarations/commute-minimalperiod-of-comp-dvd-mul.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [Commute.minimalPeriod_of_comp_eq_mul_of_coprime](declarations/commute-minimalperiod-of-comp-eq-mul-of-coprime.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [minimalPeriod_iterate_eq_div_gcd_aux](declarations/minimalperiod-iterate-eq-div-gcd-aux.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [minimalPeriod_iterate_eq_div_gcd](declarations/minimalperiod-iterate-eq-div-gcd-source-edition-2.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [minimalPeriod_iterate_eq_div_gcd'](declarations/minimalperiod-iterate-eq-div-gcd.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [periodicOrbit](declarations/periodicorbit.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [periodicOrbit_def](declarations/periodicorbit-def.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [periodicOrbit_eq_cycle_map](declarations/periodicorbit-eq-cycle-map.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [periodicOrbit_length](declarations/periodicorbit-length.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [periodicOrbit_eq_nil_iff_not_periodic_pt](declarations/periodicorbit-eq-nil-iff-not-periodic-pt.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [periodicOrbit_eq_nil_of_not_periodic_pt](declarations/periodicorbit-eq-nil-of-not-periodic-pt.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [mem_periodicOrbit_iff](declarations/mem-periodicorbit-iff.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [iterate_mem_periodicOrbit](declarations/iterate-mem-periodicorbit.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [self_mem_periodicOrbit](declarations/self-mem-periodicorbit.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [nodup_periodicOrbit](declarations/nodup-periodicorbit.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [periodicOrbit_apply_iterate_eq](declarations/periodicorbit-apply-iterate-eq.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [periodicOrbit_apply_eq](declarations/periodicorbit-apply-eq.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [periodicOrbit_chain](declarations/periodicorbit-chain.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [periodicOrbit_chain'](declarations/periodicorbit-chain-source-edition-2.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [iterate_prod_map](declarations/iterate-prod-map.md) | 597 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [isFixedPt_prod_map](declarations/isfixedpt-prod-map.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [isPeriodicPt_prod_map](declarations/isperiodicpt-prod-map.md) | 608 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [minimalPeriod_prod_map](declarations/minimalperiod-prod-map.md) | 613 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [minimalPeriod_fst_dvd](declarations/minimalperiod-fst-dvd.md) | 618 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [minimalPeriod_snd_dvd](declarations/minimalperiod-snd-dvd.md) | 622 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [pow_smul_eq_iff_minimalPeriod_dvd](declarations/pow-smul-eq-iff-minimalperiod-dvd.md) | 635 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [zpow_smul_eq_iff_minimalPeriod_dvd](declarations/zpow-smul-eq-iff-minimalperiod-dvd.md) | 642 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [pow_smul_mod_minimalPeriod](declarations/pow-smul-mod-minimalperiod.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [zpow_smul_mod_minimalPeriod](declarations/zpow-smul-mod-minimalperiod.md) | 663 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5d32a6358340b259ae90788be7fb75ad3f1f8f9a3cd7ce3fc6036d73ea77517a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PeriodicPts/Variante8b537d4ea9515f0af073096feb6948d3fb07f46acc9f126bfc535e7ca66e127.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
