# Conditional Probability Namespaced Cond Unexpander

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**29 observed declarations and anonymous commands**, 25 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Varianta6f0922c68ad55628f6b585531e73e9c258b8cdfe6f0ad1d41a5b863b8e359f6.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bdb344a93c1e042c1c8391d95a22db68441bd00f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/ProbabilityTheoryAndStochasticProcesses/ConditionalProbabilityNamespacedCondUnexpander.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [cond](declarations/cond.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [condUnexpander](declarations/condunexpander.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [delabCondApplied](declarations/delabcondapplied.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [cond_isProbabilityMeasure_of_finite](declarations/cond-isprobabilitymeasure-of-finite.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [cond_isProbabilityMeasure](declarations/cond-isprobabilitymeasure.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [cond_toMeasurable_eq](declarations/cond-tomeasurable-eq.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [cond_absolutelyContinuous](declarations/cond-absolutelycontinuous.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [absolutelyContinuous_cond_univ](declarations/absolutelycontinuous-cond-univ.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [ae_cond_mem₀](declarations/ae-cond-mem-source-edition-2.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [ae_cond_mem](declarations/ae-cond-mem.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [cond_empty](declarations/cond-empty.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [cond_univ](declarations/cond-univ.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [cond_eq_zero](declarations/cond-eq-zero.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [cond_eq_zero_of_meas_eq_zero](declarations/cond-eq-zero-of-meas-eq-zero.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [cond_apply](declarations/cond-apply-source-edition-2.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [cond_apply'](declarations/cond-apply.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [cond_apply_self](declarations/cond-apply-self.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [cond_inter_self](declarations/cond-inter-self.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [inter_pos_of_cond_ne_zero](declarations/inter-pos-of-cond-ne-zero.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [cond_pos_of_inter_ne_zero](declarations/cond-pos-of-inter-ne-zero.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [cond_cond_eq_cond_inter'](declarations/cond-cond-eq-cond-inter.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [cond_cond_eq_cond_inter](declarations/cond-cond-eq-cond-inter-source-edition-2.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [cond_mul_eq_inter'](declarations/cond-mul-eq-inter.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [cond_mul_eq_inter](declarations/cond-mul-eq-inter-source-edition-2.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [cond_add_cond_compl_eq](declarations/cond-add-cond-compl-eq.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [cond_eq_inv_mul_cond_mul](declarations/cond-eq-inv-mul-cond-mul.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [comap_cond](declarations/comap-cond.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [sum_meas_smul_cond_fiber](declarations/sum-meas-smul-cond-fiber.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3de274fa3c7d5c67a9f2c2eb71be6977474a77924a832c0b5762aaaefde31691 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Varianta6f0922c68ad55628f6b585531e73e9c258b8cdfe6f0ad1d41a5b863b8e359f6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
