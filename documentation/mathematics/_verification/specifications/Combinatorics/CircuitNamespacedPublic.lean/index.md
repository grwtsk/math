# Verification target: Circuit Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a0b8673db619c1bc16a9da99a689b62d313d45b1",
  "lexical_observation_count": 92,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Circuit/Varianta1290196e4d0feddd7341e00250fdc37ee1eeb33d85a6c3ab47365f896242e93.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/CircuitNamespacedPublic.lean/index.md) · [Full source](../../../../Combinatorics/CircuitNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a0b8673db619c1bc16a9da99a689b62d313d45b1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Circuit/Varianta1290196e4d0feddd7341e00250fdc37ee1eeb33d85a6c3ab47365f896242e93.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Circuit/Varianta1290196e4d0feddd7341e00250fdc37ee1eeb33d85a6c3ab47365f896242e93.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsCircuit](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/iscircuit.md) | 69 | `declaration-track:0847f4521ca38a248979bffc957d2b4f7b5b279baf4fcb46b0240d103517aa45` |
| 2 | `lemma` | [isCircuit_def](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/iscircuit-def.md) | 71 | `result-track:4c7441c790a5e3df4b211964501670cbf671f022ab1c06f218668c551093dd44` |
| 3 | `lemma` | [IsCircuit.dep](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/iscircuit-dep.md) | 73 | `result-track:e6dd0cda9b6c041e4ff646bd9867b26f21fe5367a9bd344c18331663f62baf29` |
| 4 | `lemma` | [IsCircuit.not_indep](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/iscircuit-not-indep.md) | 76 | `result-track:c9b0094f626a0d21a73a7cd9ad94aae6a554d7eefa00569130bef85f6a4274c7` |
| 5 | `lemma` | [IsCircuit.minimal](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/iscircuit-minimal.md) | 79 | `result-track:530f069ad1da7756e9c5d57d329737a6a178047f3a1da0e863c5dcac06578e78` |
| 6 | `lemma` | [IsCircuit.subset_ground](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/iscircuit-subset-ground.md) | 83 | `result-track:a2be3242648d2f3c5787aeca9a99fd87e9c031f48872b554f5a692612cca188e` |
| 7 | `lemma` | [IsCircuit.nonempty](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/iscircuit-nonempty.md) | 86 | `result-track:0ebd4e5eea44855bf3be125336560859f6eefc1e244d8f9a32ae04b0041d13bd` |
| 8 | `lemma` | [empty_not_isCircuit](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/empty-not-iscircuit.md) | 89 | `result-track:8b99dc45965b083c57e77aa467917eac5f54db98ac8df81c4937ac869b0c3730` |
| 9 | `lemma` | [isCircuit_iff](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/iscircuit-iff.md) | 92 | `result-track:15af36afe62a2c454dd4a9a10839b992129372a4391a0bfcfaadcefa4b513ae7` |
| 10 | `lemma` | [IsCircuit.ssubset_indep](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/iscircuit-ssubset-indep.md) | 95 | `result-track:19e427a76c477be6f35bf618e9713833e09a6d5f8569e00d87f4354c2bfc8fce` |
| 11 | `lemma` | [IsCircuit.minimal_not_indep](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/iscircuit-minimal-not-indep.md) | 99 | `result-track:474228cf5822ae731f523a425a2991abfd8895c02a6c696e41c8b2767f458572` |
| 12 | `lemma` | [isCircuit_iff_minimal_not_indep](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/iscircuit-iff-minimal-not-indep.md) | 103 | `result-track:efd74e3995ba707c965706d3546cba9af7d667e2a048d8fa75991f72eea8e2d1` |
| 13 | `lemma` | [IsCircuit.sdiff_singleton_indep](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/iscircuit-sdiff-singleton-indep.md) | 107 | `result-track:ab41547fbedad0756aea6a032fb2324648977df972ed265204bc68741231e0e2` |
| 14 | `lemma` | [isCircuit_iff_forall_ssubset](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/iscircuit-iff-forall-ssubset.md) | 113 | `result-track:dcacf312ff0f18025b83ef404c9b782b122d89b51825e56a336488f0cc5c4d51` |
| 15 | `lemma` | [isCircuit_antichain](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/iscircuit-antichain.md) | 118 | `result-track:b0d7d1e7de3ea1c069bfaeaeda86fc166f455664a3b0bf321ff375a4df273b23` |
| 16 | `lemma` | [IsCircuit.eq_of_not_indep_subset](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/iscircuit-eq-of-not-indep-subset.md) | 121 | `result-track:f1688666cdf9f850c50bb6af6f7bb2e1b73ec210ec536891a54b8ade304346c0` |
| 17 | `lemma` | [IsCircuit.eq_of_dep_subset](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/iscircuit-eq-of-dep-subset.md) | 125 | `result-track:99b20b036f14331d7d7949ff7ebae50683f067f00d35117e359f7a64aae5f138` |
| 18 | `lemma` | [IsCircuit.not_ssubset](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/iscircuit-not-ssubset.md) | 128 | `result-track:8c22e0bbc387f90e0b58a02d66e45b2b58711c0f82c8ab3c023dfdcd041b5bac` |
| 19 | `lemma` | [IsCircuit.eq_of_subset_isCircuit](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/iscircuit-eq-of-subset-iscircuit.md) | 131 | `result-track:702a322e1e22ecc64bcb87ce4bbc5cac985b5f5d55549a793c156e5ecbf12679` |
| 20 | `lemma` | [IsCircuit.eq_of_superset_isCircuit](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/iscircuit-eq-of-superset-iscircuit.md) | 135 | `result-track:676d5774935740e6daa8375088c1c07417c6a8cc090f061a8c9a998a15d7d9df` |
| 21 | `lemma` | [isCircuit_iff_dep_forall_sdiff_singleton_indep](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/iscircuit-iff-dep-forall-sdiff-singleton-indep.md) | 139 | `result-track:16b750787c7fa4210320dec610157dd8cc0bc1098f7015113dc7dd4d1046df63` |
| 22 | `lemma` | [Indep.insert_isCircuit_of_forall](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/indep-insert-iscircuit-of-forall.md) | 153 | `result-track:7ebae4646d67993af4b8450539bcf17393f9e72dddecc3ff5e8880411aa33935` |
| 23 | `lemma` | [Indep.insert_isCircuit_of_forall_of_nontrivial](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/indep-insert-iscircuit-of-forall-of-nontrivial.md) | 162 | `result-track:090632f01c1e0372d3742a314412303faece881167c57960a3c3f94f79177181` |
| 24 | `lemma` | [IsCircuit.sdiff_singleton_isBasis](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/iscircuit-sdiff-singleton-isbasis.md) | 168 | `result-track:7ac43262f0dba34ca1f4ba132c51baa075b54048d976343b7dfea1c84675bd3b` |
| 25 | `lemma` | [IsCircuit.isBasis_iff_eq_sdiff_singleton](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/iscircuit-isbasis-iff-eq-sdiff-singleton.md) | 178 | `result-track:d1b7adf292bdc80a7aa889151180dd757667ddc4697f06700bc870d6a1b5296c` |
| 26 | `lemma` | [IsCircuit.isBasis_iff_insert_eq](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/iscircuit-isbasis-iff-insert-eq.md) | 191 | `result-track:c9b2f258ed60e717f8f8cf2d3c1711f73546d0de1417a21a7e5278e16b0df471` |
| 27 | `lemma` | [IsCircuit.isCircuit_restrict_of_subset](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/iscircuit-iscircuit-restrict-of-subset.md) | 201 | `result-track:d16641659d289867d2493a4b2446788f879e684c7d333cbc40205541e82122a7` |
| 28 | `lemma` | [restrict_isCircuit_iff](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/restrict-iscircuit-iff.md) | 206 | `result-track:1a758a12ed8726f5cd2f83074604c7d3b362278adb2f863887350409e1065042` |
| 29 | `def` | [fundCircuit](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/fundcircuit.md) | 219 | `declaration-track:db1a23e85d4d5cf5187d72a79999c5ca17991857b8741b13d9807aa5663c43de` |
| 30 | `lemma` | [fundCircuit_eq_sInter](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/fundcircuit-eq-sinter.md) | 222 | `result-track:068a25625d8aab7b047e511e8a9a3a546eb78cd654eafe74d2a9d311e204bcf1` |
| 31 | `lemma` | [fundCircuit_subset_insert](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/fundcircuit-subset-insert.md) | 229 | `result-track:03b6773c63fd9014f4ba72b49dd250f3a59d934addc89235ac8adce67cc7c7b6` |
| 32 | `lemma` | [fundCircuit_subset_ground](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/fundcircuit-subset-ground.md) | 233 | `result-track:3e64359a6c9c8a96e1383d34da2faebeab3c27c06cca4817c7015bbfc588e33b` |
| 33 | `lemma` | [mem_fundCircuit](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/mem-fundcircuit.md) | 237 | `result-track:c386025c7c4bb31a8811ff832885d3cc87a1634adb1530a39af8474abad9f2e3` |
| 34 | `lemma` | [fundCircuit_sdiff_eq_inter](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/fundcircuit-sdiff-eq-inter.md) | 240 | `result-track:1b69840a7a22dc051d24040e1d8745c5d905fbf0592e335cdcf89c1cd5d6ccbc` |
| 35 | `lemma` | [fundCircuit_eq_of_mem](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/fundcircuit-eq-of-mem.md) | 248 | `result-track:bf264ab67a2f3906c9a24dc4dec2e711990ed284e0701b69847b8194fa88b76c` |
| 36 | `lemma` | [fundCircuit_eq_of_notMem_ground](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/fundcircuit-eq-of-notmem-ground.md) | 253 | `result-track:8425b18e702df1da6821e5fc1e4b4ca83fae926837f75a53bf21879058292163` |
| 37 | `lemma` | [Indep.fundCircuit_isCircuit](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/indep-fundcircuit-iscircuit.md) | 259 | `result-track:ce980e5a89975087d21075df49c3f59481c682b763ffa4e70633a80cce649d2d` |
| 38 | `lemma` | [Indep.mem_fundCircuit_iff](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/indep-mem-fundcircuit-iff.md) | 270 | `result-track:7a667ff1df34b37fba2ec9096558b8d3e390ab50b708d27180bf381510cf1885` |
| 39 | `lemma` | [IsBase.fundCircuit_isCircuit](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/isbase-fundcircuit-iscircuit.md) | 280 | `result-track:4cc764c9170e0e2a71e525d255009f52711e476c17d814531ba2487f663856ac` |
| 40 | `lemma` | [IsCircuit.eq_fundCircuit_of_subset](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/iscircuit-eq-fundcircuit-of-subset.md) | 285 | `result-track:cbb78c595a6fe296552b57422cc26fe3706661ba781abb394c3835eedba2f668` |
| 41 | `lemma` | [fundCircuit_restrict](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/fundcircuit-restrict.md) | 300 | `result-track:ca120d9d4c72fd49e3dbf4cb4961e12b1f88253db0d288b93d3e1fb5d43c9f20` |
| 42 | `lemma` | [fundCircuit_restrict_univ](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/fundcircuit-restrict-univ.md) | 314 | `result-track:7f36b0576368bca966cc6df65df93953a80d71515ac63a12c37a245ff70f7855` |
| 43 | `lemma` | [Dep.exists_isCircuit_subset](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/dep-exists-iscircuit-subset.md) | 324 | `result-track:c8170dd8258b0d05f9dd3f4ce91e276b0b4416cbf5ee8fb20ead8eb596767794` |
| 44 | `lemma` | [dep_iff_superset_isCircuit](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/dep-iff-superset-iscircuit.md) | 331 | `result-track:066f9893e140785f1bde9c050ad205469e0e9aa49d1c6822770e7b65a9b8c895` |
| 45 | `lemma` | [dep_iff_superset_isCircuit'](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/dep-iff-superset-iscircuit-source-edition-2.md) | 337 | `result-track:d2759901af1c1e1b6fb157d1041d2d0034d06eab620fcc20e25014fe56dcb674` |
| 46 | `lemma` | [indep_iff_forall_subset_not_isCircuit'](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/indep-iff-forall-subset-not-iscircuit.md) | 343 | `result-track:632167e93f70ff59b78fb2a641e129cb1ad2bc8a43cced34679cedff92bce516` |
| 47 | `lemma` | [indep_iff_forall_subset_not_isCircuit](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/indep-iff-forall-subset-not-iscircuit-source-edition-2.md) | 348 | `result-track:dcef0e5dfdcc94b196d40c6606d01b73fea73a0c90054fe5ae5900819848b73e` |
| 48 | `lemma` | [IsCircuit.closure_sdiff_singleton_eq](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/iscircuit-closure-sdiff-singleton-eq.md) | 354 | `result-track:8193c6de562abdf1fb3a96fa156b3aa6e9e45178d3ddf202e8e4567060cf63d5` |
| 49 | `lemma` | [IsCircuit.subset_closure_sdiff_singleton](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/iscircuit-subset-closure-sdiff-singleton.md) | 363 | `result-track:aac51c7bb8c26350d23fb371c76c33abe4c480b7d79570f026e1f90bfe2627bd` |
| 50 | `lemma` | [IsCircuit.mem_closure_sdiff_singleton_of_mem](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/iscircuit-mem-closure-sdiff-singleton-of-mem.md) | 371 | `result-track:25770b2661bf0ea94751a980a895f2bf4f6f107d22bb2c0eb07e33e317c79759` |
| 51 | `lemma` | [exists_isCircuit_of_mem_closure](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/exists-iscircuit-of-mem-closure.md) | 378 | `result-track:a9252e66dc012a2c10c27ad6c4bc6699c16793d4c8d60a0f631dce3b6d458c91` |
| 52 | `lemma` | [mem_closure_iff_exists_isCircuit](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/mem-closure-iff-exists-iscircuit.md) | 385 | `result-track:f51307b5363ff14838abfa4ac4f1e4cb8a18eb3ec92272062dd4386dd9f23691` |
| 53 | `lemma` | [ext_isCircuit](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/ext-iscircuit.md) | 392 | `result-track:4f3b8d05aa71f19d4a77cf72af0359f439bfdad0068c794c28e972b35e596ad3` |
| 54 | `lemma` | [ext_isCircuit_not_indep](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/ext-iscircuit-not-indep.md) | 403 | `result-track:bcf8166ad8e6aad74cf08a1055b832e83beb205222c1cf6e71b3cc96d61b842a` |
| 55 | `lemma` | [ext_iff_isCircuit](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/ext-iff-iscircuit.md) | 412 | `result-track:c61301cfdf40feccf49fcdfca165318a04127f3d6d6bab77ae1080b682539a12` |
| 56 | `lemma` | [IsCircuit.strong_multi_elimination_insert](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/iscircuit-strong-multi-elimination-insert.md) | 423 | `result-track:5033468f8085d14a881019264e852f076e2d5a3d1dff0565432091ec88eea3d6` |
| 57 | `lemma` | [IsCircuit.strong_multi_elimination](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/iscircuit-strong-multi-elimination.md) | 456 | `result-track:dd22c5919328eab8143c2e019da8a824dfb151ae7e0fbf037524df110baeba84` |
| 58 | `lemma` | [IsCircuit.strong_multi_elimination_set](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/iscircuit-strong-multi-elimination-set.md) | 482 | `result-track:a725267a90141b14c3ddcd6c9c84fb86ad3abb7a6c96e86784c789ee06487522` |
| 59 | `lemma` | [IsCircuit.strong_elimination](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/iscircuit-strong-elimination.md) | 502 | `result-track:c293e573015bcd68d4446d34532c06f238f1f4d667349d49256effb95ee709e7` |
| 60 | `lemma` | [IsCircuit.elimination](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/iscircuit-elimination.md) | 514 | `result-track:1c05bcd772b7f7b2d62bb4a27d9e01eb479b02442cd7bdeeade49141bb2c2f86` |
| 61 | `lemma` | [IsCircuit.finite](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/iscircuit-finite.md) | 530 | `result-track:5f1ebb4344e2044e157e8c27bf6482711976a6732eb618a72183e8c7629db072` |
| 62 | `lemma` | [finitary_iff_forall_isCircuit_finite](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/finitary-iff-forall-iscircuit-finite.md) | 536 | `result-track:670b39e5eb99200042d406faf277c8ec4367fc226e3be8ec0e1b5b13380354cf` |
| 63 | `lemma` | [exists_mem_finite_closure_of_mem_closure](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/exists-mem-finite-closure-of-mem-closure.md) | 545 | `result-track:73ec8e2476f5e70fcfd6dc9a829890937edff7a91715ac859284eb4c7fbb9c93` |
| 64 | `lemma` | [exists_subset_finite_closure_of_subset_closure](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/exists-subset-finite-closure-of-subset-closure.md) | 557 | `result-track:d37dba87061ef07ca253a1f3beda6063de433ce61116f7eb50cf21f5edee63ea` |
| 65 | `abbrev` | [IsCocircuit](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/iscocircuit.md) | 577 | `declaration-track:43a2161757e2153980072d1bbc5f85cb6e6278d49775cc478577a0b4f7d5db0a` |
| 66 | `lemma` | [isCocircuit_def](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/iscocircuit-def.md) | 579 | `result-track:5ca1d96f8e8d06c32faf795c7a0f7b01a100d557aa91403a34ff9e12ceb77be3` |
| 67 | `lemma` | [IsCocircuit.isCircuit](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/iscocircuit-iscircuit.md) | 581 | `result-track:0e93942e49de7636ef4590bccbe235c37d6a91e0956bfe15e99c5b0d76de849c` |
| 68 | `lemma` | [IsCircuit.isCocircuit](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/iscircuit-iscocircuit.md) | 584 | `result-track:0d17d38ee4de975ca715ca565a11b94f8d2172e77d1f9850373b43e4ec9a463b` |
| 69 | `lemma` | [IsCocircuit.nonempty](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/iscocircuit-nonempty.md) | 587 | `result-track:c6b7bb4cf5a637b514ccf44522e71bf61d607c9332cb1270056f4fb7f474f800` |
| 70 | `lemma` | [IsCocircuit.subset_ground](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/iscocircuit-subset-ground.md) | 591 | `result-track:8fca007bcba0c471bbb514d71456a7e4c62347b4fe94d784da2fb4e7673152e3` |
| 71 | `lemma` | [dual_isCocircuit_iff](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/dual-iscocircuit-iff.md) | 594 | `result-track:1ab991313ea2faa383b3903db4f9370bbfeddc4a73a43fc85a6f01f38378478d` |
| 72 | `lemma` | [coindep_iff_forall_subset_not_isCocircuit](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/coindep-iff-forall-subset-not-iscocircuit.md) | 597 | `result-track:f1a5a9c24b9b99a7a829c0b3fdd955ef4d60eca6542be82fe161aac662f35d2c` |
| 73 | `lemma` | [isCocircuit_iff_minimal](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/iscocircuit-iff-minimal.md) | 602 | `result-track:eef013529cba6162574e8f38007bea4fc2a6c3d7da07db180ffe9d4aba3f3616` |
| 74 | `lemma` | [isCocircuit_iff_minimal_compl_nonspanning](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/iscocircuit-iff-minimal-compl-nonspanning-source-edition-2.md) | 613 | `result-track:fd6dbafeb5ac0eb1e6a9b8bccb50af6826dca3abc244c843593f02e30e0c4dfa` |
| 75 | `lemma` | [IsBase.compl_closure_sdiff_singleton_isCocircuit](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/isbase-compl-closure-sdiff-singleton-iscocircuit.md) | 621 | `result-track:1831d96d86f0ed85a2854744535a6408d957b1e640ccae428bbc5610eef8ad4b` |
| 76 | `lemma` | [isCocircuit_iff_minimal_compl_nonspanning'](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/iscocircuit-iff-minimal-compl-nonspanning.md) | 644 | `result-track:3570e8034abd04dfc69a819ccf03ebe1da08707fc132fc1980cea5d4a40418cd` |
| 77 | `lemma` | [IsCircuit.inter_isCocircuit_ne_singleton](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/iscircuit-inter-iscocircuit-ne-singleton.md) | 652 | `result-track:26e307476a86ee58a06572b039f236597e7ba6a0a72be4e372b369fc0331182e` |
| 78 | `lemma` | [IsCircuit.isCocircuit_inter_nontrivial](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/iscircuit-iscocircuit-inter-nontrivial.md) | 669 | `result-track:a47970b29f8bcbfaada4823d8a99b41978288b7928314d1588c688810b2392e7` |
| 79 | `lemma` | [IsCircuit.isCocircuit_disjoint_or_nontrivial_inter](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/iscircuit-iscocircuit-disjoint-or-nontrivial-inter.md) | 675 | `result-track:90978656b6b51faa9b6c972b33c75fa451166e0368ce5823205a4ea371f73c0d` |
| 80 | `lemma` | [dual_rankPos_iff_exists_isCircuit](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/dual-rankpos-iff-exists-iscircuit.md) | 680 | `result-track:1d2f1d4f6178f487d9533b3d735ff8ce6f513dde3791050639ff8754d61eb248` |
| 81 | `lemma` | [IsCircuit.dual_rankPos](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/iscircuit-dual-rankpos.md) | 685 | `result-track:a7166598782a4fb3171ac48eebcbbc4e535b78b6e6e4801cb3a8ba3e4f2e12d4` |
| 82 | `lemma` | [exists_isCircuit](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/exists-iscircuit.md) | 688 | `result-track:7b0b3eacca68dbc676fbd6ebae5d9d975f51fa0794de89ce07f7264672a83d84` |
| 83 | `lemma` | [rankPos_iff_exists_isCocircuit](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/rankpos-iff-exists-iscocircuit.md) | 691 | `result-track:c4916875ecd63dfb985066552a0c1ffd9ad7666c151771f9833e779fc7f789cb` |
| 84 | `def` | [fundCocircuit](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/fundcocircuit.md) | 698 | `declaration-track:b066a753006a86807f253f7e3abd0b530689d67c270f78c3ff32b1478a930e36` |
| 85 | `lemma` | [fundCocircuit_isCocircuit](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/fundcocircuit-iscocircuit.md) | 700 | `result-track:61d50610ff0a48a4005dd5bd3d375403024224fc90200f6499713e8ef2ef47e8` |
| 86 | `lemma` | [mem_fundCocircuit](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/mem-fundcocircuit.md) | 706 | `result-track:92c3220b30ede934dbd0ccfa6dfd77fa0df4b95ee5a82b74c9e2382ff9b95c59` |
| 87 | `lemma` | [fundCocircuit_subset_insert_compl](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/fundcocircuit-subset-insert-compl.md) | 709 | `result-track:8521db449395b88511a5838aac78d69b8bf15eb234be65134a4800763dcaa177` |
| 88 | `lemma` | [fundCocircuit_inter_eq](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/fundcocircuit-inter-eq.md) | 713 | `result-track:f27ee9f1e5de6735ae3643f7f875c5503394fe587860373f5cd74406299bc04a` |
| 89 | `lemma` | [fundCocircuit_eq_of_notMem_ground](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/fundcocircuit-eq-of-notmem-ground.md) | 720 | `result-track:6414379fd77c6e1acfb7b531919f6b9773eaf6575e77d7e8cdb4d763bfc3b515` |
| 90 | `lemma` | [fundCocircuit_eq_of_notMem](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/fundcocircuit-eq-of-notmem.md) | 725 | `result-track:6782cbb83ccc93750e9ea329990f3865ea0a6dc93d20b5045d5c84fb7ccedc86` |
| 91 | `lemma` | [Indep.exists_isCocircuit_inter_eq_mem](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/indep-exists-iscocircuit-inter-eq-mem.md) | 733 | `result-track:a30dc38795eeeb4f376d7572b3e8ca27d0d97e8935470f21679f82d621812bb8` |
| 92 | `lemma` | [IsBase.mem_fundCocircuit_iff_mem_fundCircuit](../../../../Combinatorics/CircuitNamespacedPublic.lean/declarations/isbase-mem-fundcocircuit-iff-mem-fundcircuit.md) | 747 | `result-track:db3527971198e27c9c64b9a040b1e876d3a3feb9f579e8254c9a0254642fc2b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=11f4779c0ea3d3a551843447416d48ff305aaa9fff286bba2b9a6b33e1854a3c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Circuit/Varianta1290196e4d0feddd7341e00250fdc37ee1eeb33d85a6c3ab47365f896242e93.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Circuit/Varianta1290196e4d0feddd7341e00250fdc37ee1eeb33d85a6c3ab47365f896242e93.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
