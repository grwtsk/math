# Atlas Namespaced Alternative5

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 17 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variantf5d62754e0b8c1c96604f3bdfa9b21026196416720c73f53450cbe69f908c993.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2a1f36623963069de48ee616c31dc3d1f51e1f75`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/AtlasNamespacedAlternative5.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [AtlasTheory](declarations/atlastheory.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [FiniteAtlas](declarations/finiteatlas.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [PaperChart](declarations/paperchart.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [FiniteAtlas.closure_sound](declarations/finiteatlas-closure-sound.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [attachChart](declarations/attachchart.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [attachChart_extends_facts](declarations/attachchart-extends-facts.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [attachChart_preserves_old_closure](declarations/attachchart-preserves-old-closure.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [attachChart_extends_nodes](declarations/attachchart-extends-nodes.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [attachChart_extends_bridges](declarations/attachchart-extends-bridges.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [attachChart_preserves_bridge_interpretation](declarations/attachchart-preserves-bridge-interpretation.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [attachChart_preserves_targets](declarations/attachchart-preserves-targets.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [attachChart_order_independent](declarations/attachchart-order-independent.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [TargetedAtlas](declarations/targetedatlas.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [TargetedAtlas.CompatibleChart](declarations/targetedatlas-compatiblechart.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [(anonymous)](declarations/instance.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [attachTargetedChart](declarations/attachtargetedchart.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [tryAttachTargetedChart](declarations/tryattachtargetedchart.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [tryAttachTargetedChart_eq_none_iff](declarations/tryattachtargetedchart-eq-none-iff.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [attachTargetedChart_preserves_target_family](declarations/attachtargetedchart-preserves-target-family.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [attachTargetedChart_preserves_leaf_targets](declarations/attachtargetedchart-preserves-leaf-targets.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [TargetConflict](declarations/targetconflict.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [TargetConflict.blocks_compatibility](declarations/targetconflict-blocks-compatibility.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [TargetConflict.blocks_attachment](declarations/targetconflict-blocks-attachment.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `structure` | [ChartConflict](declarations/chartconflict.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [ChartConflict.blocks_admission](declarations/chartconflict-blocks-admission.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [ChartConflict.not_accepted](declarations/chartconflict-not-accepted.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [chartResidual](declarations/chartresidual.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [chartRank](declarations/chartrank.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [chartTransferGain](declarations/charttransfergain.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [chart_residual_antitone](declarations/chart-residual-antitone.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [chart_burden_antitone](declarations/chart-burden-antitone.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=480e85f8f011ec6d3f5aca24c9e15967e250e7c2fd9a589d242f4ad651c7347d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variantf5d62754e0b8c1c96604f3bdfa9b21026196416720c73f53450cbe69f908c993.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
