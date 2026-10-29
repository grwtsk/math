# Compact Profile Normalization

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/Calculus/CompactProfileNormalization.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `be1e5042ecc6aefd5ea86e7f63837b441e9846ea`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/MeasureAndIntegration/CompactProfileNormalization.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [scaledProfile](declarations/scaledprofile.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [dilationOperator](declarations/dilationoperator.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [normalization](declarations/normalization.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [integrable_square](declarations/integrable-square.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [continuous_second](declarations/continuous-second.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [integral_second_mul_profile](declarations/integral-second-mul-profile.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [deriv_scaledProfile](declarations/deriv-scaledprofile.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [second_scaledProfile](declarations/second-scaledprofile.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [dilationOperator_eq](declarations/dilationoperator-eq.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [scaledProfile_eq_rpow](declarations/scaledprofile-eq-rpow.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [deriv_scaledProfile_eq_rpow](declarations/deriv-scaledprofile-eq-rpow.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [second_scaledProfile_eq_rpow](declarations/second-scaledprofile-eq-rpow.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [dilationOperator_eq_rpow](declarations/dilationoperator-eq-rpow.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [profile_square_integrable](declarations/profile-square-integrable.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [base_square_integrable](declarations/base-square-integrable.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [dilationOperator_square_integrable](declarations/dilationoperator-square-integrable.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [dilationOperator_integrable](declarations/dilationoperator-integrable.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [normalization_expanded](declarations/normalization-expanded.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [normalization_eq](declarations/normalization-eq.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [tendsto_normalization](declarations/tendsto-normalization.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [normalization_uniform_lower_bound](declarations/normalization-uniform-lower-bound.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [normalization_pos](declarations/normalization-pos.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [normalization_uniform_positive_lower_bound](declarations/normalization-uniform-positive-lower-bound.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [normalizedOperator](declarations/normalizedoperator.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [normalizedOperator_square_integral](declarations/normalizedoperator-square-integral.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [normalizedOperator_integrable](declarations/normalizedoperator-integrable.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [profile_normalization](declarations/profile-normalization.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [profile_normalization_lower_bound](declarations/profile-normalization-lower-bound.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [profile_normalization_pos](declarations/profile-normalization-pos.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [profile_normalization_uniform_positive_lower_bound](declarations/profile-normalization-uniform-positive-lower-bound.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [profile_normalizedOperator_square_integral](declarations/profile-normalizedoperator-square-integral.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [profile_normalization_expanded](declarations/profile-normalization-expanded.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [tendsto_profile_normalization](declarations/tendsto-profile-normalization.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=45d49299a2ab33ffa84281ff280c63c3180a3912700de903f049ba1e2b9aa9a4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Calculus/CompactProfileNormalization.lean","GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CompactProfileNormalization.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
