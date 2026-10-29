# Multivariate Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**25 observed declarations and anonymous commands**, 20 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/Multivariate/Variant5133b50bde50f1988daf9c113d6692c86a13a2a2aba3427a874932ec17f61282.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6953dbcb994d3358f2f7238bede0f93582fd4681`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/ProbabilityTheoryAndStochasticProcesses/MultivariatePublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [stdGaussian](declarations/stdgaussian.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [isProbabilityMeasure_stdGaussian](declarations/isprobabilitymeasure-stdgaussian.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [integral_id_stdGaussian](declarations/integral-id-stdgaussian.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [variance_dual_stdGaussian](declarations/variance-dual-stdgaussian.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [charFun_stdGaussian](declarations/charfun-stdgaussian.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [isGaussian_stdGaussian](declarations/isgaussian-stdgaussian.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [integral_strongDual_stdGaussian](declarations/integral-strongdual-stdgaussian.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [charFunDual_stdGaussian](declarations/charfundual-stdgaussian.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [covarianceBilin_stdGaussian](declarations/covariancebilin-stdgaussian.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [stdGaussian_map](declarations/stdgaussian-map.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [map_pi_eq_stdGaussian](declarations/map-pi-eq-stdgaussian.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [stdGaussian_eq_map_pi_orthonormalBasis](declarations/stdgaussian-eq-map-pi-orthonormalbasis.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [multivariateGaussian](declarations/multivariategaussian.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [multivariateGaussian_of_not_posSemidef](declarations/multivariategaussian-of-not-possemidef.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [multivariateGaussian_zero_one](declarations/multivariategaussian-zero-one.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [isGaussian_multivariateGaussian](declarations/isgaussian-multivariategaussian.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [integral_id_multivariateGaussian](declarations/integral-id-multivariategaussian-source-edition-2.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [integral_id_multivariateGaussian'](declarations/integral-id-multivariategaussian.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [covarianceBilin_multivariateGaussian](declarations/covariancebilin-multivariategaussian.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [covariance_eval_multivariateGaussian](declarations/covariance-eval-multivariategaussian.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [variance_eval_multivariateGaussian](declarations/variance-eval-multivariategaussian.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [measurePreserving_eval_multivariateGaussian](declarations/measurepreserving-eval-multivariategaussian.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [charFun_multivariateGaussian](declarations/charfun-multivariategaussian.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [measurePreserving_restrict₂_multivariateGaussian](declarations/measurepreserving-restrict-multivariategaussian.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [measurable_multivariateGaussian](declarations/measurable-multivariategaussian.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e699567379c47c44dc2a521756c17d1f7cade337baae189f7c8c5c7683b10b49 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Multivariate/Variant5133b50bde50f1988daf9c113d6692c86a13a2a2aba3427a874932ec17f61282.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
