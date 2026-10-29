# Verification target: Box Basic Namespaced Is Bounded Icc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db6d2dfe8366005498dd3bb04658b921a09c1a58",
  "lexical_observation_count": 75,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant0925c33662c51ac6ee04bb76302ea1e56688fe0b77f8d67a91e9916383de4e81.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/index.md) · [Full source](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db6d2dfe8366005498dd3bb04658b921a09c1a58`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant0925c33662c51ac6ee04bb76302ea1e56688fe0b77f8d67a91e9916383de4e81.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant0925c33662c51ac6ee04bb76302ea1e56688fe0b77f8d67a91e9916383de4e81.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.NNReal.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Fin.Tuple` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Monotone` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Bounded` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Pseudo.Real` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.MonotoneConvergence` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Box](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/box.md) | 80 | `declaration-track:a89fe32bf01d715b0daad1144ed62233074db6a1c391a48ba8ee681b987d65b9` |
| 2 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/instance-source-edition-4.md) | 92 | `declaration-track:47d0e328445b9977ba90530968d80f0857b5c907860fafcecd820387a25d6500` |
| 3 | `theorem` | [lower_le_upper](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/lower-le-upper.md) | 95 | `result-track:a6de33a9353a8b7e9d1ae0832b30bbe30c6bb79069f0384772f4fa73ea3c0290` |
| 4 | `theorem` | [lower_ne_upper](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/lower-ne-upper.md) | 98 | `result-track:353e9328a89860153f2bd74250ff21ebe45380ae7a8ff2cabd2ff18df5c8040c` |
| 5 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/instance-source-edition-5.md) | 101 | `declaration-track:d8ee53a9796e9f69d642d01d806bb4fe0c30de6509fb5550a615b327ebb96497` |
| 6 | `def` | [toSet](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/toset.md) | 107 | `declaration-track:01cb51c2a115b8682c8c08e5761da4cf74c2df46a3f7b5b5301423b46b47ff23` |
| 7 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/instance-source-edition-2.md) | 109 | `declaration-track:0f88a2026167e3b2038f2b6817e28cf1a6bbe32ad0a76d96ab32652a4129ebdf` |
| 8 | `theorem` | [mem_mk](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/mem-mk.md) | 113 | `result-track:c02d0519dd2bd1d8b96e25e398cb8b00f0f405d907cdebb18a5fb90c63861ecd` |
| 9 | `theorem` | [mem_coe](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/mem-coe.md) | 116 | `result-track:032cf5ad9f2edcfac43f26d036e5ebc73b516b3f99ada445301f807f370fb574` |
| 10 | `theorem` | [mem_def](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/mem-def.md) | 118 | `result-track:0dc1ccb984851b7528f3b378d7f1a4bb34097312eb61b27bfbeca95b3d55a0aa` |
| 11 | `theorem` | [mem_univ_Ioc](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/mem-univ-ioc.md) | 120 | `result-track:46ae9ba1e239e8ce06c3b2b4f5ab750d5ab85e8a5bf90df0364254c9721f6ddd` |
| 12 | `theorem` | [coe_eq_pi](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/coe-eq-pi.md) | 123 | `result-track:eb3bf2c51df1618548dfa050d33c9fc5d081503d243980fc28d9489a6a42875b` |
| 13 | `theorem` | [upper_mem](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/upper-mem.md) | 127 | `result-track:006e2e55693adbc834328c2944d7fc93ef89e220a0cb284fc8c3ffd21ba52235` |
| 14 | `theorem` | [exists_mem](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/exists-mem.md) | 130 | `result-track:0badb877de41cdd697ecb6623e49d5fde4dfbf527e1db3fe5f713e0d30516c7c` |
| 15 | `theorem` | [nonempty_coe](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/nonempty-coe.md) | 133 | `result-track:95f69f04c434ccc81e6db3df67ef86b7feb4b157ea625fc185e2cac80e59f05c` |
| 16 | `theorem` | [coe_ne_empty](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/coe-ne-empty.md) | 137 | `result-track:ad81740ec3945b786038e39f87d9d42176f4075c6bf461a70e7c71c868a9755f` |
| 17 | `theorem` | [empty_ne_coe](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/empty-ne-coe.md) | 141 | `result-track:0d0dfd780cef776baf6d3ed654d8c0e151e16be7f462b9b9fdf0e68b76c2b33a` |
| 18 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/instance-source-edition-3.md) | 144 | `declaration-track:247f6f0a0e6c6c5fa5817a38edc131fac6376a45e36447f683effd48852699a8` |
| 19 | `theorem` | [le_def](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/le-def.md) | 147 | `result-track:dd5690a1f6ee83ae265ffc5c2994acb22d494a475b4eca0926498ad4469bfb4a` |
| 20 | `theorem` | [le_TFAE](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/le-tfae.md) | 149 | `result-track:cfe773414f08aacb22ea4a9ceeb98fcaff488411e088f70e79125c980ec83cd8` |
| 21 | `theorem` | [coe_subset_coe](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/coe-subset-coe.md) | 162 | `result-track:28fbbf907afe198c59b288eecbce3794b25993720b2d375c4e2d48121cb589bd` |
| 22 | `theorem` | [le_iff_bounds](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/le-iff-bounds.md) | 164 | `result-track:ec8881faefedbbcfc5e1338d0c1e4c3827d8540fbdbbd35e1336d5bf3ff3b1fd` |
| 23 | `theorem` | [injective_coe](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/injective-coe.md) | 167 | `result-track:9b0d175fef9c9b1d724be580f00c6c5d8ac7db75629cd1431fad571da365d0fa` |
| 24 | `theorem` | [coe_inj](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/coe-inj.md) | 174 | `result-track:806417d91260ef850a136a3b1b676e5048c7e55696e0933a6fb6453386b332fe` |
| 25 | `theorem` | [ext](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/ext.md) | 178 | `result-track:95f210c4850b96d05cb463f99c5cf97c35d548e5f8c47523610e2289d78c8f3f` |
| 26 | `theorem` | [ne_of_disjoint_coe](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/ne-of-disjoint-coe.md) | 181 | `result-track:73edcf7ccd9abb0019398e3fefa4e247a77acaadaa26688b94ebfded76619e02` |
| 27 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/instance.md) | 184 | `declaration-track:0b3d8150d5b901e49388db86e2891d03603e960a339ff5757bc599e07de93c82` |
| 28 | `def` | [Icc](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/icc.md) | 188 | `declaration-track:6c1f5d2199a9eb2a5b480747ca28b3bb93e2cebf2c69d946acfe712ef3bb9687` |
| 29 | `theorem` | [Icc_def](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/icc-def.md) | 191 | `result-track:5133b1b1548ab14bd300dc6b743f7e657fbedc195068991e2550aa55a46e2e07` |
| 30 | `theorem` | [upper_mem_Icc](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/upper-mem-icc.md) | 194 | `result-track:44b6f20dabc3d059656ced0dbb5ec5d2025e8d4a76c4ec7890e163860eb02ab7` |
| 31 | `theorem` | [lower_mem_Icc](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/lower-mem-icc.md) | 198 | `result-track:5b22df3eb6ff64e4d2fc49a970d5548cd328c36b7925eb191a0d8a93f3757f84` |
| 32 | `theorem` | [isCompact_Icc](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/iscompact-icc.md) | 201 | `result-track:24eb8bd65b37a35a6297c98010d30bd4db95c8632e334d4165ac1ab21abb796d` |
| 33 | `theorem` | [Icc_eq_pi](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/icc-eq-pi.md) | 204 | `result-track:8d9aea9ab319451b531820f89f698e143eaca905f472143c35cc9b7bc11d62a7` |
| 34 | `theorem` | [le_iff_Icc](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/le-iff-icc.md) | 207 | `result-track:3942078cdc43291215a124c94445355c7237ab3145be82a5a229902608614943` |
| 35 | `theorem` | [antitone_lower](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/antitone-lower.md) | 210 | `result-track:dcb34bd80deca05017121adf6d3f220f6681247e8d63c69dbb875bb6edbefb4f` |
| 36 | `theorem` | [monotone_upper](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/monotone-upper.md) | 213 | `result-track:b3f96e9ad6090904d2d5899eb97563f9f46faaac802dd3c32f73774f9ed85c34` |
| 37 | `theorem` | [coe_subset_Icc](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/coe-subset-icc.md) | 216 | `result-track:ea3ba486049809e96c651f3154ed617857c0021fe10d8c4da4ed5775d12bbe2a` |
| 38 | `theorem` | [isBounded_Icc](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/isbounded-icc.md) | 219 | `result-track:7bbd6db001c13eae8038de9d1d8848c511e878897c79e7f581fe10049f4e53b4` |
| 39 | `theorem` | [isBounded](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/isbounded.md) | 223 | `result-track:20b20dfabd06d801fe610a04276c7db2b2f8cc49572143a2f21c7ccf95147c36` |
| 40 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/instance-source-edition-6.md) | 233 | `declaration-track:e1f5c121c93fd97b13c19f1a693f03ee88d4798271d3b476b3925a3c21d65b58` |
| 41 | `def` | [withBotToSet](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/withbottoset.md) | 250 | `declaration-track:62db8fe05f294f99c4db48ca3e80c2c355991cd18775175987489a6365ccf718` |
| 42 | `instance` | [withBotCoe](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/withbotcoe.md) | 252 | `declaration-track:e065d765e61fe65c3bacda95be7d3d3a2b892329b033a3d611fc672c2a338bc1` |
| 43 | `theorem` | [coe_bot](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/coe-bot.md) | 256 | `result-track:56b8e47b491a3ca802bf4409c47f5ccc04a5ae04474c54482237c7369df17526` |
| 44 | `theorem` | [coe_coe](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/coe-coe.md) | 259 | `result-track:b186537990acd61936e39152d0c2a4dca649a4163445e4a0a67e976202feab64` |
| 45 | `theorem` | [isSome_iff](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/issome-iff.md) | 261 | `result-track:682702a58566166d437a35246e1c7cee97c739e2f06e2245e52d5f0f2cfd91dd` |
| 46 | `theorem` | [biUnion_coe_eq_coe](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/biunion-coe-eq-coe.md) | 269 | `result-track:ea9f6d11bef3d07a7c5f37fbd25758eeac120549b35d23713132ecd0afdaf568` |
| 47 | `theorem` | [withBotCoe_subset_iff](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/withbotcoe-subset-iff.md) | 274 | `result-track:5b1f36979ba71a7e67ec2cc27845ea71afcfd42e93c2c528f9bcd065ba142d7e` |
| 48 | `theorem` | [withBotCoe_inj](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/withbotcoe-inj.md) | 280 | `result-track:4161c2907cfc3e117e75100fe7f68eaa10565bd028f6e0ad1fa0d1e0551d0938` |
| 49 | `def` | [mk'](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/mk.md) | 287 | `declaration-track:4d1b199868eefe57cdabce03664e3eb31e1b7b303c0d3ea5005968a3565cafc6` |
| 50 | `theorem` | [mk'_eq_bot](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/mk-eq-bot.md) | 291 | `result-track:2268acadb6aba0dd05c77c90176c8ae7c42047671a196940501df8923268ad35` |
| 51 | `theorem` | [mk'_eq_coe](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/mk-eq-coe.md) | 296 | `result-track:80b6deadffbaa5e999277ca076df1469529bdb6889933dab8bcf54bb39bb43d8` |
| 52 | `theorem` | [coe_mk'](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/coe-mk.md) | 304 | `result-track:5eb40dc5463c68a3195cb1301b979dab1b56aa5b454a7f2bd85fc56e7b3194e5` |
| 53 | `instance` | [WithBot.inf](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/withbot-inf.md) | 311 | `declaration-track:e2c1679592cae1204b39a92a12ce34990ebbacd73ccfd4938470c688e7e68621` |
| 54 | `theorem` | [coe_inf](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/coe-inf.md) | 317 | `result-track:16877bf598488bda2e4848f6f11f91df11435ea728522330cb41aa1acdfcdd71` |
| 55 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/instance-source-edition-7.md) | 328 | `declaration-track:ec5f9db78ae291aa6e0f2c514322b8a04798469a983221bfd32c34b62988894f` |
| 56 | `theorem` | [disjoint_withBotCoe](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/disjoint-withbotcoe.md) | 341 | `result-track:234b117ac4ecd5eab968469b8768d5d1341da479e0317d09994282e303009253` |
| 57 | `theorem` | [disjoint_coe](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/disjoint-coe.md) | 346 | `result-track:339ec9d3b2cfcf39dd3d18d1d2f89bf371128a54e80ef06cb993139354f76540` |
| 58 | `theorem` | [not_disjoint_coe_iff_nonempty_inter](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/not-disjoint-coe-iff-nonempty-inter.md) | 349 | `result-track:b46741832cd3b0738b342270e1a5c4f24dbfcac3772ddca920525154b3451039` |
| 59 | `def` | [face](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/face.md) | 361 | `declaration-track:266960286da566ba116275c5ae490a8bc6e622df3b633317a4cc556985918c7d` |
| 60 | `theorem` | [face_mk](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/face-mk.md) | 365 | `result-track:d26d44a28138419c5c755a8700c87a11fccf99870f00780b6bc69cebb59ed474` |
| 61 | `theorem` | [face_mono](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/face-mono.md) | 369 | `result-track:230e788b29e87349e036c265ceacf1a8ca8ed619a59c1659c65a358a1ec7c8df` |
| 62 | `theorem` | [monotone_face](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/monotone-face.md) | 373 | `result-track:dea9a7954451103071ea55b51eae6143b6699491f64fa50216715b9866f71959` |
| 63 | `theorem` | [mapsTo_insertNth_face_Icc](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/mapsto-insertnth-face-icc.md) | 376 | `result-track:091c1867547f298de6b0a8a72a85ce8d925c97fe980cfd30cd165b164757c5a0` |
| 64 | `theorem` | [mapsTo_insertNth_face](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/mapsto-insertnth-face.md) | 381 | `result-track:329984f6dd5eb362991a4af36f6c2ea89671335748f53f6ffec2c1c1e2550d0e` |
| 65 | `theorem` | [continuousOn_face_Icc](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/continuouson-face-icc.md) | 389 | `result-track:774d27009930ebfe3704668322fb6249220acbdd1efaeafc94890d3bdcce81d2` |
| 66 | `def` | [Ioo](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/ioo.md) | 401 | `declaration-track:5887346ac73f8aff7846f829e8f9da3b59c1d6890085d33bf35e16c69f43ffdc` |
| 67 | `theorem` | [Ioo_subset_coe](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/ioo-subset-coe.md) | 406 | `result-track:4ff37255c4f4287a92151b95e61904a116a3b25c0a9b421acb70fe1bf5a4ca02` |
| 68 | `theorem` | [Ioo_subset_Icc](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/ioo-subset-icc.md) | 409 | `result-track:8ca4ca4613ce8d8c4dbd4816ed221cd525ad96637e9fa28545901ec6c08f3dc1` |
| 69 | `theorem` | [iUnion_Ioo_of_tendsto](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/iunion-ioo-of-tendsto.md) | 412 | `result-track:759c285e39439d5566e231e30cee05645f17988aca4879bd83a7df2bbd630c96` |
| 70 | `theorem` | [exists_seq_mono_tendsto](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/exists-seq-mono-tendsto.md) | 428 | `result-track:95416981e3a65ff8c48e9c4f1daecfa558591932aa233db1c9875b6ba14eb98d` |
| 71 | `def` | [distortion](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/distortion.md) | 447 | `declaration-track:df57f89a8b1af108a399ccd11d2354d4ab82c44990ce45234edd0bc32bd23788` |
| 72 | `theorem` | [distortion_eq_of_sub_eq_div](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/distortion-eq-of-sub-eq-div.md) | 450 | `result-track:938d6f08ad78d9500b3b1c8fbbe6b4524fab98e5a7bbbc99324d9b993674f9b0` |
| 73 | `theorem` | [nndist_le_distortion_mul](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/nndist-le-distortion-mul.md) | 463 | `result-track:76221d7d14b2b7a0a9a7f01d9a9266f96b3ef65882c5b6c6011f23be71ac6eb2` |
| 74 | `theorem` | [dist_le_distortion_mul](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/dist-le-distortion-mul.md) | 473 | `result-track:a0779d261bcffae90e48d2eec2114485c8e72b8c908b325e945370ae1e01fa09` |
| 75 | `theorem` | [diam_Icc_le_of_distortion_le](../../../../FunctionalAnalysis/BoxBasicNamespacedIsBoundedIcc.lean/declarations/diam-icc-le-of-distortion-le.md) | 479 | `result-track:0fdb0d936f67ae50a786b7a0d53c2db55380d01718e2e2921ec50b101131f6ef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f9f8323bbbc7d0125caa74477bc4c13196051f7fae98a508de159c4fe6cb0b43 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant0925c33662c51ac6ee04bb76302ea1e56688fe0b77f8d67a91e9916383de4e81.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant0925c33662c51ac6ee04bb76302ea1e56688fe0b77f8d67a91e9916383de4e81.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
