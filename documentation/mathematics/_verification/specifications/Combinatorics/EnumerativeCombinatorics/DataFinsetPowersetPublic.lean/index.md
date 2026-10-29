# Verification target: Data Finset Powerset Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "869a634995b330a3527eae71a98e82ded7eccc59",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variantf75bda32442ed32ed7c65b2f56728167860c9d817a853701c1cd86e51b1d9881.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetPublic.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `869a634995b330a3527eae71a98e82ded7eccc59`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variantf75bda32442ed32ed7c65b2f56728167860c9d817a853701c1cd86e51b1d9881.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Powerset/Variantf75bda32442ed32ed7c65b2f56728167860c9d817a853701c1cd86e51b1d9881.lean.json)

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
| 1 | `def` | [powerset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetPublic.lean/declarations/powerset.md) | 32 | `declaration-track:de1adf03d4394f64660c9c4425d56c810d6d62ed09438769d1ae38f9e2b28b22` |
| 2 | `theorem` | [mem_powerset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetPublic.lean/declarations/mem-powerset.md) | 37 | `result-track:ed4bdf1684c00d20dd9eb29924c411ed33ff0db5d5009eedd8e441247163fff8` |
| 3 | `theorem` | [coe_powerset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetPublic.lean/declarations/coe-powerset.md) | 43 | `result-track:f804eee619f1c7c5019a1a1182c468ee9bf1e3e90dbe5ae92a4d44ddfd607ca8` |
| 4 | `theorem` | [empty_mem_powerset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetPublic.lean/declarations/empty-mem-powerset.md) | 48 | `result-track:1b9e2b25e5df7ab65b09a2e698306fb342048a003b0b308b4b27256a875d089b` |
| 5 | `theorem` | [mem_powerset_self](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetPublic.lean/declarations/mem-powerset-self.md) | 50 | `result-track:68604781bc891fbc4efdd8c00fb2fb10639b4c5960a72cd7adfaa1f2e8a684b3` |
| 6 | `theorem` | [powerset_nonempty](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetPublic.lean/declarations/powerset-nonempty.md) | 53 | `result-track:df3cf3e0a7a724c64ccaa9097455b62f3928fde33b1b47f5a12a53206ef15659` |
| 7 | `theorem` | [powerset_mono](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetPublic.lean/declarations/powerset-mono.md) | 57 | `result-track:7d759f63bf5ec454edbc726aa0b66c1417db42d1cc59f46856691fffd7a985de` |
| 8 | `theorem` | [powerset_injective](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetPublic.lean/declarations/powerset-injective.md) | 61 | `result-track:69131e558977db88d16348bb2b37941f6df740c1f14c11ff846e07925064cd33` |
| 9 | `theorem` | [powerset_inj](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetPublic.lean/declarations/powerset-inj.md) | 65 | `result-track:423566531d9162b040818e97b9cbfc033bd9203086d28521eecbf41c80daae77` |
| 10 | `theorem` | [powerset_empty](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetPublic.lean/declarations/powerset-empty.md) | 69 | `result-track:ae91da706be4b921b60e81deebd4ce72a16791539e67ad61dca5e7d1cf0b4427` |
| 11 | `theorem` | [powerset_eq_singleton_empty](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetPublic.lean/declarations/powerset-eq-singleton-empty.md) | 73 | `result-track:d8c7c8e828aa6b661d9554cf1e6271ea1d708e00dac85850b1a3186554e4e5de` |
| 12 | `theorem` | [image_injOn_powerset_of_injOn](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetPublic.lean/declarations/image-injon-powerset-of-injon.md) | 76 | `result-track:b777cc15b7a2c159ba27b653c94f70cca9a66d37e677503684ac5467b795b4f4` |
| 13 | `theorem` | [injOn_image_of_biUnion_injOn](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetPublic.lean/declarations/injon-image-of-biunion-injon.md) | 83 | `result-track:25d3c389e4f6a82882342874c161b57c04d71524454a6b8f80578d6e9aed08aa` |
| 14 | `lemma` | [biUnion_id_subset_iff_subset_powerset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetPublic.lean/declarations/biunion-id-subset-iff-subset-powerset.md) | 89 | `result-track:ce5b5d75b9363ad03da0501d5c4407ffe277e9f225f457f4022a3d4a9893ad62` |
| 15 | `theorem` | [image_surjOn_powerset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetPublic.lean/declarations/image-surjon-powerset.md) | 93 | `result-track:78d20ca2963b0c71b0617669bc7dc0362fb0fdab38cfb25bff5ae351d2e151f9` |
| 16 | `theorem` | [powerset_image](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetPublic.lean/declarations/powerset-image.md) | 97 | `result-track:d941220d91469b0595fb108580ac2901cefe217624da189b1493fc2bca2e8277` |
| 17 | `theorem` | [card_powerset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetPublic.lean/declarations/card-powerset.md) | 103 | `result-track:c1893617ab97558e9900117af1b9edb6e1820e0d287152e03760e6743088d6ec` |
| 18 | `theorem` | [notMem_of_mem_powerset_of_notMem](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetPublic.lean/declarations/notmem-of-mem-powerset-of-notmem.md) | 106 | `result-track:3f0a39206b314dff3b5b7b09de2c94658854296adc4247092cd28a86c1d79cfa` |
| 19 | `theorem` | [powerset_insert](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetPublic.lean/declarations/powerset-insert.md) | 111 | `result-track:297f06d3e961c2ae5bd259e0b28d8f538a95e2581ae6585c167cb0d017a0f799` |
| 20 | `lemma` | [pairwiseDisjoint_pair_insert](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetPublic.lean/declarations/pairwisedisjoint-pair-insert.md) | 117 | `result-track:f21cc0df7f7d7438fb085c2c29c9b557ddeb83fa0762d3d01d367a2d180d14a1` |
| 21 | `instance` | [decidableExistsOfDecidableSubsets](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetPublic.lean/declarations/decidableexistsofdecidablesubsets-source-edition-2.md) | 128 | `declaration-track:d3a5530a661fe5444d1cd26b6d04162bbf72664137c8468e19b20f68f4a12cb0` |
| 22 | `instance` | [decidableForallOfDecidableSubsets](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetPublic.lean/declarations/decidableforallofdecidablesubsets-source-edition-2.md) | 134 | `declaration-track:f6081debbd1a97a0e91b17041ede155c2b1bcb747c3404cb3984dce911af6d48` |
| 23 | `instance` | [decidableExistsOfDecidableSubsets'](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetPublic.lean/declarations/decidableexistsofdecidablesubsets.md) | 140 | `declaration-track:795fd155a6af8f3a27c507d43308d56a94031d36158dbdf906510a52db1acd18` |
| 24 | `instance` | [decidableForallOfDecidableSubsets'](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetPublic.lean/declarations/decidableforallofdecidablesubsets.md) | 145 | `declaration-track:147d97836ef2187dad118de31d638345f102f0b009bfd4e52fdda40fd1d2062e` |
| 25 | `def` | [ssubsets](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetPublic.lean/declarations/ssubsets.md) | 156 | `declaration-track:c95f08eb54623455b2ca8fdad2ea6ce657d5e6bf3deb5acee5b3ed8fdec93877` |
| 26 | `theorem` | [mem_ssubsets](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetPublic.lean/declarations/mem-ssubsets.md) | 160 | `result-track:b86447e8c05778a8beecebbb15d0b65679645bb2972b742e89d8335886e98b9b` |
| 27 | `theorem` | [empty_mem_ssubsets](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetPublic.lean/declarations/empty-mem-ssubsets.md) | 163 | `result-track:165da5e6ab9f8b83f93992b047dc9cd0780d6157fec17fcffe1b916a9c6086c4` |
| 28 | `def` | [decidableExistsOfDecidableSSubsets](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetPublic.lean/declarations/decidableexistsofdecidablessubsets.md) | 168 | `declaration-track:6b5158ab9fb9abf6e4baf5cb484c3ccf1881e4e8ce8deafa40d68bccc7c6c2d8` |
| 29 | `def` | [decidableForallOfDecidableSSubsets](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetPublic.lean/declarations/decidableforallofdecidablessubsets.md) | 174 | `declaration-track:89c95ade49aefe66f39a1b491407197f1788c884df6d49d3936956bdcaa1f607` |
| 30 | `def` | [decidableExistsOfDecidableSSubsets'](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetPublic.lean/declarations/decidableexistsofdecidablessubsets-source-edition-2.md) | 181 | `declaration-track:dd5cc41f9e185abc33e72e8ae1804e3d6399f9cae6ebae1699e0f851e566dfb8` |
| 31 | `def` | [decidableForallOfDecidableSSubsets'](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetPublic.lean/declarations/decidableforallofdecidablessubsets-source-edition-2.md) | 187 | `declaration-track:afb3107496b7212b0a84d8ce661370f49883365157a58f1f093f151a3481bb85` |
| 32 | `def` | [powersetCard](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetPublic.lean/declarations/powersetcard.md) | 198 | `declaration-track:119059444654331eeeb6d9646c8049d1bfe6a8227485b508a176e4d754c2430e` |
| 33 | `lemma` | [mem_powersetCard](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetPublic.lean/declarations/mem-powersetcard.md) | 202 | `result-track:5fd5f7ad2ed6d1885f387f7d42365d6d3725c8b1ea8ad227296c86d1c36626d2` |
| 34 | `theorem` | [powersetCard_mono](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetPublic.lean/declarations/powersetcard-mono.md) | 206 | `result-track:efa60423605bea20bf6d84fc813dcc7380483f8ce26107aa319539efaa873930` |
| 35 | `theorem` | [card_powersetCard](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetPublic.lean/declarations/card-powersetcard.md) | 212 | `result-track:23818d26351f6a130624b541f85c6fb94a4111a1517d27c935d3f1506663230e` |
| 36 | `theorem` | [filter_powersetCard_subset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetPublic.lean/declarations/filter-powersetcard-subset.md) | 218 | `result-track:516e86c4d1a5fa8a8233cbf74e9d9aba25d32dcf7bce004eb39527b446ad017a` |
| 37 | `lemma` | [card_filter_powersetCard_subset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetPublic.lean/declarations/card-filter-powersetcard-subset.md) | 234 | `result-track:0f7c1f2d00f6c28d58819bce18bb967b3ce997145dcd1f3425126635fe35891c` |
| 38 | `theorem` | [powersetCard_zero](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetPublic.lean/declarations/powersetcard-zero.md) | 247 | `result-track:ee43f2a0d3a8c1c564fcdc275834a0be23f91bac9ed571ddc033f00eb92a8d0c` |
| 39 | `lemma` | [powersetCard_empty_subsingleton](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetPublic.lean/declarations/powersetcard-empty-subsingleton.md) | 250 | `result-track:4bad42565ea59f8f7cadc1a063c0b726ebd9bc335e3b06c766864e70b737f4af` |
| 40 | `theorem` | [map_val_val_powersetCard](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetPublic.lean/declarations/map-val-val-powersetcard.md) | 255 | `result-track:eefe9abb8c8db7bfab4829be4a7d90a6b179b8ab0200519c9a428e4573d55c2a` |
| 41 | `theorem` | [powersetCard_one](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetPublic.lean/declarations/powersetcard-one.md) | 259 | `result-track:14ec735c60b0d0678e9c071199749c99943f982025ecfa4576b8843a067e8f7b` |
| 42 | `lemma` | [powersetCard_eq_empty](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetPublic.lean/declarations/powersetcard-eq-empty.md) | 264 | `result-track:fac1530b89926d0daf0dc778680d063099db3305b1ae84f08681c4ee656fd338` |
| 43 | `lemma` | [powersetCard_card_add](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetPublic.lean/declarations/powersetcard-card-add.md) | 269 | `result-track:a1dd756a170a7e0919d0d456f153a217025d8b41001d9f9241b38118a5a9b948` |
| 44 | `lemma` | [powersetCard_inter](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetPublic.lean/declarations/powersetcard-inter.md) | 272 | `result-track:f43fdc5e89174921c6d4e93afda413d8d3c670964171a3787a570591c9dbe271` |
| 45 | `lemma` | [disjoint_powersetCard_powersetCard](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetPublic.lean/declarations/disjoint-powersetcard-powersetcard.md) | 276 | `result-track:e9506d0d5b0824a23ce6b8e22384a037bc841c7fc777df06e4dd6e1a647f7eab` |
| 46 | `theorem` | [powersetCard_eq_filter](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetPublic.lean/declarations/powersetcard-eq-filter.md) | 280 | `result-track:6bbca89a5af0ae83a93f1bc92aff28eae8180f589f3a947d9a908c42d81dbbd2` |
| 47 | `theorem` | [powersetCard_succ_insert](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetPublic.lean/declarations/powersetcard-succ-insert.md) | 285 | `result-track:70a68d6cf10540683c97558cb0ad8be98c063b17dd4bd57fb46947a3aae7bddf` |
| 48 | `lemma` | [powersetCard_nonempty](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetPublic.lean/declarations/powersetcard-nonempty.md) | 292 | `result-track:56e2956dc29f78529c5f57c5edce0957c6d0c31bf3d73190c8e78efd913f475a` |
| 49 | `theorem` | [powersetCard_self](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetPublic.lean/declarations/powersetcard-self.md) | 299 | `result-track:eccca5ea460cfe77fad3b3129ca9ab2dc105c0eb2027301b30defe5f103e66b7` |
| 50 | `lemma` | [_root_.Disjoint.powersetCard_powersetCard_finset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetPublic.lean/declarations/root-disjoint-powersetcard-powersetcard-finset.md) | 307 | `result-track:8fc9610e19625dcac593b220653dec9aabff238699bc42f3f52d3fa585e01044` |
| 51 | `lemma` | [disjoint_powersetCard_of_ne](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetPublic.lean/declarations/disjoint-powersetcard-of-ne.md) | 312 | `result-track:e129ea8a121be7c7d83247945d19e8840af0b97b0dd0a0cd7021c60ec09038f5` |
| 52 | `theorem` | [pairwise_disjoint_powersetCard](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetPublic.lean/declarations/pairwise-disjoint-powersetcard.md) | 316 | `result-track:1ee6cb3e1e00529b47a214cf65f5130069aa8ff186f606bd653f9f35ef8b4640` |
| 53 | `theorem` | [powerset_card_disjiUnion](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetPublic.lean/declarations/powerset-card-disjiunion.md) | 321 | `result-track:5ce4f28f711b779c3ca7fffc8536b9c13babd2255687a10a95c9e200c6a96bb3` |
| 54 | `theorem` | [powerset_card_biUnion](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetPublic.lean/declarations/powerset-card-biunion.md) | 334 | `result-track:c51a1b5cedeb1c349c679d1dd8016baf2fdb7d7c2b81bccd8696e6326b35078c` |
| 55 | `theorem` | [powersetCard_sup](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetPublic.lean/declarations/powersetcard-sup.md) | 338 | `result-track:beb6e1900ef51832891d3f6238eaa32cd0df19609de8f57f7699e9a4cc1d2985` |
| 56 | `lemma` | [powersetCard_biUnion](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetPublic.lean/declarations/powersetcard-biunion.md) | 354 | `result-track:2f8dc43b96cf4d21e29949fd2c5ec91a2a1c3342b99292a3b8825baf009feed4` |
| 57 | `lemma` | [eq_of_powersetCard_eq](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetPublic.lean/declarations/eq-of-powersetcard-eq.md) | 362 | `result-track:6c21d87bf8e2205a7ec630230241d186047f00c1001e1144ffd832f854ebe2d4` |
| 58 | `lemma` | [powersetCard_injOn](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetPublic.lean/declarations/powersetcard-injon.md) | 369 | `result-track:1ff56488d173c4da5a784047f17b19509e480f05c84eb1b2b3aeb6cfd24d8962` |
| 59 | `theorem` | [powersetCard_map](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetPublic.lean/declarations/powersetcard-map.md) | 373 | `result-track:f298d9ecc8f47ea4606ded7417f53241ba2277b57e3ac766e2360f5b1a9cab5f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b9b8b70b9a27e519cb5b4f07523d989282fb174b2b478eb9997e5e8b77db22a3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variantf75bda32442ed32ed7c65b2f56728167860c9d817a853701c1cd86e51b1d9881.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Powerset/Variantf75bda32442ed32ed7c65b2f56728167860c9d817a853701c1cd86e51b1d9881.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
