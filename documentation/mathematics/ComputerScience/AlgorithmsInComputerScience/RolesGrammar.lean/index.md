# Roles Grammar

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**80 observed declarations and anonymous commands**, 36 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RolesGrammar/Variant38327c6b1f79706afe9934a9670ab713782d742ab61760e222b99c571537baf4.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dca4ba03818bb0576400e0ca310bca6a787b4d44`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/RolesGrammar.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [tableRowKey](declarations/tablerowkey.md) | 22 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [finiteInputTuples](declarations/finiteinputtuples.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [tableKeyUniverse](declarations/tablekeyuniverse.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [finiteInputTuples_nodup](declarations/finiteinputtuples-nodup.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [tableKeyUniverse_nodup](declarations/tablekeyuniverse-nodup.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [tableKeyUniverse_nullary](declarations/tablekeyuniverse-nullary.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [tableKeyUniverse_unary](declarations/tablekeyuniverse-unary.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [FiniteRowValid](declarations/finiterowvalid.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [finiteTableWork](declarations/finitetablework.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [TableValid](declarations/tablevalid.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [checkFiniteTable](declarations/checkfinitetable.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [checkFiniteTable_sound](declarations/checkfinitetable-sound.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [finiteTable_deterministic](declarations/finitetable-deterministic.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [finiteTable_total_coverage](declarations/finitetable-total-coverage.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [RoleAlgebraValid](declarations/rolealgebravalid.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [checkRoleAlgebra](declarations/checkrolealgebra.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [checkRoleAlgebra_sound](declarations/checkrolealgebra-sound.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [CheckedRoleAlgebra](declarations/checkedrolealgebra.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [admitRoleAlgebra](declarations/admitrolealgebra.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [roleAt](declarations/roleat.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [nodeTransition](declarations/nodetransition.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [roleRunWork](declarations/rolerunwork.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [RoleRunValid](declarations/rolerunvalid.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [checkRoleRun](declarations/checkrolerun.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [checkRoleRun_sound](declarations/checkrolerun-sound.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `structure` | [CheckedRoleRun](declarations/checkedrolerun.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [admitRoleRun](declarations/admitrolerun.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [RoleAccepted](declarations/roleaccepted.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [(anonymous)](declarations/instance.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [checkRoleAccepted](declarations/checkroleaccepted.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [checkRoleAccepted_sound](declarations/checkroleaccepted-sound.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `structure` | [CheckedAcceptedRoleRun](declarations/checkedacceptedrolerun.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [admitAcceptedRoleRun](declarations/admitacceptedrolerun.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [checkedRoleRun_node_transition](declarations/checkedrolerun-node-transition.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [checkedRoleRun_exact_tree_scope](declarations/checkedrolerun-exact-tree-scope.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [productionOfRow](declarations/productionofrow.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [extractGrammarRows](declarations/extractgrammarrows.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [grammarRecordWork](declarations/grammarrecordwork.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [grammarExtractionWork](declarations/grammarextractionwork.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [GrammarValid](declarations/grammarvalid.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [checkGrammar](declarations/checkgrammar.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [checkGrammar_sound](declarations/checkgrammar-sound.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `structure` | [CheckedGrammar](declarations/checkedgrammar.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [admitGrammar](declarations/admitgrammar.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [CheckedGrammar.productions](declarations/checkedgrammar-productions.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [CheckedGrammar.accepting](declarations/checkedgrammar-accepting.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [grammar_production_iff](declarations/grammar-production-iff.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [productionOfRow_injective](declarations/productionofrow-injective.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [checkedGrammar_productions_nodup](declarations/checkedgrammar-productions-nodup.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [grammar_transition_iff](declarations/grammar-transition-iff.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [checkedRoleRun_grammar_local_soundness](declarations/checkedrolerun-grammar-local-soundness.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [grammar_local_iff_run_local](declarations/grammar-local-iff-run-local.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [signature](declarations/signature.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [nullaryRow](declarations/nullaryrow.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [unaryZeroRow](declarations/unaryzerorow.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [unaryOneRow](declarations/unaryonerow.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [totalTable](declarations/totaltable.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [partialTable](declarations/partialtable.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [total_table_accepted](declarations/total-table-accepted.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [partial_table_accepted](declarations/partial-table-accepted.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [unused_key_omission_rejected_for_total](declarations/unused-key-omission-rejected-for-total.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [missing_partial_key_has_no_transition](declarations/missing-partial-key-has-no-transition.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [duplicate_identical_key_rejected](declarations/duplicate-identical-key-rejected.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [duplicate_conflicting_key_rejected](declarations/duplicate-conflicting-key-rejected.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [reordered_table_rejected](declarations/reordered-table-rejected.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [unknown_constructor_rejected](declarations/unknown-constructor-rejected.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [unknown_input_role_rejected](declarations/unknown-input-role-rejected.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [unknown_output_role_rejected](declarations/unknown-output-role-rejected.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [nullary_with_child_rejected](declarations/nullary-with-child-rejected.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [unary_without_child_rejected](declarations/unary-without-child-rejected.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [empty_role_domain_rejected](declarations/empty-role-domain-rejected.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [work_exhaustion_rejected](declarations/work-exhaustion-rejected.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [extraction_includes_every_unary_row](declarations/extraction-includes-every-unary-row.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [omitted_production_is_not_complete_grammar](declarations/omitted-production-is-not-complete-grammar.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [changed_surface_is_not_extracted](declarations/changed-surface-is-not-extracted.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6d87c9ce6d9e2764b0dd6122ec13d947eeaa696cdf3035e3e18a9d8fca57a29e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RolesGrammar/Variant38327c6b1f79706afe9934a9670ab713782d742ab61760e222b99c571537baf4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
