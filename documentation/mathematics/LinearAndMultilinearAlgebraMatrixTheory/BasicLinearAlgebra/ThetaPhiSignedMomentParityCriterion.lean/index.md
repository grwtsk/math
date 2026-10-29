# Theta Phi Signed Moment Parity Criterion

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**21 observed declarations and anonymous commands**, 15 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/ThetaPhiSignedMomentParityCriterion/Variant323cf35f62c0a7e07bf5b2acfb31055df232b833b8cf697b6c5e0cfd34627865.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e6ff88f2dcba32b1f40b30e40be61ff87e80f72e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPhiSignedMomentParityCriterion.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [thetaPhiBaseChristoffelMagnitude](declarations/thetaphibasechristoffelmagnitude.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [thetaPhiBaseChristoffelMagnitude_nonnegative](declarations/thetaphibasechristoffelmagnitude-nonnegative.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [thetaPhiBaseSignedMomentWeight_mul_node_add_one](declarations/thetaphibasesignedmomentweight-mul-node-add-one.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [thetaPhiSignedMomentSelectionMagnitude](declarations/thetaphisignedmomentselectionmagnitude.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [thetaPhiSignedMomentSelectionMagnitude_nonnegative](declarations/thetaphisignedmomentselectionmagnitude-nonnegative.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [thetaPhiSignedMomentSelectionTerm](declarations/thetaphisignedmomentselectionterm.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [thetaPhiSignedMomentSelectionTerm_eq_parity](declarations/thetaphisignedmomentselectionterm-eq-parity.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [abs_thetaPhiSignedMomentSelectionTerm](declarations/abs-thetaphisignedmomentselectionterm.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [thetaPhiSignedMomentParitySum](declarations/thetaphisignedmomentparitysum.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [factorial_mul_det_thetaPhi_signedMomentTruncation_eq_paritySum](declarations/factorial-mul-det-thetaphi-signedmomenttruncation-eq-paritysum.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [hasSum_thetaPhiBaseSignedMoment](declarations/hassum-thetaphibasesignedmoment.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [thetaPhiBaseSignedMomentTruncation_eq_sum_range](declarations/thetaphibasesignedmomenttruncation-eq-sum-range.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [thetaPhiBaseSignedMomentTruncation_tendsto](declarations/thetaphibasesignedmomenttruncation-tendsto.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [thetaPhiSignedMomentChristoffel_tendsto](declarations/thetaphisignedmomentchristoffel-tendsto.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [thetaPhiSignedMomentChristoffel_det_tendsto](declarations/thetaphisignedmomentchristoffel-det-tendsto.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [thetaPhiSignedMomentParitySum_tendsto](declarations/thetaphisignedmomentparitysum-tendsto.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [thetaPhiSignedMomentOrientedParitySum](declarations/thetaphisignedmomentorientedparitysum.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [thetaPhiSignedMomentOrientedParitySum_tendsto](declarations/thetaphisignedmomentorientedparitysum-tendsto.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [ThetaPhiSignedMomentParityCriterion](declarations/thetaphisignedmomentparitycriterion.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [signedJetDet_truncation_nonnegative_of_signedMomentParity](declarations/signedjetdet-truncation-nonnegative-of-signedmomentparity.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [thetaPhiAllRankSignedJetCriterion_of_signedMomentParity](declarations/thetaphiallranksignedjetcriterion-of-signedmomentparity.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5cd8cf8c3320e31fd8dda009e8730c6b653d9a7536c4064d8abc8e91357537ec -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ThetaPhiSignedMomentParityCriterion/Variant323cf35f62c0a7e07bf5b2acfb31055df232b833b8cf697b6c5e0cfd34627865.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
