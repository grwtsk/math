# Clique

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**36 observed declarations and anonymous commands**, 28 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variantd488aff51200135bce8d07c35b2d9d0cb52fb30b86839e97533062c31e1aff8b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3758c79cad00f794e75c5849929b04130d3625cd`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/GraphTheory/Clique.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IsClique](declarations/isclique.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [isClique_iff](declarations/isclique-iff.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [isClique_iff_induce_eq](declarations/isclique-iff-induce-eq.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [IsClique.mono](declarations/isclique-mono.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [IsClique.subset](declarations/isclique-subset.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [isClique_bot_iff](declarations/isclique-bot-iff.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [IsNClique](declarations/isnclique.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [isNClique_iff](declarations/isnclique-iff.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [IsNClique.mono](declarations/isnclique-mono.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [isNClique_bot_iff](declarations/isnclique-bot-iff.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [is3Clique_triple_iff](declarations/is3clique-triple-iff.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [is3Clique_iff](declarations/is3clique-iff.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [CliqueFree](declarations/cliquefree.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [IsNClique.not_cliqueFree](declarations/isnclique-not-cliquefree.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [not_cliqueFree_of_top_embedding](declarations/not-cliquefree-of-top-embedding.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [topEmbeddingOfNotCliqueFree](declarations/topembeddingofnotcliquefree.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [not_cliqueFree_iff](declarations/not-cliquefree-iff.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [cliqueFree_iff](declarations/cliquefree-iff.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [not_cliqueFree_card_of_top_embedding](declarations/not-cliquefree-card-of-top-embedding.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [cliqueFree_bot](declarations/cliquefree-bot.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [CliqueFree.mono](declarations/cliquefree-mono.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [CliqueFree.anti](declarations/cliquefree-anti.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [cliqueFree_of_card_lt](declarations/cliquefree-of-card-lt.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [cliqueFree_completeMultipartiteGraph](declarations/cliquefree-completemultipartitegraph.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [cliqueSet](declarations/cliqueset.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [mem_cliqueSet_iff](declarations/mem-cliqueset-iff.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [cliqueSet_eq_empty_iff](declarations/cliqueset-eq-empty-iff.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [cliqueSet_mono](declarations/cliqueset-mono-source-edition-2.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [cliqueSet_mono'](declarations/cliqueset-mono.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [cliqueFinset](declarations/cliquefinset.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [mem_cliqueFinset_iff](declarations/mem-cliquefinset-iff.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [coe_cliqueFinset](declarations/coe-cliquefinset.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [cliqueFinset_eq_empty_iff](declarations/cliquefinset-eq-empty-iff.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [cliqueFinset_mono](declarations/cliquefinset-mono.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c5e62fc5495afc2bf676289a625c0b4d29fe467c96cd15515324f1ff065f22a1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variantd488aff51200135bce8d07c35b2d9d0cb52fb30b86839e97533062c31e1aff8b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
