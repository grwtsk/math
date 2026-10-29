# Verification target: DFinsupp Order Namespaced Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "407e593433dbc00b6b2501b00454295921564b21",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant2eef0cc2dcc6f2149d13316e8b907acdabcc848ec6b55ae52929b04a02a34e15.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppOrderNamespacedSourceEdition1.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppOrderNamespacedSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `407e593433dbc00b6b2501b00454295921564b21`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant2eef0cc2dcc6f2149d13316e8b907acdabcc848ec6b55ae52929b04a02a34e15.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant2eef0cc2dcc6f2149d13316e8b907acdabcc848ec6b55ae52929b04a02a34e15.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.DFinsupp.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppOrderNamespacedSourceEdition1.lean/declarations/instance-source-edition-3.md) | 48 | `declaration-track:818d3b4288973e037224d9b054f8f7ece4c32bee40e46bb27ffe06e5bf2a0f26` |
| 2 | `theorem` | [le_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppOrderNamespacedSourceEdition1.lean/declarations/le-def.md) | 51 | `result-track:df4b39db6c3cd7b490a8cbf24335da7f695a942739f5325d7d32c33a7a1233ba` |
| 3 | `def` | [orderEmbeddingToFun](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppOrderNamespacedSourceEdition1.lean/declarations/orderembeddingtofun.md) | 56 | `declaration-track:a701747f84c0c35ca50406864c0ac43520b6aabb8a7d16d79c32a27688fec42a` |
| 4 | `theorem` | [orderEmbeddingToFun_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppOrderNamespacedSourceEdition1.lean/declarations/orderembeddingtofun-apply.md) | 64 | `result-track:ab770c92f497e4411ed7ddc2636e646d0ad68c04e7cbda321257982e53f9a280` |
| 5 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppOrderNamespacedSourceEdition1.lean/declarations/instance-source-edition-7.md) | 75 | `declaration-track:c43c5584294a665388069fcdb6491fb83922b0338a4096c89e2c6136240a0d3c` |
| 6 | `theorem` | [coeFn_mono](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppOrderNamespacedSourceEdition1.lean/declarations/coefn-mono.md) | 80 | `result-track:a62280f604ebefab872bcf18826e9fdf7177e64707776b73ed7a84a1da7eb55e` |
| 7 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppOrderNamespacedSourceEdition1.lean/declarations/instance-source-edition-8.md) | 85 | `declaration-track:cc38f71656876898bb0d2fd4333b996d5bec45f79b94d5faa4932e64bd3cff7b` |
| 8 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppOrderNamespacedSourceEdition1.lean/declarations/instance-source-edition-9.md) | 89 | `declaration-track:d5e8e41ed969facc309e5feaf1eec62d89fae4caee60f75a23997d69c97ee870` |
| 9 | `theorem` | [inf_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppOrderNamespacedSourceEdition1.lean/declarations/inf-apply.md) | 97 | `result-track:5dfe89445500ae45b097547602740a0ff3de2c735c9cb7f44cfbd491af8cf262` |
| 10 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppOrderNamespacedSourceEdition1.lean/declarations/instance-source-edition-11.md) | 101 | `declaration-track:fe0974aab48eeef818d978176327d9a7fcd34c179016bb685ea439e2a66f4c7a` |
| 11 | `theorem` | [sup_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppOrderNamespacedSourceEdition1.lean/declarations/sup-apply.md) | 109 | `result-track:a442bd5c70dd2cc1e08e70f2f9c66c75f4e5c00dcab810165dcce4add8120beb` |
| 12 | `instance` | [lattice](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppOrderNamespacedSourceEdition1.lean/declarations/lattice.md) | 116 | `declaration-track:5378af23678c35a25f2808bea14cd517c8e095662a21b4196bacce00b32534db` |
| 13 | `theorem` | [support_inf_union_support_sup](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppOrderNamespacedSourceEdition1.lean/declarations/support-inf-union-support-sup.md) | 123 | `result-track:d1718d77a8eb8df464aa943ca25232aa5da2a46d8619a15a2455e9a890a174f3` |
| 14 | `theorem` | [support_sup_union_support_inf](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppOrderNamespacedSourceEdition1.lean/declarations/support-sup-union-support-inf.md) | 127 | `result-track:8be05e1d8d77b6c05ce17ab7ddaa5c4530b18b0e8a0bcaffc22e4b5f3165203b` |
| 15 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppOrderNamespacedSourceEdition1.lean/declarations/instance.md) | 137 | `declaration-track:21befcb2ad35cd8af56e9f13206d308619c7135325aa26ae93fc8127ca5ca84b` |
| 16 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppOrderNamespacedSourceEdition1.lean/declarations/instance-source-edition-6.md) | 142 | `declaration-track:a73272d86758c31c0746989d14033c16495a72de1a1023f8de8855b8c7cfe8cb` |
| 17 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppOrderNamespacedSourceEdition1.lean/declarations/instance-source-edition-2.md) | 147 | `declaration-track:7838d021bc1f953f0c26461cb3f8cafa0f0acc853e47fe774819d70b588e8eff` |
| 18 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppOrderNamespacedSourceEdition1.lean/declarations/instance-source-edition-10.md) | 157 | `declaration-track:eba9d3ab4599f3ec34f3d6abb1a98132d29ad769cb36660a394a32135e10b88e` |
| 19 | `theorem` | [bot_eq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppOrderNamespacedSourceEdition1.lean/declarations/bot-eq-zero.md) | 163 | `result-track:8ebe17784dd8e9d13ab2c63ee11aa8cd76fe829c8f6ee54675944264523bee10` |
| 20 | `theorem` | [add_eq_zero_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppOrderNamespacedSourceEdition1.lean/declarations/add-eq-zero-iff.md) | 168 | `result-track:128604ac93a4c03d32835f2603aca00b4e7248eb2b5098f0209ead787de7bdc2` |
| 21 | `theorem` | [le_iff'](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppOrderNamespacedSourceEdition1.lean/declarations/le-iff-source-edition-2.md) | 176 | `result-track:85606d72a73426c71f25445410ee912a9d4289e55fa6b7651fc39cf20cb61607` |
| 22 | `theorem` | [le_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppOrderNamespacedSourceEdition1.lean/declarations/le-iff.md) | 181 | `result-track:177c1f29f362e50b6219b7e7f8d601f3d6b9f0ca551191262af5a89eae7cdf71` |
| 23 | `instance` | [decidableLE](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppOrderNamespacedSourceEdition1.lean/declarations/decidablele.md) | 187 | `declaration-track:8ad0286f122af51e33447e28b9646270dcbc59ba9065268baaad262440ea1e5e` |
| 24 | `theorem` | [single_le_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppOrderNamespacedSourceEdition1.lean/declarations/single-le-iff.md) | 194 | `result-track:88af632e61a15e81a20482aaa9889a9919856dacc64e9a847732e5a6ce367217` |
| 25 | `instance` | [tsub](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppOrderNamespacedSourceEdition1.lean/declarations/tsub.md) | 206 | `declaration-track:19c2aa887e78776cd70e39ab4ec155b69fb8eb594941a04448d8904c33a4a971` |
| 26 | `theorem` | [tsub_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppOrderNamespacedSourceEdition1.lean/declarations/tsub-apply.md) | 212 | `result-track:a8450e081b3e30c78c2192fbc6cfc901758aeaabdc6289ee070d01a6a4d3cdf6` |
| 27 | `theorem` | [coe_tsub](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppOrderNamespacedSourceEdition1.lean/declarations/coe-tsub.md) | 217 | `result-track:f6848aa34867e4a30f78c08d815339093835fc0f6c3fff1612d16abe5149188c` |
| 28 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppOrderNamespacedSourceEdition1.lean/declarations/instance-source-edition-5.md) | 224 | `declaration-track:9efab870e4f23ebfdbd84bf345d250579a56e59374636147c0e2204aa3f05fb2` |
| 29 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppOrderNamespacedSourceEdition1.lean/declarations/instance-source-edition-4.md) | 227 | `declaration-track:98d0da4a24b81269ba1a606946b2933e43a69f0eea88fa93098535e4b82c7065` |
| 30 | `theorem` | [single_tsub](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppOrderNamespacedSourceEdition1.lean/declarations/single-tsub.md) | 240 | `result-track:0be86b92dba6529509fac84beebbea345b559177aee7dfdc9c19a46582912fc9` |
| 31 | `theorem` | [support_tsub](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppOrderNamespacedSourceEdition1.lean/declarations/support-tsub.md) | 249 | `result-track:77c9185c1b374913574e1246791618e62926642516f46939eccdf4f99792267f` |
| 32 | `theorem` | [subset_support_tsub](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppOrderNamespacedSourceEdition1.lean/declarations/subset-support-tsub.md) | 254 | `result-track:57e715e7792ab48eba72b7c72d62bba703579c85224f04d580c85688522c22e5` |
| 33 | `theorem` | [support_inf](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppOrderNamespacedSourceEdition1.lean/declarations/support-inf.md) | 265 | `result-track:1553e773e14a78cb08e0b9eb568fde1b1ab0862deac07417f839cf8c114e59f3` |
| 34 | `theorem` | [support_sup](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppOrderNamespacedSourceEdition1.lean/declarations/support-sup.md) | 272 | `result-track:69faa5279b85f935bed09c795d9495aab322df7fbd1228f4e8a8395d0e85fb42` |
| 35 | `theorem` | [disjoint_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppOrderNamespacedSourceEdition1.lean/declarations/disjoint-iff.md) | 278 | `result-track:30ca7e103a8ebec5bcf7ff4d0db4134cd0aa77c5fb2b8bfe2a2d6da247ed78d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6cdbd38d41de1fc2e4455cfe19ecd2550901801e587faa227623bd43285bb73c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant2eef0cc2dcc6f2149d13316e8b907acdabcc848ec6b55ae52929b04a02a34e15.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant2eef0cc2dcc6f2149d13316e8b907acdabcc848ec6b55ae52929b04a02a34e15.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
