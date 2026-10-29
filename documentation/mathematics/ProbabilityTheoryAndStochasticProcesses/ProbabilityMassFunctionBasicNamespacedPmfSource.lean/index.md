# Probability Mass Function Basic Namespaced Pmf Source

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**53 observed declarations and anonymous commands**, 46 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `77fdf61b2768d6f60544b113b558f182754633f3`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBasicNamespacedPmfSource.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [Pmf.](declarations/pmf.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [funLike](declarations/funlike.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [ext](declarations/ext.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [ext_iff](declarations/ext-iff.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [hasSum_coe_one](declarations/hassum-coe-one.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [tsum_coe](declarations/tsum-coe.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [tsum_coe_ne_top](declarations/tsum-coe-ne-top.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [tsum_coe_indicator_ne_top](declarations/tsum-coe-indicator-ne-top.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [coe_ne_zero](declarations/coe-ne-zero.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [support](declarations/support.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mem_support_iff](declarations/mem-support-iff.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [support_nonempty](declarations/support-nonempty.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [apply_eq_zero_iff](declarations/apply-eq-zero-iff.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [apply_pos_iff](declarations/apply-pos-iff.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [apply_eq_one_iff](declarations/apply-eq-one-iff.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [coe_le_one](declarations/coe-le-one.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [apply_ne_top](declarations/apply-ne-top.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [apply_lt_top](declarations/apply-lt-top.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [toOuterMeasure](declarations/tooutermeasure.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [toOuterMeasure_apply](declarations/tooutermeasure-apply.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [toOuterMeasure_caratheodory](declarations/tooutermeasure-caratheodory.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [toOuterMeasure_apply_finset](declarations/tooutermeasure-apply-finset.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [toOuterMeasure_apply_singleton](declarations/tooutermeasure-apply-singleton.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [toOuterMeasure_injective](declarations/tooutermeasure-injective.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [toOuterMeasure_inj](declarations/tooutermeasure-inj.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [toOuterMeasure_apply_eq_zero_iff](declarations/tooutermeasure-apply-eq-zero-iff.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [toOuterMeasure_apply_eq_one_iff](declarations/tooutermeasure-apply-eq-one-iff.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [toOuterMeasure_apply_inter_support](declarations/tooutermeasure-apply-inter-support.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [toOuterMeasure_mono](declarations/tooutermeasure-mono.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [toOuterMeasure_apply_eq_of_inter_support_eq](declarations/tooutermeasure-apply-eq-of-inter-support-eq.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [toOuterMeasure_apply_fintype](declarations/tooutermeasure-apply-fintype.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [toMeasure](declarations/tomeasure.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [toOuterMeasure_apply_le_toMeasure_apply](declarations/tooutermeasure-apply-le-tomeasure-apply.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [toMeasure_apply_eq_toOuterMeasure_apply](declarations/tomeasure-apply-eq-tooutermeasure-apply.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [toMeasure_apply](declarations/tomeasure-apply.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [toMeasure_apply_singleton](declarations/tomeasure-apply-singleton.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [toMeasure_apply_eq_zero_iff](declarations/tomeasure-apply-eq-zero-iff.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [toMeasure_apply_eq_one_iff](declarations/tomeasure-apply-eq-one-iff.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [toMeasure_apply_inter_support](declarations/tomeasure-apply-inter-support.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [toMeasure_mono](declarations/tomeasure-mono.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [toMeasure_apply_eq_of_inter_support_eq](declarations/tomeasure-apply-eq-of-inter-support-eq.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [toMeasure_injective](declarations/tomeasure-injective.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [toMeasure_inj](declarations/tomeasure-inj.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [toMeasure_apply_finset](declarations/tomeasure-apply-finset.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [toMeasure_apply_of_finite](declarations/tomeasure-apply-of-finite.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [toMeasure_apply_fintype](declarations/tomeasure-apply-fintype.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [toPmf](declarations/topmf.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [toPmf_apply](declarations/topmf-apply.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [toPmf_toMeasure](declarations/topmf-tomeasure.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `instance` | [toMeasure.isProbabilityMeasure](declarations/tomeasure-isprobabilitymeasure.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [toMeasure_toPmf](declarations/tomeasure-topmf.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [toMeasure_eq_iff_eq_toPmf](declarations/tomeasure-eq-iff-eq-topmf.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [toPmf_eq_iff_toMeasure_eq](declarations/topmf-eq-iff-tomeasure-eq.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=13e07b9b1d1b028e4e6ea497a376251c8c88a67c674138a7ce7256dbdf312a14 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant309aff74b5556cf5cf398a850112170451f87277d5de35edf9579e1afc322adc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
