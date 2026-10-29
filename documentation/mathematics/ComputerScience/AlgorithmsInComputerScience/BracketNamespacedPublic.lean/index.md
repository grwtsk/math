# Bracket Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 15 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variant84012d338357a3e887b3427a1c9ef3e7adcd44aa714e839057321f688a931c7d.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f7a613629d21c1f0f59bc2fc22050347eb4b5a4b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/BracketNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [BracketBit](declarations/bracketbit.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [BracketProgram](declarations/bracketprogram.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [BracketBit.toDyck](declarations/bracketbit-todyck.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [BracketBit.ofDyck](declarations/bracketbit-ofdyck.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [BracketBit.toDyck_ofDyck](declarations/bracketbit-todyck-ofdyck.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [BracketBit.ofDyck_toDyck](declarations/bracketbit-ofdyck-todyck.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `inductive` | [FiniteTree](declarations/finitetree.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [FiniteTree.nodeCount](declarations/finitetree-nodecount.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [finiteForestNodeCount](declarations/finiteforestnodecount.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [finiteForestBinary](declarations/finiteforestbinary.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [projectForestDyck](declarations/projectforestdyck.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [projectForest](declarations/projectforest.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [projectTree](declarations/projecttree.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [prefixDepth](declarations/prefixdepth.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [finalDepth](declarations/finaldepth.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [prefixValid](declarations/prefixvalid.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [balanced](declarations/balanced.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [maxDepth](declarations/maxdepth.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [structuralEnergy](declarations/structuralenergy.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [projectForest_toDyck](declarations/projectforest-todyck.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [take_map_local](declarations/take-map-local.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [finiteForestBinary_numNodes](declarations/finiteforestbinary-numnodes.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [projectForest_semilength_eq_nodeCount](declarations/projectforest-semilength-eq-nodecount.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [projectForest_length_eq_twice_nodeCount](declarations/projectforest-length-eq-twice-nodecount.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [projectForest_prefixValid](declarations/projectforest-prefixvalid.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [projectForest_finalDepth_zero](declarations/projectforest-finaldepth-zero.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [projectForest_balanced](declarations/projectforest-balanced.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [projectTree_prefixValid](declarations/projecttree-prefixvalid.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [projectTree_finalDepth_zero](declarations/projecttree-finaldepth-zero.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [projectTree_balanced](declarations/projecttree-balanced.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [projectTree_length_eq_twice_nodeCount](declarations/projecttree-length-eq-twice-nodecount.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `structure` | [RichTreeState](declarations/richtreestate.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [RichTreeState.binaryLogicProjection](declarations/richtreestate-binarylogicprojection.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [binaryLogicProjection_is_lossy](declarations/binarylogicprojection-is-lossy.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e0131b168ff7f0a81996c0cd0e6c92e78ce04f3ea4c6fa8b206e5ea9924a58d3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bracket/Variant84012d338357a3e887b3427a1c9ef3e7adcd44aa714e839057321f688a931c7d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
