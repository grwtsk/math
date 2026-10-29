# Reflective Sum

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**91 observed declarations and anonymous commands**, 47 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/ReflectiveSum/Variant6bca3b3f98984211bf5e58ac75d9c7e1f7a57fde1171cf481a1924e0cf359d2e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `32a93c4758653263ab33bb578af15e9a25a3426f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/Combinatorics/ReflectiveSum.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [BKLNWSumConfig](declarations/bklnwsumconfig.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [BKLNWSumConfig.default](declarations/bklnwsumconfig-default.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [BKLNWSumConfig.fast](declarations/bklnwsumconfig-fast.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [BKLNWSumConfig.highPrecision](declarations/bklnwsumconfig-highprecision.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [BKLNWSumConfig.toDyadicConfig](declarations/bklnwsumconfig-todyadicconfig.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [bklnwTermDyadic](declarations/bklnwtermdyadic.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [zeroDyadic](declarations/zerodyadic.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [bklnwSumAux](declarations/bklnwsumaux.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [bklnwSumDyadic](declarations/bklnwsumdyadic.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [oneDyadic](declarations/onedyadic.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [bklnwTermFromLog](declarations/bklnwtermfromlog.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [bklnwSumAuxOpt](declarations/bklnwsumauxopt.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [bklnwSumDyadicOpt](declarations/bklnwsumdyadicopt.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [bklnwSumAuxCached](declarations/bklnwsumauxcached.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [bklnwSumDyadicCached](declarations/bklnwsumdyadiccached.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [checkBKLNWSumUpperBound](declarations/checkbklnwsumupperbound.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [checkBKLNWSumLowerBound](declarations/checkbklnwsumlowerbound.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [checkBKLNWSumBounds](declarations/checkbklnwsumbounds.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [bklnwSumExpDyadic](declarations/bklnwsumexpdyadic.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [bklnwSumExpDyadicOpt](declarations/bklnwsumexpdyadicopt.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [checkBKLNWExpUpperBound](declarations/checkbklnwexpupperbound.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [checkBKLNWExpLowerBound](declarations/checkbklnwexplowerbound.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [checkBKLNWExpUpperBoundOpt](declarations/checkbklnwexpupperboundopt.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [checkBKLNWExpLowerBoundOpt](declarations/checkbklnwexplowerboundopt.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [mem_zeroDyadic](declarations/mem-zerodyadic.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [IntervalDyadic.le_hi_of_mem](declarations/intervaldyadic-le-hi-of-mem.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [IntervalDyadic.lo_le_of_mem](declarations/intervaldyadic-lo-le-of-mem.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [IntervalDyadic.upperBoundedBy_spec](declarations/intervaldyadic-upperboundedby-spec.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [IntervalDyadic.lowerBoundedBy_spec](declarations/intervaldyadic-lowerboundedby-spec.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [IntervalDyadic.mem_ofIntervalRat_of_Icc](declarations/intervaldyadic-mem-ofintervalrat-of-icc.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Finset.sum_Icc_eq_add_sum_Ioc](declarations/finset-sum-icc-eq-add-sum-ioc.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [Finset.Ioc_eq_Icc_succ](declarations/finset-ioc-eq-icc-succ.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [bklnwF](declarations/bklnwf.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [bklnwExpTerm](declarations/bklnwexpterm.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [bklnwExpTerm_antitone](declarations/bklnwexpterm-antitone.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [bklnwF_exp_tail_sum_le_card_mul_head](declarations/bklnwf-exp-tail-sum-le-card-mul-head.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [bklnwF_exp_split](declarations/bklnwf-exp-split.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [bklnwF_exp_tail_upper](declarations/bklnwf-exp-tail-upper.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [bklnwF_exp_head_lower](declarations/bklnwf-exp-head-lower.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [mem_bklnwTermDyadic](declarations/mem-bklnwtermdyadic.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [mem_bklnwSumAux](declarations/mem-bklnwsumaux.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [mem_bklnwSumDyadic](declarations/mem-bklnwsumdyadic.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [IntervalDyadic.ofIntervalRat_lo_pos](declarations/intervaldyadic-ofintervalrat-lo-pos.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [checkBKLNWSumUpperBound_correct](declarations/checkbklnwsumupperbound-correct.md) | 572 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [checkBKLNWSumLowerBound_correct](declarations/checkbklnwsumlowerbound-correct.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [IntervalRat.mem_singleton_nat](declarations/intervalrat-mem-singleton-nat.md) | 621 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [mem_expIntervalDyadic](declarations/mem-expintervaldyadic.md) | 626 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [mem_bInterval_nat](declarations/mem-binterval-nat.md) | 636 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [mem_expB_of_nat](declarations/mem-expb-of-nat.md) | 642 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [checkExpComputableLoPos](declarations/checkexpcomputablelopos.md) | 653 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [checkExpComputableLoPos_spec](declarations/checkexpcomputablelopos-spec.md) | 657 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [checkExpBLoGe1](declarations/checkexpbloge1.md) | 665 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [checkExpBLoGe1_spec](declarations/checkexpbloge1-spec.md) | 671 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [expB_lo_pos](declarations/expb-lo-pos.md) | 686 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [verify_bklnwF_exp_upper](declarations/verify-bklnwf-exp-upper.md) | 718 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [verify_bklnwF_exp_lower](declarations/verify-bklnwf-exp-lower.md) | 742 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [mem_oneDyadic](declarations/mem-onedyadic.md) | 771 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [bklnwTermFromLog_eq_bklnwTermDyadic](declarations/bklnwtermfromlog-eq-bklnwtermdyadic.md) | 778 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [bklnwSumAuxCached_eq_bklnwSumAux](declarations/bklnwsumauxcached-eq-bklnwsumaux.md) | 786 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [bklnwSumDyadicCached_eq](declarations/bklnwsumdyadiccached-eq.md) | 803 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [bklnwSumExpDyadicCached](declarations/bklnwsumexpdyadiccached.md) | 809 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [bklnwSumExpDyadicCached_eq](declarations/bklnwsumexpdyadiccached-eq.md) | 815 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [bklnwAlpha](declarations/bklnwalpha.md) | 826 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [bklnwAlphaSumExpDyadic](declarations/bklnwalphasumexpdyadic.md) | 829 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [checkBKLNWAlphaExpUpperBound](declarations/checkbklnwalphaexpupperbound.md) | 836 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [checkBKLNWAlphaExpLowerBound](declarations/checkbklnwalphaexplowerbound.md) | 841 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [bklnwAlphaSumExpDyadicCached](declarations/bklnwalphasumexpdyadiccached.md) | 846 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [checkBKLNWAlphaExpUpperBoundCached](declarations/checkbklnwalphaexpupperboundcached.md) | 854 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [checkBKLNWAlphaExpLowerBoundCached](declarations/checkbklnwalphaexplowerboundcached.md) | 859 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [checkBKLNWAlphaExpBoundsCached](declarations/checkbklnwalphaexpboundscached.md) | 864 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [bklnwAlphaSumExpDyadicCached_eq](declarations/bklnwalphasumexpdyadiccached-eq.md) | 870 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [checkBKLNWAlphaExpUpperBoundCached_eq](declarations/checkbklnwalphaexpupperboundcached-eq.md) | 876 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [checkBKLNWAlphaExpLowerBoundCached_eq](declarations/checkbklnwalphaexplowerboundcached-eq.md) | 884 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [checkBKLNWAlphaExpBounds](declarations/checkbklnwalphaexpbounds.md) | 892 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [checkBKLNWAlphaExpBounds_spec_lower](declarations/checkbklnwalphaexpbounds-spec-lower.md) | 898 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [checkBKLNWAlphaExpBounds_spec_upper](declarations/checkbklnwalphaexpbounds-spec-upper.md) | 906 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [checkBKLNWAlphaExpBoundsCached_eq](declarations/checkbklnwalphaexpboundscached-eq.md) | 914 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [expTermIntervalDyadic](declarations/exptermintervaldyadic.md) | 928 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [mem_expTermIntervalDyadic](declarations/mem-exptermintervaldyadic.md) | 934 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [checkBKLNWAlphaExpUpperBoundHeadTail](declarations/checkbklnwalphaexpupperboundheadtail.md) | 959 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [checkBKLNWAlphaExpLowerBoundHeadTail](declarations/checkbklnwalphaexplowerboundheadtail.md) | 968 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [checkBKLNWAlphaExpBoundsHeadTail](declarations/checkbklnwalphaexpboundsheadtail.md) | 975 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [checkBKLNWAlphaExpBoundsHeadTail_spec_lower](declarations/checkbklnwalphaexpboundsheadtail-spec-lower.md) | 981 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [checkBKLNWAlphaExpBoundsHeadTail_spec_upper](declarations/checkbklnwalphaexpboundsheadtail-spec-upper.md) | 989 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [verify_bklnwAlpha_exp_upper_headTail](declarations/verify-bklnwalpha-exp-upper-headtail.md) | 997 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [verify_bklnwAlpha_exp_lower_headTail](declarations/verify-bklnwalpha-exp-lower-headtail.md) | 1069 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [verify_bklnwAlpha_exp_upper](declarations/verify-bklnwalpha-exp-upper.md) | 1113 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [verify_bklnwAlpha_exp_lower](declarations/verify-bklnwalpha-exp-lower.md) | 1143 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `def` | [bklnwAlphaSumPowDyadic](declarations/bklnwalphasumpowdyadic.md) | 1177 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [checkBKLNWAlphaPowUpperBound](declarations/checkbklnwalphapowupperbound.md) | 1185 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [verify_bklnwAlpha_pow_upper](declarations/verify-bklnwalpha-pow-upper.md) | 1191 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=42b9df8681352aa9be286e5785e570516a18735c940fcf5c8dd821df85cbdc13 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/ReflectiveSum/Variant6bca3b3f98984211bf5e58ac75d9c7e1f7a57fde1171cf481a1924e0cf359d2e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
