# Verification target: Embedding Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc6b846ea7d4d332dfc607fc0d22954d8a19122e",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantb456a6b5c5627b995080ea4acdae5400bc6470c7d22bea62a73d5a1427c406c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/EmbeddingBasicNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/EmbeddingBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc6b846ea7d4d332dfc607fc0d22954d8a19122e`.

Source path: `GRWTSK/Algebra/Basic/Variantb456a6b5c5627b995080ea4acdae5400bc6470c7d22bea62a73d5a1427c406c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantb456a6b5c5627b995080ea4acdae5400bc6470c7d22bea62a73d5a1427c406c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ComplexShape` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Int.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Nat.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ByContra` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Embedding](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/EmbeddingBasicNamespaced.lean/declarations/embedding.md) | 70 | `declaration-track:f01b120f5623bb50afff894f4f1a40c57c6d92c359465d76f06dbfe0a4f8cc75` |
| 2 | `def` | [op](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/EmbeddingBasicNamespaced.lean/declarations/op.md) | 83 | `declaration-track:1ebc9098f445bb19f73225abe1d908f5f510b2ec35fed77b9bf01700e5780cb3` |
| 3 | `class` | [IsRelIff](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/EmbeddingBasicNamespaced.lean/declarations/isreliff.md) | 90 | `declaration-track:daf6abfada8c0e040ace676a14d4b2fae2308fe7db6e5faf3feeaebdd5327816` |
| 4 | `lemma` | [rel_iff](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/EmbeddingBasicNamespaced.lean/declarations/rel-iff.md) | 93 | `result-track:5bf8c87ebfd81c8567646e7c59af0dfd08829b0e6cb49c43afff24110eb8324f` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/EmbeddingBasicNamespaced.lean/declarations/instance-source-edition-4.md) | 98 | `declaration-track:87ab3a5341ae09e83433e4d2e8b2d19c66c97bd328a199cc60c01c8bb5e53d1c` |
| 6 | `def` | [mk'](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/EmbeddingBasicNamespaced.lean/declarations/mk.md) | 110 | `declaration-track:ef31f58d22a34b708e7006fc6fd1454b5fdc8b4b6f0a09be8e5cf7518493c37c` |
| 7 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/EmbeddingBasicNamespaced.lean/declarations/instance-source-edition-7.md) | 115 | `declaration-track:925d09e182707d021856bc1f58949f3a25c47443e8a7c0675ebabf5c7ce0d6f2` |
| 8 | `class` | [IsTruncGE](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/EmbeddingBasicNamespaced.lean/declarations/istruncge.md) | 122 | `declaration-track:bdc8adfb1ca54c22a0b867851ca72322543e9e49a45d9b80a3aff581a95f156f` |
| 9 | `lemma` | [mem_next](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/EmbeddingBasicNamespaced.lean/declarations/mem-next.md) | 126 | `result-track:13311d5df7ad77e6796a008fee757d1c79a6322806ad3eb70f6890ca19f6dd15` |
| 10 | `class` | [IsTruncLE](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/EmbeddingBasicNamespaced.lean/declarations/istruncle.md) | 131 | `declaration-track:170ee80a34c4cd27b2f080aaf66e1f11c417599f5a6c0bce2c24efb76a63ae5c` |
| 11 | `lemma` | [mem_prev](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/EmbeddingBasicNamespaced.lean/declarations/mem-prev.md) | 135 | `result-track:e78605bd985f1432b3af4000a6bb56ceca467d290856243f43087e2420157c41` |
| 12 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/EmbeddingBasicNamespaced.lean/declarations/instance-source-edition-9.md) | 138 | `declaration-track:bc0655be79dd3766e098eba880c58afa170d077c25a11db708daae1e8fc8a108` |
| 13 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/EmbeddingBasicNamespaced.lean/declarations/instance-source-edition-12.md) | 141 | `declaration-track:c3acbb4061eb8f467dcbc81809f1f822d549a668f90518485b027871eda9b1a0` |
| 14 | `def` | [r](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/EmbeddingBasicNamespaced.lean/declarations/r.md) | 146 | `declaration-track:9316cc7fa2e81c52b2b4e1b796362ead384c5d2356f1de23f55e3fb88a18bd9c` |
| 15 | `lemma` | [r_eq_some](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/EmbeddingBasicNamespaced.lean/declarations/r-eq-some.md) | 151 | `result-track:a190c284c64c442a2e00efbc9d5e362c3e2bc0e243f657669714b1d47658ea61` |
| 16 | `lemma` | [r_eq_none](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/EmbeddingBasicNamespaced.lean/declarations/r-eq-none.md) | 158 | `result-track:711b3827f8a63d868711e3de8ef064b8dbda9368e3d09933806286e06ec2526c` |
| 17 | `lemma` | [r_f](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/EmbeddingBasicNamespaced.lean/declarations/r-f.md) | 164 | `result-track:db6014c0b37b05c4e28cd527b37f4e0bdef2042c20560a98d100eb3d072ce44f` |
| 18 | `lemma` | [f_eq_of_r_eq_some](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/EmbeddingBasicNamespaced.lean/declarations/f-eq-of-r-eq-some.md) | 166 | `result-track:e6e5fbaccb6abd09114dc08a470434efa360751ba521f2efb75ef657d2b884c9` |
| 19 | `def` | [embeddingUpNat](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/EmbeddingBasicNamespaced.lean/declarations/embeddingupnat.md) | 179 | `declaration-track:dbbfb300ab7ae877e4b03dbb68fb7052a8f58bde0c4d5c8ca2114bc593f4b7ac` |
| 20 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/EmbeddingBasicNamespaced.lean/declarations/instance-source-edition-8.md) | 184 | `declaration-track:b69e45c9afc88d20c03c14672254b8ba9f504643bb07a99a53551224a6b9603d` |
| 21 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/EmbeddingBasicNamespaced.lean/declarations/instance-source-edition-6.md) | 186 | `declaration-track:8b196beff88766fad40c9006bb85227e3c4c686bb6e1f07d8afc131e7803980a` |
| 22 | `def` | [embeddingDownNat](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/EmbeddingBasicNamespaced.lean/declarations/embeddingdownnat.md) | 191 | `declaration-track:2a9e6f41fdb130b89c9f0962e9de51e5adc6e72231bbc6c8320ac28ec7cfdb9e` |
| 23 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/EmbeddingBasicNamespaced.lean/declarations/instance-source-edition-5.md) | 196 | `declaration-track:8a826e0c43a0b4db32f05aabacedfea4b9081248e46d00ade28abba0a2c717d1` |
| 24 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/EmbeddingBasicNamespaced.lean/declarations/instance-source-edition-2.md) | 198 | `declaration-track:0da52a0828cad7851645ee4cfd1a1c93e5ed1aacb66a4b3f6591d451d109685a` |
| 25 | `def` | [embeddingUpIntGE](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/EmbeddingBasicNamespaced.lean/declarations/embeddingupintge.md) | 205 | `declaration-track:8ed560daa225cbf6d0ff89f4e661efc0b6710119d2ead8f4033a8930b84239e8` |
| 26 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/EmbeddingBasicNamespaced.lean/declarations/instance-source-edition-11.md) | 210 | `declaration-track:c319561821771c9ec55b1ae00bc90cb88e97ba2ee6952306148aa3d554d08b46` |
| 27 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/EmbeddingBasicNamespaced.lean/declarations/instance-source-edition-10.md) | 212 | `declaration-track:c0607fbc24c34e33b334b9e2bc034558b44be57ddda3a87248e1a2fe22d94ca1` |
| 28 | `def` | [embeddingUpIntLE](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/EmbeddingBasicNamespaced.lean/declarations/embeddingupintle.md) | 217 | `declaration-track:e487b69d4dacec67f6d7012f498015130e320b3200d3c4d06270c6f2817a2ade` |
| 29 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/EmbeddingBasicNamespaced.lean/declarations/instance.md) | 222 | `declaration-track:0bae1080c996596eba337135a7e4345e63ab8fcb1b8bfdaea62af660f05963df` |
| 30 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/EmbeddingBasicNamespaced.lean/declarations/instance-source-edition-3.md) | 224 | `declaration-track:52f0b72c25912d27aeb94db049b78fb5d3640a55e81c7a4b3673398ff76593c4` |
| 31 | `lemma` | [notMem_range_embeddingUpIntLE_iff](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/EmbeddingBasicNamespaced.lean/declarations/notmem-range-embeddingupintle-iff.md) | 227 | `result-track:94898f9fbf11ba34e5910e7c7c566abbe903e1c602ae8d544103ba7b1e673660` |
| 32 | `lemma` | [notMem_range_embeddingUpIntGE_iff](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/EmbeddingBasicNamespaced.lean/declarations/notmem-range-embeddingupintge-iff.md) | 240 | `result-track:d8ad69cd794e848f20b7d995ba47a97ab76d18bad435a74f4e0aeb833d23cc1c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=80c992f5f1a48630cc03f1379b2754d5d001b55b5ff4e2ed87eac6fe54deefbe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Variantb456a6b5c5627b995080ea4acdae5400bc6470c7d22bea62a73d5a1427c406c7.lean","GRWTSK/_verification/specifications/Algebra/Basic/Variantb456a6b5c5627b995080ea4acdae5400bc6470c7d22bea62a73d5a1427c406c7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
