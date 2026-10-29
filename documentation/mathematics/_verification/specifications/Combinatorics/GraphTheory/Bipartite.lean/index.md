# Verification target: Bipartite

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "62c35c17dce0fea8cdce60f9ad07bff07095943c",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Bipartite/Variantcca5287deba348b1f3dc67d1413ab589032ab261d5cac7e95975148b4737a8e8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/Bipartite.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/Bipartite.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `62c35c17dce0fea8cdce60f9ad07bff07095943c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Bipartite/Variantcca5287deba348b1f3dc67d1413ab589032ab261d5cac7e95975148b4737a8e8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Bipartite/Variantcca5287deba348b1f3dc67d1413ab589032ab261d5cac7e95975148b4737a8e8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Enumerative.DoubleCounting` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.DegreeSum` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsBipartiteWith](../../../../../Combinatorics/GraphTheory/Bipartite.lean/declarations/isbipartitewith.md) | 62 | `declaration-track:babe448bd0d0cf2c8dd4ff4c7cbaee0634422b96cc1d9d72b818f41b457bd438` |
| 2 | `theorem` | [IsBipartiteWith.symm](../../../../../Combinatorics/GraphTheory/Bipartite.lean/declarations/isbipartitewith-symm.md) | 66 | `result-track:c9246537ce12eed4472ff155db29c20b280c3b6909d2d38e0338d3d17bf9762f` |
| 3 | `theorem` | [isBipartiteWith_comm](../../../../../Combinatorics/GraphTheory/Bipartite.lean/declarations/isbipartitewith-comm.md) | 72 | `result-track:504c5912d94713273e0a3d485dc867950abe733dce385a23dbd9b844b2cdf416` |
| 4 | `theorem` | [IsBipartiteWith.mem_of_mem_adj](../../../../../Combinatorics/GraphTheory/Bipartite.lean/declarations/isbipartitewith-mem-of-mem-adj.md) | 76 | `result-track:05e73a569f2011e91d3a1cd0f35ae7506637489ba41d466a513be7772e741534` |
| 5 | `theorem` | [isBipartiteWith_neighborSet](../../../../../Combinatorics/GraphTheory/Bipartite.lean/declarations/isbipartitewith-neighborset.md) | 84 | `result-track:a99c923b148a14e5ffee4ac03ce5eb2ff8fd7df0935f7148222020174dbedc2b` |
| 6 | `theorem` | [isBipartiteWith_neighborSet_subset](../../../../../Combinatorics/GraphTheory/Bipartite.lean/declarations/isbipartitewith-neighborset-subset-source-edition-2.md) | 91 | `result-track:a85f25cf33aa57ba8cf396b7070575f90f2cf6584fa75776a50db684f5da6a26` |
| 7 | `theorem` | [isBipartiteWith_neighborSet_disjoint](../../../../../Combinatorics/GraphTheory/Bipartite.lean/declarations/isbipartitewith-neighborset-disjoint-source-edition-2.md) | 97 | `result-track:27044e191365851b6f10be3b893e2952af685535ca211c889fb00336cb749bae` |
| 8 | `theorem` | [IsBipartiteWith.mem_of_mem_adj'](../../../../../Combinatorics/GraphTheory/Bipartite.lean/declarations/isbipartitewith-mem-of-mem-adj-source-edition-2.md) | 102 | `result-track:e019706e764dc8c95046f0d31e1057cf01e900953c6877fc5d2969d943b95642` |
| 9 | `theorem` | [isBipartiteWith_neighborSet'](../../../../../Combinatorics/GraphTheory/Bipartite.lean/declarations/isbipartitewith-neighborset-source-edition-2.md) | 110 | `result-track:e7ca7963430f5e6486932e1d1304dd3887cb27eccd19beddfb36d7c4fb692a62` |
| 10 | `theorem` | [isBipartiteWith_neighborSet_subset'](../../../../../Combinatorics/GraphTheory/Bipartite.lean/declarations/isbipartitewith-neighborset-subset.md) | 117 | `result-track:47370348f5c6b256fcba2a7a934f69eb767ac2723fbd04db7a801b9f4bd5286c` |
| 11 | `theorem` | [isBipartiteWith_support_subset](../../../../../Combinatorics/GraphTheory/Bipartite.lean/declarations/isbipartitewith-support-subset.md) | 123 | `result-track:87517c083e80ecd746ac796e83fe3201e633917248edff6d35f7dcd8b0e32cd9` |
| 12 | `theorem` | [isBipartiteWith_neighborSet_disjoint'](../../../../../Combinatorics/GraphTheory/Bipartite.lean/declarations/isbipartitewith-neighborset-disjoint.md) | 129 | `result-track:0d7963ee5573773f503b3882f929e7d84c32cf0dbbd8051ec728c0b8a30552f8` |
| 13 | `theorem` | [isBipartiteWith_neighborFinset](../../../../../Combinatorics/GraphTheory/Bipartite.lean/declarations/isbipartitewith-neighborfinset.md) | 137 | `result-track:170786e453583114f1bab92734c9c8c0b23edd7307515ea719a761b45fe9372c` |
| 14 | `theorem` | [isBipartiteWith_bipartiteAbove](../../../../../Combinatorics/GraphTheory/Bipartite.lean/declarations/isbipartitewith-bipartiteabove.md) | 145 | `result-track:4d0237f9f45ea0581ccf0f0bc3f8492fd209a00823dc35b477328976ba4076ce` |
| 15 | `theorem` | [isBipartiteWith_neighborFinset_subset](../../../../../Combinatorics/GraphTheory/Bipartite.lean/declarations/isbipartitewith-neighborfinset-subset.md) | 150 | `result-track:8b57cb4f651226ecf434857faf54ecc0b3cd02661a60baaba33c47282fe1b9af` |
| 16 | `theorem` | [isBipartiteWith_neighborFinset_disjoint](../../../../../Combinatorics/GraphTheory/Bipartite.lean/declarations/isbipartitewith-neighborfinset-disjoint.md) | 156 | `result-track:720eeb731254382912cc0bb4666ab3aa983e9b7ac22ae7f2c55e8c8c7ce83109` |
| 17 | `theorem` | [isBipartiteWith_degree_le](../../../../../Combinatorics/GraphTheory/Bipartite.lean/declarations/isbipartitewith-degree-le-source-edition-2.md) | 163 | `result-track:c7592d909e5f097639c0dc9df5483ee7af3c190523d662a6dfeca6d4a8716de4` |
| 18 | `theorem` | [isBipartiteWith_neighborFinset'](../../../../../Combinatorics/GraphTheory/Bipartite.lean/declarations/isbipartitewith-neighborfinset-source-edition-2.md) | 169 | `result-track:2b99b589a423afb20242c36e4949ad877ae69de7d3c5d0e6a4bc7cf74b642af8` |
| 19 | `theorem` | [isBipartiteWith_bipartiteBelow](../../../../../Combinatorics/GraphTheory/Bipartite.lean/declarations/isbipartitewith-bipartitebelow.md) | 177 | `result-track:31bd03bb50c26b9a5dce6834732d5617129f634ff25e5c9ff8f3d8fdbe826db4` |
| 20 | `theorem` | [isBipartiteWith_neighborFinset_subset'](../../../../../Combinatorics/GraphTheory/Bipartite.lean/declarations/isbipartitewith-neighborfinset-subset-source-edition-2.md) | 182 | `result-track:ffafa4b33b907bd6ac0bede6f87edbfd7d2ec883adc0ebb1b1c421274b8e0c16` |
| 21 | `theorem` | [isBipartiteWith_neighborFinset_disjoint'](../../../../../Combinatorics/GraphTheory/Bipartite.lean/declarations/isbipartitewith-neighborfinset-disjoint-source-edition-2.md) | 188 | `result-track:b730687f902cdf12703231fdc02a59eecd45398e80625b0c8f8539799fbd7a90` |
| 22 | `theorem` | [isBipartiteWith_degree_le'](../../../../../Combinatorics/GraphTheory/Bipartite.lean/declarations/isbipartitewith-degree-le.md) | 195 | `result-track:4fc6a57bf7cfbbcf5f093112d941338a2e39cc337bd416a046bdb73554522ab7` |
| 23 | `theorem` | [isBipartiteWith_sum_degrees_eq](../../../../../Combinatorics/GraphTheory/Bipartite.lean/declarations/isbipartitewith-sum-degrees-eq.md) | 203 | `result-track:d76638a797c46e1579328c825906a7f5ee5c583788d343b9157361b6677fc2fd` |
| 24 | `lemma` | [isBipartiteWith_sum_degrees_eq_twice_card_edges](../../../../../Combinatorics/GraphTheory/Bipartite.lean/declarations/isbipartitewith-sum-degrees-eq-twice-card-edges.md) | 216 | `result-track:5b0e39584ddb388c0dddabffd4e0ffab90e889fa7cf42e95d2fcb13f1337dc18` |
| 25 | `theorem` | [isBipartiteWith_sum_degrees_eq_card_edges](../../../../../Combinatorics/GraphTheory/Bipartite.lean/declarations/isbipartitewith-sum-degrees-eq-card-edges-source-edition-2.md) | 228 | `result-track:d00fca5012934c0e1b1c8dbb38774ba96898c5b09d2dedda1b28da642b42eff8` |
| 26 | `theorem` | [isBipartiteWith_sum_degrees_eq_card_edges'](../../../../../Combinatorics/GraphTheory/Bipartite.lean/declarations/isbipartitewith-sum-degrees-eq-card-edges.md) | 239 | `result-track:3b695c9945c230ee22ca693ef777bc778d7ab499a4bce4361763f7ea06dbf774` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=676d74238f92dd176e8e16b60f4b4b49fedf574e82b5309cc6be1356b2954cd2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Bipartite/Variantcca5287deba348b1f3dc67d1413ab589032ab261d5cac7e95975148b4737a8e8.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/GraphTheory/Bipartite/Variantcca5287deba348b1f3dc67d1413ab589032ab261d5cac7e95975148b4737a8e8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
