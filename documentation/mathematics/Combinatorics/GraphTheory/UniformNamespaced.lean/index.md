# Uniform Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**48 observed declarations and anonymous commands**, 38 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `93d6f2701df20d160a0d8bafc2e818ee19e84d42`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/GraphTheory/UniformNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsUniform](declarations/isuniform.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [IsUniform.instDecidableRel](declarations/isuniform-instdecidablerel.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [IsUniform.mono](declarations/isuniform-mono-source-edition-2.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [IsUniform.symm](declarations/isuniform-symm.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [isUniform_comm](declarations/isuniform-comm.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [isUniform_one](declarations/isuniform-one-source-edition-2.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [IsUniform.pos](declarations/isuniform-pos.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [isUniform_singleton](declarations/isuniform-singleton.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [not_isUniform_zero](declarations/not-isuniform-zero.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [not_isUniform_iff](declarations/not-isuniform-iff.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [nonuniformWitnesses](declarations/nonuniformwitnesses.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [left_nonuniformWitnesses_subset](declarations/left-nonuniformwitnesses-subset.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [left_nonuniformWitnesses_card](declarations/left-nonuniformwitnesses-card.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [right_nonuniformWitnesses_subset](declarations/right-nonuniformwitnesses-subset.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [right_nonuniformWitnesses_card](declarations/right-nonuniformwitnesses-card.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [nonuniformWitnesses_spec](declarations/nonuniformwitnesses-spec.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [nonuniformWitness](declarations/nonuniformwitness.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [nonuniformWitness_subset](declarations/nonuniformwitness-subset.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [le_card_nonuniformWitness](declarations/le-card-nonuniformwitness.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [nonuniformWitness_spec](declarations/nonuniformwitness-spec.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [sparsePairs](declarations/sparsepairs.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [mk_mem_sparsePairs](declarations/mk-mem-sparsepairs.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [sparsePairs_mono](declarations/sparsepairs-mono.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [nonUniforms](declarations/nonuniforms.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [mk_mem_nonUniforms](declarations/mk-mem-nonuniforms.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [nonUniforms_mono](declarations/nonuniforms-mono.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [nonUniforms_bot](declarations/nonuniforms-bot.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [IsUniform](declarations/isuniform-source-edition-2.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [bot_isUniform](declarations/bot-isuniform.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [isUniform_one](declarations/isuniform-one.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [IsUniform.mono](declarations/isuniform-mono.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [isUniformOfEmpty](declarations/isuniformofempty.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [nonempty_of_not_uniform](declarations/nonempty-of-not-uniform.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [nonuniformWitnesses](declarations/nonuniformwitnesses-source-edition-2.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [nonuniformWitness_mem_nonuniformWitnesses](declarations/nonuniformwitness-mem-nonuniformwitnesses.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [IsEquipartition.card_interedges_sparsePairs_le'](declarations/isequipartition-card-interedges-sparsepairs-le-source-edition-2.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [IsEquipartition.card_interedges_sparsePairs_le](declarations/isequipartition-card-interedges-sparsepairs-le.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [aux](declarations/aux.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [IsEquipartition.card_biUnion_offDiag_le'](declarations/isequipartition-card-biunion-offdiag-le-source-edition-2.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [IsEquipartition.card_biUnion_offDiag_le](declarations/isequipartition-card-biunion-offdiag-le.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [IsEquipartition.sum_nonUniforms_lt'](declarations/isequipartition-sum-nonuniforms-lt-source-edition-2.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [IsEquipartition.sum_nonUniforms_lt](declarations/isequipartition-sum-nonuniforms-lt.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [regularityReduced](declarations/regularityreduced.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [regularityReduced.instDecidableRel_adj](declarations/regularityreduced-instdecidablerel-adj.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [regularityReduced_le](declarations/regularityreduced-le.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [regularityReduced_mono](declarations/regularityreduced-mono.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [regularityReduced_anti](declarations/regularityreduced-anti.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [unreduced_edges_subset](declarations/unreduced-edges-subset.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=93ac0700ed5cda2f30f29976b5e653c4903f83d2a6be5420294b38de195aac67 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant16342a9021cbfb2373068125ccd438a404b9dc60ee0003ad682b0b3ed08cdb3e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
