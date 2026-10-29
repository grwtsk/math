# Verification target: Finset Sum Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b52c38c6f5a8872f0191fe11019764f191828bc",
  "lexical_observation_count": 66,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sum/Variant6938324d90ccfd614fb950b8459b08200695f3ca0d79e9647071bcc5ee4fec6e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b52c38c6f5a8872f0191fe11019764f191828bc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Sum/Variant6938324d90ccfd614fb950b8459b08200695f3ca0d79e9647071bcc5ee4fec6e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Sum/Variant6938324d90ccfd614fb950b8459b08200695f3ca0d79e9647071bcc5ee4fec6e.lean.json)

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
| 1 | `def` | [disjSum](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/disjsum.md) | 42 | `declaration-track:ab25726b5228d9c6bcdbc8255f0292c40822364fbb776299a5f516359890cb7b` |
| 2 | `theorem` | [val_disjSum](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/val-disjsum.md) | 46 | `result-track:42eb6f8dad26b4261181b58e3ca24ff9bd1642b142851ca0bef2790849ac9b61` |
| 3 | `theorem` | [empty_disjSum](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/empty-disjsum.md) | 50 | `result-track:109fa22e131fcc3b4236ffdbc542edac5555d238bd0ce02ffe7bd2d1054f9f98` |
| 4 | `theorem` | [disjSum_empty](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/disjsum-empty.md) | 54 | `result-track:b85f34bf18196ba7df0ab4bf86457bb8c03c128120e874a81921c8a5e5994cc2` |
| 5 | `theorem` | [card_disjSum](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/card-disjsum.md) | 58 | `result-track:d5994bd7eda370b93480bbcb7cd1b7957a846b7edf7948e5e4a57115bb33b01c` |
| 6 | `theorem` | [disjoint_map_inl_map_inr](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/disjoint-map-inl-map-inr.md) | 61 | `result-track:614f98ae83d7cf91df3c9fd0c97219353f990dadad792f8eb864ad2ccbbb8c89` |
| 7 | `theorem` | [map_inl_disjUnion_map_inr](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/map-inl-disjunion-map-inr.md) | 66 | `result-track:122a2019d336613d99f4891269af0583881e7b3a7ad08bd37be1e22f6c653983` |
| 8 | `theorem` | [mem_disjSum](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/mem-disjsum.md) | 73 | `result-track:e825b727f251840e0790bf19720a78d562d6bbd195442483cfd1717dc4164ec4` |
| 9 | `theorem` | [inl_mem_disjSum](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/inl-mem-disjsum.md) | 77 | `result-track:7ed0f84aea7eb415d744131e7f2ce435c994ef1513db0732eb50b591781e5165` |
| 10 | `theorem` | [inr_mem_disjSum](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/inr-mem-disjsum.md) | 81 | `result-track:ff5298bec062bf5388a61f1f67745aef1df2ca82ad682df04d1c5ea1fc1fa55d` |
| 11 | `theorem` | [disjSum_eq_empty](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/disjsum-eq-empty.md) | 85 | `result-track:23e9d6de26e09efbf876de8d3e92abb429ee2434e3f03fe4c43fd5d66187bb59` |
| 12 | `theorem` | [disjSum_mono](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/disjsum-mono.md) | 87 | `result-track:3a3fa6f1c53933d7bd5a7d0ef2ea55de99905eb89f6b74dddaaa14e427276123` |
| 13 | `theorem` | [disjSum_mono_left](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/disjsum-mono-left.md) | 90 | `result-track:177f0cb024c1b9eb8c75b95ddfb36a5c60838e7b2b8998e12d8d99074ea4d56b` |
| 14 | `theorem` | [disjSum_mono_right](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/disjsum-mono-right.md) | 93 | `result-track:516ab039d12232b41b640b5cfa5c928a80765de8a31c913b238695092e32f45c` |
| 15 | `theorem` | [disjSum_ssubset_disjSum_of_ssubset_of_subset](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/disjsum-ssubset-disjsum-of-ssubset-of-subset.md) | 96 | `result-track:b431119db27ed8fbb8715bbf803264ab021dba09e2047caf7c77746084ff8657` |
| 16 | `theorem` | [disjSum_ssubset_disjSum_of_subset_of_ssubset](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/disjsum-ssubset-disjsum-of-subset-of-ssubset.md) | 100 | `result-track:d254b7a2164091ab1eebab86b24ce90fb883134a6a5ac0f2f5f09be088be5750` |
| 17 | `theorem` | [disjSum_strictMono_left](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/disjsum-strictmono-left.md) | 104 | `result-track:c793dcf4d93f5d4ecd9d2d63dd8c1517fce92fc818bab10e3b586a1c70de3660` |
| 18 | `theorem` | [disjSum_strictMono_right](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/disjsum-strictmono-right.md) | 107 | `result-track:935da7392e1e5d3285287266c57f1d857edd1a603c4ce02ba26d701a0c5dc900` |
| 19 | `lemma` | [disjSum_inj](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/disjsum-inj.md) | 111 | `result-track:a39fd0e1f90c627eef40aaaf6f0040d8ec71e9b683711882e0b72ce2fbdc195d` |
| 20 | `lemma` | [Injective2_disjSum](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/injective2-disjsum.md) | 115 | `result-track:e828f5d7d27c4247731bdb89870e12816253fa15b017079335f8a28f9dcf336e` |
| 21 | `def` | [toLeft](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/toleft.md) | 124 | `declaration-track:cdcea26b483b3355e945f259324cae1ac5837b1d624ac8438e60e7721fdb8e73` |
| 22 | `def` | [toRight](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/toright.md) | 133 | `declaration-track:11ada1f73b727d6006fd28f54275f50e1c5d205f7703b338476205804c667878` |
| 23 | `lemma` | [mem_toLeft](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/mem-toleft.md) | 138 | `result-track:b2060c6e10e59c8342d92f39e971f938324e31bb9852cc9777c79e641e280136` |
| 24 | `lemma` | [mem_toRight](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/mem-toright.md) | 139 | `result-track:63ffd3dcdcad735a00ec06f1d0062940d802c34903ab4a597399e938181fca3c` |
| 25 | `lemma` | [toLeft_subset_toLeft](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/toleft-subset-toleft.md) | 142 | `result-track:12e884b03e925d7a023701a4b2544ac86273e1c4f3cf6425d323c7f4ce325f34` |
| 26 | `lemma` | [toRight_subset_toRight](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/toright-subset-toright.md) | 146 | `result-track:51859ed0fbec63290cc93e43ed85594e612fa0fbfd1fe208e389b616b37c1ffa` |
| 27 | `lemma` | [toLeft_monotone](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/toleft-monotone.md) | 149 | `result-track:e11c93b29f277c7950cee2df1e5d2c2d5928176b780911cb467a369607546b36` |
| 28 | `lemma` | [toRight_monotone](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/toright-monotone.md) | 150 | `result-track:71e48a8869d2377a7ff0e2b2275fe1e0a4ac7cb9bb712b7ef018cf49d8bdef4b` |
| 29 | `lemma` | [toLeft_disjSum_toRight](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/toleft-disjsum-toright.md) | 152 | `result-track:c2586f4703f7eea0dc718e2334b1be667f718e8cfc5ffca12317f13f7268db9b` |
| 30 | `lemma` | [card_toLeft_add_card_toRight](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/card-toleft-add-card-toright.md) | 155 | `result-track:853dc5210d6ebdb5b1c8c4f1c718076e446e1eaffb0c3d69d6d680d8ea4a3168` |
| 31 | `lemma` | [card_toLeft_le](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/card-toleft-le.md) | 158 | `result-track:cd84b1a04192e830ca05c614f270acd28a3520d2fae55aa1e462c846fd9a1dea` |
| 32 | `lemma` | [card_toRight_le](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/card-toright-le.md) | 161 | `result-track:c10c34188b433c278ec5aa9ffde64648a8387ea41e90e5d878870895c4292436` |
| 33 | `lemma` | [toLeft_disjSum](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/toleft-disjsum.md) | 164 | `result-track:339fd9a6a11f70d6c98e04ae14583fadec198119c26065b9f96812c882b2578c` |
| 34 | `lemma` | [toRight_disjSum](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/toright-disjsum.md) | 166 | `result-track:568e2d90ca6e94a7a9fc104d4db15b96343895f4151299d5953e86f834abc563` |
| 35 | `lemma` | [disjSum_eq_iff](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/disjsum-eq-iff.md) | 168 | `result-track:b16fa262fe7b6f79589695659e8ba7ecfad16d0ff4741ba96f935bc1a373e227` |
| 36 | `lemma` | [eq_disjSum_iff](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/eq-disjsum-iff.md) | 171 | `result-track:8a99f81c6035181ed65a4c7c7a319d3a549e71e78dc3f21fdc9799ece324be8c` |
| 37 | `lemma` | [disjSum_subset](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/disjsum-subset.md) | 174 | `result-track:2e54c8649a1015d00f1902b8fb504b509cc9c775d9d86d49faa0c11f23ea7e0c` |
| 38 | `lemma` | [subset_disjSum](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/subset-disjsum.md) | 175 | `result-track:23f91531b78f959f832a4db6dc213e5be7f8e0e6feada73e1ebe5ff69f47510d` |
| 39 | `lemma` | [subset_map_inl](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/subset-map-inl.md) | 177 | `result-track:d64395eeeced56b8f492b0f7621a5d392b16d342002723166e0da6d32d1821d5` |
| 40 | `lemma` | [subset_map_inr](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/subset-map-inr.md) | 180 | `result-track:13c0f2641eef5056940b843867104d4c8341808a5cbecfaf577febce7b7197d7` |
| 41 | `lemma` | [map_inl_subset_iff_subset_toLeft](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/map-inl-subset-iff-subset-toleft.md) | 183 | `result-track:98b295f4327a0c785ccb7f10c14efc33120dbfd8503e622b93cb28afb29b4b1d` |
| 42 | `lemma` | [map_inr_subset_iff_subset_toRight](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/map-inr-subset-iff-subset-toright.md) | 186 | `result-track:5cf64817183d3fc81185a4970464dd8c5c0c8f8db70c5e95f44d36edfab5c350` |
| 43 | `lemma` | [gc_map_inl_toLeft](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/gc-map-inl-toleft.md) | 189 | `result-track:84573db952bc53271a7a156178d899fcf4289d13b681babcb94fe0a9a45fe325` |
| 44 | `lemma` | [gc_map_inr_toRight](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/gc-map-inr-toright.md) | 192 | `result-track:8f33f8d91179e64f3e4dc81fab6b02a5487cda021f10c41e3fe4958876a34c3d` |
| 45 | `lemma` | [toLeft_map_sumComm](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/toleft-map-sumcomm.md) | 195 | `result-track:9678545afa1839dcd95ad6388c5bca1d1d2752172bb621f98216419e2756ada7` |
| 46 | `lemma` | [toRight_map_sumComm](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/toright-map-sumcomm.md) | 198 | `result-track:887edc21d22474448f9536673a446a23ef8aad01e1fd6111fbee1f85380ad69f` |
| 47 | `lemma` | [toLeft_cons_inl](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/toleft-cons-inl.md) | 201 | `result-track:44be9e18bc0c830d35424c6ceefe3c98c0dc5a86f31ff88648031918c6f21433` |
| 48 | `lemma` | [toLeft_cons_inr](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/toleft-cons-inr.md) | 203 | `result-track:c267b426a74b9ffe81636616338d909366046ef3abfa88782bee4732cf4ec021` |
| 49 | `lemma` | [toRight_cons_inl](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/toright-cons-inl.md) | 205 | `result-track:cdeab3b9472df0b401420bffe1b83497091667ccff2c594d4f64a2b1bbd03f4c` |
| 50 | `lemma` | [toRight_cons_inr](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/toright-cons-inr.md) | 207 | `result-track:c86493659fb76ed1f682f0c3cf875a3434b20fd2b5680e5170ba810b430050a3` |
| 51 | `lemma` | [toLeft_image_swap](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/toleft-image-swap.md) | 213 | `result-track:785218995729340cb129d5f93738417e105cb2513b91b034f1187ff77d2621d4` |
| 52 | `lemma` | [toRight_image_swap](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/toright-image-swap.md) | 216 | `result-track:9f1c4df365791ec563fb0c832d76e1093965084890bab85ef5d7f19a82d539a2` |
| 53 | `lemma` | [toLeft_insert_inl](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/toleft-insert-inl.md) | 219 | `result-track:95b81747bcbd53a90fecaa84fa30dae99c64abb45832b9018bf8e988b56dfaeb` |
| 54 | `lemma` | [toLeft_insert_inr](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/toleft-insert-inr.md) | 220 | `result-track:af236df2a00cb8b5b507773567cf7ab2a685deee7cd92b00d372f017728def04` |
| 55 | `lemma` | [toRight_insert_inl](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/toright-insert-inl.md) | 221 | `result-track:52d5e865c3d5f32daba3b5a07837249e6012b92304b978fdcc80792b18acbb2e` |
| 56 | `lemma` | [toRight_insert_inr](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/toright-insert-inr.md) | 222 | `result-track:b1f6b65b2b271e73475ab2d083125fefa2e6439952ca1f7a8f1a0f8452db7541` |
| 57 | `lemma` | [toLeft_inter](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/toleft-inter.md) | 224 | `result-track:0daf3f3d03b12223a7a4df71c99572395ac9e106f9fe83568e4e91bac0fda19d` |
| 58 | `lemma` | [toRight_inter](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/toright-inter.md) | 225 | `result-track:d8469cb8ee4578d385f32d06c7743c7a9155539e8ad31aed63b9a7ade4faeadd` |
| 59 | `lemma` | [toLeft_union](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/toleft-union.md) | 227 | `result-track:8bbc5a6f12bd02c53efc2f27c79272501e08dbf20c8fd8d144636ed6de86120d` |
| 60 | `lemma` | [toRight_union](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/toright-union.md) | 228 | `result-track:5700786bf20fbf71feef241785b731e31473ce61cd6e6559636ebcb33de6ef13` |
| 61 | `lemma` | [toLeft_sdiff](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/toleft-sdiff.md) | 230 | `result-track:dfb5435c2e2045ad011afd18672c8a15c66adc6f9055dcb96737cce5fd213ddb` |
| 62 | `lemma` | [toRight_sdiff](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/toright-sdiff.md) | 231 | `result-track:02f22c3049ee53454d4e59eed4d4618ee7da4720b9758255449c21f96794417e` |
| 63 | `def` | [sumEquiv](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/sumequiv.md) | 237 | `declaration-track:c51711bf0063fb6e86e19b5397a27c2b9b8c554470ae3b79afec5646b487ef5c` |
| 64 | `lemma` | [sumEquiv_symm_apply](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/sumequiv-symm-apply.md) | 245 | `result-track:d9587fff1d5b8e4dab674e7d42c2212e4490b86e0949656a80f4a7ae03be60ae` |
| 65 | `theorem` | [map_disjSum](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/map-disjsum.md) | 248 | `result-track:b6c5412bfc7e28c5900a1cdef0a952265eaece3744a89c7bbe76f655053b3b40` |
| 66 | `lemma` | [fold_disjSum](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedPublic.lean/declarations/fold-disjsum.md) | 256 | `result-track:1c27fb57349e10a0c733401d2e67ddac7ea92ca1be93a8c45b18fd5b728cb1ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2d2c9976f8373dc472353ba811219ca68edbf9c3d50d0ae98f9979a924ceb383 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Sum/Variant6938324d90ccfd614fb950b8459b08200695f3ca0d79e9647071bcc5ee4fec6e.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Sum/Variant6938324d90ccfd614fb950b8459b08200695f3ca0d79e9647071bcc5ee4fec6e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
