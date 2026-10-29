# Verification target: Finset Sum Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c5afa2838cc5bd4494d319e8adf7f3fdb7b7943a",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sum/Variant9de2b42534107084a0662e0f6ad9664c8aaa16a075327b17c5f4bbcec87c35d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespaced.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c5afa2838cc5bd4494d319e8adf7f3fdb7b7943a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Sum/Variant9de2b42534107084a0662e0f6ad9664c8aaa16a075327b17c5f4bbcec87c35d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Sum/Variant9de2b42534107084a0662e0f6ad9664c8aaa16a075327b17c5f4bbcec87c35d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Multiset.Sum` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Card` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [disjSum](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespaced.lean/declarations/disjsum.md) | 38 | `declaration-track:ee08752be4691797c0f09a0c195f8b2946cb4094ed7f1a47b20802d3c778e154` |
| 2 | `theorem` | [val_disjSum](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespaced.lean/declarations/val-disjsum.md) | 43 | `result-track:111270ced2091f95754ea47fbb00667e9f0f867d224c070acaa01db27409ca6a` |
| 3 | `theorem` | [empty_disjSum](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespaced.lean/declarations/empty-disjsum.md) | 48 | `result-track:87ca338418b7bc695a97f2cf285e0ce2d063df222c2099252a8cb55318512f41` |
| 4 | `theorem` | [disjSum_empty](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespaced.lean/declarations/disjsum-empty.md) | 53 | `result-track:2f1812d340597fc1b5bb8121aaca9e11bda83a4d0bba5942155c373c0fb9cc5e` |
| 5 | `theorem` | [card_disjSum](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespaced.lean/declarations/card-disjsum.md) | 58 | `result-track:dfa3a71ca6d372f3028a8fd235fc0e8290b122d2f500cae6f184c9892726f98a` |
| 6 | `theorem` | [disjoint_map_inl_map_inr](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespaced.lean/declarations/disjoint-map-inl-map-inr.md) | 62 | `result-track:825b4ef04a71e4b41bec323bed47d3c3a15b5e71c2c7541b8a19edbf4d0b1fc1` |
| 7 | `theorem` | [map_inl_disjUnion_map_inr](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespaced.lean/declarations/map-inl-disjunion-map-inr.md) | 68 | `result-track:72ef0f2b7cff58d60eef98fe8c6f84d9718b5299f46b8ac08ed4bbb67e8e5ee9` |
| 8 | `theorem` | [mem_disjSum](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespaced.lean/declarations/mem-disjsum.md) | 76 | `result-track:98761c438e7cdc0d239832353878d19556701d57aa66066683fbfdfae54a0e59` |
| 9 | `theorem` | [inl_mem_disjSum](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespaced.lean/declarations/inl-mem-disjsum.md) | 81 | `result-track:9f89b574536f88ca2911640d5263b64bb745496192b177c5d56bd359b1066c05` |
| 10 | `theorem` | [inr_mem_disjSum](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespaced.lean/declarations/inr-mem-disjsum.md) | 86 | `result-track:1b21fa507d3f811fb78850ea1ce7ff1efabc3ac8adbf65a7709926a7955f164a` |
| 11 | `theorem` | [disjSum_mono](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespaced.lean/declarations/disjsum-mono.md) | 90 | `result-track:244cf7d3c4e0f66e113261b4b9624f56166d9a38ce0d5110cd032b8f8c7f6ce6` |
| 12 | `theorem` | [disjSum_mono_left](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespaced.lean/declarations/disjsum-mono-left.md) | 94 | `result-track:85244685c671b7eafc27076a4cd3ad16bafd5a932695c63f24c329f4b4bb145d` |
| 13 | `theorem` | [disjSum_mono_right](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespaced.lean/declarations/disjsum-mono-right.md) | 98 | `result-track:438a148e92ba014556756cd3a3d408ac7026585d235de90badcbbad1c8aba0e5` |
| 14 | `theorem` | [disjSum_ssubset_disjSum_of_ssubset_of_subset](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespaced.lean/declarations/disjsum-ssubset-disjsum-of-ssubset-of-subset.md) | 102 | `result-track:8263e5dad143c12635370ce5f532d4073bfb3257c4ae570ea5a264feb44f23f6` |
| 15 | `theorem` | [disjSum_ssubset_disjSum_of_subset_of_ssubset](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespaced.lean/declarations/disjsum-ssubset-disjsum-of-subset-of-ssubset.md) | 107 | `result-track:e6c902a0e499cf2dcf9af9ebb96c4706d8f00cd78192a94928aa0a17822b96f9` |
| 16 | `theorem` | [disjSum_strictMono_left](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespaced.lean/declarations/disjsum-strictmono-left.md) | 112 | `result-track:c5700be25fbc8affd135435a4668dff2aaeda9152972a908fae687e988a9b3c6` |
| 17 | `theorem` | [disj_sum_strictMono_right](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespaced.lean/declarations/disj-sum-strictmono-right.md) | 116 | `result-track:75ef926b32d08d0de30733ed34eb8c2671036f0235eb0bbab6fc5831d44c6a7d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e72ecafc844a4b6a6b0e0a958ccfbff4548656bea87f9526e74de8bd97e7b032 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Sum/Variant9de2b42534107084a0662e0f6ad9664c8aaa16a075327b17c5f4bbcec87c35d8.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Sum/Variant9de2b42534107084a0662e0f6ad9664c8aaa16a075327b17c5f4bbcec87c35d8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
