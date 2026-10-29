# Surgical Site Plan

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**56 observed declarations and anonymous commands**, 38 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/SurgicalSitePlan/Variantebe44b4f762c137f941303628e34f9b86c47f49b1a90f43276dc5983dbcb5585.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `71a0301e7107de58d9d1875e9b6b4bea4c8f9503`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/Combinatorics/SurgicalSitePlan.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [SurgicalPlanDigestBinding](declarations/surgicalplandigestbinding.md) | 18 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [surgicalPolicyDigestComponent](declarations/surgicalpolicydigestcomponent.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [surgicalPolicyDigest](declarations/surgicalpolicydigest.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [SurgicalGovernanceBinding](declarations/surgicalgovernancebinding.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [SurgicalSiteCandidatePlan](declarations/surgicalsitecandidateplan.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [proposalIdentity](declarations/proposalidentity.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [PatchScope](declarations/patchscope.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [governanceBinding](declarations/governancebinding.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [PatchScope.within_selection](declarations/patchscope-within-selection.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `structure` | [ReviewedSurgicalSitePlan](declarations/reviewedsurgicalsiteplan.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [selected_sites_unchanged](declarations/selected-sites-unchanged.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [review_binds_config_snapshot](declarations/review-binds-config-snapshot.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [review_binds_proposal](declarations/review-binds-proposal.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [review_binds_proposed_patch](declarations/review-binds-proposed-patch.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [review_binds_config_digest](declarations/review-binds-config-digest.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [review_binds_registry_digest](declarations/review-binds-registry-digest.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [review_binds_trace_digest](declarations/review-binds-trace-digest.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [review_binds_policy_digest](declarations/review-binds-policy-digest.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [review_snapshot_binds_config_digest](declarations/review-snapshot-binds-config-digest.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [review_snapshot_binds_registry_digest](declarations/review-snapshot-binds-registry-digest.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [review_snapshot_binds_trace_digest](declarations/review-snapshot-binds-trace-digest.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [ValidForDigests](declarations/validfordigests.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [changed_config_invalidates_review](declarations/changed-config-invalidates-review.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [changed_registry_invalidates_review](declarations/changed-registry-invalidates-review.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `structure` | [AuthorizedSurgicalSitePlan](declarations/authorizedsurgicalsiteplan.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [patch_modifies_only_selected_sites](declarations/patch-modifies-only-selected-sites.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [patch_scope_binds_proposed_patch](declarations/patch-scope-binds-proposed-patch.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [authorization_binds_proposal](declarations/authorization-binds-proposal.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [authorization_binds_config_snapshot](declarations/authorization-binds-config-snapshot.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [authorization_binds_proposed_patch](declarations/authorization-binds-proposed-patch.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [authorization_binds_config_digest](declarations/authorization-binds-config-digest.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [authorization_binds_registry_digest](declarations/authorization-binds-registry-digest.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [authorization_binds_trace_digest](declarations/authorization-binds-trace-digest.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [authorization_binds_policy_digest](declarations/authorization-binds-policy-digest.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [authorization_snapshot_binds_config_digest](declarations/authorization-snapshot-binds-config-digest.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [authorization_snapshot_binds_registry_digest](declarations/authorization-snapshot-binds-registry-digest.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [authorization_snapshot_binds_trace_digest](declarations/authorization-snapshot-binds-trace-digest.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [patch_bound_to_config_digest](declarations/patch-bound-to-config-digest.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [patch_bound_to_registry_digest](declarations/patch-bound-to-registry-digest.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [patch_bound_to_trace_digest](declarations/patch-bound-to-trace-digest.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [authorization_does_not_discharge_mathematical_obligation](declarations/authorization-does-not-discharge-mathematical-obligation.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [stale_trace_cannot_match_plan](declarations/stale-trace-cannot-match-plan.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [reductiveSelectionReview](declarations/reductiveselectionreview.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [reductiveSelectionAuthorization](declarations/reductiveselectionauthorization.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [reductiveSelectionAcceptedSourceChange](declarations/reductiveselectionacceptedsourcechange.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [reductiveSelectionClaimCertificate](declarations/reductiveselectionclaimcertificate.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [reductiveSelectionCertifiedBridge](declarations/reductiveselectioncertifiedbridge.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [reductiveSelectionClaimStatus](declarations/reductiveselectionclaimstatus.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [reductive_selection_does_not_construct_review](declarations/reductive-selection-does-not-construct-review.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [reductive_selection_does_not_construct_authorization](declarations/reductive-selection-does-not-construct-authorization.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [reductive_selection_does_not_construct_accepted_source_change](declarations/reductive-selection-does-not-construct-accepted-source-change.md) | 597 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [reductive_selection_does_not_construct_claim_certificate](declarations/reductive-selection-does-not-construct-claim-certificate.md) | 606 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [reductive_selection_does_not_construct_certified_bridge](declarations/reductive-selection-does-not-construct-certified-bridge.md) | 617 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [reductive_selection_preserves_claim_status](declarations/reductive-selection-preserves-claim-status.md) | 629 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [candidateRequirementProof](declarations/candidaterequirementproof.md) | 639 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [candidate_status_does_not_prove_surgery_required](declarations/candidate-status-does-not-prove-surgery-required.md) | 651 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e43d1d54a4dffa7a305dbcc3ea4fef08b5d33efc5847dfae14063c7fd752f527 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/SurgicalSitePlan/Variantebe44b4f762c137f941303628e34f9b86c47f49b1a90f43276dc5983dbcb5585.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
