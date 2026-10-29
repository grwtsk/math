# Operational Topology

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**48 observed declarations and anonymous commands**, 15 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/OperationalTopology/Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bddad040d8697e3f3bcf8c400b2337d78a106b5d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/OperationalTopology.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [OperationalRelation](declarations/operationalrelation.md) | 15 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [closure](declarations/closure.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [mem_closure](declarations/mem-closure.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [closure_empty](declarations/closure-empty.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [subset_closure](declarations/subset-closure.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [closure_union](declarations/closure-union.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [closure_idem](declarations/closure-idem.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [KuratowskiCertificate](declarations/kuratowskicertificate-source-edition-2.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [kuratowskiCertificate](declarations/kuratowskicertificate.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [operationalTopology](declarations/operationaltopology.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [isClosed_iff_upward](declarations/isclosed-iff-upward.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [isClosed_closure](declarations/isclosed-closure.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [topological_closure_eq](declarations/topological-closure-eq.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [interior](declarations/interior.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [boundary](declarations/boundary.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [exitBoundary](declarations/exitboundary.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [entryBoundary](declarations/entryboundary.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [lowerSet](declarations/lowerset.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [mem_lowerSet](declarations/mem-lowerset.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [isOpen_lowerSet](declarations/isopen-lowerset.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [isOpen_sInter](declarations/isopen-sinter.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [MonotoneTo](declarations/monotoneto.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [continuous_of_monotone](declarations/continuous-of-monotone.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [monotone_of_continuous](declarations/monotone-of-continuous.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [continuous_iff_monotone](declarations/continuous-iff-monotone.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [Mutual](declarations/mutual.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [mutualSetoid](declarations/mutualsetoid.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `abbrev` | [T0Carrier](declarations/t0carrier.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `inductive` | [OperationalDependencyKind](declarations/operationaldependencykind.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `structure` | [OperationalDependencyEdge](declarations/operationaldependencyedge.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `structure` | [OperationalDependencyRelationRecord](declarations/operationaldependencyrelationrecord.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `structure` | [OperationalClosureRecord](declarations/operationalclosurerecord.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `inductive` | [SpecializationOrientation](declarations/specializationorientation.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `structure` | [TopologyResourceBounds](declarations/topologyresourcebounds.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `structure` | [OperationalTopologyRecord](declarations/operationaltopologyrecord.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `structure` | [ClassicalTopologyCertificate](declarations/classicaltopologycertificate.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `structure` | [OperationalBoundaryRecord](declarations/operationalboundaryrecord.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `structure` | [DirectedBoundaryRecord](declarations/directedboundaryrecord.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `inductive` | [ResidualBlockingReason](declarations/residualblockingreason.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `structure` | [ResidualFrontierEdge](declarations/residualfrontieredge.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `structure` | [ResidualFrontierRecord](declarations/residualfrontierrecord.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `inductive` | [TopologyConstructionKind](declarations/topologyconstructionkind.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `structure` | [OperationalTopologyConstruction](declarations/operationaltopologyconstruction.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `inductive` | [HomeomorphismStatus](declarations/homeomorphismstatus.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `structure` | [OperationalContinuityCertificate](declarations/operationalcontinuitycertificate.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `inductive` | [TheoremHypothesisStatus](declarations/theoremhypothesisstatus.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `structure` | [TheoremHypothesisWitness](declarations/theoremhypothesiswitness.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `structure` | [TopologicalTheoremApplicabilityCertificate](declarations/topologicaltheoremapplicabilitycertificate.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b5b61cfcf8565a32921dc983487d75709860c809c6b28bef76f32dabde842429 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/OperationalTopology/Variant0fc580e0b89cfe751dd11a79979ae81f88daca6703c99c52b9dc1964603ae18f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
