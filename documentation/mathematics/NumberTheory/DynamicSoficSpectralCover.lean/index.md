# Dynamic Sofic Spectral Cover

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 14 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Farey/DynamicSoficSpectralCover.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5881a2f2caf1aa0b1ec9267376cecb5895327afe`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/NumberTheory/DynamicSoficSpectralCover.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [no_finite_state_initial_recovery_from_unanchored_difference](declarations/no-finite-state-initial-recovery-from-unanchored-difference.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [readout_factorsThrough_anchoredDifference](declarations/readout-factorsthrough-anchoreddifference.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [DynamicPartition](declarations/dynamicpartition.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [RecoverableAtStage](declarations/recoverableatstage.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [not_recoverableAtStage_of_collision](declarations/not-recoverableatstage-of-collision.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [ProportionRecoverableAtStage](declarations/proportionrecoverableatstage.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [proportion_not_compressible_at_collision](declarations/proportion-not-compressible-at-collision.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [SoficGraph](declarations/soficgraph.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [DynamicSoficPresentation](declarations/dynamicsoficpresentation.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [trace_factorsThrough_partition](declarations/trace-factorsthrough-partition.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [no_partition_sofic_trace_cover_of_collision](declarations/no-partition-sofic-trace-cover-of-collision.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [ZeroProblem](declarations/zeroproblem.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [ZeroProblem.Hypothesis](declarations/zeroproblem-hypothesis.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [SpectralZeroCover](declarations/spectralzerocover.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [SpectralZeroCover.transport_hypothesis](declarations/spectralzerocover-transport-hypothesis.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [GeneralizedHypothesis](declarations/generalizedhypothesis.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `structure` | [SpectralCoverFamily](declarations/spectralcoverfamily.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [rh_implies_generalized_of_spectralCoverFamily](declarations/rh-implies-generalized-of-spectralcoverfamily.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `structure` | [BaseSpecialization](declarations/basespecialization.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [BaseSpecialization.ofMap](declarations/basespecialization-ofmap.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [generalized_implies_base_of_map](declarations/generalized-implies-base-of-map.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [generalized_implies_base_of_member_specialization](declarations/generalized-implies-base-of-member-specialization.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [rh_iff_generalized_of_spectralCovers_and_member_specialization](declarations/rh-iff-generalized-of-spectralcovers-and-member-specialization.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [rh_iff_generalized_of_spectralCovers_and_specialization](declarations/rh-iff-generalized-of-spectralcovers-and-specialization.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `structure` | [DynamicSoficSpectralSystem](declarations/dynamicsoficspectralsystem.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [DynamicSoficSpectralSystem.trace_factorsThrough_stage](declarations/dynamicsoficspectralsystem-trace-factorsthrough-stage.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [DynamicSoficSpectralSystem.no_trace_collision](declarations/dynamicsoficspectralsystem-no-trace-collision.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |

<!-- VERIFICATION AMENDMENT ef3ebeb99aa044d063db8b3ab0b25bc5a838ee8becd9d783caaeb3ef123a203b -->
This module shares source blob `5881a2f2caf1aa0b1ec9267376cecb5895327afe` with the cross-branch replay pinned at Math commit `a631c3ab52379eacf4c4fced9111fadd983b37ae`; the target declarations selected from this module remain `NOT_RUN`. [Full roster and terminal evidence](../../_support/verification-updates/declaration107-lossless-restart-20261026.md).
<!-- END VERIFICATION AMENDMENT -->

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fa6616f7708bccc8694f1f89f3460b1d899bafbf6133676f772113e779d2e600 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Farey/DynamicSoficSpectralCover.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
