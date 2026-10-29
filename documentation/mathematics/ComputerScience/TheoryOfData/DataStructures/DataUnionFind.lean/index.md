# Data Union Find

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**40 observed declarations and anonymous commands**, 20 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant0414aa584a4cfdcbebea9b065d3e55a5b62f33c9ef7700782f79bab88ca02777.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2cc517db1e15529a0ad6701d0f2eebe7faa45470`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/DataUnionFind.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [UFModel](declarations/ufmodel.md) | 12 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [empty](declarations/empty-source-edition-3.md) | 19 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [push](declarations/push-source-edition-2.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [setParent](declarations/setparent.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [setParentBump](declarations/setparentbump.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [UFNode](declarations/ufnode.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `inductive` | [UFModel.Agrees](declarations/ufmodel-agrees.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [mk'](declarations/mk.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [size_eq](declarations/size-eq-source-edition-2.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [get_eq](declarations/get-eq.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [get_eq'](declarations/get-eq-source-edition-2.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [empty](declarations/empty-source-edition-2.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [push](declarations/push-source-edition-3.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [set](declarations/set.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [UFModel.Models](declarations/ufmodel-models.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [size_eq](declarations/size-eq.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [parent_eq](declarations/parent-eq-source-edition-2.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [parent_eq'](declarations/parent-eq.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [rank_eq](declarations/rank-eq-source-edition-2.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [empty](declarations/empty.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [push](declarations/push-source-edition-4.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [setParent](declarations/setparent-source-edition-2.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `structure` | [UnionFind](declarations/unionfind.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [size](declarations/size.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [model'](declarations/model.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [empty](declarations/empty-source-edition-4.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [mkEmpty](declarations/mkempty.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [rank](declarations/rank.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [rankMaxAux](declarations/rankmaxaux.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [rankMax](declarations/rankmax.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [lt_rankMax'](declarations/lt-rankmax-source-edition-2.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [lt_rankMax](declarations/lt-rankmax.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [rank_eq](declarations/rank-eq.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [rank_lt](declarations/rank-lt.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [parent_lt](declarations/parent-lt.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [push](declarations/push.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [findAux](declarations/findaux.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [find](declarations/find.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [link](declarations/link.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [union](declarations/union.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6d2bd31beb3d4fd94f93021bdceb35a97a4c7279adc4e462d5203d16081c1d93 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant0414aa584a4cfdcbebea9b065d3e55a5b62f33c9ef7700782f79bab88ca02777.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
