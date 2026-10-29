# Clique Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**36 observed declarations and anonymous commands**, 28 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant9df69fe3e0364848bab04504f4f75baa9d8419016d9251e1ff69abfafbacb7a8.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9c429992d5bdcc76e690d58c9751e16c34dfc15b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/GraphTheory/CliqueNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IsClique](declarations/isclique.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [isClique_iff](declarations/isclique-iff.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [isClique_iff_induce_eq](declarations/isclique-iff-induce-eq.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [IsClique.mono](declarations/isclique-mono.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [IsClique.subset](declarations/isclique-subset.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [isClique_bot_iff](declarations/isclique-bot-iff.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [IsNClique](declarations/isnclique.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [isNClique_iff](declarations/isnclique-iff.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [IsNClique.mono](declarations/isnclique-mono.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [isNClique_bot_iff](declarations/isnclique-bot-iff.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [is3Clique_triple_iff](declarations/is3clique-triple-iff.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [is3Clique_iff](declarations/is3clique-iff.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [CliqueFree](declarations/cliquefree.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [IsNClique.not_cliqueFree](declarations/isnclique-not-cliquefree.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [not_cliqueFree_of_top_embedding](declarations/not-cliquefree-of-top-embedding.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [topEmbeddingOfNotCliqueFree](declarations/topembeddingofnotcliquefree.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [not_cliqueFree_iff](declarations/not-cliquefree-iff.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [cliqueFree_iff](declarations/cliquefree-iff.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [not_cliqueFree_card_of_top_embedding](declarations/not-cliquefree-card-of-top-embedding.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [cliqueFree_bot](declarations/cliquefree-bot.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [CliqueFree.mono](declarations/cliquefree-mono.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [CliqueFree.anti](declarations/cliquefree-anti.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [cliqueFree_of_card_lt](declarations/cliquefree-of-card-lt.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [cliqueFree_completeMultipartiteGraph](declarations/cliquefree-completemultipartitegraph.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [cliqueSet](declarations/cliqueset.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [mem_cliqueSet_iff](declarations/mem-cliqueset-iff.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [cliqueSet_eq_empty_iff](declarations/cliqueset-eq-empty-iff.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [cliqueSet_mono](declarations/cliqueset-mono-source-edition-2.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [cliqueSet_mono'](declarations/cliqueset-mono.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [cliqueFinset](declarations/cliquefinset.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [mem_cliqueFinset_iff](declarations/mem-cliquefinset-iff.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [coe_cliqueFinset](declarations/coe-cliquefinset.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [cliqueFinset_eq_empty_iff](declarations/cliquefinset-eq-empty-iff.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [cliqueFinset_mono](declarations/cliquefinset-mono.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8e13bef41f3d5fd886912e406f408fdfa8d6f40332a21d6df59fc28c294a9306 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant9df69fe3e0364848bab04504f4f75baa9d8419016d9251e1ff69abfafbacb7a8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
