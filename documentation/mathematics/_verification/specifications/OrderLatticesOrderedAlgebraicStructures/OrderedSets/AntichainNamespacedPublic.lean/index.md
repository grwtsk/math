# Verification target: Antichain Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f9fcc91c4e82488efa990c455e06c4e621179fa9",
  "lexical_observation_count": 90,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Antichain/Variant16b00089f3570453464af8d551569ca06aa025b92cffe18ca932197e2e7d1034.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f9fcc91c4e82488efa990c455e06c4e621179fa9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Antichain/Variant16b00089f3570453464af8d551569ca06aa025b92cffe18ca932197e2e7d1034.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Antichain/Variant16b00089f3570453464af8d551569ca06aa025b92cffe18ca932197e2e7d1034.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Std.Symm.compl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/std-symm-compl.md) | 44 | `declaration-track:7004dea913095c8aee09759d3ef9f4852346eff966f6f1c4dc842a0337282bfb` |
| 2 | `def` | [IsAntichain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/isantichain-source-edition-2.md) | 50 | `declaration-track:642b0f8eb78a4e9b254359490f9e6e6db97674d71208d752243dce9b714a8744` |
| 3 | `theorem` | [empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/empty.md) | 55 | `result-track:69194078a7f46c99ce8fb979c872cd88f3d014ae5738fbace14404199af0886e` |
| 4 | `theorem` | [singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/singleton.md) | 58 | `result-track:68595f94597304587f972a36a6fd3c63e09bc274a8ff517927dcac97271c9ac3` |
| 5 | `theorem` | [subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/subset-source-edition-2.md) | 61 | `result-track:2fb96ceb6f76247b8812e7aa8aba32a8ef0522ae9f577fb7dbfbf505f9a9e22f` |
| 6 | `theorem` | [mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/mono-source-edition-2.md) | 64 | `result-track:9f3a7aeaca318336c5be51b845b4f2960aef04647ee621fc4f93399f78b1258a` |
| 7 | `theorem` | [mono_on](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/mono-on.md) | 67 | `result-track:bafc59c2811ab3616b6fd0e4ff7ca3acf33b16b37f97c48e5ba3cc9359c125c3` |
| 8 | `theorem` | [eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/eq-source-edition-3.md) | 71 | `result-track:a107107ec53d48199edf81489f90150bad93195077985dbf0cf888aeb72314ee` |
| 9 | `theorem` | [eq'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/eq-source-edition-2.md) | 75 | `result-track:28dec6cb10f7ce11ba2945542d4a1456bb4756c43bd9ce8cde1bf558636338ed` |
| 10 | `theorem` | [antisymm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/antisymm.md) | 79 | `result-track:7b453963b54111e73667a2e18c7ce5f660a1b421359b804d179c60e93fe95231` |
| 11 | `theorem` | [subsingleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/subsingleton.md) | 82 | `result-track:1f33f5747d8ad093f79616b533c48779ca8624fad389992f8175a9c9d4c89faf` |
| 12 | `theorem` | [flip](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/flip-source-edition-2.md) | 89 | `result-track:df5c0aebb2da5c3fa3cf98aa48cc0673cfbf6a06317729f69933cbeab2618f90` |
| 13 | `theorem` | [swap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/swap.md) | 92 | `result-track:3271a55664edc3f7fccb3c6ea9aad5f568362039f654845884c31f5cc84fe0de` |
| 14 | `theorem` | [image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/image.md) | 95 | `result-track:586dbeee41c91540b332c3fba089ab812f2598f5e229d73c66a452cf66f82bdc` |
| 15 | `theorem` | [preimage](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/preimage.md) | 100 | `result-track:21b1b194f7ecc8718a89453564d5dcf6898547d94ca45d48b82f2e4aa22480c8` |
| 16 | `theorem` | [Antichain Namespaced Public](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-extremalcombinatorics-is-source-edition-4.md) | 104 | `result-track:d45728b698f63da721ae9edb8281d87f50b451439305f0c87250f12ffdd9e789` |
| 17 | `theorem` | [insert](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/insert-source-edition-2.md) | 108 | `result-track:7c2b32bce7865ecdbfa71f5d187a4d111b3586f0e91ac836adcf3f80262c94fc` |
| 18 | `theorem` | [Antichain Namespaced Public](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-extremalcombinatorics-is-source-edition-3.md) | 112 | `result-track:923046cd1265b91d472370fa2b72d7ce316231ee19d79994fdbd5a08918e2878` |
| 19 | `theorem` | [insert_of_symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/insert-of-symm.md) | 119 | `result-track:90eb40b9b6e7344dcf102d937c16b99602226639db7517ecf0fe2925bfb1f45f` |
| 20 | `theorem` | [image_relEmbedding](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/image-relembedding.md) | 125 | `result-track:d408b8854594b96f58c7b67e9d93caa0231ad314d4e2c052919dfd3b2ce3fe5e` |
| 21 | `theorem` | [preimage_relEmbedding](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/preimage-relembedding.md) | 131 | `result-track:37181a05b5c78a4a2ad3011732c5f11cf61c6afe84e2e0edeabf9420fb48e401` |
| 22 | `theorem` | [image_relIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/image-reliso.md) | 135 | `result-track:12a7ff37453ff30a8674e183b859ffb7eee83504643d14dbdac65f890ab05d27` |
| 23 | `theorem` | [preimage_relIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/preimage-reliso.md) | 138 | `result-track:578a3d86a56bc83ef95f7f051e0abc5c4801d0735c48f57f71498ffaec46beec` |
| 24 | `theorem` | [image_relEmbedding_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/image-relembedding-iff.md) | 142 | `result-track:bbaf448b3ce39275be1cda5fe01d7b5acfc63a1ebc22c1275102565701ec098e` |
| 25 | `theorem` | [image_relIso_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/image-reliso-iff.md) | 146 | `result-track:55b9da96768f6f36ed1049e0b6b9d67bec9d8a9d413dd533d7b9453cea5f0946` |
| 26 | `theorem` | [image_embedding](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/image-embedding.md) | 149 | `result-track:990a16be3736ce5d0ea7c86cfa07e118b7c8f71db6745d5ed166b7d462118b88` |
| 27 | `theorem` | [preimage_embedding](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/preimage-embedding.md) | 153 | `result-track:8e634318235fe21be1e9726cb35de3a733cd3712f107637c4398cd347a5d430c` |
| 28 | `theorem` | [image_embedding_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/image-embedding-iff.md) | 157 | `result-track:a631a2f1bcbd629367fec1c85bde37ba97cc2a27a4024dab397f82a4a395695d` |
| 29 | `theorem` | [image_iso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/image-iso.md) | 161 | `result-track:beaad9585a165a780b70e02996bc91539d30b9278a779f1f4d4c6642f4694b69` |
| 30 | `theorem` | [image_iso_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/image-iso-iff.md) | 165 | `result-track:91875f564efe6c5ef00cef504ec20b777773c8e566b0c4f54d2ed89ef7b25fe6` |
| 31 | `theorem` | [preimage_iso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/preimage-iso.md) | 169 | `result-track:412732f5a63f4cf3fb39c1d55031fb589e96a7cfca796372bbe4e8c3b52590cd` |
| 32 | `theorem` | [preimage_iso_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/preimage-iso-iff.md) | 173 | `result-track:3f88ff29230e090f824851487e6f735633e85ed5e1dc8301e2012f12bd8861b3` |
| 33 | `theorem` | [to_dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/to-dual.md) | 177 | `result-track:6efd9e6baeae4e24035561a73a4eef632e31a40268d4f670a9957a8a1e145541` |
| 34 | `theorem` | [to_dual_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/to-dual-iff.md) | 180 | `result-track:1c44dcea25928c89771e929ca91ce10daa077d29373670d90edea89eb781be24` |
| 35 | `theorem` | [image_compl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/image-compl.md) | 183 | `result-track:5cacd3d2a9e9ae4e6286f55c7dd24650051ab01c6f298156667803ddae9826cc` |
| 36 | `theorem` | [preimage_compl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/preimage-compl.md) | 187 | `result-track:c917547616e9957c82e6fb6562d7be99afc987b409c716034f958b632d4a4079` |
| 37 | `theorem` | [diff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/diff.md) | 191 | `result-track:1549290b8d8d9e5b42de6cdc09ccc9a0b15170e015bbddcce3317392bba70bd8` |
| 38 | `theorem` | [isAntichain_preimage_subtypeVal](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/isantichain-preimage-subtypeval.md) | 196 | `result-track:7b7e050a57bb634dad865d716058190fa664c81c8acd11f67bcc6af8058664d5` |
| 39 | `theorem` | [isAntichain_coe_univ_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/isantichain-coe-univ-iff.md) | 200 | `result-track:7e6d74b9f583dba55bc099475024e3c5e6e7cab8e88220059f18e98ec2fd759c` |
| 40 | `theorem` | [isAntichain_union](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/isantichain-union.md) | 203 | `result-track:01c902e1e9bae567ef998d0a5a42db43efb1179b90b8c4871327ac1bd6f21693` |
| 41 | `theorem` | [Set.Subsingleton.isAntichain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/set-subsingleton-isantichain.md) | 208 | `result-track:87d6a6a72551536b040596deb20018cc961cfc656ba97e60d95803c309706ec6` |
| 42 | `lemma` | [subsingleton_of_isChain_of_isAntichain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/subsingleton-of-ischain-of-isantichain.md) | 212 | `result-track:bc6d82808459ffa7dc964f6e97fc5f76fa1b0d81a213efbfdfd2d6bd0f1d4464` |
| 43 | `lemma` | [isChain_and_isAntichain_iff_subsingleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/ischain-and-isantichain-iff-subsingleton.md) | 220 | `result-track:15d4f1425630dea9e8cc6a78f2663a51bd6ccfd2ac0bfdafb3db7ed176c6da21` |
| 44 | `lemma` | [inter_subsingleton_of_isChain_of_isAntichain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/inter-subsingleton-of-ischain-of-isantichain.md) | 224 | `result-track:a10514c3c2aa3b34026a3c1ec9e473251f0720f1cd1099976c3f231d4f31dd37` |
| 45 | `lemma` | [inter_subsingleton_of_isAntichain_of_isChain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/inter-subsingleton-of-isantichain-of-ischain.md) | 229 | `result-track:75998f2b68cb60e638042ddd8074099d676083dd3e0c27be1e6022e673150fcc` |
| 46 | `theorem` | [IsAntichain.not_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/isantichain-not-lt.md) | 237 | `result-track:456b13f977d31b7ed20de398ce1a37c86ad588597b66d63960f5d1d7776b2bbf` |
| 47 | `theorem` | [isAntichain_and_least_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/isantichain-and-least-iff.md) | 240 | `result-track:9fb8bf449416f3b4cebcee112b562245daee2d4c619c672b63f5cf841db0bea9` |
| 48 | `theorem` | [isAntichain_and_greatest_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/isantichain-and-greatest-iff.md) | 245 | `result-track:f7fae20e54ac0bd285d10c3afeab2c1ac11cf404e0a113f1302cfe7f651001f0` |
| 49 | `theorem` | [IsAntichain.least_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/isantichain-least-iff.md) | 250 | `result-track:d90052a25fe80b6badc0c26a146b413e15440c05cdf2de639e4bc9e76c867da8` |
| 50 | `theorem` | [IsAntichain.greatest_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/isantichain-greatest-iff.md) | 253 | `result-track:6e8fcd71c6039d415f7175400ade96b3d1de5c12008ffee40467b985a47feb83` |
| 51 | `theorem` | [IsLeast.antichain_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/isleast-antichain-iff.md) | 256 | `result-track:e172b1e2ebd5219f28919b40a9ec137b924e1d7a259b32f21d3597d50bdb7069` |
| 52 | `theorem` | [IsGreatest.antichain_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/isgreatest-antichain-iff.md) | 259 | `result-track:daccfac3a728e247ecce4a4cfa2a3061c4458bcda20b2f778ca172df571b32b8` |
| 53 | `theorem` | [IsAntichain.bot_mem_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/isantichain-bot-mem-iff.md) | 262 | `result-track:84e829ea42863e566e7a6ad020f7d7a75a7711b89da43d206a715017c57eefef` |
| 54 | `theorem` | [IsAntichain.top_mem_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/isantichain-top-mem-iff.md) | 265 | `result-track:424b9a928200b15ada215c356e86550674d58ecda3377457849b35e232b1b52b` |
| 55 | `theorem` | [IsAntichain.minimal_mem_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/isantichain-minimal-mem-iff.md) | 268 | `result-track:d315ad800d4c534c49a13699583f0841dd8f6af69d69af96d160f32ed2b9372c` |
| 56 | `theorem` | [IsAntichain.maximal_mem_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/isantichain-maximal-mem-iff.md) | 271 | `result-track:c4234d501a80b7a5f8545f3ee2147757c6a06ca3748585d0750a41e671aaae84` |
| 57 | `theorem` | [IsAntichain.eq_setOfPred_maximal](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/isantichain-eq-setofpred-maximal.md) | 276 | `result-track:6bad994f328f4db30182b1667ec8a2054d4ecca246a8ba59f2420acf17ed4a09` |
| 58 | `theorem` | [IsAntichain.eq_setOfPred_minimal](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/isantichain-eq-setofpred-minimal.md) | 288 | `result-track:a33adf40039b07d6accdd5af2b38ac51d7aa28e2687c2fea3dc789a3b3c70dbb` |
| 59 | `lemma` | [IsAntichain.of_strictMonoOn_antitoneOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/isantichain-of-strictmonoon-antitoneon.md) | 302 | `result-track:1f7c3f60549696a9065e893c62d9b4851df925f1b9299bcedf2777ed8cc1fed9` |
| 60 | `lemma` | [IsAntichain.of_monotoneOn_strictAntiOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/isantichain-of-monotoneon-strictantion.md) | 306 | `result-track:579315e46082f9c5e8d9e18407ecc4d920e63e6e992e2b8d93d12ae354cf02d9` |
| 61 | `theorem` | [isAntichain_iff_forall_not_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/isantichain-iff-forall-not-lt.md) | 310 | `result-track:9922fa89d94529161a17f021ffaefc309fe45edb3ddf80e4f352852da7c6d1e5` |
| 62 | `theorem` | [setOfPred_maximal_antichain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/setofpred-maximal-antichain.md) | 314 | `result-track:c255676d89834d1ccf32d12e12660f1ad63f064492d8e1d49066414cfdaaa88d` |
| 63 | `theorem` | [setOfPred_minimal_antichain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/setofpred-minimal-antichain.md) | 320 | `result-track:188b584bf76982bd4632dfaf55182306914592ff17935f905b21c600a1517742` |
| 64 | `def` | [IsStrongAntichain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/isstrongantichain.md) | 332 | `declaration-track:f4250ad6ff82a12ab398066b43a24811e30aeda7a3e9168237c1ce7d2e54d570` |
| 65 | `theorem` | [subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/subset-source-edition-3.md) | 337 | `result-track:ed1259e5c178e2503cbcad9659c171a44d6fffa1d624d02cb9a26bdae08d20d2` |
| 66 | `theorem` | [mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/mono.md) | 340 | `result-track:3e2c5bdf1bee928a4eb34f4c8fad6f49e885e0b3fd8ab7bf988b5cc478ce502d` |
| 67 | `theorem` | [eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/eq.md) | 343 | `result-track:21c3ef8af417c1c3768f5994223058402207b7bedc83fb482aa7346178e5039a` |
| 68 | `theorem` | [isAntichain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/isantichain-source-edition-3.md) | 348 | `result-track:7bc33744e03130f292eaca3d644fad35a7c102399d309e447de71a46d7779b2d` |
| 69 | `theorem` | [subsingleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/subsingleton-source-edition-2.md) | 351 | `result-track:c67d67b5268243e219c2788b2669c8a1d86f778395d4c707edc127ec566eb88b` |
| 70 | `theorem` | [flip](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/flip.md) | 356 | `result-track:a8c9bd54ef205af7c339e12b165215111e0ea68c30ee1ef634cd9941cecc52f6` |
| 71 | `theorem` | [swap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/swap-source-edition-2.md) | 359 | `result-track:5598d63d9f1946c26cad7b1fb561aaafb324760db34d9fe2be95725c0ed5273b` |
| 72 | `theorem` | [image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/image-source-edition-2.md) | 362 | `result-track:5bc31523f77c4692a7d536620012cec6195e61fac4280df7e0b0d9194e9a3e2a` |
| 73 | `theorem` | [preimage](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/preimage-source-edition-2.md) | 368 | `result-track:e2d8f13987461ea1399c73be548c1f1afda41d8a4050e7e926c7ca4d8d3680b4` |
| 74 | `theorem` | [Antichain Namespaced Public](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-extremalcombinatorics-is-source-edition-2.md) | 372 | `result-track:7a01debea5e811a8d40a8e026f9b2c045fa7b776edd7f2d041553ad6ebc0e965` |
| 75 | `theorem` | [insert](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/insert-source-edition-3.md) | 378 | `result-track:8c09c695aa0c9afaa2c528a3512f52ad978c8a579c87af5978f32cbd2d839ae6` |
| 76 | `theorem` | [Set.Subsingleton.isStrongAntichain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/set-subsingleton-isstrongantichain.md) | 384 | `result-track:d4800263b1879f5513f70b868b7506270642a0502a11ca222e6e01875800139d` |
| 77 | `def` | [IsMaxAntichain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/ismaxantichain.md) | 392 | `declaration-track:716f147f834846aaf34f9102e7ede4720e7a0b1e1caf21e5da361e8ab29739f7` |
| 78 | `theorem` | [isAntichain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/isantichain.md) | 397 | `result-track:43f741d87bbab9975ad3aaf844b3430269f2f0018a8d3cd89aadc885e5338a4d` |
| 79 | `theorem` | [image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/image-source-edition-3.md) | 400 | `result-track:6a924d7e3d329e0427c1eacfd012920d1106e23105e7b286e5610a0916ba159f` |
| 80 | `theorem` | [isEmpty_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/isempty-iff.md) | 408 | `result-track:9368e8a84277853a50eb205bddefe17b4fbca3f0984bcebb00fc548c500a56ec` |
| 81 | `theorem` | [nonempty_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/nonempty-iff.md) | 415 | `result-track:e9f2d6dec4405ad2bf6524db665107cb842efafac8b78c526156b452a6b7830c` |
| 82 | `theorem` | [symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/symm.md) | 418 | `result-track:60ac8e58fb709ba882faaf6e4181671cf7928f9c9767c1ad93b1b0b73abe80a1` |
| 83 | `theorem` | [maximal_isAntichain_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/maximal-isantichain-iff.md) | 423 | `result-track:b5db5f3cea9f2e82184424c9e599627f4e1c13194403952a269d31580501c69b` |
| 84 | `def` | [IsWeakAntichain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/isweakantichain.md) | 445 | `declaration-track:b9188d37ee72c7dbe82ccc8a9ac22e2f1b3b2f3c7aacff7c3010631e0833c7e0` |
| 85 | `theorem` | [subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/subset.md) | 450 | `result-track:10329e3d4e52443582d65a441860a38c9d3faa4d0b25292c48a98833b65fc87a` |
| 86 | `theorem` | [eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/eq-source-edition-4.md) | 453 | `result-track:dc25d9c68c5d023702901482d8a3bb563b0c5ee42394f395a69f0a13d7851730` |
| 87 | `theorem` | [insert](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/insert.md) | 456 | `result-track:01e7884dc8cd6b5a3c12d40430cf36a40f3db0f44486fbe562c8872db35578b9` |
| 88 | `theorem` | [Antichain Namespaced Public](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-extremalcombinatorics-is.md) | 463 | `result-track:5bc9b954ec3ba6f0e1f21b3aec9d3a147524846c82254f0caca57cee3dd4fbeb` |
| 89 | `theorem` | [IsAntichain.isWeakAntichain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/isantichain-isweakantichain.md) | 467 | `result-track:b592dbffbaaab688ed634d51a25324e7962cf3d0af1f5786c04b3adc5b701968` |
| 90 | `theorem` | [Set.Subsingleton.isWeakAntichain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainNamespacedPublic.lean/declarations/set-subsingleton-isweakantichain.md) | 470 | `result-track:dae405a74b73735bf7ea6a7d5bcf6251b0eed1ad5b78bb2cc2b45b50d27d3017` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8cf90c2e137e6d44a6ff9d02f744398788ee796162c66bfc7ce6e52755b8f53b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Antichain/Variant16b00089f3570453464af8d551569ca06aa025b92cffe18ca932197e2e7d1034.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Antichain/Variant16b00089f3570453464af8d551569ca06aa025b92cffe18ca932197e2e7d1034.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
