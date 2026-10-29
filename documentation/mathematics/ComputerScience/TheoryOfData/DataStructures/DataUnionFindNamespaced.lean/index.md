# Data Union Find Namespaced

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**40 observed declarations and anonymous commands**, 20 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant23f4592f2e219d5d63f55e3592fa6923519ecc5e6cd2f95fe0968a70740c8623.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `74cb6ca8121af6cab3b2eef5dc0f71d2ff503822`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/DataUnionFindNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [UFModel](declarations/ufmodel.md) | 20 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [empty](declarations/empty-source-edition-3.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [push](declarations/push-source-edition-4.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [setParent](declarations/setparent.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [setParentBump](declarations/setparentbump.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [UFNode](declarations/ufnode.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `inductive` | [UFModel.Agrees](declarations/ufmodel-agrees.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [mk'](declarations/mk.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [size_eq](declarations/size-eq-source-edition-2.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [get_eq](declarations/get-eq.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [get_eq'](declarations/get-eq-source-edition-2.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [empty](declarations/empty.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [push](declarations/push-source-edition-2.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [set](declarations/set.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [UFModel.Models](declarations/ufmodel-models.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [size_eq](declarations/size-eq.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [parent_eq](declarations/parent-eq.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [parent_eq'](declarations/parent-eq-source-edition-2.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [rank_eq](declarations/rank-eq.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [empty](declarations/empty-source-edition-2.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [push](declarations/push-source-edition-3.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [setParent](declarations/setparent-source-edition-2.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `structure` | [UnionFind](declarations/unionfind.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [size](declarations/size.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [model'](declarations/model.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [empty](declarations/empty-source-edition-4.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [mkEmpty](declarations/mkempty.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [rank](declarations/rank.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [rankMaxAux](declarations/rankmaxaux.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [rankMax](declarations/rankmax.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [lt_rankMax'](declarations/lt-rankmax-source-edition-2.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [lt_rankMax](declarations/lt-rankmax.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [rank_eq](declarations/rank-eq-source-edition-2.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [rank_lt](declarations/rank-lt.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [parent_lt](declarations/parent-lt.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [push](declarations/push.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [findAux](declarations/findaux.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [find](declarations/find.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [link](declarations/link.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [union](declarations/union.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c98d654faadf0f72c75278c4cc473a320071df5913f469375c09f232978fac4d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant23f4592f2e219d5d63f55e3592fa6923519ecc5e6cd2f95fe0968a70740c8623.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
