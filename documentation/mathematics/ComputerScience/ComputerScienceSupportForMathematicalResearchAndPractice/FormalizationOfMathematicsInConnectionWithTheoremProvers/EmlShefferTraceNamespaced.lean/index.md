# Eml Sheffer Trace Namespaced

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 16 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f43656e7465722f456d6c5368656666657254726163652e6c65616e/Variant226c61876d3502a1841413dbc2832c18d6a8c4e9b7e1ff03f6ad8011b3f1a9ca.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `42a50c46f49e5995e8a283ff320b858f43ccede5`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EmlShefferTraceNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [EmlTraceTree](declarations/emltracetree.md) | 18 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [EmlBoundaryBit](declarations/emlboundarybit.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [EmlResiduePolarity](declarations/emlresiduepolarity.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `inductive` | [ProofAuthorityPhase](declarations/proofauthorityphase.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `inductive` | [ProofClaimStatus](declarations/proofclaimstatus.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [nodeCount](declarations/nodecount.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [leafCount](declarations/leafcount.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [emlNodeCount](declarations/emlnodecount.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [maxDepth](declarations/maxdepth.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [terminalCount](declarations/terminalcount.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [residueLeafCount](declarations/residueleafcount.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [emlTraceTreeTheoremAuthority](declarations/emltracetreetheoremauthority.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [emlNandTraceBooleanProjectionDefined](declarations/emlnandtracebooleanprojectiondefined.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [canReleasePositiveEmlPolarity](declarations/canreleasepositiveemlpolarity.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [canReleaseNegativeEmlPolarity](declarations/canreleasenegativeemlpolarity.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [canReleaseEmlPolarity](declarations/canreleaseemlpolarity.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [isMathematicalUnprovabilityClaim](declarations/ismathematicalunprovabilityclaim.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [eml_trace_tree_unit_is_leaf](declarations/eml-trace-tree-unit-is-leaf.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [eml_trace_tree_input_is_leaf](declarations/eml-trace-tree-input-is-leaf.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [eml_trace_tree_residue_is_leaf](declarations/eml-trace-tree-residue-is-leaf.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [eml_trace_tree_node_is_binary](declarations/eml-trace-tree-node-is-binary.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [eml_trace_tree_has_only_one_internal_constructor](declarations/eml-trace-tree-has-only-one-internal-constructor.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [eml_trace_tree_node_count_positive](declarations/eml-trace-tree-node-count-positive.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [eml_trace_tree_leaf_count_positive](declarations/eml-trace-tree-leaf-count-positive.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [eml_trace_tree_finite_by_induction](declarations/eml-trace-tree-finite-by-induction.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [eml_trace_tree_depth_bound_structural](declarations/eml-trace-tree-depth-bound-structural.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [eml_trace_tree_not_theorem_authority](declarations/eml-trace-tree-not-theorem-authority.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [eml_nand_trace_not_boolean_nand_without_projection](declarations/eml-nand-trace-not-boolean-nand-without-projection.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [polarity_release_requires_checked_theorem](declarations/polarity-release-requires-checked-theorem.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [negative_polarity_release_requires_checked_theorem_or_refusal](declarations/negative-polarity-release-requires-checked-theorem-or-refusal.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [advisory_gpt_context_is_not_checked_theorem](declarations/advisory-gpt-context-is-not-checked-theorem.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [cyclic_traversal_is_not_unprovability](declarations/cyclic-traversal-is-not-unprovability.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [unchecked_claim_cannot_release_positive_or_negative_eml](declarations/unchecked-claim-cannot-release-positive-or-negative-eml.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ce90cf487c4b1571a8554610d07e0355d937e656de4e65083738330c0423a687 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f43656e7465722f456d6c5368656666657254726163652e6c65616e/Variant226c61876d3502a1841413dbc2832c18d6a8c4e9b7e1ff03f6ad8011b3f1a9ca.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
