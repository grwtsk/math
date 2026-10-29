# Verification target: Opens Open Embedding Of Le

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "45c6cd630b991a156c8b9457758311adace1db86",
  "lexical_observation_count": 71,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Opens/Variant38e6e1bcf53305c674748fd8517a51a6a8ad4f0831235f451dd9f78582096201.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/index.md) · [Full source](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `45c6cd630b991a156c8b9457758311adace1db86`.

Source path: `GRWTSK/Topology/GeneralTopology/Opens/Variant38e6e1bcf53305c674748fd8517a51a6a8ad4f0831235f451dd9f78582096201.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Opens/Variant38e6e1bcf53305c674748fd8517a51a6a8ad4f0831235f451dd9f78582096201.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Hom.CompleteLattice` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Bases` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homeomorph` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousFunction.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.CompactlyGenerated` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Copy` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Opens](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/opens.md) | 63 | `declaration-track:33b93476530cfe5736ccffa5bdc5b6190848752aba8e0d17a19ae1f848038af7` |
| 2 | `instance` | [(anonymous)](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/instance.md) | 74 | `declaration-track:036bd7d9a9e5184335375b7885c9613c807bf5fba4ced28d605bd0682a588248` |
| 3 | `instance` | [(anonymous)](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/instance-source-edition-3.md) | 78 | `declaration-track:0ef198c7f642d19ceee729d0dfa34b4b0154a415e1294ae86692cc229ae85e94` |
| 4 | `theorem` | [«forall»](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/forall.md) | 81 | `result-track:506fd3375bb00458188909e07128effd1111945381df2a8982d46a0144f45f2f` |
| 5 | `theorem` | [carrier_eq_coe](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/carrier-eq-coe.md) | 85 | `result-track:1bc4e3636ac2cd5620dbff3d161d98858a15077fc9fd0bda5d89ffd9f9966a9a` |
| 6 | `theorem` | [coe_mk](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/coe-mk.md) | 90 | `result-track:456ef68d6e7ab7486284556b0a6c7d8b7164a0567ceeee54b11f16d90318694d` |
| 7 | `theorem` | [mem_mk](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/mem-mk.md) | 95 | `result-track:4fc235cefb14c6bd376f14ba6ab8013469d649077504e67c203d6e95a10f934e` |
| 8 | `theorem` | [nonempty_coeSort](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/nonempty-coesort.md) | 99 | `result-track:d352a144e3126036478a490e38b5d628d8c569565f3852d9f4b726fa094e4bd0` |
| 9 | `theorem` | [nonempty_coe](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/nonempty-coe.md) | 104 | `result-track:95139a0f3e05e627473c6c0bc911c7a58109ffa8dbeadc8a2a0de843937ded22` |
| 10 | `theorem` | [ext](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/ext.md) | 108 | `result-track:6e303887eb051314e6f9656dcfb65a05f5f6df2c4374bfea5749f09cc0436fec` |
| 11 | `theorem` | [coe_inj](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/coe-inj.md) | 113 | `result-track:75d84163e2ebd6bbd92ad82a672df8a1b7545d262ceed620a492c5860c12e669` |
| 12 | `theorem` | [isOpen](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/isopen-source-edition-2.md) | 117 | `result-track:65b9049a806b2ae6fd25dc83060c0e70c696ff61383dec713bbde5896466824c` |
| 13 | `theorem` | [mk_coe](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/mk-coe.md) | 121 | `result-track:bda57c7a774d787206bb0765a2f0a0ff6b2d7347eb4bb346a772be119fa7e81c` |
| 14 | `def` | [Simps.coe](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/simps-coe.md) | 125 | `declaration-track:0e7746d4b7c91a03c8276a64fdbd60f543b031e239b5238445476700e0b3c155` |
| 15 | `def` | [interior](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/interior.md) | 131 | `declaration-track:644d6b5aa90cba6b95606b027eb0e20ca72551d870dd8eee710cb762751380bc` |
| 16 | `theorem` | [gc](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/gc.md) | 135 | `result-track:217fe5cfb868098a94a910f55581a43907ab6c692fa580c97b794c8256547a4d` |
| 17 | `def` | [gi](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/gi.md) | 140 | `declaration-track:512675629a7a16f6701d6b0c5bb0477b2161bbb01aad008b13b6b606a9f15a06` |
| 18 | `instance` | [(anonymous)](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/instance-source-edition-13.md) | 147 | `declaration-track:dd6c6994eb52547ccaf61dce8d0f3ec97cc391255aeb03f1bba75951a65daa35` |
| 19 | `theorem` | [mk_inf_mk](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/mk-inf-mk.md) | 167 | `result-track:20f66d78f118dacb4fd0051bd258d83beca8d2d5e56f2f3b0c57f04835eba4e9` |
| 20 | `theorem` | [coe_inf](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/coe-inf.md) | 173 | `result-track:bdc042d279b3077b334d94c0f21d1b2989ef32ee19f77c14b9929673cb352380` |
| 21 | `theorem` | [coe_sup](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/coe-sup.md) | 178 | `result-track:2fc657095a9285461ec9ab01b082ee5f5a4c81fda560c7be9272d2bdcda825f4` |
| 22 | `theorem` | [coe_bot](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/coe-bot.md) | 183 | `result-track:7f48ad0dccf8f22f2bd9f1923c8425560bed0400a9b06913ff2c3dc53494d25a` |
| 23 | `theorem` | [coe_eq_empty](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/coe-eq-empty.md) | 189 | `result-track:41c1257e48b98e2854a2f657eb5277fc8168040b42b2879180c5197792d0946d` |
| 24 | `theorem` | [coe_top](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/coe-top.md) | 193 | `result-track:84df2d6e88def6263494aa6a19463dc82edc02d731aa0dde1257eef8311ec8fc` |
| 25 | `theorem` | [coe_eq_univ](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/coe-eq-univ.md) | 199 | `result-track:16bfeb23cb122fac7568d7f84dff260cd51313f0adea1504dbc1af6936109e50` |
| 26 | `theorem` | [coe_sSup](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/coe-ssup.md) | 203 | `result-track:a621cd2eb70e32f95f5247c42e653bf1770c788f4d5d1e9488e8453007b44436` |
| 27 | `theorem` | [coe_finset_sup](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/coe-finset-sup.md) | 208 | `result-track:1683a434b7ed5fae05625b38f0ec81f0fc67567407874a2ce9a3fd22dbf69059` |
| 28 | `theorem` | [coe_finset_inf](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/coe-finset-inf.md) | 213 | `result-track:f7a253e5b88d7677c57a01e9180301e2e0d585beb14037e84f6e475ed13ded92` |
| 29 | `instance` | [(anonymous)](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/instance-source-edition-15.md) | 217 | `declaration-track:dff04f9bc27708969ef37efd6688ecb1b81efe6d97078289c0b810f1b0cfeb89` |
| 30 | `instance` | [(anonymous)](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/instance-source-edition-10.md) | 220 | `declaration-track:83bc13813d39a5db20f9aea3f6e9b26fc4d153749b168d6bd76db909967e8ebe` |
| 31 | `instance` | [(anonymous)](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/instance-source-edition-4.md) | 224 | `declaration-track:5568a93839363c9d287e08beac9e749526466dbe5d796e7b8807aad560c646a7` |
| 32 | `theorem` | [coe_iSup](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/coe-isup.md) | 228 | `result-track:1696d0675a6381545c08f6929a961c555740bcb1df2b2ab431b0292bcda02c86` |
| 33 | `theorem` | [iSup_def](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/isup-def.md) | 232 | `result-track:d78a5e356cb5227cfd1d7094c82a2dc55a0557db809ddb6cb2f66309aeaabb20` |
| 34 | `theorem` | [iSup_mk](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/isup-mk.md) | 237 | `result-track:d561bec15e01572ca7fc853dc85051739c036115fd6f779ad6d4f95c13c1d23c` |
| 35 | `theorem` | [mem_iSup](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/mem-isup.md) | 243 | `result-track:8987ac7f2da991392d2bbf9a57f3c9d3c2d136a4d69531e46c3578b077a5ff9b` |
| 36 | `theorem` | [mem_sSup](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/mem-ssup.md) | 249 | `result-track:915ad0aed39fedc63a009a55281a9e626634811cae41600322eb6ce76fff777b` |
| 37 | `instance` | [(anonymous)](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/instance-source-edition-7.md) | 253 | `declaration-track:62fe7490385205bcecb3d7f07682ca596fe4eb3e8747d21dcbf1194970e39304` |
| 38 | `theorem` | [openEmbedding_of_le](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/openembedding-of-le.md) | 259 | `result-track:d0f746af7960e0fa6dd1f274d485cb5b24f807a31b927c81c13fdd6949870952` |
| 39 | `theorem` | [not_nonempty_iff_eq_bot](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/not-nonempty-iff-eq-bot.md) | 267 | `result-track:4451b5255a84b60faf4275647d20281ff96b2f4848afeb781dda52a9408deef0` |
| 40 | `theorem` | [ne_bot_iff_nonempty](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/ne-bot-iff-nonempty.md) | 271 | `result-track:94c22352dc692d15432ef6cdde2189e71d4b53eb45e13024894e67580620fdf2` |
| 41 | `theorem` | [eq_bot_or_top](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/eq-bot-or-top.md) | 276 | `result-track:c5015895fca983252be797dbfb5f8764d56ca6a418dae53cf095d40ad90171c8` |
| 42 | `instance` | [(anonymous)](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/instance-source-edition-8.md) | 283 | `declaration-track:68b41fa3bc80a16df1654936b1d875cb4ead109b0b3fd4defa47ad3bbade9460` |
| 43 | `def` | [IsBasis](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/isbasis.md) | 287 | `declaration-track:30505d708b800548314e49dd8c0ffa8977b2a172a7a0dc5831bf5ac5d4bbc728` |
| 44 | `theorem` | [isBasis_iff_nbhd](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/isbasis-iff-nbhd.md) | 291 | `result-track:2f1ace505ef143765a2f552180c1f63c4b240200d05ff6aef3667fd4f4118b5a` |
| 45 | `theorem` | [isBasis_iff_cover](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/isbasis-iff-cover.md) | 309 | `result-track:cd4f475fe541f47bab8edf6eb8b3390d492ff17fee06d88224adba7341bfe9a5` |
| 46 | `theorem` | [IsBasis.isCompact_open_iff_eq_finite_iUnion](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/isbasis-iscompact-open-iff-eq-finite-iunion.md) | 327 | `result-track:aa9352cb93e0d01efe050ec196855dac0231614feeeb170e31fa1762bf70632e` |
| 47 | `theorem` | [isCompactElement_iff](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/iscompactelement-iff.md) | 338 | `result-track:b57bb9da802c9f3cc3fac0338c409a9df5b626f013ba46fe7f691a3d39c84a22` |
| 48 | `def` | [comap](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/comap.md) | 356 | `declaration-track:0c350ec329f304d28c0850cbad9f613da15f890a5d100935ffdbb28e38829954` |
| 49 | `theorem` | [comap_id](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/comap-id.md) | 364 | `result-track:c42eb657a9da9c8a846adea708c9f9ccc01bc09db21ecc4bf111c6e12e822a55` |
| 50 | `theorem` | [comap_mono](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/comap-mono.md) | 368 | `result-track:77a5db5778796fcadedaf99179e37474e347bfef19a7d522c08aff9b314f3efe` |
| 51 | `theorem` | [coe_comap](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/coe-comap.md) | 373 | `result-track:1492370a44397fc5faeffaeb7dd796186520662bb62506bdbc1a173994c29f79` |
| 52 | `theorem` | [comap_comp](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/comap-comp.md) | 377 | `result-track:377e3730f1c64a2e6e4a52379e080c685ecfb9491508d06bacb1771aa370b98d` |
| 53 | `theorem` | [comap_comap](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/comap-comap.md) | 382 | `result-track:55737dca701b84930fabc020ac3fae39bc989f48a9317106eb1f1a8bbfdf4fe4` |
| 54 | `theorem` | [comap_injective](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/comap-injective.md) | 387 | `result-track:715b70e91d74f0207bbdf61051a31983651be791a53fc0a699a5c3aff826e87f` |
| 55 | `def` | [_root_.Homeomorph.opensCongr](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/root-homeomorph-openscongr.md) | 398 | `declaration-track:1a237a738c3bfbf4ea625b37c89239d9eac5597d75bad5fbe8f4a5a39c7dc3d7` |
| 56 | `theorem` | [_root_.Homeomorph.opensCongr_symm](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/root-homeomorph-openscongr-symm.md) | 408 | `result-track:a414b11447c0372e88de9fb374f8bb9bf703eb733f8a1f12c09b2289c5bed19e` |
| 57 | `instance` | [(anonymous)](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/instance-source-edition-9.md) | 412 | `declaration-track:7fdc403c807fc7d9ec9bb8c8b3ae7b1cfa41b1e321bb2e91b7acf68ead91cec1` |
| 58 | `structure` | [OpenNhdsOf](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/opennhdsof.md) | 418 | `declaration-track:60bbe0a0ebe32755641616100112aec8c5949ac3f0477476945754fd059e4af6` |
| 59 | `theorem` | [toOpens_injective](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/toopens-injective.md) | 427 | `result-track:9b5a4616126f7639df66776a7917770e95dc5bcb0947da156d01b3a6bdcd5fa4` |
| 60 | `instance` | [(anonymous)](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/instance-source-edition-12.md) | 431 | `declaration-track:d5f97a1de9667ed83bed2e397a572358d7f9e6f0cb2588dec85d5d7915178e08` |
| 61 | `instance` | [canLiftSet](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/canliftset.md) | 435 | `declaration-track:f24944196681bb18fb7772f0018a26377f68e81847c53c3161e062c0fa246284` |
| 62 | `theorem` | [mem](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/mem.md) | 439 | `result-track:c3344a72f5c9b7c6673849c708548ccfe2873d0728839b5de0230b3f327bbfd0` |
| 63 | `theorem` | [isOpen](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/isopen.md) | 443 | `result-track:59bd642037dc0cd43e4345beb955445648083cc97b7597c7c170ddbfe23ed5e3` |
| 64 | `instance` | [(anonymous)](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/instance-source-edition-16.md) | 447 | `declaration-track:ebe2fb373b0d5b2fd8be186da6f7f18fd5a2d6132b5b2260de2ff31b25186f80` |
| 65 | `instance` | [(anonymous)](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/instance-source-edition-14.md) | 451 | `declaration-track:dfa80bb9ba27777f2d690dea61920669c45b34dbff95a22cac6b885cbdb686af` |
| 66 | `instance` | [(anonymous)](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/instance-source-edition-5.md) | 452 | `declaration-track:5e1838bfdada27bb480d936f6c4a5db5c7dfa0e9ba7eef5e32efdd39fbd5b806` |
| 67 | `instance` | [(anonymous)](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/instance-source-edition-6.md) | 453 | `declaration-track:6295d9aed8e9019b28d55986e1e06a63fb1885191412b10679cf65926396e6d1` |
| 68 | `instance` | [(anonymous)](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/instance-source-edition-2.md) | 456 | `declaration-track:0ee0161510ac7600745c0476f16da3d128daad2378aa56fc9d3da6130e9ca900` |
| 69 | `instance` | [(anonymous)](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/instance-source-edition-11.md) | 459 | `declaration-track:ac0e266db37ed93c49ba9c1390e25715e988636af25fd0a4e478491a5d535653` |
| 70 | `theorem` | [basis_nhds](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/basis-nhds.md) | 462 | `result-track:4da5f7f63c8b0890a6ad414bd54940342cce7276bd07f18c19117cb5712c99ea` |
| 71 | `def` | [comap](../../../../GeneralTopology/OpensOpenEmbeddingOfLe.lean/declarations/comap-source-edition-2.md) | 468 | `declaration-track:a11a129b109cef45d3bd01448ea61b9ee39df44a55dd50cb377d9be816f2c1eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8715c49e108f14fc3befebf78ba860383b57aba5f7eef48e1105dd443f07e6d4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Opens/Variant38e6e1bcf53305c674748fd8517a51a6a8ad4f0831235f451dd9f78582096201.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Opens/Variant38e6e1bcf53305c674748fd8517a51a6a8ad4f0831235f451dd9f78582096201.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
