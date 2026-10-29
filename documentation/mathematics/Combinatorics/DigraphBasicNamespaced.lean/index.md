# Digraph Basic Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**41 observed declarations and anonymous commands**, 15 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant182b91fbeb3974f1ca86d4a830baeb47b0d8fcb4e4c9b3da7b1b4fb0267142c4.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `55bd0e1e20438cd4f2449b7ec87bf391a0b42dbc`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/Combinatorics/DigraphBasicNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Digraph](declarations/digraph.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Digraph.mk'](declarations/digraph-mk.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [completeDigraph](declarations/completedigraph.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [emptyDigraph](declarations/emptydigraph.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [completeBipartiteGraph](declarations/completebipartitegraph.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [adj_injective](declarations/adj-injective.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [adj_inj](declarations/adj-inj.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [IsSubgraph](declarations/issubgraph.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [isSubgraph_eq_le](declarations/issubgraph-eq-le.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [sup_adj](declarations/sup-adj.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [inf_adj](declarations/inf-adj.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [hasCompl](declarations/hascompl.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [compl_adj](declarations/compl-adj.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [sdiff](declarations/sdiff.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [sdiff_adj](declarations/sdiff-adj.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [supSet](declarations/supset.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [infSet](declarations/infset.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [sSup_adj](declarations/ssup-adj.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [sInf_adj](declarations/sinf-adj.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [iSup_adj](declarations/isup-adj.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [iInf_adj](declarations/iinf-adj.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [distribLattice](declarations/distriblattice.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [completeAtomicBooleanAlgebra](declarations/completeatomicbooleanalgebra.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [top_adj](declarations/top-adj.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [bot_adj](declarations/bot-adj.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [completeDigraph_eq_top](declarations/completedigraph-eq-top.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [emptyDigraph_eq_bot](declarations/emptydigraph-eq-bot.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [Bot.adjDecidable](declarations/bot-adjdecidable.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [Sup.adjDecidable](declarations/sup-adjdecidable.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [Inf.adjDecidable](declarations/inf-adjdecidable.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [SDiff.adjDecidable](declarations/sdiff-adjdecidable.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [Top.adjDecidable](declarations/top-adjdecidable.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [Compl.adjDecidable](declarations/compl-adjdecidable.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=056b7325e8e2cbee7f344740259adfd723c933d94baf6eb409eaf4b1f67f8ce0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant182b91fbeb3974f1ca86d4a830baeb47b0d8fcb4e4c9b3da7b1b4fb0267142c4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
