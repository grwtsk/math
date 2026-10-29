# Verification target: Box Basic Is Bounded Icc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ccb7ae2d40d72d540f3c83d7a353c583e411abca",
  "lexical_observation_count": 75,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variantabed549af89804d6c6950d2b633dd13794ce62387775207ea3c17f10be02054a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/index.md) · [Full source](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ccb7ae2d40d72d540f3c83d7a353c583e411abca`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variantabed549af89804d6c6950d2b633dd13794ce62387775207ea3c17f10be02054a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variantabed549af89804d6c6950d2b633dd13794ce62387775207ea3c17f10be02054a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.NNReal.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Fin.Tuple` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Monotone` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Bounded` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Pseudo.Real` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.MonotoneConvergence` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Box](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/box.md) | 72 | `declaration-track:a5ee7babdbe7b2fbdde42532057f1701051a8dd5ded75b535d8e6163c5fdca02` |
| 2 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/instance.md) | 84 | `declaration-track:24a358741dd4368b9e9851120257db160ea5d8af9683d1847729cb89ce1667ac` |
| 3 | `theorem` | [lower_le_upper](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/lower-le-upper.md) | 87 | `result-track:51c4f6c881c17c52850424747d6d0a2c0588670026e1bf9f564125e04d349f14` |
| 4 | `theorem` | [lower_ne_upper](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/lower-ne-upper.md) | 90 | `result-track:3b404e9949644fa8ea50b9f33392866ad54ebbc5260cbb4ef7cb15b412c0837b` |
| 5 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/instance-source-edition-2.md) | 93 | `declaration-track:3598b888717a1beb88fb2ad0751626f3336d631f9e1393493c5468e2617b163f` |
| 6 | `def` | [toSet](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/toset.md) | 99 | `declaration-track:84c622d3229d0d99f41276d6059d1b5bb7bee477d8f59d9098a605234650d178` |
| 7 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/instance-source-edition-4.md) | 101 | `declaration-track:8de859e950035d8e7696acaf2b745f9ea73599718226f4fdc16a9728a560d6b7` |
| 8 | `theorem` | [mem_mk](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/mem-mk.md) | 105 | `result-track:474a2f5d50da66590d29e21c03a3876a2da51391afa99281d9fcaeec5e4e6836` |
| 9 | `theorem` | [mem_coe](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/mem-coe.md) | 108 | `result-track:8d1d2f846908e96efb658d6c71e97e423b2731df0ef39576b27705ab65cdc6f8` |
| 10 | `theorem` | [mem_def](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/mem-def.md) | 110 | `result-track:1c1a10db3681e26c5310e116272c8f4b715b14ac53b17ea646b7d47f73e461c4` |
| 11 | `theorem` | [mem_univ_Ioc](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/mem-univ-ioc.md) | 112 | `result-track:c66b2aa5afe0ac949f09eea3c4914024215fbee8406ac004da94aec53d1eff08` |
| 12 | `theorem` | [coe_eq_pi](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/coe-eq-pi.md) | 115 | `result-track:44f85fc046255b7cd328a855a56ba7c67cfcdc4d2ed30ff2656c1434323453d4` |
| 13 | `theorem` | [upper_mem](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/upper-mem.md) | 119 | `result-track:dbd863bae80878700bb88dbf4b50e5ee4b720966ce7314d10671ac25a5082ff6` |
| 14 | `theorem` | [exists_mem](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/exists-mem.md) | 122 | `result-track:48e91b3900737f80427e55cc2366ad5568a30b96645444880dfa994a46bf69a6` |
| 15 | `theorem` | [nonempty_coe](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/nonempty-coe.md) | 125 | `result-track:842d1d812a1de6198f087afc28a9a30ea2e1c0d45029dda64be827b43d8544e7` |
| 16 | `theorem` | [coe_ne_empty](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/coe-ne-empty.md) | 129 | `result-track:93a3b8e2fc0746c3f5aa5d5b018ed12ae1070e9d9d8c72ba5c9c9fb7949886bb` |
| 17 | `theorem` | [empty_ne_coe](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/empty-ne-coe.md) | 133 | `result-track:02cb0ed52a69fb7aa26c05e0bcd17937d1ef07728c968693b393866d0366d606` |
| 18 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/instance-source-edition-7.md) | 136 | `declaration-track:d481331cbdbb4c2a3b405c1bec66a6c81a0d77a5dc8a5ec5b8df8e4f41bf2357` |
| 19 | `theorem` | [le_def](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/le-def.md) | 139 | `result-track:6c9ba7c44833e83c9850a63484ab883ee68056910a664af6a2ee6ca18f2fc3d6` |
| 20 | `theorem` | [le_TFAE](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/le-tfae.md) | 141 | `result-track:37b47770ac160b2487487a956f2b875589a4e5e2bfec7a418139e129ef1a84e5` |
| 21 | `theorem` | [coe_subset_coe](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/coe-subset-coe.md) | 154 | `result-track:7a3d06e2e2bbfa9c84fc1c766694bdce43fa46b79fd25b02a3f47b3ca2b9e8e9` |
| 22 | `theorem` | [le_iff_bounds](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/le-iff-bounds.md) | 156 | `result-track:0283250f172262e6e25b6ba49bfc4a699a69b67fc39afebb5bd952f56d2ff4e4` |
| 23 | `theorem` | [injective_coe](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/injective-coe.md) | 159 | `result-track:4719ca0c8d7d804873403e56d7f5a7686c5c92ccc59e340bae024d976b184634` |
| 24 | `theorem` | [coe_inj](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/coe-inj.md) | 166 | `result-track:9dbe0c8a71ab8e7cf687f1ce7d752b3be7c4106a319f107abc62f475889b89f6` |
| 25 | `theorem` | [ext](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/ext.md) | 170 | `result-track:38ea163504e68db8f8aedc12b1d31f0e5a43967748bb95e9c109a3a1e1b0c5cc` |
| 26 | `theorem` | [ne_of_disjoint_coe](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/ne-of-disjoint-coe.md) | 173 | `result-track:9cce41383a816abb4e5b86f6109199e9e76f174e8a919f7b23ba6fd9bcd1e2b4` |
| 27 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/instance-source-edition-3.md) | 176 | `declaration-track:3cb9c26880637940cfecb065a6a797a436c980129111a645362b278e057f7d3b` |
| 28 | `def` | [Icc](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/icc.md) | 180 | `declaration-track:18bd4afabcb3caf069b9f3c1d39dbd4bfed529f613d9c1d3b42607d69db12817` |
| 29 | `theorem` | [Icc_def](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/icc-def.md) | 183 | `result-track:bb13500eceb4be498bd8250193166f041829be085d8a97c011754ecc2e397af2` |
| 30 | `theorem` | [upper_mem_Icc](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/upper-mem-icc.md) | 186 | `result-track:1fd7118819b09570e7f3803ef150a4b4897b23f84593f1da3825b0919197546e` |
| 31 | `theorem` | [lower_mem_Icc](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/lower-mem-icc.md) | 190 | `result-track:7bbbc873462b46d0239f5462c72b9a1c52bdef14c60532cabcd0109818dc785a` |
| 32 | `theorem` | [isCompact_Icc](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/iscompact-icc.md) | 193 | `result-track:19349443a0ba18c59c6f6af45fbf87890eaa6447c921d2e220a68079c81041aa` |
| 33 | `theorem` | [Icc_eq_pi](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/icc-eq-pi.md) | 196 | `result-track:cef3dd14aeaa63e4b68e5db35c9d4375b4f8ea1ecb8bcd288f67ce0efe538cd0` |
| 34 | `theorem` | [le_iff_Icc](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/le-iff-icc.md) | 199 | `result-track:80d160ecebfff6d3691b8cb95d28b5e47059ec44d9df92a6405aa99162c65b28` |
| 35 | `theorem` | [antitone_lower](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/antitone-lower.md) | 202 | `result-track:18dda7669ee16c1eefb9b2aeb5dc200d5a60dfd41720c2bc79faf136b1e3cfd6` |
| 36 | `theorem` | [monotone_upper](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/monotone-upper.md) | 205 | `result-track:ea42db19876cb856a531fd28a896cb6683b977f162771493bfdf6d38b4bb3f61` |
| 37 | `theorem` | [coe_subset_Icc](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/coe-subset-icc.md) | 208 | `result-track:5040ef286152149d9cb34c583a08f72059fae6974aafc85e68e322173b425e31` |
| 38 | `theorem` | [isBounded_Icc](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/isbounded-icc.md) | 211 | `result-track:00f5f1f5b324fd9ea854ea20a8ada90d89466244cab122bd38301e333f3cf03b` |
| 39 | `theorem` | [isBounded](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/isbounded.md) | 215 | `result-track:e16c2cae2ecf231fdec0228eebcaa4bc4481aba33d3e864a58127bda6fea5f81` |
| 40 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/instance-source-edition-5.md) | 225 | `declaration-track:9a1cac992feee00a2ac14b7da9dd88dc21e3015c7b3478886b8ea1a467cd0530` |
| 41 | `def` | [withBotToSet](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/withbottoset.md) | 242 | `declaration-track:7c7ef6c50715873fc299f6a1e6579f87271ea3213dbde3fa2921056fe2a0b6bd` |
| 42 | `instance` | [withBotCoe](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/withbotcoe.md) | 244 | `declaration-track:2c5747fb727df627f53518f853ec6f513303ff2a832919942cdfed68fb11c48c` |
| 43 | `theorem` | [coe_bot](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/coe-bot.md) | 248 | `result-track:9f344c30ec6fd7a11cc7a901aed9712961dfe8708d8ef00d1278635bbf59081e` |
| 44 | `theorem` | [coe_coe](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/coe-coe.md) | 251 | `result-track:46ad6e4c9ce215a4438cc6c834e3ce0276af894e59c9e5633ca1657a3cb2b76f` |
| 45 | `theorem` | [isSome_iff](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/issome-iff.md) | 253 | `result-track:f2b6f4d355b571169ddfd9e7b9c7c80e39b3dab1c9acb93a6fdea315e82c3c74` |
| 46 | `theorem` | [biUnion_coe_eq_coe](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/biunion-coe-eq-coe.md) | 261 | `result-track:36b4f3cdd25833ee6d4f366ffbbf71513103090f5d9c73c36bc6abdb8940614e` |
| 47 | `theorem` | [withBotCoe_subset_iff](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/withbotcoe-subset-iff.md) | 266 | `result-track:91c49d58feaa77acc600d16bc9edb87255d191d506d2140ef1fa06d1cfe80c9f` |
| 48 | `theorem` | [withBotCoe_inj](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/withbotcoe-inj.md) | 272 | `result-track:9a71b7247de1a85bba1e5bde0c37fd099b9ee2fe712b6c988b588da5a6094614` |
| 49 | `def` | [mk'](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/mk.md) | 279 | `declaration-track:9c96f4cf960b387716528cd7b5ad5838d5f068c2b338321a3a027573c708ebb6` |
| 50 | `theorem` | [mk'_eq_bot](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/mk-eq-bot.md) | 283 | `result-track:fc7ef3ccdcdc89f808a7b5d575452a26ab6bd5325b2c4ade7786a94737bb57f5` |
| 51 | `theorem` | [mk'_eq_coe](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/mk-eq-coe.md) | 288 | `result-track:89831b88935e0e1cb808d19d235c8752bde5eed0c5b5f48e27580a856f978043` |
| 52 | `theorem` | [coe_mk'](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/coe-mk.md) | 296 | `result-track:9ffbb5949365b1ede1d624ac309f3dcb3441299cd0291111d67c336ec63f56ae` |
| 53 | `instance` | [WithBot.inf](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/withbot-inf.md) | 303 | `declaration-track:c0510fbc559e6bcc1abe2b3437c2285fbc1fe5240392c47684124bcf935d63e1` |
| 54 | `theorem` | [coe_inf](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/coe-inf.md) | 309 | `result-track:db7dfa1ca89d938907cd7df0f5c71bd27750fc1dccdf5cf31b61d23393d57850` |
| 55 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/instance-source-edition-6.md) | 320 | `declaration-track:cae0e396722076c6b765bd88be3a24088a76298c75917fde8c30e57c87eca132` |
| 56 | `theorem` | [disjoint_withBotCoe](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/disjoint-withbotcoe.md) | 333 | `result-track:0c23ed7e45ad5800b4210a0caca3dff8f8bd684b5a30c15eb767a70b45636ff0` |
| 57 | `theorem` | [disjoint_coe](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/disjoint-coe.md) | 338 | `result-track:4bee54735403dd4164d042aadd7ee0892b884d494d8541d840822e1a37a66870` |
| 58 | `theorem` | [not_disjoint_coe_iff_nonempty_inter](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/not-disjoint-coe-iff-nonempty-inter.md) | 341 | `result-track:3e01fa9a0d779fb3557df0f4dc5c21bba13889359c0fc22199b350193424655c` |
| 59 | `def` | [face](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/face.md) | 353 | `declaration-track:8cef82f4c69265da4e49f03ebd13414d5a9f8cb19a720c5204803c5956300436` |
| 60 | `theorem` | [face_mk](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/face-mk.md) | 357 | `result-track:8072434564f383cd3ab08526f86fc0e73d97a7081811d3f068943b8253904f3b` |
| 61 | `theorem` | [face_mono](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/face-mono.md) | 361 | `result-track:b10ee2dbd933168088756ee33e23d4c53adde24d6e0409394dc19ce20fbf7b25` |
| 62 | `theorem` | [monotone_face](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/monotone-face.md) | 365 | `result-track:9471648c1454edbfca93dceb5335492815eab96acd9f086902813ccd661f18f2` |
| 63 | `theorem` | [mapsTo_insertNth_face_Icc](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/mapsto-insertnth-face-icc.md) | 368 | `result-track:b36fe124c6bdf11eec9e2f222cd4a2ae029102471aaf212160d3b7ae3cb4ccce` |
| 64 | `theorem` | [mapsTo_insertNth_face](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/mapsto-insertnth-face.md) | 373 | `result-track:6a94676dccb651c3dd2eb1949c2c4b6b1e9cb38dbf27bdeb119f7cb69d826092` |
| 65 | `theorem` | [continuousOn_face_Icc](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/continuouson-face-icc.md) | 381 | `result-track:86e062b87c888368434f609799780e54ead5f9b25589f252ab6644f44782f5d7` |
| 66 | `def` | [Ioo](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/ioo.md) | 393 | `declaration-track:958adc552fe179673bb616c530b5cee55a951df290bb9cfceba851cd361c7cc8` |
| 67 | `theorem` | [Ioo_subset_coe](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/ioo-subset-coe.md) | 398 | `result-track:28c498385a4be487a8367a12c0ce29679cb4412d550a30c2c6278af6e669dc03` |
| 68 | `theorem` | [Ioo_subset_Icc](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/ioo-subset-icc.md) | 401 | `result-track:2b741b4b12f3832164b8c23151c0ad4389f605a745e345768eed3bda35579c4d` |
| 69 | `theorem` | [iUnion_Ioo_of_tendsto](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/iunion-ioo-of-tendsto.md) | 404 | `result-track:e4e32877b0425bbf3037c3fe8f98e212e850d9bf0e601a0281bb7d6804f4386b` |
| 70 | `theorem` | [exists_seq_mono_tendsto](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/exists-seq-mono-tendsto.md) | 420 | `result-track:c378acb6b76c1fab74d83751b0b3141ce1fd2020ff011b9d726b969483de908c` |
| 71 | `def` | [distortion](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/distortion.md) | 439 | `declaration-track:a21205e7dd216fc8fa95f6d95ae8596ca168ac3ebb25d1a850a6d5cff673249b` |
| 72 | `theorem` | [distortion_eq_of_sub_eq_div](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/distortion-eq-of-sub-eq-div.md) | 442 | `result-track:b964440d820c8ed3e88d105f4298c2114a43cd61611d990bc9751a7950e94861` |
| 73 | `theorem` | [nndist_le_distortion_mul](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/nndist-le-distortion-mul.md) | 455 | `result-track:e218294f3210304bf908cb2710a34a9ee626cb643f2906babd4666f8f3346904` |
| 74 | `theorem` | [dist_le_distortion_mul](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/dist-le-distortion-mul.md) | 465 | `result-track:f18685616fc431c3600db59f1f0a84c0a60ce76d2876bfa49d490a4e3622aa6b` |
| 75 | `theorem` | [diam_Icc_le_of_distortion_le](../../../../FunctionalAnalysis/BoxBasicIsBoundedIcc.lean/declarations/diam-icc-le-of-distortion-le.md) | 471 | `result-track:a859045e8815ad67f8afdb8f8bd29632632013065c85c4d0b859301d5ddb578a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c8e2a5c083230f1556d37906169589debbdfe03bed910635893ff976323ffc33 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variantabed549af89804d6c6950d2b633dd13794ce62387775207ea3c17f10be02054a.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variantabed549af89804d6c6950d2b633dd13794ce62387775207ea3c17f10be02054a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
