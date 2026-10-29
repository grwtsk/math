# Walk Counting Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 14 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/WalkCounting/Variant1c1c62e3696dab8bf3cbf70fc8a3943e535cba0e1886875dc8bb4a0e86e07b70.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `306289f93a83a0d02fd463ebfb20e8ab4438e574`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/GraphTheory/WalkCountingNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [set_walk_self_length_zero_eq](declarations/set-walk-self-length-zero-eq.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [set_walk_length_zero_eq_of_ne](declarations/set-walk-length-zero-eq-of-ne.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [set_walk_length_succ_eq](declarations/set-walk-length-succ-eq.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [walkLengthTwoEquivCommonNeighbors](declarations/walklengthtwoequivcommonneighbors.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [finsetWalkLength](declarations/finsetwalklength.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [coe_finsetWalkLength_eq](declarations/coe-finsetwalklength-eq.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [mem_finsetWalkLength_iff](declarations/mem-finsetwalklength-iff.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [finsetWalkLengthLT](declarations/finsetwalklengthlt.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [coe_finsetWalkLengthLT_eq](declarations/coe-finsetwalklengthlt-eq.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [mem_finsetWalkLengthLT_iff](declarations/mem-finsetwalklengthlt-iff.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [fintypeSetWalkLength](declarations/fintypesetwalklength.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [fintypeSubtypeWalkLength](declarations/fintypesubtypewalklength.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [set_walk_length_toFinset_eq](declarations/set-walk-length-tofinset-eq.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [card_set_walk_length_eq](declarations/card-set-walk-length-eq.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [fintypeSetWalkLengthLT](declarations/fintypesetwalklengthlt.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [fintypeSubtypeWalkLengthLT](declarations/fintypesubtypewalklengthlt.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [fintypeSetPathLength](declarations/fintypesetpathlength.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [fintypeSubtypePathLength](declarations/fintypesubtypepathlength.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [fintypeSetPathLengthLT](declarations/fintypesetpathlengthlt.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [fintypeSubtypePathLengthLT](declarations/fintypesubtypepathlengthlt.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [reachable_iff_exists_finsetWalkLength_nonempty](declarations/reachable-iff-exists-finsetwalklength-nonempty.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [Path.instFintype](declarations/path-instfintype.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [instDecidableMemSupp](declarations/instdecidablememsupp.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [disjiUnion_supp_toFinset_eq_supp_toFinset](declarations/disjiunion-supp-tofinset-eq-supp-tofinset.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `abbrev` | [oddComponents](declarations/oddcomponents.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [ConnectedComponent.odd_oddComponents_ncard_subset_supp](declarations/connectedcomponent-odd-oddcomponents-ncard-subset-supp.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [odd_ncard_oddComponents](declarations/odd-ncard-oddcomponents.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [ncard_oddComponents_mono](declarations/ncard-oddcomponents-mono.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3a807174ed2be693e8c3110f1d14b6577d6b56df8608162cbaeeb43ea211d9ba -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/WalkCounting/Variant1c1c62e3696dab8bf3cbf70fc8a3943e535cba0e1886875dc8bb4a0e86e07b70.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
