# Number Theory Ramification Inertia Basic

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**60 observed declarations and anonymous commands**, 45 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/Basic/Variant7c1e4c5d5b2de1ab2647eb0bf0224713ca282138edba7870eae393cdfb2b275b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `214987fc573f06b8a8eb986446b46aedfd1d3ec9`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/NumberTheory/NumberTheoryRamificationInertiaBasic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [ramificationIdx](declarations/ramificationidx.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [ramificationIdx_eq_find](declarations/ramificationidx-eq-find.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [ramificationIdx_eq_zero](declarations/ramificationidx-eq-zero.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [ramificationIdx_spec](declarations/ramificationidx-spec.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [ramificationIdx_lt](declarations/ramificationidx-lt.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [ramificationIdx_bot](declarations/ramificationidx-bot.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [ramificationIdx_of_not_le](declarations/ramificationidx-of-not-le.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [ramificationIdx_ne_zero](declarations/ramificationidx-ne-zero-source-edition-2.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [le_pow_of_le_ramificationIdx](declarations/le-pow-of-le-ramificationidx.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [le_pow_ramificationIdx](declarations/le-pow-ramificationidx.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [le_comap_pow_ramificationIdx](declarations/le-comap-pow-ramificationidx.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [le_comap_of_ramificationIdx_ne_zero](declarations/le-comap-of-ramificationidx-ne-zero.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [ramificationIdx_comap_eq](declarations/ramificationidx-comap-eq.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [ramificationIdx_map_eq](declarations/ramificationidx-map-eq.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [ramificationIdx_eq_normalizedFactors_count](declarations/ramificationidx-eq-normalizedfactors-count.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [ramificationIdx_eq_factors_count](declarations/ramificationidx-eq-factors-count.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [ramificationIdx_ne_zero](declarations/ramificationidx-ne-zero.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [inertiaDeg](declarations/inertiadeg.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [inertiaDeg_of_subsingleton](declarations/inertiadeg-of-subsingleton.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [inertiaDeg_algebraMap](declarations/inertiadeg-algebramap.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [inertiaDeg_pos](declarations/inertiadeg-pos.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [inertiaDeg_comap_eq](declarations/inertiadeg-comap-eq.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [inertiaDeg_map_eq](declarations/inertiadeg-map-eq.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [absNorm_eq_pow_inertiaDeg](declarations/absnorm-eq-pow-inertiadeg.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [FinrankQuotientMap.span_eq_top](declarations/finrankquotientmap-span-eq-top.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [FinrankQuotientMap.linearIndependent_of_nontrivial](declarations/finrankquotientmap-linearindependent-of-nontrivial.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [finrank_quotient_map](declarations/finrank-quotient-map.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [Quotient.algebraQuotientPowRamificationIdx](declarations/quotient-algebraquotientpowramificationidx.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Quotient.algebraMap_quotient_pow_ramificationIdx](declarations/quotient-algebramap-quotient-pow-ramificationidx.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [Quotient.algebraQuotientOfRamificationIdxNeZero](declarations/quotient-algebraquotientoframificationidxnezero.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Quotient.algebraMap_quotient_of_ramificationIdx_neZero](declarations/quotient-algebramap-quotient-of-ramificationidx-nezero.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [powQuotSuccInclusion](declarations/powquotsuccinclusion.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [powQuotSuccInclusion_injective](declarations/powquotsuccinclusion-injective.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [quotientToQuotientRangePowQuotSuccAux](declarations/quotienttoquotientrangepowquotsuccaux.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [quotientToQuotientRangePowQuotSuccAux_mk](declarations/quotienttoquotientrangepowquotsuccaux-mk.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [quotientToQuotientRangePowQuotSucc](declarations/quotienttoquotientrangepowquotsucc.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [quotientToQuotientRangePowQuotSucc_mk](declarations/quotienttoquotientrangepowquotsucc-mk.md) | 559 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [quotientToQuotientRangePowQuotSucc_injective](declarations/quotienttoquotientrangepowquotsucc-injective.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [quotientToQuotientRangePowQuotSucc_surjective](declarations/quotienttoquotientrangepowquotsucc-surjective.md) | 583 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [quotientRangePowQuotSuccInclusionEquiv](declarations/quotientrangepowquotsuccinclusionequiv.md) | 614 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [rank_pow_quot_aux](declarations/rank-pow-quot-aux.md) | 628 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [rank_pow_quot](declarations/rank-pow-quot.md) | 637 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [rank_prime_pow_ramificationIdx](declarations/rank-prime-pow-ramificationidx.md) | 657 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [finrank_prime_pow_ramificationIdx](declarations/finrank-prime-pow-ramificationidx.md) | 671 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [Factors.ne_bot](declarations/factors-ne-bot.md) | 700 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [Factors.isPrime](declarations/factors-isprime.md) | 704 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [Factors.ramificationIdx_ne_zero](declarations/factors-ramificationidx-ne-zero.md) | 709 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [Factors.fact_ramificationIdx_neZero](declarations/factors-fact-ramificationidx-nezero.md) | 715 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [Factors.isScalarTower](declarations/factors-isscalartower.md) | 722 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `instance` | [Factors.liesOver](declarations/factors-liesover.md) | 727 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [Factors.finrank_pow_ramificationIdx](declarations/factors-finrank-pow-ramificationidx.md) | 732 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `instance` | [Factors.finiteDimensional_quotient_pow](declarations/factors-finitedimensional-quotient-pow.md) | 740 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [Factors.piQuotientEquiv](declarations/factors-piquotientequiv.md) | 752 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [Factors.piQuotientEquiv_mk](declarations/factors-piquotientequiv-mk.md) | 766 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [Factors.piQuotientEquiv_map](declarations/factors-piquotientequiv-map.md) | 770 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [Factors.piQuotientLinearEquiv](declarations/factors-piquotientlinearequiv.md) | 780 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [sum_ramification_inertia](declarations/sum-ramification-inertia.md) | 797 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [ramificationIdx_tower](declarations/ramificationidx-tower.md) | 829 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [ramificationIdx_algebra_tower](declarations/ramificationidx-algebra-tower.md) | 856 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [inertiaDeg_algebra_tower](declarations/inertiadeg-algebra-tower.md) | 868 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c48f9ffd52b9b2d4a240e6c170f57a772caf20091ce3e800b6ca981e1c62f74f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/Basic/Variant7c1e4c5d5b2de1ab2647eb0bf0224713ca282138edba7870eae393cdfb2b275b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
