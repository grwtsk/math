# Estimate Kernel Moments Source Edition1

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**37 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/EstimateKernelMoments/Variant46b1956c58d29dcc9ae93218a11693a655ad36efdf2103c7894360d2e7b7c092.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `532b3ca3262405671438dc42c0a2159b6d7639ae`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/MeasureAndIntegration/EstimateKernelMomentsSourceEdition1.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [positiveWeightedTest](declarations/positiveweightedtest.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [reflectedPositiveWeightedTest](declarations/reflectedpositiveweightedtest.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [positiveWeightedTestMoment](declarations/positiveweightedtestmoment.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [reflectedPositiveWeightedTestMoment](declarations/reflectedpositiveweightedtestmoment.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [positiveWeightedTest_integrable](declarations/positiveweightedtest-integrable.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [reflectedPositiveWeightedTest_integrable](declarations/reflectedpositiveweightedtest-integrable.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [positiveWeightedTest_continuous](declarations/positiveweightedtest-continuous.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [reflectedPositiveWeightedTest_continuous](declarations/reflectedpositiveweightedtest-continuous.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [positiveWeightedTest_hasCompactSupport](declarations/positiveweightedtest-hascompactsupport.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [reflectedPositiveWeightedTest_hasCompactSupport](declarations/reflectedpositiveweightedtest-hascompactsupport.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [positiveWeightedTestMoment_integrable](declarations/positiveweightedtestmoment-integrable.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [reflectedPositiveWeightedTestMoment_integrable](declarations/reflectedpositiveweightedtestmoment-integrable.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [positiveWeightedTestMoment_continuous](declarations/positiveweightedtestmoment-continuous.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [reflectedPositiveWeightedTestMoment_continuous](declarations/reflectedpositiveweightedtestmoment-continuous.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [positiveWeightedTestMoment_hasCompactSupport](declarations/positiveweightedtestmoment-hascompactsupport.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [reflectedPositiveWeightedTestMoment_hasCompactSupport](declarations/reflectedpositiveweightedtestmoment-hascompactsupport.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [positiveWeightedTest_integral_zero](declarations/positiveweightedtest-integral-zero.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [reflectedPositiveWeightedTest_integral_zero](declarations/reflectedpositiveweightedtest-integral-zero.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [mul_weighted_convolution](declarations/mul-weighted-convolution.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [sourceCorrelation_first_exponential_moment_zero](declarations/sourcecorrelation-first-exponential-moment-zero.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [weightedCorrelation](declarations/weightedcorrelation.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [derivativeProfile](declarations/derivativeprofile.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [weightedCorrelation_contDiff](declarations/weightedcorrelation-contdiff.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [weightedCorrelation_hasCompactSupport](declarations/weightedcorrelation-hascompactsupport.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [weightedCorrelation_integrable](declarations/weightedcorrelation-integrable.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [weightedCorrelation_deriv_integrable](declarations/weightedcorrelation-deriv-integrable.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [weightedCorrelation_deriv](declarations/weightedcorrelation-deriv.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [derivativeProfile_exponential_moment_zero](declarations/derivativeprofile-exponential-moment-zero.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [firstWeightedCorrelation](declarations/firstweightedcorrelation.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [firstWeightedCorrelation_contDiff](declarations/firstweightedcorrelation-contdiff.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [firstWeightedCorrelation_hasCompactSupport](declarations/firstweightedcorrelation-hascompactsupport.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [firstWeightedCorrelation_integrable](declarations/firstweightedcorrelation-integrable.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [firstWeightedCorrelation_deriv_integrable](declarations/firstweightedcorrelation-deriv-integrable.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [firstWeightedCorrelation_deriv](declarations/firstweightedcorrelation-deriv.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [derivativeProfile_first_exponential_moment_zero](declarations/derivativeprofile-first-exponential-moment-zero.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [DoubleMomentCheckpoint](declarations/doublemomentcheckpoint.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [double_moment_checkpoint](declarations/double-moment-checkpoint.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0f2921e6c8f8af7b0d404342e22fdffeb7d438aaa6a3423aae2233d57bfd56c2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/EstimateKernelMoments/Variant46b1956c58d29dcc9ae93218a11693a655ad36efdf2103c7894360d2e7b7c092.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
