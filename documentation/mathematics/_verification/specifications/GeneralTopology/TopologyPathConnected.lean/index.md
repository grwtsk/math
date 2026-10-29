# Verification target: Topology Path Connected

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f79ff3e521956a45c84342dd1cf5b96187dc336a",
  "lexical_observation_count": 147,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/PathConnected/Variantdd83babc075d2c72b4d64f04fd479fa5d71bd58fabb8b8d28d0999cac229498f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/TopologyPathConnected.lean/index.md) · [Full source](../../../../GeneralTopology/TopologyPathConnected.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f79ff3e521956a45c84342dd1cf5b96187dc336a`.

Source path: `GRWTSK/Topology/GeneralTopology/PathConnected/Variantdd83babc075d2c72b4d64f04fd479fa5d71bd58fabb8b8d28d0999cac229498f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/PathConnected/Variantdd83babc075d2c72b4d64f04fd479fa5d71bd58fabb8b8d28d0999cac229498f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Order.ProjIcc` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.CompactOpen` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousFunction.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UnitInterval` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Path](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/path.md) | 75 | `declaration-track:a2b01634f68d4b006fce602d2b5024e69fa3d35b1ebc22ce2eeddc505af6feca` |
| 2 | `instance` | [Path.continuousMapClass](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/path-continuousmapclass.md) | 84 | `declaration-track:18fc999ce526496338333be0478eb2be544d60f00a25040846ec15217462a7b9` |
| 3 | `theorem` | [Path.ext](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/path-ext.md) | 98 | `result-track:6e2251f3ac58159acf1e96e9115cada09f5d7bd939db009cd0c3004496860401` |
| 4 | `theorem` | [coe_mk_mk](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/coe-mk-mk.md) | 106 | `result-track:74d6b1f1ce79672e1b944d3754ce345b6513204ce39de0c278eb9092d7d20e10` |
| 5 | `theorem` | [continuous](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/continuous.md) | 115 | `result-track:a14750a70d0f5829f732f4706073e88929b3d05fdc50b3e6f71d789e3d701ee5` |
| 6 | `theorem` | [source](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/source.md) | 120 | `result-track:357ab355f40b32f00c14b5563e10be9e84c10bf59a9b27b2762413479d492ef9` |
| 7 | `theorem` | [target](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/target.md) | 125 | `result-track:d960661506869b2c7dd1b5d3f5360a2733d4b1ffb265dbf7321416aecfa507c4` |
| 8 | `def` | [simps.apply](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/simps-apply.md) | 131 | `declaration-track:4ca49980d99b0d706d8dae08b093d36a6fb2e4d622e60aa6f38f484a542bbe53` |
| 9 | `theorem` | [coe_toContinuousMap](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/coe-tocontinuousmap.md) | 138 | `result-track:db78d6ce36136a4bc222dfac97b3192c745698238c1029e54fee33a21ba6452e` |
| 10 | `theorem` | [coe_mk](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/coe-mk.md) | 144 | `result-track:7c934d3d6937d022cc140f118449452082ac82de515d560ac1dad7b87b327554` |
| 11 | `instance` | [hasUncurryPath](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/hasuncurrypath.md) | 148 | `declaration-track:08dfc9ced254b68dadbe91591dd05b105678e129cf55657ad9aa21fac4d5c326` |
| 12 | `def` | [refl](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/refl.md) | 155 | `declaration-track:3d6ce2f7ff003b6415480af25f7b5de1817f89eca5f6cee7342183ed52fa47af` |
| 13 | `theorem` | [refl_range](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/refl-range.md) | 163 | `result-track:621b95babca75f90c7125ee51232cc8ecc9a9da69a5da16f503f3b1c6e20f25f` |
| 14 | `def` | [symm](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/symm.md) | 168 | `declaration-track:70a2101cafdad09e290718b6d8a308cd584c3bf44e09ac688a0d533eb387eec7` |
| 15 | `theorem` | [symm_symm](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/symm-symm.md) | 176 | `result-track:341c37263d309653140c01f3ed79253e4da39ada34cdf37a5fda2a8b3812721e` |
| 16 | `theorem` | [refl_symm](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/refl-symm.md) | 183 | `result-track:9d4cd7ae0a7409ec0895f305a8ce1b6e13648bb95a2e3e00024e47d5914a8a2b` |
| 17 | `theorem` | [symm_range](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/symm-range.md) | 189 | `result-track:4b2b0baa9c4ab4daef53a572cb2ed019663d29f9edd2388dac6ebad6fc78167d` |
| 18 | `instance` | [topologicalSpace](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/topologicalspace.md) | 212 | `declaration-track:408e7abc9b76697ddc542cd2aa6768c425e7ee5b362a84ff445ea7fdcb150001` |
| 19 | `theorem` | [continuous_eval](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/continuous-eval.md) | 215 | `result-track:394f17ddd4ccff9ade04310b0a468dfaa58d950483e8439940e1b073ac118fcd` |
| 20 | `theorem` | [_root_.Continuous.path_eval](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/root-continuous-path-eval.md) | 220 | `result-track:e732d9bb873edf46c88943c7a3750d8fce0a7e07cfc4f96c99a2e182043b9851` |
| 21 | `theorem` | [continuous_uncurry_iff](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/continuous-uncurry-iff.md) | 225 | `result-track:54c7b76ac8f38929fb34a0d10fb44d636a45b41f974d81c3c08004f83f7f1c36` |
| 22 | `def` | [extend](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/extend.md) | 233 | `declaration-track:9e7bacc3d60b4dabde7b17a916d6ad4f865387e203584f8de97b8f1d1898b780` |
| 23 | `theorem` | [_root_.Continuous.path_extend](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/root-continuous-path-extend.md) | 238 | `result-track:57826e383c674bacd5c3bc4869367854014626795c86578cc59f94f138ba2455` |
| 24 | `theorem` | [continuous_extend](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/continuous-extend.md) | 245 | `result-track:f7968c29957a261265e6eac409aa81221469d0e2411b92e59663474579e2d4ed` |
| 25 | `theorem` | [_root_.Filter.Tendsto.path_extend](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/root-filter-tendsto-path-extend.md) | 249 | `result-track:75de65d6c3f0294374ef5a9fddb1ba15e15f67ee2507b3c9c52ddcf357affa46` |
| 26 | `theorem` | [_root_.ContinuousAt.path_extend](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/root-continuousat-path-extend.md) | 256 | `result-track:3f4f1f4ea2c0a9ee56a58d375bfbae85bcae68d904966dbc22d2fb4dbc25ee20` |
| 27 | `theorem` | [extend_extends](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/extend-extends-source-edition-2.md) | 263 | `result-track:ede1c32e736b5a132f3359e8c143cc5fe7b2893ae9735186f5d71f42cc929dc1` |
| 28 | `theorem` | [extend_zero](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/extend-zero.md) | 268 | `result-track:749bb80dfad001f01f94eb9913da99ac0594cdb5dd8f2e4f61b2d45e82597d14` |
| 29 | `theorem` | [extend_one](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/extend-one.md) | 271 | `result-track:4b657c2e1e05ed3519ee21b2b1bbe6c57ff58eab5f711dff4514a7f83f59e9a3` |
| 30 | `theorem` | [extend_extends'](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/extend-extends.md) | 275 | `result-track:c8060540b8b37f463bc8af970d854d747107be8e70f187443e8c1a23031318d2` |
| 31 | `theorem` | [extend_range](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/extend-range.md) | 281 | `result-track:c1a28d352cef2a78366d911e5473bb98741125c9d4344ef108f699b666fd0578` |
| 32 | `theorem` | [extend_of_le_zero](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/extend-of-le-zero.md) | 286 | `result-track:29815b123ab02b3a7ed5961aeec1782217fed0f0a2ab7f7d9b51543455f3cd94` |
| 33 | `theorem` | [extend_of_one_le](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/extend-of-one-le.md) | 291 | `result-track:5539de15f9eead197d4f466745c9699acf5e4e4851f9ed1e494e98a75b2e0af5` |
| 34 | `theorem` | [refl_extend](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/refl-extend.md) | 297 | `result-track:65ff1395d8b66080e3182905fb91cb8abaca0d0c4e0be76445bfef57e2af585f` |
| 35 | `def` | [ofLine](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/ofline.md) | 302 | `declaration-track:acf9aec9186229211e1177c11a8481991f459a6bfca20616f6424143ccc174a4` |
| 36 | `theorem` | [ofLine_mem](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/ofline-mem.md) | 309 | `result-track:f8e77b5f26e70fbc85c79a80880885dc2be715e5c38fb96a02d8add71d85b1e3` |
| 37 | `def` | [trans](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/trans.md) | 318 | `declaration-track:41d16e407c174f24991a669172e3072d2b3ae54f85bd4f7faee721494c602d30` |
| 38 | `theorem` | [trans_apply](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/trans-apply.md) | 329 | `result-track:359a6d40a736245378d3a6dba554cf95921dd8120a20b972c954721f0045f19a` |
| 39 | `theorem` | [trans_symm](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/trans-symm.md) | 337 | `result-track:5591b31b6b35e8223272bc2edf0b214e6c24677f9f4fa6bd0cb11acaac3d72db` |
| 40 | `theorem` | [refl_trans_refl](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/refl-trans-refl.md) | 353 | `result-track:8e48bc19d500b779f382324d6c1805b51b91d19076a4d05b242fc6cc821f876d` |
| 41 | `theorem` | [trans_range](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/trans-range.md) | 360 | `result-track:03e87feb413591e05df7774f22017843e2fb1c93592d239af72a9e75f8d46bd0` |
| 42 | `def` | [map'](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/map.md) | 398 | `declaration-track:b2a32b244ce119f4a7b3e955b9454a3abdeb19441e954f5556b8685bef8956c1` |
| 43 | `def` | [map](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/map-source-edition-2.md) | 406 | `declaration-track:feab767a1d96057c567e53a539007d740b9787d7a79d701c30860cb287e5abd7` |
| 44 | `theorem` | [map_coe](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/map-coe.md) | 411 | `result-track:0386eb6f50ebad877fe6ea4651ff51c7c762df14f2d4c26af21b129d46c70c1f` |
| 45 | `theorem` | [map_symm](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/map-symm.md) | 418 | `result-track:88c79721665bd3692be381267437fab09d42d6b879e7052bbbf33b0170300df3` |
| 46 | `theorem` | [map_trans](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/map-trans.md) | 424 | `result-track:9bf748683c88b7f2184280ef7ab30c76838b3008f341a3a441ad38602debf633` |
| 47 | `theorem` | [map_id](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/map-id.md) | 432 | `result-track:4728c2f9d9f28f30440e0f9db6f145fdf955cd4f29338283867a236a8059c184` |
| 48 | `theorem` | [map_map](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/map-map.md) | 438 | `result-track:380ca45fa3d5a5018b75209000724360bbd33ac3355a9b41a0db24732f72335c` |
| 49 | `def` | [cast](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/cast.md) | 446 | `declaration-track:cd1c3302e9b09a259082944150a6a3a2a10cfada12697ffece4672df90210169` |
| 50 | `theorem` | [symm_cast](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/symm-cast.md) | 454 | `result-track:5e50aa85913ab9ce91f6e5d20ec9e791e02544127dd5bf3c9516bfe94d68af0a` |
| 51 | `theorem` | [trans_cast](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/trans-cast.md) | 460 | `result-track:d55e4895161350652a4f487f0445b676dfca7d9ed14df1a90f10434f0ce0c40a` |
| 52 | `theorem` | [cast_coe](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/cast-coe.md) | 467 | `result-track:6b8cfca0ede751ee76c6ae639401122aaa1175689eb0780444e71d0cbb2e82b0` |
| 53 | `theorem` | [symm_continuous_family](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/symm-continuous-family.md) | 472 | `result-track:2f67ac9a5a332bca4211eec719218e2e0d2aba14789eed531211f7d3792e636f` |
| 54 | `theorem` | [continuous_symm](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/continuous-symm.md) | 479 | `result-track:cb8abef766b3ac36b0e4e98c2111d17c7694872fb27107ab25560c3e1d37d1bf` |
| 55 | `theorem` | [continuous_uncurry_extend_of_continuous_family](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/continuous-uncurry-extend-of-continuous-family.md) | 484 | `result-track:40738d82cf357ca8f9f3e28f24cd31dc673fb3f609525c6666f2e6f564b01089` |
| 56 | `theorem` | [trans_continuous_family](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/trans-continuous-family.md) | 492 | `result-track:703b3ccfb326375b96bbef7a7ea6b8d1c8e6d7082d03375b27563981daedd2cb` |
| 57 | `theorem` | [_root_.Continuous.path_trans](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/root-continuous-path-trans.md) | 514 | `result-track:c849a52f8eae9f7bc596933ff6bef92f144b9145d225ec27209ae60b94a0a0c6` |
| 58 | `theorem` | [continuous_trans](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/continuous-trans.md) | 522 | `result-track:963297127f000c48a2725642fb3c2aa489941ab8b8c7111fab053cc529a2fff6` |
| 59 | `def` | [prod](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/prod.md) | 535 | `declaration-track:789fafb05d1af74141931a2986548e6e308f6bf0bde2fb5b1efaac9e851568c3` |
| 60 | `theorem` | [prod_coe](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/prod-coe.md) | 542 | `result-track:cdfda08e4fb4c75d63f0271c2df5874759c665c26f7471970b25b851945d94a1` |
| 61 | `theorem` | [trans_prod_eq_prod_trans](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/trans-prod-eq-prod-trans.md) | 548 | `result-track:e0bb4e666da884d47747527bb02464d5ebfa4e5e22fdb8395f20f053d4e71677` |
| 62 | `def` | [pi](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/pi.md) | 565 | `declaration-track:2b840b2a1c1c05ab5351807a1bbc4896380c1cc2d234dfe48e6d6a8bb7ead54e` |
| 63 | `theorem` | [pi_coe](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/pi-coe.md) | 572 | `result-track:d3d8451a5079a3148eb3dcdedd4314c6ac8ad170244a23ff68b0daf365603421` |
| 64 | `theorem` | [trans_pi_eq_pi_trans](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/trans-pi-eq-pi-trans.md) | 577 | `result-track:5c852d1598e0d9b220add420ee42708d6b65c15ee25b0c15429b615d8f1c3847` |
| 65 | `def` | [mul](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/mul.md) | 593 | `declaration-track:3b05ac251468eab6cc4b5594e36e05f6551394d0573f0c41132138f5c3617e77` |
| 66 | `theorem` | [mul_apply](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/mul-apply.md) | 600 | `result-track:827559f43195c04e6cdff7ea49dded7f868846bedd243c339a7a172f845a8251` |
| 67 | `def` | [truncate](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/truncate.md) | 611 | `declaration-track:21ee08f1a604db5bfe44625cc68adaf39b0dd26d871ab47415633c739d7fe2a1` |
| 68 | `def` | [truncateOfLE](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/truncateofle.md) | 639 | `declaration-track:55f84eb45d8d45a12f114fe4ea2055acea02e9954b8085f1bd87c5bd8d419140` |
| 69 | `theorem` | [truncate_range](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/truncate-range.md) | 644 | `result-track:52f42398d832f82902759d635e8ebf9c995190a617bc837995de2a0773143e5a` |
| 70 | `theorem` | [truncate_continuous_family](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/truncate-continuous-family.md) | 655 | `result-track:b8db74dab4fb7baa9a8283307bcfd5f155f6e82dadaec473d054e742c84de8fa` |
| 71 | `theorem` | [truncate_const_continuous_family](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/truncate-const-continuous-family.md) | 663 | `result-track:18503a39a919973deb242ac6fe0531a19ac13d806a216c3a146aa5fb7132d23a` |
| 72 | `theorem` | [truncate_self](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/truncate-self.md) | 670 | `result-track:0401710a6add2f1b576944577a3f43fe054d31ce01211cd7918cfb0efa130e42` |
| 73 | `theorem` | [truncate_zero_zero](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/truncate-zero-zero.md) | 679 | `result-track:3fb79a0ebf8003e789011d2bbd7eed253192a411b2126d287b996611a6cc7b15` |
| 74 | `theorem` | [truncate_one_one](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/truncate-one-one.md) | 685 | `result-track:c10899800a443092018dfb75d0908b2dd750cac1b6bf208b7c1b98c0978a4f9d` |
| 75 | `theorem` | [truncate_zero_one](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/truncate-zero-one.md) | 691 | `result-track:6eb75f9eae511c3bbdc67b6b8cf057beff4bb5041e1e3c84e2a2f4623cd7ee93` |
| 76 | `def` | [reparam](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/reparam.md) | 705 | `declaration-track:3710c9f19918205405bcbb26a89b3bc2824d58f4fdea4ad33339c3707684e0da` |
| 77 | `theorem` | [coe_reparam](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/coe-reparam.md) | 714 | `result-track:d4e0caec84c4d60e21e0f5cc109d0633fe3cce85aa89e133945f64f6a7d19074` |
| 78 | `theorem` | [reparam_id](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/reparam-id.md) | 721 | `result-track:17250421abb31e04c8c6d9c3d72132595c802573473d0e79b0e8223465d49ef4` |
| 79 | `theorem` | [range_reparam](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/range-reparam.md) | 726 | `result-track:db9772c097dacfd019d63070be838fa96901e4bfa9ffc8160a2b6281acae109b` |
| 80 | `theorem` | [refl_reparam](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/refl-reparam.md) | 741 | `result-track:682f612acb51558ecb218985b022980597d7b43732b14325d8160efea0e97a11` |
| 81 | `def` | [Joined](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/joined.md) | 753 | `declaration-track:9c0d88db3a4e1a24c64eb455c1fa2696202c362b9d73926308418819b99764a6` |
| 82 | `theorem` | [Joined.refl](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/joined-refl.md) | 758 | `result-track:02016991e0e32ce907e1f001104c180eb3f0042088774f70ed5be9b4e371ccc8` |
| 83 | `def` | [Joined.somePath](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/joined-somepath.md) | 763 | `declaration-track:825bfa79496100c247f0413bc51980dafd42047cbddffa81739d0b68f9dafdb3` |
| 84 | `theorem` | [Joined.symm](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/joined-symm.md) | 768 | `result-track:caf6dd48799fec9a4c0592afd23aa5e3c796ecc07b5588caa18bb322a0012a65` |
| 85 | `theorem` | [Joined.trans](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/joined-trans.md) | 773 | `result-track:859c7c2469aec3d84bdf11417e88d08fe66dff33a3420bec7f2202f5a13821a1` |
| 86 | `def` | [pathSetoid](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/pathsetoid.md) | 780 | `declaration-track:95428070d8960a405a4f895d2590d295326cfada56153f3f75dd9d490087a095` |
| 87 | `def` | [ZerothHomotopy](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/zerothhomotopy.md) | 786 | `declaration-track:85a8d307916f0337c21c66be6eee0f9e9514ae28cbcdc5285ead84a30787160d` |
| 88 | `instance` | [ZerothHomotopy.inhabited](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/zerothhomotopy-inhabited.md) | 790 | `declaration-track:5495fb737cfd9609915590f2136205fbeccd88f5ea82757a9bad43cfa8dee413` |
| 89 | `def` | [JoinedIn](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/joinedin.md) | 800 | `declaration-track:90f50a0e5486facd1c0bd68f81af13c4118613d0ff9934a6f3933cbfdb8c2b4c` |
| 90 | `theorem` | [JoinedIn.mem](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/joinedin-mem.md) | 806 | `result-track:f4e3dcc9b8fb3255a557497d0cc3d1c567ef27ec85873218705414936320228b` |
| 91 | `theorem` | [JoinedIn.source_mem](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/joinedin-source-mem.md) | 812 | `result-track:15710f33906ec17c5cb0aa27aa454300676c21c06f222592f2d878eb10f0d622` |
| 92 | `theorem` | [JoinedIn.target_mem](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/joinedin-target-mem.md) | 816 | `result-track:8cacee1770f543ff95d78a91ebd2651c246c0a519daaf204cc09f914897954e7` |
| 93 | `def` | [JoinedIn.somePath](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/joinedin-somepath.md) | 821 | `declaration-track:42a94fb18f764ceb85305984e9e71905140ad6dc5ddb9c4e4489b00ec1103481` |
| 94 | `theorem` | [JoinedIn.somePath_mem](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/joinedin-somepath-mem.md) | 825 | `result-track:00d9adcea1a839f613e8b2d0088da8d4b51095a84c5cfa789165442c8769b9dc` |
| 95 | `theorem` | [JoinedIn.joined_subtype](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/joinedin-joined-subtype.md) | 830 | `result-track:efec1cfa2d6af09aa6fc4b9716b6dbac7ed0176958d60f9cf349fd59e2b574f7` |
| 96 | `theorem` | [JoinedIn.ofLine](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/joinedin-ofline.md) | 838 | `result-track:a67806bf05a4aa10871df240079c3b5a84380b8e2c04eec34a4025f908458195` |
| 97 | `theorem` | [JoinedIn.joined](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/joinedin-joined.md) | 843 | `result-track:41decffc145361f94794949341ec2b4587e7f12452e62262160191e7758baf81` |
| 98 | `theorem` | [joinedIn_iff_joined](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/joinedin-iff-joined.md) | 847 | `result-track:51ba756f45ad822706fe9f5e82306a4b6e5c618fa1df0b9fe0fd969ec5da52a8` |
| 99 | `theorem` | [joinedIn_univ](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/joinedin-univ.md) | 853 | `result-track:534bbe8c358187247d3398e91ae4fd0d743a80ea9fbbb499e18aa842fcdb1f4e` |
| 100 | `theorem` | [JoinedIn.mono](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/joinedin-mono.md) | 857 | `result-track:6bb6ef1b92787ef5c97313dc7da089332f4d16d3f1beb4a63a464b3e5467d865` |
| 101 | `theorem` | [JoinedIn.refl](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/joinedin-refl.md) | 861 | `result-track:e9f55d1d4aa69dfbc657d7a284210b980d7fde8bb04c771cf9e8d971014b8dc0` |
| 102 | `theorem` | [JoinedIn.symm](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/joinedin-symm.md) | 866 | `result-track:d029c5974a0af4ccb1cf0608073c2aeecdc56192547b6546e9a69afaa5fe2cf3` |
| 103 | `theorem` | [JoinedIn.trans](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/joinedin-trans.md) | 872 | `result-track:5a5b8f7e357226aa658274c63d8cc8632557aa2582842d9f3687c17d3e1a1fdd` |
| 104 | `def` | [pathComponent](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/pathcomponent.md) | 883 | `declaration-track:f10db444b37c6157a7492df7f5b4cc0ddbd752b4801c0f2aeca0389eee429760` |
| 105 | `theorem` | [mem_pathComponent_self](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/mem-pathcomponent-self.md) | 888 | `result-track:d779d3239b5326c3d12b9e41f30d61eb6da4f8cacfa8cc1fa6cd2e59986afa05` |
| 106 | `theorem` | [pathComponent.nonempty](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/pathcomponent-nonempty.md) | 893 | `result-track:a6a32f947f2d019c1883866a80af7d6136fdbaeda187d8038e4b603f19a393ce` |
| 107 | `theorem` | [mem_pathComponent_of_mem](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/mem-pathcomponent-of-mem.md) | 897 | `result-track:a18c335e3a4fb5ba4d278a603157e42d1478eaf4e1ae0d6a3431503f1308735c` |
| 108 | `theorem` | [pathComponent_symm](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/pathcomponent-symm.md) | 901 | `result-track:55de1695d716607ff5eb83f8d07f7ad577dbbeffe544df1c08b6a2ecc44abe88` |
| 109 | `theorem` | [pathComponent_congr](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/pathcomponent-congr.md) | 905 | `result-track:0c2788e4478b5626407dfbc4250286296fd1f4c35f5ad332bf5b3dada543700d` |
| 110 | `theorem` | [pathComponent_subset_component](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/pathcomponent-subset-component.md) | 916 | `result-track:59659f3d4ba935e2509073dad9c3c8f55d114f15c28c41d53aae6e87ff67232c` |
| 111 | `def` | [pathComponentIn](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/pathcomponentin.md) | 922 | `declaration-track:1894685497579b63afdce9c39385f8c76bfaacf69fdd65d763856bae11a8ad3e` |
| 112 | `theorem` | [pathComponentIn_univ](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/pathcomponentin-univ.md) | 927 | `result-track:db64d31a1d8cd2b807ff80d5806e3e63a489dab26ffc1e38c4ea04c80513fbea` |
| 113 | `theorem` | [Joined.mem_pathComponent](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/joined-mem-pathcomponent.md) | 931 | `result-track:384141c36c61b0d01423badee01a57954ca128758c35ac439c4a41ac2ffadc44` |
| 114 | `def` | [IsPathConnected](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/ispathconnected.md) | 940 | `declaration-track:aa0ca42ff150d0e55cd96d5d2d421e51a6f81b52f7e665d25fa46c24329bcf40` |
| 115 | `theorem` | [isPathConnected_iff_eq](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/ispathconnected-iff-eq.md) | 944 | `result-track:9d8fcac902737066ac4857b81e44c1bfbffdef93b4ecfec272558b2d327d95e7` |
| 116 | `theorem` | [IsPathConnected.joinedIn](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/ispathconnected-joinedin.md) | 952 | `result-track:ace2e86b97008f6fc4daa0034956ceeb2c5ef1a60b46ac06ab6f19bd573f57f3` |
| 117 | `theorem` | [isPathConnected_iff](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/ispathconnected-iff.md) | 958 | `result-track:0bbb92aa3118fe354cc838c54a954dd8e9268a3a0626722ebcd0ea4197ffce27` |
| 118 | `theorem` | [IsPathConnected.image'](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/ispathconnected-image.md) | 965 | `result-track:21e98d4e8efd0f2ba3adfb7efab1ac3f89cf6afd1d2f1b16845137049f07c0d7` |
| 119 | `theorem` | [IsPathConnected.image](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/ispathconnected-image-source-edition-2.md) | 973 | `result-track:da8d188dee0f3560342f87310ea9623d1779b9145fede088134a6ed5e9a0d0f0` |
| 120 | `theorem` | [IsPathConnected.mem_pathComponent](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/ispathconnected-mem-pathcomponent.md) | 977 | `result-track:6bc06bd60197147f8854fab159b38e190fe8de800add8f15a62ac664595e9da7` |
| 121 | `theorem` | [IsPathConnected.subset_pathComponent](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/ispathconnected-subset-pathcomponent.md) | 982 | `result-track:c986817522c13529a00705d61de0099a5f41a82cfe36f8398a19666de40cb71c` |
| 122 | `theorem` | [isPathConnected_singleton](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/ispathconnected-singleton.md) | 986 | `result-track:eac805ff2bbeb9669fea7a28889d403d9e53047832d6c09256d459249c7468d1` |
| 123 | `theorem` | [IsPathConnected.union](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/ispathconnected-union.md) | 991 | `result-track:f26f382b41d0f56ac08335f5e1706823a4170e385113119250dfa0611079f16b` |
| 124 | `theorem` | [IsPathConnected.preimage_coe](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/ispathconnected-preimage-coe.md) | 1002 | `result-track:7e52f5ce02ef18a29069653b8343cf152510358a37249163ea6e6ce15c570657` |
| 125 | `theorem` | [IsPathConnected.exists_path_through_family](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/ispathconnected-exists-path-through-family.md) | 1010 | `result-track:0aa1383d6f9110c6e73d7559f1c66a789de910a4ba07588d458ca457b35728a7` |
| 126 | `theorem` | [IsPathConnected.exists_path_through_family'](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/ispathconnected-exists-path-through-family-source-edition-2.md) | 1066 | `result-track:b797049dfd72adfc56b4d4ceb7317e4076cb4806de97638b25a5662265d7b59c` |
| 127 | `class` | [PathConnectedSpace](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/pathconnectedspace.md) | 1082 | `declaration-track:111c8b65b35fa6c9a07db8f4288f60b678546c06fc39b0d2d05c31b7e1410c41` |
| 128 | `theorem` | [pathConnectedSpace_iff_zerothHomotopy](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/pathconnectedspace-iff-zerothhomotopy.md) | 1089 | `result-track:26cac81082aea64e1e91e0c959c70d0273869d3222a8918c3ad2252a9ae14bce` |
| 129 | `def` | [somePath](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/somepath.md) | 1108 | `declaration-track:619fae745ef837dc5ebc792ce69bf9ff19c7b03f57aa5494a32c459a16e7db1f` |
| 130 | `theorem` | [isPathConnected_iff_pathConnectedSpace](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/ispathconnected-iff-pathconnectedspace.md) | 1114 | `result-track:62b192865e6986a2396626a0cb5b09eb140505bf5f9eb0fc4d1393ac6aa37a0f` |
| 131 | `theorem` | [pathConnectedSpace_iff_univ](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/pathconnectedspace-iff-univ.md) | 1128 | `result-track:8dcef4213768ffb2cac8f27a791c285bb2cb46864165e1bf34b42dd5eddc0587` |
| 132 | `theorem` | [isPathConnected_univ](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/ispathconnected-univ.md) | 1142 | `result-track:fc0a60a55710c33974f4c056f9353661d6537cc45a70a394baebf7666fc4ce35` |
| 133 | `theorem` | [isPathConnected_range](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/ispathconnected-range.md) | 1145 | `result-track:b2d5c7ebc3b7aaf5ea7743c5135e4c5b1343aa860535fba57e83f4eeac541223` |
| 134 | `theorem` | [Function.Surjective.pathConnectedSpace](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/function-surjective-pathconnectedspace.md) | 1150 | `result-track:ea799c995247c435d9a5bfb160c85d51768ae40a89760c6054df2a084fa92bfa` |
| 135 | `instance` | [Quotient.instPathConnectedSpace](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/quotient-instpathconnectedspace.md) | 1155 | `declaration-track:faf36e983ab3b16117bfbf7ed97c8b8403c439809c8b8fdbb80b8ae1c936385d` |
| 136 | `instance` | [Real.instPathConnectedSpace](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/real-instpathconnectedspace.md) | 1161 | `declaration-track:fdc401b63ca875b137cefdedecaaffe609b03ab11bbed6d037a2b49505dce969` |
| 137 | `theorem` | [pathConnectedSpace_iff_eq](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/pathconnectedspace-iff-eq.md) | 1165 | `result-track:e2cc7d5bb8234f245dbed8599d552b0464aa0901245a6e63a67fa8c80dd43bd7` |
| 138 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/instance.md) | 1170 | `declaration-track:16f5a2307f4d341435fd21e925bfce53abf694dfcce8c950acb8fa62f9696182` |
| 139 | `theorem` | [IsPathConnected.isConnected](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/ispathconnected-isconnected.md) | 1179 | `result-track:158d4002918c7c6f0ac2cad096144dce66944ae0871438c09742266955c68edf` |
| 140 | `theorem` | [exists_path_through_family](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/exists-path-through-family-source-edition-2.md) | 1189 | `result-track:ca2e0034ceca604f53e68c072b044f4a97116b64a9207421941cff024957f8d9` |
| 141 | `theorem` | [exists_path_through_family'](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/exists-path-through-family.md) | 1196 | `result-track:72f81ca973aad6ec91afc284f6cfc359a09f60061828233469457e77ce480dad` |
| 142 | `class` | [LocPathConnectedSpace](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/locpathconnectedspace.md) | 1210 | `declaration-track:5e4c9c8a4f60fdf4e93780bb68abc84274ca2cbe95cd71ebbe93c0460c2f7322` |
| 143 | `theorem` | [locPathConnected_of_bases](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/locpathconnected-of-bases.md) | 1217 | `result-track:09c050698fe7c69e86140b80c99a14a83857d7eb96184394e9d98047eae4b176` |
| 144 | `theorem` | [pathConnectedSpace_iff_connectedSpace](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/pathconnectedspace-iff-connectedspace.md) | 1230 | `result-track:c0df372dd6a336bc880156d4d6d74dcced4041eff416246bdceaa49d83db5ec1` |
| 145 | `theorem` | [pathConnected_subset_basis](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/pathconnected-subset-basis.md) | 1252 | `result-track:5c5d497db672c7cafaf65ea5a54f9eda074ee22440a4d381fb26c2a889e41dcb` |
| 146 | `theorem` | [locPathConnected_of_isOpen](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/locpathconnected-of-isopen.md) | 1257 | `result-track:a078ad5bb35f04dd4f0657a0b5759bc5b9f35630138781d0282f16632862643c` |
| 147 | `theorem` | [IsOpen.isConnected_iff_isPathConnected](../../../../GeneralTopology/TopologyPathConnected.lean/declarations/isopen-isconnected-iff-ispathconnected.md) | 1279 | `result-track:82519b372ed0a42ff305dd710d9a9d7cbf25b69db0d16a7e8958d5ed7e47cff6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5ac302b9de29cd72e24914ae2aab28b56e252af2cdc47f75cae72701062bbdfb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/PathConnected/Variantdd83babc075d2c72b4d64f04fd479fa5d71bd58fabb8b8d28d0999cac229498f.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/PathConnected/Variantdd83babc075d2c72b4d64f04fd479fa5d71bd58fabb8b8d28d0999cac229498f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
