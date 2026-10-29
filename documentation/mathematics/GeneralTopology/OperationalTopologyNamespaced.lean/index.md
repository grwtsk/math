# Operational Topology Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**48 observed declarations and anonymous commands**, 15 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/OperationalTopology/Variant44f3d98a95b0a9a82220454b7d2d658e10c5e15bd096afb43f25860555724562.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2dd39b7f68a7453744cea1f8ead9aa8cac162d1d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/OperationalTopologyNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [OperationalRelation](declarations/operationalrelation.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [closure](declarations/closure.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [mem_closure](declarations/mem-closure.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [closure_empty](declarations/closure-empty.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [subset_closure](declarations/subset-closure.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [closure_union](declarations/closure-union.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [closure_idem](declarations/closure-idem.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [KuratowskiCertificate](declarations/kuratowskicertificate-source-edition-2.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [kuratowskiCertificate](declarations/kuratowskicertificate.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [operationalTopology](declarations/operationaltopology.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [isClosed_iff_upward](declarations/isclosed-iff-upward.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [isClosed_closure](declarations/isclosed-closure.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [topological_closure_eq](declarations/topological-closure-eq.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [interior](declarations/interior.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [boundary](declarations/boundary.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [exitBoundary](declarations/exitboundary.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [entryBoundary](declarations/entryboundary.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [lowerSet](declarations/lowerset.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [mem_lowerSet](declarations/mem-lowerset.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [isOpen_lowerSet](declarations/isopen-lowerset.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [isOpen_sInter](declarations/isopen-sinter.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [MonotoneTo](declarations/monotoneto.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [continuous_of_monotone](declarations/continuous-of-monotone.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [monotone_of_continuous](declarations/monotone-of-continuous.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [continuous_iff_monotone](declarations/continuous-iff-monotone.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [Mutual](declarations/mutual.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [mutualSetoid](declarations/mutualsetoid.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `abbrev` | [T0Carrier](declarations/t0carrier.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `inductive` | [OperationalDependencyKind](declarations/operationaldependencykind.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `structure` | [OperationalDependencyEdge](declarations/operationaldependencyedge.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `structure` | [OperationalDependencyRelationRecord](declarations/operationaldependencyrelationrecord.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `structure` | [OperationalClosureRecord](declarations/operationalclosurerecord.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `inductive` | [SpecializationOrientation](declarations/specializationorientation.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `structure` | [TopologyResourceBounds](declarations/topologyresourcebounds.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `structure` | [OperationalTopologyRecord](declarations/operationaltopologyrecord.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `structure` | [ClassicalTopologyCertificate](declarations/classicaltopologycertificate.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `structure` | [OperationalBoundaryRecord](declarations/operationalboundaryrecord.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `structure` | [DirectedBoundaryRecord](declarations/directedboundaryrecord.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `inductive` | [ResidualBlockingReason](declarations/residualblockingreason.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `structure` | [ResidualFrontierEdge](declarations/residualfrontieredge.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `structure` | [ResidualFrontierRecord](declarations/residualfrontierrecord.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `inductive` | [TopologyConstructionKind](declarations/topologyconstructionkind.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `structure` | [OperationalTopologyConstruction](declarations/operationaltopologyconstruction.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `inductive` | [HomeomorphismStatus](declarations/homeomorphismstatus.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `structure` | [OperationalContinuityCertificate](declarations/operationalcontinuitycertificate.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `inductive` | [TheoremHypothesisStatus](declarations/theoremhypothesisstatus.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `structure` | [TheoremHypothesisWitness](declarations/theoremhypothesiswitness.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `structure` | [TopologicalTheoremApplicabilityCertificate](declarations/topologicaltheoremapplicabilitycertificate.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e761bebc9f05ef9dc5ed4aee3136ff1b467ef643c2597a0b790674fa80152fda -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/OperationalTopology/Variant44f3d98a95b0a9a82220454b7d2d658e10c5e15bd096afb43f25860555724562.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
