# Simple Graph Turan

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**25 observed declarations and anonymous commands**, 19 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbd9ce3341c3d02acd58cd17fd6309f81f64a52b287d8161dd9d706e944e0cc03.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `295af5883ccc41255c62461ef2d771e09d8ad4c0`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/GraphTheory/SimpleGraphTuran.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsTuranMaximal](declarations/isturanmaximal.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [IsTuranMaximal.le_iff_eq](declarations/isturanmaximal-le-iff-eq.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [turanGraph](declarations/turangraph.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [turanGraph.instDecidableRelAdj](declarations/turangraph-instdecidablereladj.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [turanGraph_zero](declarations/turangraph-zero.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [turanGraph_eq_top](declarations/turangraph-eq-top.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [turanGraph_cliqueFree](declarations/turangraph-cliquefree.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [not_cliqueFree_of_isTuranMaximal](declarations/not-cliquefree-of-isturanmaximal.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [exists_isTuranMaximal](declarations/exists-isturanmaximal.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [degree_eq_of_not_adj](declarations/degree-eq-of-not-adj.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [not_adj_trans](declarations/not-adj-trans.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [equivalence_not_adj](declarations/equivalence-not-adj.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [setoid](declarations/setoid.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [(anonymous)](declarations/instance.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [finpartition](declarations/finpartition.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [not_adj_iff_part_eq](declarations/not-adj-iff-part-eq.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [degree_eq_card_sub_part_card](declarations/degree-eq-card-sub-part-card.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [isEquipartition](declarations/isequipartition.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [card_parts_le](declarations/card-parts-le.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [card_parts](declarations/card-parts.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [nonempty_iso_turanGraph](declarations/nonempty-iso-turangraph.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [isTuranMaximal_of_iso](declarations/isturanmaximal-of-iso.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [IsTuranMaximal.iso](declarations/isturanmaximal-iso.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [isTuranMaximal_turanGraph](declarations/isturanmaximal-turangraph.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [isTuranMaximal_iff_nonempty_iso_turanGraph](declarations/isturanmaximal-iff-nonempty-iso-turangraph.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c946064e667d68fcee9b07b7ebd84435033f2e3c9d0563c084b5d68a32e91825 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbd9ce3341c3d02acd58cd17fd6309f81f64a52b287d8161dd9d706e944e0cc03.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
