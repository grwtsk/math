# Holder

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 32 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/MetricTopology/Holder/Variant1a4448ffe1be0df1ec95f56a59e460a08e4229f3dfbf6d454285ec980ca152e5.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6dd43c9b7f42d1b33b0fa0f36d15e57ffa2a888d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/Holder.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [HolderWith](declarations/holderwith.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [HolderOnWith](declarations/holderonwith.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [holderOnWith_empty](declarations/holderonwith-empty.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [holderOnWith_singleton](declarations/holderonwith-singleton.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [Set.Subsingleton.holderOnWith](declarations/set-subsingleton-holderonwith.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [holderOnWith_univ](declarations/holderonwith-univ.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [holderOnWith_one](declarations/holderonwith-one.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [holderWith_one](declarations/holderwith-one.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [holderWith_id](declarations/holderwith-id.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [HolderWith.holderOnWith](declarations/holderwith-holderonwith.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [edist_le](declarations/edist-le-source-edition-2.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [edist_le_of_le](declarations/edist-le-of-le.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [comp](declarations/comp.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [comp_holderWith](declarations/comp-holderwith.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [uniformContinuousOn](declarations/uniformcontinuouson.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [continuousOn](declarations/continuouson.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [mono](declarations/mono.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [ediam_image_le_of_le](declarations/ediam-image-le-of-le.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [ediam_image_le](declarations/ediam-image-le.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [ediam_image_le_of_subset](declarations/ediam-image-le-of-subset.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [ediam_image_le_of_subset_of_le](declarations/ediam-image-le-of-subset-of-le.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [ediam_image_inter_le_of_le](declarations/ediam-image-inter-le-of-le.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [ediam_image_inter_le](declarations/ediam-image-inter-le.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [edist_le](declarations/edist-le.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [edist_le_of_le](declarations/edist-le-of-le-source-edition-2.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [comp](declarations/comp-source-edition-2.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [comp_holderOnWith](declarations/comp-holderonwith.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [uniformContinuous](declarations/uniformcontinuous.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [continuous](declarations/continuous.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [ediam_image_le](declarations/ediam-image-le-source-edition-2.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [nndist_le_of_le](declarations/nndist-le-of-le.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [nndist_le](declarations/nndist-le.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [dist_le_of_le](declarations/dist-le-of-le.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [dist_le](declarations/dist-le.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e11d579fbd71f1afd78c433102f0c7ee971a79ab28fa4ecc8c457c48cc926c8b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Holder/Variant1a4448ffe1be0df1ec95f56a59e460a08e4229f3dfbf6d454285ec980ca152e5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
