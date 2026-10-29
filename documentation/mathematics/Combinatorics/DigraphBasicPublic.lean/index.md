# Digraph Basic Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**42 observed declarations and anonymous commands**, 15 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant9918a809220fefb8fe621c603aaf1d283a30f98fe585eb576a34c1cf6169374f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f7d7ca485ebaa182deaee4f9495409c18775f941`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/Combinatorics/DigraphBasicPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Digraph](declarations/digraph.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Digraph.mk'](declarations/digraph-mk.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [completeDigraph](declarations/completedigraph.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [emptyDigraph](declarations/emptydigraph.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [completeBipartiteGraph](declarations/completebipartitegraph.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [adj_injective](declarations/adj-injective.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [adj_inj](declarations/adj-inj.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [IsSubgraph](declarations/issubgraph.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [isSubgraph_eq_le](declarations/issubgraph-eq-le.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [sup_adj](declarations/sup-adj.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [(anonymous)](declarations/instance.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [inf_adj](declarations/inf-adj.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [compl_adj](declarations/compl-adj.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [sdiff](declarations/sdiff.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [sdiff_adj](declarations/sdiff-adj.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [supSet](declarations/supset.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [infSet](declarations/infset.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [sSup_adj](declarations/ssup-adj.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [sInf_adj](declarations/sinf-adj.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [iSup_adj](declarations/isup-adj.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [iInf_adj](declarations/iinf-adj.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [distribLattice](declarations/distriblattice.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [completeAtomicBooleanAlgebra](declarations/completeatomicbooleanalgebra.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [top_adj](declarations/top-adj.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [bot_adj](declarations/bot-adj.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [completeDigraph_eq_top](declarations/completedigraph-eq-top.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [emptyDigraph_eq_bot](declarations/emptydigraph-eq-bot.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [Bot.adjDecidable](declarations/bot-adjdecidable.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [Sup.adjDecidable](declarations/sup-adjdecidable.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [Inf.adjDecidable](declarations/inf-adjdecidable.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [SDiff.adjDecidable](declarations/sdiff-adjdecidable.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [Top.adjDecidable](declarations/top-adjdecidable.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [Compl.adjDecidable](declarations/compl-adjdecidable.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a492dd3c4735a48dee215f2d72a3f27db6f36c6cf78dc432c1ee7cbde8e3d27a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant9918a809220fefb8fe621c603aaf1d283a30f98fe585eb576a34c1cf6169374f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
