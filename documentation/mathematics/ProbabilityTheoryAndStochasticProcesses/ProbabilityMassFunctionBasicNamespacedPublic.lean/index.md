# Probability Mass Function Basic Namespaced Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**55 observed declarations and anonymous commands**, 48 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant3aebb43695c4cee6121d388d960147ed4ef96669b6ad108e9c5ddff6bb525738.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dd528ca9ea934288f258a6cf7ed254abbf480ed3`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBasicNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [PMF.](declarations/pmf.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [instFunLike](declarations/instfunlike.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [ext](declarations/ext.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [hasSum_coe_one](declarations/hassum-coe-one.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [tsum_coe](declarations/tsum-coe.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [tsum_coe_ne_top](declarations/tsum-coe-ne-top.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [tsum_coe_indicator_ne_top](declarations/tsum-coe-indicator-ne-top.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [coe_ne_zero](declarations/coe-ne-zero.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [support](declarations/support.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [mem_support_iff](declarations/mem-support-iff.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [support_nonempty](declarations/support-nonempty.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [support_countable](declarations/support-countable.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [apply_eq_zero_iff](declarations/apply-eq-zero-iff.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [apply_pos_iff](declarations/apply-pos-iff.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [apply_eq_one_iff](declarations/apply-eq-one-iff.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [coe_le_one](declarations/coe-le-one.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [apply_ne_top](declarations/apply-ne-top.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [apply_lt_top](declarations/apply-lt-top.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [toOuterMeasure](declarations/tooutermeasure.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [toOuterMeasure_apply](declarations/tooutermeasure-apply.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [toOuterMeasure_caratheodory](declarations/tooutermeasure-caratheodory.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [toOuterMeasure_apply_finset](declarations/tooutermeasure-apply-finset.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [toOuterMeasure_apply_singleton](declarations/tooutermeasure-apply-singleton.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [toOuterMeasure_injective](declarations/tooutermeasure-injective.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [toOuterMeasure_inj](declarations/tooutermeasure-inj.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [toOuterMeasure_apply_eq_zero_iff](declarations/tooutermeasure-apply-eq-zero-iff.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [toOuterMeasure_apply_eq_one_iff](declarations/tooutermeasure-apply-eq-one-iff.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [toOuterMeasure_apply_inter_support](declarations/tooutermeasure-apply-inter-support.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [toOuterMeasure_mono](declarations/tooutermeasure-mono.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [toOuterMeasure_apply_eq_of_inter_support_eq](declarations/tooutermeasure-apply-eq-of-inter-support-eq.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [toOuterMeasure_apply_fintype](declarations/tooutermeasure-apply-fintype.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [toMeasure](declarations/tomeasure.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [toOuterMeasure_apply_le_toMeasure_apply](declarations/tooutermeasure-apply-le-tomeasure-apply.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [toMeasure_apply_eq_toOuterMeasure_apply](declarations/tomeasure-apply-eq-tooutermeasure-apply.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [toMeasure_apply](declarations/tomeasure-apply.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [toMeasure_apply_singleton](declarations/tomeasure-apply-singleton.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [toMeasure_apply_eq_zero_iff](declarations/tomeasure-apply-eq-zero-iff.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [toMeasure_apply_eq_one_iff](declarations/tomeasure-apply-eq-one-iff.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [toMeasure_mono](declarations/tomeasure-mono.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [toMeasure_apply_inter_support](declarations/tomeasure-apply-inter-support.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [restrict_toMeasure_support](declarations/restrict-tomeasure-support.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [toMeasure_apply_eq_of_inter_support_eq](declarations/tomeasure-apply-eq-of-inter-support-eq.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [toMeasure_injective](declarations/tomeasure-injective.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [toMeasure_inj](declarations/tomeasure-inj.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [toMeasure_apply_eq_toOuterMeasure](declarations/tomeasure-apply-eq-tooutermeasure.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [toMeasure_apply_finset](declarations/tomeasure-apply-finset.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [toMeasure_apply_eq_tsum](declarations/tomeasure-apply-eq-tsum.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [toMeasure_apply_fintype](declarations/tomeasure-apply-fintype.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [toPMF](declarations/topmf.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [toPMF_apply](declarations/topmf-apply.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [toPMF_toMeasure](declarations/topmf-tomeasure.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `instance` | [toMeasure.isProbabilityMeasure](declarations/tomeasure-isprobabilitymeasure.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [toMeasure_toPMF](declarations/tomeasure-topmf.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [toMeasure_eq_iff_eq_toPMF](declarations/tomeasure-eq-iff-eq-topmf.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [toPMF_eq_iff_toMeasure_eq](declarations/topmf-eq-iff-tomeasure-eq.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bd909e8a43853150b0e9c1bacf05d7996e954840f6e61248a0f261bf9fcffb57 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant3aebb43695c4cee6121d388d960147ed4ef96669b6ad108e9c5ddff6bb525738.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
