# Walk Counting

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 14 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/WalkCounting/Variantb7bb2629de72f4541fead1635932e09142cc8c8bc44decc7b9f767184bb2a9db.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `94c1111e81555a91a37824333407c55748c2f72e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/GraphTheory/WalkCounting.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [set_walk_self_length_zero_eq](declarations/set-walk-self-length-zero-eq.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [set_walk_length_zero_eq_of_ne](declarations/set-walk-length-zero-eq-of-ne.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [set_walk_length_succ_eq](declarations/set-walk-length-succ-eq.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [walkLengthTwoEquivCommonNeighbors](declarations/walklengthtwoequivcommonneighbors.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [finsetWalkLength](declarations/finsetwalklength.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [coe_finsetWalkLength_eq](declarations/coe-finsetwalklength-eq.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [mem_finsetWalkLength_iff](declarations/mem-finsetwalklength-iff.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [finsetWalkLengthLT](declarations/finsetwalklengthlt.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [coe_finsetWalkLengthLT_eq](declarations/coe-finsetwalklengthlt-eq.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [mem_finsetWalkLengthLT_iff](declarations/mem-finsetwalklengthlt-iff.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [fintypeSetWalkLength](declarations/fintypesetwalklength.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [fintypeSubtypeWalkLength](declarations/fintypesubtypewalklength.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [set_walk_length_toFinset_eq](declarations/set-walk-length-tofinset-eq.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [card_set_walk_length_eq](declarations/card-set-walk-length-eq.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [fintypeSetWalkLengthLT](declarations/fintypesetwalklengthlt.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [fintypeSubtypeWalkLengthLT](declarations/fintypesubtypewalklengthlt.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [fintypeSetPathLength](declarations/fintypesetpathlength.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [fintypeSubtypePathLength](declarations/fintypesubtypepathlength.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [fintypeSetPathLengthLT](declarations/fintypesetpathlengthlt.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [fintypeSubtypePathLengthLT](declarations/fintypesubtypepathlengthlt.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [reachable_iff_exists_finsetWalkLength_nonempty](declarations/reachable-iff-exists-finsetwalklength-nonempty.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [(anonymous)](declarations/instance.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [Path.instFintype](declarations/path-instfintype.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [instDecidableMemSupp](declarations/instdecidablememsupp.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [disjiUnion_supp_toFinset_eq_supp_toFinset](declarations/disjiunion-supp-tofinset-eq-supp-tofinset.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `abbrev` | [oddComponents](declarations/oddcomponents.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [ConnectedComponent.odd_oddComponents_ncard_subset_supp](declarations/connectedcomponent-odd-oddcomponents-ncard-subset-supp.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [odd_ncard_oddComponents](declarations/odd-ncard-oddcomponents.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [ncard_oddComponents_mono](declarations/ncard-oddcomponents-mono.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2c517c9712f62401da5d24db825ce7822ff27a7a82b9c3e49499a151020b5af9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/WalkCounting/Variantb7bb2629de72f4541fead1635932e09142cc8c8bc44decc7b9f767184bb2a9db.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
