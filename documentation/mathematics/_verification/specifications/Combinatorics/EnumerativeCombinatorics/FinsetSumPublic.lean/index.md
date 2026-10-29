# Verification target: Finset Sum Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c5da1287f1d90f0922a2ef445e40df007ad32722",
  "lexical_observation_count": 66,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sum/Variant0f383b603d87d7cdad80e1e86de933f4158edcaa85883521fa8a8fb369673b5b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c5da1287f1d90f0922a2ef445e40df007ad32722`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Sum/Variant0f383b603d87d7cdad80e1e86de933f4158edcaa85883521fa8a8fb369673b5b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Sum/Variant0f383b603d87d7cdad80e1e86de933f4158edcaa85883521fa8a8fb369673b5b.lean.json)

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
| 1 | `def` | [disjSum](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/disjsum.md) | 34 | `declaration-track:8fc58149e501116d3cdcef35d6e3ea411e4ad188efeca1c0526327742db9c91d` |
| 2 | `theorem` | [val_disjSum](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/val-disjsum.md) | 38 | `result-track:3a12c34c35355a20f1818a4611b9467b5a949016d8915ff76728520714993974` |
| 3 | `theorem` | [empty_disjSum](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/empty-disjsum.md) | 42 | `result-track:f4576aa7ce78f4af07fb88230ec6f7583e2e2a684b198bf57562d737de1bc848` |
| 4 | `theorem` | [disjSum_empty](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/disjsum-empty.md) | 46 | `result-track:5e3f863b1d292e232f574e2d94388299d12b31ce18a0f10aca67d272680b3f23` |
| 5 | `theorem` | [card_disjSum](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/card-disjsum.md) | 50 | `result-track:559b7b8ca7a01b0d5919e1d68c4736d8211f3ab63137fa77b54211c5597aa938` |
| 6 | `theorem` | [disjoint_map_inl_map_inr](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/disjoint-map-inl-map-inr.md) | 53 | `result-track:a391a370134b6e0f451939ac0fb39f77a614f8d690c7aaf8e7f7f4eaa424d415` |
| 7 | `theorem` | [map_inl_disjUnion_map_inr](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/map-inl-disjunion-map-inr.md) | 58 | `result-track:51688b8f6f8aaf850269c4557e95e1837150d6e8639def3e97604dbdc6ba5420` |
| 8 | `theorem` | [mem_disjSum](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/mem-disjsum.md) | 65 | `result-track:e0aac013e4d10609cafa3468fe3fdf439618d33221f77bd33d1643b4a9db7f96` |
| 9 | `theorem` | [inl_mem_disjSum](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/inl-mem-disjsum.md) | 69 | `result-track:7e79d7a6928349b25f6251b7b506c9dc6eeff94d74897a744852f2becb04d2c7` |
| 10 | `theorem` | [inr_mem_disjSum](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/inr-mem-disjsum.md) | 73 | `result-track:052b9f199c6026f67011754d70baf0ddb2817e5cbc902988ebbd800e0eefa74f` |
| 11 | `theorem` | [disjSum_eq_empty](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/disjsum-eq-empty.md) | 77 | `result-track:d4974e6ea302707367c23a41eb74db5c94bc9a5ea32ef00bad2903e48831820d` |
| 12 | `theorem` | [disjSum_mono](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/disjsum-mono.md) | 79 | `result-track:1730f7070869b9732627de16aeb514d2a82f9a16fce80848ab71dc42ae0c7cea` |
| 13 | `theorem` | [disjSum_mono_left](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/disjsum-mono-left.md) | 82 | `result-track:2c60d6d0e2b8f59bd72037bc032007606b1819f6de60a8274e94ed94a0af881b` |
| 14 | `theorem` | [disjSum_mono_right](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/disjsum-mono-right.md) | 85 | `result-track:5da5f7c6196d1aba10f42942b777befb949f0f1cdbe22f091796573783544e0b` |
| 15 | `theorem` | [disjSum_ssubset_disjSum_of_ssubset_of_subset](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/disjsum-ssubset-disjsum-of-ssubset-of-subset.md) | 88 | `result-track:473afabdb6eba9c64644319241b9b75ad568d7dec311a7521dc78c07e4fa0a6e` |
| 16 | `theorem` | [disjSum_ssubset_disjSum_of_subset_of_ssubset](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/disjsum-ssubset-disjsum-of-subset-of-ssubset.md) | 92 | `result-track:a4ed4528f349a9229afd08ab42799b4f185e47a2fa29b7c30b1b53aa5f32c83f` |
| 17 | `theorem` | [disjSum_strictMono_left](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/disjsum-strictmono-left.md) | 96 | `result-track:98ff9aa801b1d4a73b50f5c4825d9446cbd72b4eb463162bd36bb4cf4626e843` |
| 18 | `theorem` | [disjSum_strictMono_right](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/disjsum-strictmono-right.md) | 99 | `result-track:d8427828d33f7b8004becdca2758d3e72e61b4042ebc48a61a91964c89fdc514` |
| 19 | `lemma` | [disjSum_inj](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/disjsum-inj.md) | 103 | `result-track:69a3fea13c1c86135090a2f23289a92e0f84f97d2727871003de1013da46edb6` |
| 20 | `lemma` | [Injective2_disjSum](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/injective2-disjsum.md) | 107 | `result-track:e6a5d335506bbcda8f8152c869dcf9ebcb355ec9eefe6cd9fa312b007a609d3f` |
| 21 | `def` | [toLeft](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/toleft.md) | 116 | `declaration-track:0781ed54d432063c1aa46249594435563b2562226da438ad02b816feb36bb410` |
| 22 | `def` | [toRight](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/toright.md) | 125 | `declaration-track:c6c37d27c7660017ae88f60183c17cf18e1514199657120b49aa9f69352f3e8a` |
| 23 | `lemma` | [mem_toLeft](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/mem-toleft.md) | 130 | `result-track:4938d8eda9755a0df4ae7e15cd02ea2123c0ef7fee6a388b12d79dd22a7a847d` |
| 24 | `lemma` | [mem_toRight](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/mem-toright.md) | 131 | `result-track:0e4291f61f9adf66fd37e03b653acb7a60355e03b31c70d10597a543029f7163` |
| 25 | `lemma` | [toLeft_subset_toLeft](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/toleft-subset-toleft.md) | 134 | `result-track:fa7ac7c74afc6486c6b3ea118bf5a8daedb5413b65df11bc209be8ba6bac3c43` |
| 26 | `lemma` | [toRight_subset_toRight](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/toright-subset-toright.md) | 138 | `result-track:e2daf8f5789ea557ebd8ec05d80df5b79ef2b369dba3f8fe055a018fd78b06ce` |
| 27 | `lemma` | [toLeft_monotone](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/toleft-monotone.md) | 141 | `result-track:a13dae9a77f046dcb7e1560ed4dea09555401760d5403a1264cc3a30d6653bf1` |
| 28 | `lemma` | [toRight_monotone](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/toright-monotone.md) | 142 | `result-track:95f568eb18ca6ec35178aec48ace902a5271fd89494375020c8f4806c4812820` |
| 29 | `lemma` | [toLeft_disjSum_toRight](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/toleft-disjsum-toright.md) | 144 | `result-track:9ecbc86ecda7c0547109bea2f45ccac3940edd5a54abf4faad1bc1816599ff75` |
| 30 | `lemma` | [card_toLeft_add_card_toRight](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/card-toleft-add-card-toright.md) | 147 | `result-track:994ef88e09e49a7e0c2b8ca319c3d1dd9851b86f9d36aad67e78af8b4688f5db` |
| 31 | `lemma` | [card_toLeft_le](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/card-toleft-le.md) | 150 | `result-track:589e5fa0c7d90e075e210b8784b14c3b4d2378c2ac921628c25381e521e69bb9` |
| 32 | `lemma` | [card_toRight_le](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/card-toright-le.md) | 153 | `result-track:2d501b331a03f03eea7d2e361c580419530fd06cf2d06984f7e15848a22bb4c5` |
| 33 | `lemma` | [toLeft_disjSum](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/toleft-disjsum.md) | 156 | `result-track:6247edfb36d7b3d0d2d319f812e1dca7c0f7a038fc56822f17acd4e539e387a6` |
| 34 | `lemma` | [toRight_disjSum](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/toright-disjsum.md) | 158 | `result-track:8ea4426be9c21cce248c3ed67cd77df0bfdbeda687e8554b67e9d04b032b264b` |
| 35 | `lemma` | [disjSum_eq_iff](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/disjsum-eq-iff.md) | 160 | `result-track:236d7ce693000f2f4b74e73bbdf4b8a69136cc432c2ddc2fa8c810615deb4c2d` |
| 36 | `lemma` | [eq_disjSum_iff](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/eq-disjsum-iff.md) | 163 | `result-track:ef589e2b730e4c8547b6b4835d97fcbcf3290ae09a16ec37f462b2aa381eeab1` |
| 37 | `lemma` | [disjSum_subset](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/disjsum-subset.md) | 166 | `result-track:1e78207e4232f9edc15d4df01b883ab9fd393c73c4378baba3c893a3713cc95e` |
| 38 | `lemma` | [subset_disjSum](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/subset-disjsum.md) | 167 | `result-track:1817878ff5505cd9b2760bd3a4c746c28ca765de3cfe1dd7d03ada40e9b3b0e2` |
| 39 | `lemma` | [subset_map_inl](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/subset-map-inl.md) | 169 | `result-track:f9f1b844236f6021c269a8c7ad946c0cac33e91d340a24d707fe08236c90af27` |
| 40 | `lemma` | [subset_map_inr](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/subset-map-inr.md) | 172 | `result-track:ff43e18a7c61a7c960bb83137842eef868f865d3d31dc2c279331d5625849dd5` |
| 41 | `lemma` | [map_inl_subset_iff_subset_toLeft](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/map-inl-subset-iff-subset-toleft.md) | 175 | `result-track:4fc514aead4d115133c0f6d9b3adfe0d8b11fbe4644dabe73cc55e6fb5c962f9` |
| 42 | `lemma` | [map_inr_subset_iff_subset_toRight](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/map-inr-subset-iff-subset-toright.md) | 178 | `result-track:374bd92a314d5f79d207a3523a92dd75d4b58121ef2c43a7ee4bc806b3dea68e` |
| 43 | `lemma` | [gc_map_inl_toLeft](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/gc-map-inl-toleft.md) | 181 | `result-track:b58cc3633fa7bb06922d8e7314e1b21fb93c8576442c8cf632dd2c93a1fb3450` |
| 44 | `lemma` | [gc_map_inr_toRight](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/gc-map-inr-toright.md) | 184 | `result-track:b722d6b0782e99ad46687ad932a7235f26e95b1e6dea325dd27c27c2ef0b0c44` |
| 45 | `lemma` | [toLeft_map_sumComm](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/toleft-map-sumcomm.md) | 187 | `result-track:8fc3691a2cf21de75db2959318ebd112220affdfa29e045678a02ef59f457fc6` |
| 46 | `lemma` | [toRight_map_sumComm](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/toright-map-sumcomm.md) | 190 | `result-track:25d7feb4fce132d89653c73a55a15b4bcd49a6b59cc05a4c40260ff1ecd5cd25` |
| 47 | `lemma` | [toLeft_cons_inl](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/toleft-cons-inl.md) | 193 | `result-track:677ad24df18260c74077a0b8c036219b9de3aaeaa6c1c60fa6068233acfaae2d` |
| 48 | `lemma` | [toLeft_cons_inr](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/toleft-cons-inr.md) | 195 | `result-track:200c5714a4a1f2baf1266be95e0c7a34ca5977d8ab17e0fa9ef2413ec21b664b` |
| 49 | `lemma` | [toRight_cons_inl](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/toright-cons-inl.md) | 197 | `result-track:a809f0de871f544523a828c4229d0c98239e4955b1ec3bb69f9ea237cb9a7930` |
| 50 | `lemma` | [toRight_cons_inr](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/toright-cons-inr.md) | 199 | `result-track:0f95d29fdbbd0eb59b0296f443072783e95e90a8cb4d4b5bcb35cca2656ed039` |
| 51 | `lemma` | [toLeft_image_swap](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/toleft-image-swap.md) | 205 | `result-track:aba6401e347663b533b97fd678fe5a81adbea06f81c5a67e8201afc99dcf2e5f` |
| 52 | `lemma` | [toRight_image_swap](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/toright-image-swap.md) | 208 | `result-track:32f85cc66ce63272affb20c5f92cb0c904a45974784b58d31e69683d69237bb2` |
| 53 | `lemma` | [toLeft_insert_inl](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/toleft-insert-inl.md) | 211 | `result-track:b619a0f06f7d79b556ced04f9a64b10d95b44ba4ee90f21928813c248d866a80` |
| 54 | `lemma` | [toLeft_insert_inr](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/toleft-insert-inr.md) | 212 | `result-track:b00865e21c29e3a59572cd15f25b9a02f66e14126452efa382af021e6846bed5` |
| 55 | `lemma` | [toRight_insert_inl](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/toright-insert-inl.md) | 213 | `result-track:7b6fe344b7ba4413a1c3900a08079101f1b8592d18eeb56e725c3e9835d0ceca` |
| 56 | `lemma` | [toRight_insert_inr](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/toright-insert-inr.md) | 214 | `result-track:4aa04cbdfc6cc472fcb6c654cd0079effa8074e9c3973a2170228ec301b73597` |
| 57 | `lemma` | [toLeft_inter](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/toleft-inter.md) | 216 | `result-track:260d451eb9cb215f9da3d86c6750b862435ceff29212af461d230b69316d5957` |
| 58 | `lemma` | [toRight_inter](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/toright-inter.md) | 217 | `result-track:43f1d291bd2a0b33cfa13c475fc35d040b0798fd2891cb0551889c5aa6354d83` |
| 59 | `lemma` | [toLeft_union](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/toleft-union.md) | 219 | `result-track:fdf9e43d3783f8cae0d6e7a706cfce0ab09ce0c2706df5af85e7b03f696a64ea` |
| 60 | `lemma` | [toRight_union](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/toright-union.md) | 220 | `result-track:6d27aa2ba2583033ef627f6e0b676e6dfc30df6fefe1895f079263c94bcf4c7f` |
| 61 | `lemma` | [toLeft_sdiff](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/toleft-sdiff.md) | 222 | `result-track:00d75f14f03c78f411cf5b4dac9a8464a78c2634f4a8670074b6260300974079` |
| 62 | `lemma` | [toRight_sdiff](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/toright-sdiff.md) | 223 | `result-track:08efaeca71f85271abbd5f5ff45c4545e25eb7427e9c9258d49bed6ceb2f27af` |
| 63 | `def` | [sumEquiv](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/sumequiv.md) | 229 | `declaration-track:cf7211c9d5b8c2764f5cf6831417bde8c5fe91571fde28b16b0069e39fb3ce47` |
| 64 | `lemma` | [sumEquiv_symm_apply](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/sumequiv-symm-apply.md) | 237 | `result-track:f02baf294628908bc631560be99d2f1925b3bf76ea7e2a7a7f7bf8157f33e550` |
| 65 | `theorem` | [map_disjSum](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/map-disjsum.md) | 240 | `result-track:5fa124a7bb6e4b595c7595018f48e4a1092fe3a1a5fcca22cb33566f73bf8753` |
| 66 | `lemma` | [fold_disjSum](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetSumPublic.lean/declarations/fold-disjsum.md) | 248 | `result-track:ec56bfded1b9ef32ddfb8129dd5ccdd9f042cd643922a5622a22d0ce3ee68001` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e2b5745ebbed2210ebd6122af61a7cbd303b483399c485cd1a365589c8ae47b0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Sum/Variant0f383b603d87d7cdad80e1e86de933f4158edcaa85883521fa8a8fb369673b5b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Sum/Variant0f383b603d87d7cdad80e1e86de933f4158edcaa85883521fa8a8fb369673b5b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
