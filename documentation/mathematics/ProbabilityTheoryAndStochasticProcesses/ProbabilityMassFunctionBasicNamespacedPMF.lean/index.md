# Probability Mass Function Basic Namespaced PMF

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**54 observed declarations and anonymous commands**, 47 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant092d1eccdd06f2368fb59c19fde71381e47968cf28234c1ac0ccf9fc646eb62b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `79bf04340ba34806e6cbd98bfad02ac003283060`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBasicNamespacedPMF.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [PMF.](declarations/pmf.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [instFunLike](declarations/instfunlike.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [ext](declarations/ext.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [hasSum_coe_one](declarations/hassum-coe-one.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [tsum_coe](declarations/tsum-coe.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [tsum_coe_ne_top](declarations/tsum-coe-ne-top.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [tsum_coe_indicator_ne_top](declarations/tsum-coe-indicator-ne-top.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [coe_ne_zero](declarations/coe-ne-zero.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [support](declarations/support.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [mem_support_iff](declarations/mem-support-iff.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [support_nonempty](declarations/support-nonempty.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [support_countable](declarations/support-countable.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [apply_eq_zero_iff](declarations/apply-eq-zero-iff.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [apply_pos_iff](declarations/apply-pos-iff.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [apply_eq_one_iff](declarations/apply-eq-one-iff.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [coe_le_one](declarations/coe-le-one.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [apply_ne_top](declarations/apply-ne-top.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [apply_lt_top](declarations/apply-lt-top.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [toOuterMeasure](declarations/tooutermeasure.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [toOuterMeasure_apply](declarations/tooutermeasure-apply.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [toOuterMeasure_caratheodory](declarations/tooutermeasure-caratheodory.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [toOuterMeasure_apply_finset](declarations/tooutermeasure-apply-finset.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [toOuterMeasure_apply_singleton](declarations/tooutermeasure-apply-singleton.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [toOuterMeasure_injective](declarations/tooutermeasure-injective.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [toOuterMeasure_inj](declarations/tooutermeasure-inj.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [toOuterMeasure_apply_eq_zero_iff](declarations/tooutermeasure-apply-eq-zero-iff.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [toOuterMeasure_apply_eq_one_iff](declarations/tooutermeasure-apply-eq-one-iff.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [toOuterMeasure_apply_inter_support](declarations/tooutermeasure-apply-inter-support.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [toOuterMeasure_mono](declarations/tooutermeasure-mono.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [toOuterMeasure_apply_eq_of_inter_support_eq](declarations/tooutermeasure-apply-eq-of-inter-support-eq.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [toOuterMeasure_apply_fintype](declarations/tooutermeasure-apply-fintype.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [toMeasure](declarations/tomeasure.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [toOuterMeasure_apply_le_toMeasure_apply](declarations/tooutermeasure-apply-le-tomeasure-apply.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [toMeasure_apply_eq_toOuterMeasure_apply](declarations/tomeasure-apply-eq-tooutermeasure-apply.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [toMeasure_apply](declarations/tomeasure-apply.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [toMeasure_apply_singleton](declarations/tomeasure-apply-singleton.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [toMeasure_apply_eq_zero_iff](declarations/tomeasure-apply-eq-zero-iff.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [toMeasure_apply_eq_one_iff](declarations/tomeasure-apply-eq-one-iff.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [toMeasure_apply_inter_support](declarations/tomeasure-apply-inter-support.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [restrict_toMeasure_support](declarations/restrict-tomeasure-support.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [toMeasure_mono](declarations/tomeasure-mono.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [toMeasure_apply_eq_of_inter_support_eq](declarations/tomeasure-apply-eq-of-inter-support-eq.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [toMeasure_injective](declarations/tomeasure-injective.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [toMeasure_inj](declarations/tomeasure-inj.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [toMeasure_apply_finset](declarations/tomeasure-apply-finset.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [toMeasure_apply_of_finite](declarations/tomeasure-apply-of-finite.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [toMeasure_apply_fintype](declarations/tomeasure-apply-fintype.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [toPMF](declarations/topmf.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [toPMF_apply](declarations/topmf-apply.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [toPMF_toMeasure](declarations/topmf-tomeasure.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [toMeasure.isProbabilityMeasure](declarations/tomeasure-isprobabilitymeasure.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [toMeasure_toPMF](declarations/tomeasure-topmf.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [toMeasure_eq_iff_eq_toPMF](declarations/tomeasure-eq-iff-eq-topmf.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [toPMF_eq_iff_toMeasure_eq](declarations/topmf-eq-iff-tomeasure-eq.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=65ce3320c220dbb3611e499b10c142fec66f4f96b31c5c61bd922431683aad69 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant092d1eccdd06f2368fb59c19fde71381e47968cf28234c1ac0ccf9fc646eb62b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
