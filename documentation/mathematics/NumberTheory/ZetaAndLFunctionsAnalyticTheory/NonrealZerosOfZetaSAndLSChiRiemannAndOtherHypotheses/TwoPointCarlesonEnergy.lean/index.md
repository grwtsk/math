# Two Point Carleson Energy

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**29 observed declarations and anonymous commands**, 21 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Moebius/TwoPointCarlesonEnergy.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9419fe18fbf54d5842c11da5176674023e905e00`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/TwoPointCarlesonEnergy.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [alignedDyadicScaleMaximum](declarations/aligneddyadicscalemaximum.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [alignedDyadicProperCarlesonEnergy](declarations/aligneddyadicpropercarlesonenergy.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [alignedDyadicCarlesonEnergy](declarations/aligneddyadiccarlesonenergy.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [abs_alignedDyadicBlockSum_le_scaleMaximum](declarations/abs-aligneddyadicblocksum-le-scalemaximum.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [alignedDyadicScaleMaximum_nonneg](declarations/aligneddyadicscalemaximum-nonneg.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [alignedDyadicScaleMaximum_le_succ](declarations/aligneddyadicscalemaximum-le-succ.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [alignedDyadicScaleMaximum_shifted_half_le_succ](declarations/aligneddyadicscalemaximum-shifted-half-le-succ.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [alignedDyadicProperCarlesonEnergy_nonneg](declarations/aligneddyadicpropercarlesonenergy-nonneg.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [alignedDyadicCarlesonEnergy_nonneg](declarations/aligneddyadiccarlesonenergy-nonneg.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [alignedDyadicCarlesonEnergy_eq_proper_add_top](declarations/aligneddyadiccarlesonenergy-eq-proper-add-top.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [alignedDyadicProperCarlesonEnergy_le_succ](declarations/aligneddyadicpropercarlesonenergy-le-succ.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [topBlock_sq_add_shiftedProperEnergy_le_succ](declarations/topblock-sq-add-shiftedproperenergy-le-succ.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [add_sq_le_succ_weight](declarations/add-sq-le-succ-weight.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [finitePrefixSum_sq_le_properCarlesonEnergy](declarations/finiteprefixsum-sq-le-propercarlesonenergy.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [finitePrefixSum_sq_le_alignedDyadicCarlesonEnergy](declarations/finiteprefixsum-sq-le-aligneddyadiccarlesonenergy.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [dyadicPrefixMaximum_sq_le_alignedDyadicCarlesonEnergy](declarations/dyadicprefixmaximum-sq-le-aligneddyadiccarlesonenergy.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [alignedDyadicScaleMaximum_zero_le_of_abs_le](declarations/aligneddyadicscalemaximum-zero-le-of-abs-le.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [twoPointCarlesonEnergy](declarations/twopointcarlesonenergy.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [twoPointCarlesonEnergySum](declarations/twopointcarlesonenergysum.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [mertensTwoPointCarlesonSingletonSum](declarations/mertenstwopointcarlesonsingletonsum.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [abs_paddedTwoPointMoebius_le_one](declarations/abs-paddedtwopointmoebius-le-one.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [mertensTwoPointCarlesonScaleZeroMaximum_le_one](declarations/mertenstwopointcarlesonscalezeromaximum-le-one.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [mertensTwoPointCarlesonSingletonSum_le_endpoint](declarations/mertenstwopointcarlesonsingletonsum-le-endpoint.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [mertensTwoPointPrefixMax_sq_le_twoPointCarlesonEnergy](declarations/mertenstwopointprefixmax-sq-le-twopointcarlesonenergy.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [mertensTwoPointMaximalQuadraticEnergy_le_carlesonEnergySum](declarations/mertenstwopointmaximalquadraticenergy-le-carlesonenergysum.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [SubpolynomialDyadicTwoPointCarlesonEnergyWithDepthCost](declarations/subpolynomialdyadictwopointcarlesonenergywithdepthcost.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [SubpolynomialDyadicMertensTwoPointCarlesonEnergyWithDepthCost](declarations/subpolynomialdyadicmertenstwopointcarlesonenergywithdepthcost.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [subpolynomialDyadicMaximalMertensTwoPointEnergy_of_carleson](declarations/subpolynomialdyadicmaximalmertenstwopointenergy-of-carleson.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [riemannHypothesis_of_mertensTwoPointCarlesonEnergy](declarations/riemannhypothesis-of-mertenstwopointcarlesonenergy.md) | 572 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b71c35fda15c50e983d57b24b65f3ee8ad40df4b7b16df7098c11ef969300ca3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/TwoPointCarlesonEnergy.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
