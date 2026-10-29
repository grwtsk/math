# Surgical Site Plan Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**56 observed declarations and anonymous commands**, 38 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/SurgicalSitePlan/Variant1594a03ba0009f4c4aee76047cb72736d48735a7d2295dd659be38cb09ee8bed.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e2f7553aeba4365485e53cc05ab6481f3e058ce8`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/Combinatorics/SurgicalSitePlanNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [SurgicalPlanDigestBinding](declarations/surgicalplandigestbinding.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [surgicalPolicyDigestComponent](declarations/surgicalpolicydigestcomponent.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [surgicalPolicyDigest](declarations/surgicalpolicydigest.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [SurgicalGovernanceBinding](declarations/surgicalgovernancebinding.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [SurgicalSiteCandidatePlan](declarations/surgicalsitecandidateplan.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [proposalIdentity](declarations/proposalidentity.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [PatchScope](declarations/patchscope.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [governanceBinding](declarations/governancebinding.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [PatchScope.within_selection](declarations/patchscope-within-selection.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `structure` | [ReviewedSurgicalSitePlan](declarations/reviewedsurgicalsiteplan.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [selected_sites_unchanged](declarations/selected-sites-unchanged.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [review_binds_config_snapshot](declarations/review-binds-config-snapshot.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [review_binds_proposal](declarations/review-binds-proposal.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [review_binds_proposed_patch](declarations/review-binds-proposed-patch.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [review_binds_config_digest](declarations/review-binds-config-digest.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [review_binds_registry_digest](declarations/review-binds-registry-digest.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [review_binds_trace_digest](declarations/review-binds-trace-digest.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [review_binds_policy_digest](declarations/review-binds-policy-digest.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [review_snapshot_binds_config_digest](declarations/review-snapshot-binds-config-digest.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [review_snapshot_binds_registry_digest](declarations/review-snapshot-binds-registry-digest.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [review_snapshot_binds_trace_digest](declarations/review-snapshot-binds-trace-digest.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [ValidForDigests](declarations/validfordigests.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [changed_config_invalidates_review](declarations/changed-config-invalidates-review.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [changed_registry_invalidates_review](declarations/changed-registry-invalidates-review.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `structure` | [AuthorizedSurgicalSitePlan](declarations/authorizedsurgicalsiteplan.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [patch_modifies_only_selected_sites](declarations/patch-modifies-only-selected-sites.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [patch_scope_binds_proposed_patch](declarations/patch-scope-binds-proposed-patch.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [authorization_binds_proposal](declarations/authorization-binds-proposal.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [authorization_binds_config_snapshot](declarations/authorization-binds-config-snapshot.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [authorization_binds_proposed_patch](declarations/authorization-binds-proposed-patch.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [authorization_binds_config_digest](declarations/authorization-binds-config-digest.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [authorization_binds_registry_digest](declarations/authorization-binds-registry-digest.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [authorization_binds_trace_digest](declarations/authorization-binds-trace-digest.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [authorization_binds_policy_digest](declarations/authorization-binds-policy-digest.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [authorization_snapshot_binds_config_digest](declarations/authorization-snapshot-binds-config-digest.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [authorization_snapshot_binds_registry_digest](declarations/authorization-snapshot-binds-registry-digest.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [authorization_snapshot_binds_trace_digest](declarations/authorization-snapshot-binds-trace-digest.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [patch_bound_to_config_digest](declarations/patch-bound-to-config-digest.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [patch_bound_to_registry_digest](declarations/patch-bound-to-registry-digest.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [patch_bound_to_trace_digest](declarations/patch-bound-to-trace-digest.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [authorization_does_not_discharge_mathematical_obligation](declarations/authorization-does-not-discharge-mathematical-obligation.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [stale_trace_cannot_match_plan](declarations/stale-trace-cannot-match-plan.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [reductiveSelectionReview](declarations/reductiveselectionreview.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [reductiveSelectionAuthorization](declarations/reductiveselectionauthorization.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [reductiveSelectionAcceptedSourceChange](declarations/reductiveselectionacceptedsourcechange.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [reductiveSelectionClaimCertificate](declarations/reductiveselectionclaimcertificate.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [reductiveSelectionCertifiedBridge](declarations/reductiveselectioncertifiedbridge.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [reductiveSelectionClaimStatus](declarations/reductiveselectionclaimstatus.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [reductive_selection_does_not_construct_review](declarations/reductive-selection-does-not-construct-review.md) | 587 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [reductive_selection_does_not_construct_authorization](declarations/reductive-selection-does-not-construct-authorization.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [reductive_selection_does_not_construct_accepted_source_change](declarations/reductive-selection-does-not-construct-accepted-source-change.md) | 605 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [reductive_selection_does_not_construct_claim_certificate](declarations/reductive-selection-does-not-construct-claim-certificate.md) | 614 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [reductive_selection_does_not_construct_certified_bridge](declarations/reductive-selection-does-not-construct-certified-bridge.md) | 625 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [reductive_selection_preserves_claim_status](declarations/reductive-selection-preserves-claim-status.md) | 637 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [candidateRequirementProof](declarations/candidaterequirementproof.md) | 647 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [candidate_status_does_not_prove_surgery_required](declarations/candidate-status-does-not-prove-surgery-required.md) | 659 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=608e8f7984b7ec16ebbfff5fd60c8cab07ca736f2ff5080ad47a213391700e82 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/SurgicalSitePlan/Variant1594a03ba0009f4c4aee76047cb72736d48735a7d2295dd659be38cb09ee8bed.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
