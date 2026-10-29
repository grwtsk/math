# Pipeline

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**39 observed declarations and anonymous commands**, 17 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Geometry/AlgebraicGeometry/Pipeline/Variant7f763ef8e0f38555dbc28c814adcd4406561f3e744f15af2784b3f284921ccd3.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b910250487337b4665be1a1db1b4aa8def7bac77`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/Geometry/Pipeline.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [ProgressivePipelineStage](declarations/progressivepipelinestage.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [assuranceLevel](declarations/assurancelevel.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [Depends](declarations/depends-source-edition-2.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [assuranceLevel_monotone_on_edge](declarations/assurancelevel-monotone-on-edge.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [interactiveDevelopment_level](declarations/interactivedevelopment-level.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `inductive` | [PipelineStage](declarations/pipelinestage.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [PipelineState](declarations/pipelinestate.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [StageSpec](declarations/stagespec.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `inductive` | [CanonicalStageDepends](declarations/canonicalstagedepends.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [canonicalStageRank](declarations/canonicalstagerank.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [canonicalStageGraph](declarations/canonicalstagegraph.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [canonicalStageTransition](declarations/canonicalstagetransition.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [canonicalStageSpec](declarations/canonicalstagespec.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [canonicalStageTransition_satisfies_spec](declarations/canonicalstagetransition-satisfies-spec.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [canonicalStageDependency_mem_spec](declarations/canonicalstagedependency-mem-spec.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [collectEvidence_source_execution_boundary](declarations/collectevidence-source-execution-boundary.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [classifyClaims_source_execution_boundary](declarations/classifyclaims-source-execution-boundary.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [rustOwnedStage_source_not_certified](declarations/rustownedstage-source-not-certified.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [canonicalStageGraph_wellFounded](declarations/canonicalstagegraph-wellfounded.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [canonicalStageGraph_acyclic](declarations/canonicalstagegraph-acyclic.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `inductive` | [OptionalAnalysisStage](declarations/optionalanalysisstage.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [developerDefault](declarations/developerdefault.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [assuranceLevel](declarations/assurancelevel-source-edition-2.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [inputs](declarations/inputs.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `structure` | [Spec](declarations/spec-source-edition-2.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `inductive` | [Depends](declarations/depends.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [rank](declarations/rank.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [dependencyGraph](declarations/dependencygraph.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [transition](declarations/transition.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [spec](declarations/spec.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [transition_satisfies_spec](declarations/transition-satisfies-spec.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [dependency_mem_spec](declarations/dependency-mem-spec.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [assurance_monotone_on_edge](declarations/assurance-monotone-on-edge.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [dependencyGraph_wellFounded](declarations/dependencygraph-wellfounded.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [dependencyGraph_acyclic](declarations/dependencygraph-acyclic.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [source_execution_boundary](declarations/source-execution-boundary.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [developerDefault_false](declarations/developerdefault-false.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [all](declarations/all.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [absent_from_default_development](declarations/absent-from-default-development.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ad679dcedd69c51672544a2be162a0051a868382620045feb317d495d741152a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/Pipeline/Variant7f763ef8e0f38555dbc28c814adcd4406561f3e744f15af2784b3f284921ccd3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
