# Ord Connected Component

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 25 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant1c20001a76b00d21699b5515f78b7d124263d52097001e9515457f292d6c6c15.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e57168ed22fa04bc00de9740cce68979dc0257ce`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedComponent.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [ordConnectedComponent](declarations/ordconnectedcomponent.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [mem_ordConnectedComponent](declarations/mem-ordconnectedcomponent.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [dual_ordConnectedComponent](declarations/dual-ordconnectedcomponent.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [ordConnectedComponent_subset](declarations/ordconnectedcomponent-subset.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [subset_ordConnectedComponent](declarations/subset-ordconnectedcomponent.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [self_mem_ordConnectedComponent](declarations/self-mem-ordconnectedcomponent.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [nonempty_ordConnectedComponent](declarations/nonempty-ordconnectedcomponent.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [ordConnectedComponent_eq_empty](declarations/ordconnectedcomponent-eq-empty.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [ordConnectedComponent_empty](declarations/ordconnectedcomponent-empty.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [ordConnectedComponent_univ](declarations/ordconnectedcomponent-univ.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [ordConnectedComponent_inter](declarations/ordconnectedcomponent-inter.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [mem_ordConnectedComponent_comm](declarations/mem-ordconnectedcomponent-comm.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [mem_ordConnectedComponent_trans](declarations/mem-ordconnectedcomponent-trans.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [ordConnectedComponent_eq](declarations/ordconnectedcomponent-eq.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [(anonymous)](declarations/instance.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [ordConnectedProj](declarations/ordconnectedproj.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [ordConnectedProj_mem_ordConnectedComponent](declarations/ordconnectedproj-mem-ordconnectedcomponent.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [mem_ordConnectedComponent_ordConnectedProj](declarations/mem-ordconnectedcomponent-ordconnectedproj.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [ordConnectedComponent_ordConnectedProj](declarations/ordconnectedcomponent-ordconnectedproj.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [ordConnectedProj_eq](declarations/ordconnectedproj-eq.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [ordConnectedSection](declarations/ordconnectedsection.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [dual_ordConnectedSection](declarations/dual-ordconnectedsection.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [ordConnectedSection_subset](declarations/ordconnectedsection-subset.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [eq_of_mem_ordConnectedSection_of_uIcc_subset](declarations/eq-of-mem-ordconnectedsection-of-uicc-subset.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [ordSeparatingSet](declarations/ordseparatingset.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [ordSeparatingSet_comm](declarations/ordseparatingset-comm.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [disjoint_left_ordSeparatingSet](declarations/disjoint-left-ordseparatingset.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [disjoint_right_ordSeparatingSet](declarations/disjoint-right-ordseparatingset.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [dual_ordSeparatingSet](declarations/dual-ordseparatingset.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [ordT5Nhd](declarations/ordt5nhd.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [disjoint_ordT5Nhd](declarations/disjoint-ordt5nhd.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ffc625a0dc38b0d975ef4ab73d619e80c369315c5249e98ac0ef5c49025d32a4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant1c20001a76b00d21699b5515f78b7d124263d52097001e9515457f292d6c6c15.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
