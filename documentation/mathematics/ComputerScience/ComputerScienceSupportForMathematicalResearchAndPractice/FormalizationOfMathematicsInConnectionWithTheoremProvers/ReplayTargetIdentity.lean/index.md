# Replay Target Identity

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**78 observed declarations and anonymous commands**, 54 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Logic/ProofChecking/ReplayTargetIdentity.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `907bb1f003889b543979dd28aeaf1734382f0c9f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReplayTargetIdentity.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [supportedSchema](declarations/supportedschema.md) | 17 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [SourceIdentity](declarations/sourceidentity.md) | 21 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [Header](declarations/header.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [HeaderMatches](declarations/headermatches.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [matches_self](declarations/matches-self.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [matching_headers_have_equal_source](declarations/matching-headers-have-equal-source.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [reject_unknown_schema](declarations/reject-unknown-schema.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [reject_source_field_drift](declarations/reject-source-field-drift.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [reject_revision_drift](declarations/reject-revision-drift.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [reject_target_blob_drift](declarations/reject-target-blob-drift.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [reject_toolchain_drift](declarations/reject-toolchain-drift.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [reject_dependency_manifest_drift](declarations/reject-dependency-manifest-drift.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [ModulesCovered](declarations/modulescovered.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [modules_cover_themselves](declarations/modules-cover-themselves.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [omitted_module_blocks_coverage](declarations/omitted-module-blocks-coverage.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [root_build_cannot_hide_omission](declarations/root-build-cannot-hide-omission.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `inductive` | [ModuleTerminalStatus](declarations/moduleterminalstatus.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `structure` | [ModuleTerminalOutcome](declarations/moduleterminaloutcome.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [passingOutcome](declarations/passingoutcome.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [matchingModuleOutcomes](declarations/matchingmoduleoutcomes.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [ModulesSucceeded](declarations/modulessucceeded.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [modulesSucceeded_exactly_one_pass](declarations/modulessucceeded-exactly-one-pass.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [NonvacuousModulesSucceeded](declarations/nonvacuousmodulessucceeded.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [nonvacuous_exactly_one_pass](declarations/nonvacuous-exactly-one-pass.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [matchingModuleOutcomes_append](declarations/matchingmoduleoutcomes-append.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [modulesSucceeded_append_iff](declarations/modulessucceeded-append-iff.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [matching_records_in_both_fragments_block_success](declarations/matching-records-in-both-fragments-block-success.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [irrelevant_append_preserves_success](declarations/irrelevant-append-preserves-success.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [modulesSucceeded_append_comm](declarations/modulessucceeded-append-comm.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [duplicate_complete_pass_fragments_rejected](declarations/duplicate-complete-pass-fragments-rejected.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [pass_and_matching_failure_fragments_rejected](declarations/pass-and-matching-failure-fragments-rejected.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [different_source_fragment_alone_rejected](declarations/different-source-fragment-alone-rejected.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [partitioned_two_key_target_succeeds](declarations/partitioned-two-key-target-succeeds.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [irrelevant_fragment_preserves_left_success](declarations/irrelevant-fragment-preserves-left-success.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [empty_inventory_vacuous_but_wrapper_rejected](declarations/empty-inventory-vacuous-but-wrapper-rejected.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [combineModuleFragments](declarations/combinemodulefragments.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [ExactlyOnePassingFragment](declarations/exactlyonepassingfragment.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [matchingModuleOutcomes_combine_empty_iff](declarations/matchingmoduleoutcomes-combine-empty-iff.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [matchingModuleOutcomes_combine_singleton_iff](declarations/matchingmoduleoutcomes-combine-singleton-iff.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [modulesSucceeded_combine_iff](declarations/modulessucceeded-combine-iff.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [three_fragment_pass_overlap_rejected](declarations/three-fragment-pass-overlap-rejected.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [missing_key_across_fragments_rejected](declarations/missing-key-across-fragments-rejected.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [irrelevant_middle_fragment_preserves_success](declarations/irrelevant-middle-fragment-preserves-success.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [combineModuleFragments_eq_flatten](declarations/combinemodulefragments-eq-flatten.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [matchingModuleOutcomes_combine_perm](declarations/matchingmoduleoutcomes-combine-perm.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [exactlyOnePassingFragment_perm](declarations/exactlyonepassingfragment-perm.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [modulesSucceeded_combine_perm](declarations/modulessucceeded-combine-perm.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [nonvacuousModulesSucceeded_combine_perm](declarations/nonvacuousmodulessucceeded-combine-perm.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [fragment_membership_does_not_preserve_success](declarations/fragment-membership-does-not-preserve-success.md) | 620 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [source](declarations/source.md) | 648 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [target](declarations/target.md) | 662 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [changedRevision](declarations/changedrevision.md) | 669 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [unknownVersion](declarations/unknownversion.md) | 672 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [exact_header_is_consistent](declarations/exact-header-is-consistent.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [wrong_revision_is_rejected](declarations/wrong-revision-is-rejected.md) | 678 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [unknown_version_is_rejected](declarations/unknown-version-is-rejected.md) | 681 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [root_only_is_not_leaf_coverage](declarations/root-only-is-not-leaf-coverage.md) | 684 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [leafModule](declarations/leafmodule.md) | 690 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [passResult](declarations/passresult.md) | 692 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [failedResult](declarations/failedresult.md) | 695 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [notRunResult](declarations/notrunresult.md) | 700 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [unavailableResult](declarations/unavailableresult.md) | 705 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [differentSource](declarations/differentsource.md) | 710 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [wrongIdentityPass](declarations/wrongidentitypass.md) | 713 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [one_exact_pass_succeeds](declarations/one-exact-pass-succeeds.md) | 716 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [empty_required_low_level_is_vacuous](declarations/empty-required-low-level-is-vacuous.md) | 725 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [duplicate_required_low_level_still_succeeds](declarations/duplicate-required-low-level-still-succeeds.md) | 731 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [nonvacuous_one_exact_pass_succeeds](declarations/nonvacuous-one-exact-pass-succeeds.md) | 738 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [nonvacuous_empty_required_rejected](declarations/nonvacuous-empty-required-rejected.md) | 743 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [nonvacuous_duplicate_required_rejected](declarations/nonvacuous-duplicate-required-rejected.md) | 749 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [failed_outcome_is_rejected](declarations/failed-outcome-is-rejected.md) | 755 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [not_run_outcome_is_rejected](declarations/not-run-outcome-is-rejected.md) | 761 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [unavailable_outcome_is_rejected](declarations/unavailable-outcome-is-rejected.md) | 767 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [duplicate_passes_are_rejected](declarations/duplicate-passes-are-rejected.md) | 773 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [conflicting_outcomes_are_rejected](declarations/conflicting-outcomes-are-rejected.md) | 779 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [different_source_identity](declarations/different-source-identity.md) | 785 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [wrong_source_identity_is_rejected](declarations/wrong-source-identity-is-rejected.md) | 788 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [root_only_terminal_success_is_rejected](declarations/root-only-terminal-success-is-rejected.md) | 795 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=007002fd0ad370bf4e024a5a29ed52253dd51844ee4a65eb79195e82800eda99 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofChecking/ReplayTargetIdentity.lean","GRWTSK/Logic/ProofChecking/ReplayTargetIdentity.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
