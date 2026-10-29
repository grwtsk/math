# Digraph Basic Namespaced Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**42 observed declarations and anonymous commands**, 15 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantd52abdac1908cb4606353ce0746fea6452b0e9fed4e2909b0754d4da95230eac.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ce12df52e0f7b8fdc5e281293ab8a0fa7fac5956`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/Combinatorics/DigraphBasicNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Digraph](declarations/digraph.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Digraph.mk'](declarations/digraph-mk.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [completeDigraph](declarations/completedigraph.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [emptyDigraph](declarations/emptydigraph.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [completeBipartiteGraph](declarations/completebipartitegraph.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [adj_injective](declarations/adj-injective.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [adj_inj](declarations/adj-inj.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [IsSubgraph](declarations/issubgraph.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [isSubgraph_eq_le](declarations/issubgraph-eq-le.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [sup_adj](declarations/sup-adj.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [inf_adj](declarations/inf-adj.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [compl_adj](declarations/compl-adj.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [sdiff](declarations/sdiff.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [sdiff_adj](declarations/sdiff-adj.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [supSet](declarations/supset.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [infSet](declarations/infset.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [sSup_adj](declarations/ssup-adj.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [sInf_adj](declarations/sinf-adj.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [iSup_adj](declarations/isup-adj.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [iInf_adj](declarations/iinf-adj.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [distribLattice](declarations/distriblattice.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [completeAtomicBooleanAlgebra](declarations/completeatomicbooleanalgebra.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [top_adj](declarations/top-adj.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [bot_adj](declarations/bot-adj.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [completeDigraph_eq_top](declarations/completedigraph-eq-top.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [emptyDigraph_eq_bot](declarations/emptydigraph-eq-bot.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [Bot.adjDecidable](declarations/bot-adjdecidable.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [Sup.adjDecidable](declarations/sup-adjdecidable.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [Inf.adjDecidable](declarations/inf-adjdecidable.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [SDiff.adjDecidable](declarations/sdiff-adjdecidable.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [Top.adjDecidable](declarations/top-adjdecidable.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [Compl.adjDecidable](declarations/compl-adjdecidable.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=00b88c74fd9024f4fd50e9c0498149bbfbe66791a134b21e95e9c5d6677dfc3c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantd52abdac1908cb4606353ce0746fea6452b0e9fed4e2909b0754d4da95230eac.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
