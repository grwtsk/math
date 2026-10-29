# Avalanche Reconciliation

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 12 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/AvalancheReconciliation/Variantdae4c8fc20724714690baf6fc0036bd9b1c2580988d3f2dc154ef7378f39831b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9e85d1315ff6f942b61c41018bbe6c2a6694f3e3`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/GeneralLogic/AvalancheReconciliation.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [GlobalLocalRelaxationSquare](declarations/globallocalrelaxationsquare.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [globalResult](declarations/globalresult.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [localResult](declarations/localresult.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [globalResult_restrict](declarations/globalresult-restrict.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [threshold_globalResult_restrict](declarations/threshold-globalresult-restrict.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [GlobalLocalReconciliationObstruction](declarations/globallocalreconciliationobstruction.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `inductive` | [GlobalLocalReconciliationStatus](declarations/globallocalreconciliationstatus.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [PartitionLocalBoolSections](declarations/partitionlocalboolsections.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [Compatible](declarations/compatible.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [ofGlobal](declarations/ofglobal.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [ofGlobal_compatible](declarations/ofglobal-compatible.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [CompatiblePartitionLocalBoolSections](declarations/compatiblepartitionlocalboolsections.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [PartitionGluingCapability](declarations/partitiongluingcapability.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [partitionSelectedNode](declarations/partitionselectednode.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [partitionSelectedNode_mem](declarations/partitionselectednode-mem.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [mem_partitionSelectedNode_region](declarations/mem-partitionselectednode-region.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [glue](declarations/glue.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [restrict_glue](declarations/restrict-glue.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [compatibleSections_glue_unique](declarations/compatiblesections-glue-unique.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `structure` | [PartitionGlobalLocalRelaxationSystem](declarations/partitiongloballocalrelaxationsystem.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [squareAt](declarations/squareat.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [globalResult](declarations/globalresult-source-edition-2.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [localResult](declarations/localresult-source-edition-2.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [globalResult_restrict](declarations/globalresult-restrict-source-edition-2.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [threshold_globalResult_restrict](declarations/threshold-globalresult-restrict-source-edition-2.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [thresholdSections](declarations/thresholdsections.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [thresholdedLocalStates_agree](declarations/thresholdedlocalstates-agree.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [glued_thresholdSections_eq_global](declarations/glued-thresholdsections-eq-global.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `structure` | [PartitionGlobalLocalReconciliationObligation](declarations/partitiongloballocalreconciliationobligation.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `structure` | [ThresholdInterfaceObstruction](declarations/thresholdinterfaceobstruction.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [ThresholdInterfaceObstruction.not_equal](declarations/thresholdinterfaceobstruction-not-equal.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `inductive` | [PartitionGlobalLocalReconciliationStatus](declarations/partitiongloballocalreconciliationstatus.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=119524d4a87d63e1ecf75daded3cc8269fc2724d72effadb4ef6e5dc61601751 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/AvalancheReconciliation/Variantdae4c8fc20724714690baf6fc0036bd9b1c2580988d3f2dc154ef7378f39831b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
