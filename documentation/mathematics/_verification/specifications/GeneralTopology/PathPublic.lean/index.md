# Verification target: Path Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d9635ef4ad6dd478f60ca07e612646c670705ad",
  "lexical_observation_count": 95,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Path/Variant91c8fa5452d85bc35258afd61de0b694e82ae483d35d9257b599ce7eaddab038.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/PathPublic.lean/index.md) · [Full source](../../../../GeneralTopology/PathPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d9635ef4ad6dd478f60ca07e612646c670705ad`.

Source path: `GRWTSK/Topology/GeneralTopology/Path/Variant91c8fa5452d85bc35258afd61de0b694e82ae483d35d9257b599ce7eaddab038.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Path/Variant91c8fa5452d85bc35258afd61de0b694e82ae483d35d9257b599ce7eaddab038.lean.json)

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
| 1 | `structure` | [Path](../../../../GeneralTopology/PathPublic.lean/declarations/path.md) | 60 | `declaration-track:32f3529106824e6efdc0567cc67368260d195da06d416710b6fed9c886f09490` |
| 2 | `instance` | [Path.instFunLike](../../../../GeneralTopology/PathPublic.lean/declarations/path-instfunlike.md) | 67 | `declaration-track:96dd3d121b22bbde0175fd5eda9ea1c733cb56cbaf768e713f0999522570d501` |
| 3 | `instance` | [Path.continuousMapClass](../../../../GeneralTopology/PathPublic.lean/declarations/path-continuousmapclass.md) | 73 | `declaration-track:fcbc373e30c6e9a84850413d6664e03eb411a97e217d18cd31262d585bd7cd2e` |
| 4 | `theorem` | [Path.ext](../../../../GeneralTopology/PathPublic.lean/declarations/path-ext.md) | 77 | `result-track:9396ca9e03cec938bf53b234ca3cef389ee8d20678a9bb83844740d3d7a0bd50` |
| 5 | `theorem` | [coe_mk'](../../../../GeneralTopology/PathPublic.lean/declarations/coe-mk.md) | 85 | `result-track:9de3aff830717efb53e0deb5987a4cb811cba51b2286d3b1eee61e43a4a936cb` |
| 6 | `theorem` | [coe_mk_mk](../../../../GeneralTopology/PathPublic.lean/declarations/coe-mk-mk.md) | 87 | `result-track:af69ad2b7f63c93ac3cd1e21ae76c5da8fca6415a2ae7688a2f2d35cb67752a0` |
| 7 | `theorem` | [continuous](../../../../GeneralTopology/PathPublic.lean/declarations/continuous.md) | 94 | `result-track:33091fa542308b7d1e011e2f67301df48a23a971de931acb00cee11b0c10cf26` |
| 8 | `theorem` | [source](../../../../GeneralTopology/PathPublic.lean/declarations/source.md) | 98 | `result-track:42af8da869efb17da688465be1cc65daed7f79b94aea6cdde9a9d8605c6c706f` |
| 9 | `theorem` | [target](../../../../GeneralTopology/PathPublic.lean/declarations/target.md) | 102 | `result-track:79f70a155a2600ea64214ca22f31780cf856acef14a3ee65f7927c4d9b451680` |
| 10 | `def` | [simps.apply](../../../../GeneralTopology/PathPublic.lean/declarations/simps-apply.md) | 107 | `declaration-track:816fc8ac6addee9721215ff6d1146dc6290cb59eb4c53d4460c2c573c8dae61f` |
| 11 | `theorem` | [coe_toContinuousMap](../../../../GeneralTopology/PathPublic.lean/declarations/coe-tocontinuousmap.md) | 113 | `result-track:8baa17fbb6bbcdd337ca8a388a0107f937873587ce6bedc624d78f93ca1cf42c` |
| 12 | `theorem` | [range_coe](../../../../GeneralTopology/PathPublic.lean/declarations/range-coe.md) | 117 | `result-track:b450917cb6f26bcc65974863c228d67509d865002953ae2aea658f03bd76f661` |
| 13 | `instance` | [instHasUncurryPath](../../../../GeneralTopology/PathPublic.lean/declarations/insthasuncurrypath.md) | 122 | `declaration-track:f2ec3a18cf724fd504d036ed324a908657e9a4191e95c9005662117c1bcdeaaf` |
| 14 | `lemma` | [source_mem_range](../../../../GeneralTopology/PathPublic.lean/declarations/source-mem-range.md) | 127 | `result-track:8b3f14edb7e47cf2ccb7c9b2b259077cd928b616ded228ee4286cac25a95ec69` |
| 15 | `lemma` | [target_mem_range](../../../../GeneralTopology/PathPublic.lean/declarations/target-mem-range.md) | 131 | `result-track:d1e2642536bd7e6c4d302f266af27511970ced0d3c9860f1bb9f8c99c96e1eb4` |
| 16 | `def` | [id](../../../../GeneralTopology/PathPublic.lean/declarations/id.md) | 136 | `declaration-track:3b97f7d8c19742370f926e207abcbf563ae9bd77ccf51f87db1c321c21176fdd` |
| 17 | `def` | [refl](../../../../GeneralTopology/PathPublic.lean/declarations/refl.md) | 143 | `declaration-track:129d5774ccee7a2e6bc804b95091c06390f31607b982bc6c75ab621067b669b0` |
| 18 | `theorem` | [refl_range](../../../../GeneralTopology/PathPublic.lean/declarations/refl-range.md) | 149 | `result-track:2592facbabe21e6071ec73abac93b4fc243ee65a48d1a17f79e49cca5d8b8362` |
| 19 | `def` | [symm](../../../../GeneralTopology/PathPublic.lean/declarations/symm.md) | 153 | `declaration-track:26604694d9691533f6838f758c1b5b4bc4b6249cf73151361a647accb0e34208` |
| 20 | `theorem` | [symm_symm](../../../../GeneralTopology/PathPublic.lean/declarations/symm-symm.md) | 160 | `result-track:338a4a1520e56c8439bd21c7b48e80b27e107fd714ebd3c9887f7a082fbbe45a` |
| 21 | `theorem` | [symm_bijective](../../../../GeneralTopology/PathPublic.lean/declarations/symm-bijective.md) | 162 | `result-track:56fcebdb82ca0b4c67b5828f7a877d0d8d47286e59f8adc118588e256314a1b9` |
| 22 | `theorem` | [refl_symm](../../../../GeneralTopology/PathPublic.lean/declarations/refl-symm.md) | 166 | `result-track:06ae29e39d351e188857764c183fe9faba0ca0b0b54216522fb4b3c78c0de3f2` |
| 23 | `theorem` | [symm_range](../../../../GeneralTopology/PathPublic.lean/declarations/symm-range.md) | 169 | `result-track:92c590ec6cc9ebc66017a568ccbe44546a5f1450af47d593649d25aceb5e7978` |
| 24 | `instance` | [instTopologicalSpace](../../../../GeneralTopology/PathPublic.lean/declarations/insttopologicalspace.md) | 180 | `declaration-track:ac2d7673a909b75dcbb5691d2bfab4c92fd12826b73f302dfaffca7812f8d71e` |
| 25 | `instance` | [(anonymous)](../../../../GeneralTopology/PathPublic.lean/declarations/instance.md) | 183 | `declaration-track:cea036842b03c2c42aca8dc345df2329145c37f418f0e07b5bbf839f5771445e` |
| 26 | `theorem` | [continuous_uncurry_iff](../../../../GeneralTopology/PathPublic.lean/declarations/continuous-uncurry-iff.md) | 185 | `result-track:43112420040ffc6eb791c1cecb707caec8dc59dbf84e2d9b70338eea4db8521a` |
| 27 | `def` | [extend](../../../../GeneralTopology/PathPublic.lean/declarations/extend.md) | 192 | `declaration-track:78c8ee7b69a51a9b02375313026881fab8803cfc5caadb2248f8df68f68dddeb` |
| 28 | `theorem` | [_root_.Continuous.pathExtend](../../../../GeneralTopology/PathPublic.lean/declarations/root-continuous-pathextend.md) | 197 | `result-track:6a836522c4e8d02fd5fc7be8aa76fe50ed917ca0a20ef951ad0ae1aada47f0ac` |
| 29 | `theorem` | [continuous_extend](../../../../GeneralTopology/PathPublic.lean/declarations/continuous-extend.md) | 202 | `result-track:62b560d10acd99ac21c1c133b8179faf54c598e77e4d032d1a897e29d75eaeb6` |
| 30 | `theorem` | [_root_.Filter.Tendsto.pathExtend](../../../../GeneralTopology/PathPublic.lean/declarations/root-filter-tendsto-pathextend.md) | 205 | `result-track:f55ed58669ee90aa1b65d51fc328b7372e968d254469ae0c09556deb528c4c39` |
| 31 | `theorem` | [_root_.ContinuousAt.pathExtend](../../../../GeneralTopology/PathPublic.lean/declarations/root-continuousat-pathextend.md) | 211 | `result-track:f4246f7bcccced5bd8dfa9d33f1e23c2b33f926aff5bb1b6597284f460205b55` |
| 32 | `theorem` | [extend_apply](../../../../GeneralTopology/PathPublic.lean/declarations/extend-apply.md) | 217 | `result-track:49b7529b8e88e1a22a3b895483304be0b2552fb05ad8b482faefa4000a394cbb` |
| 33 | `theorem` | [extend_zero](../../../../GeneralTopology/PathPublic.lean/declarations/extend-zero.md) | 221 | `result-track:8a06cfc6a6eb4ce8e4f65edc14b6686d401acef7fc4cca1f06e33b3b0e4fcab8` |
| 34 | `theorem` | [extend_one](../../../../GeneralTopology/PathPublic.lean/declarations/extend-one.md) | 223 | `result-track:70dca61362bfc3311014a4ca0d8c00c4befb91d767caff3d66916cdb56b6130d` |
| 35 | `theorem` | [extend_extends'](../../../../GeneralTopology/PathPublic.lean/declarations/extend-extends.md) | 225 | `result-track:e09543b78a8bc2f9de69946edd079b7e1386664510afb82b83ea16ea094f6984` |
| 36 | `theorem` | [extend_range](../../../../GeneralTopology/PathPublic.lean/declarations/extend-range.md) | 229 | `result-track:3dcb71680cbf64fdd8b56008b617cae583ee9d0922d1f6b7ed72fb4b4453e97e` |
| 37 | `theorem` | [image_extend_of_subset](../../../../GeneralTopology/PathPublic.lean/declarations/image-extend-of-subset.md) | 233 | `result-track:7fe2cac341c69255729a0ba67e6b7c5f934626285a3b4a6f9a1f4fbb6bcbab46` |
| 38 | `theorem` | [extend_of_le_zero](../../../../GeneralTopology/PathPublic.lean/declarations/extend-of-le-zero.md) | 238 | `result-track:5a9e8343963682768ea921dbb40e02c815ef86c05f45a6f45d21a07061dce352` |
| 39 | `theorem` | [extend_of_one_le](../../../../GeneralTopology/PathPublic.lean/declarations/extend-of-one-le.md) | 242 | `result-track:b95a4af01342835c0d7e02f65454208e664e7ecc1de5f5262568ade7fffa1bf9` |
| 40 | `theorem` | [refl_extend](../../../../GeneralTopology/PathPublic.lean/declarations/refl-extend.md) | 247 | `result-track:d07bc4c22bc7b385f07ef15a26e4f6cb4d43be59a57d98b7d01c76bd9a2efd1f` |
| 41 | `theorem` | [extend_symm_apply](../../../../GeneralTopology/PathPublic.lean/declarations/extend-symm-apply.md) | 250 | `result-track:4fae6cb861094e01b72d653c7656275d2a0a26be7c4f70399645f90deea100be` |
| 42 | `theorem` | [extend_symm](../../../../GeneralTopology/PathPublic.lean/declarations/extend-symm.md) | 254 | `result-track:32ead5ec58fb11bbe345b7d8351c5effc4504f5c0cc457c8362449cf06d29937` |
| 43 | `def` | [ofLine](../../../../GeneralTopology/PathPublic.lean/declarations/ofline.md) | 258 | `declaration-track:7b9d1b436d2572dcfac322233099fa3f714feea33da408869bb9c0da573948fe` |
| 44 | `theorem` | [ofLine_mem](../../../../GeneralTopology/PathPublic.lean/declarations/ofline-mem.md) | 264 | `result-track:dda4115562a690cb1135f21c56b7b198d0c91c88817e313fec0f4104131e2493` |
| 45 | `theorem` | [ofLine_extend](../../../../GeneralTopology/PathPublic.lean/declarations/ofline-extend.md) | 268 | `result-track:2922a8bb828f1c710ccd9dcfc63c7b17d349d4d7540047acdc29dd8cf987d0d6` |
| 46 | `def` | [trans](../../../../GeneralTopology/PathPublic.lean/declarations/trans.md) | 277 | `declaration-track:bb51b9d81d9815bc085900aaf4cc21c4931dbc8fe2fad6afebfbb756ae9f8801` |
| 47 | `theorem` | [trans_apply](../../../../GeneralTopology/PathPublic.lean/declarations/trans-apply.md) | 288 | `result-track:f5eb08a13575790dc68f49ab635447b946361de0f2779f416ca09a9285a7c75e` |
| 48 | `theorem` | [trans_symm](../../../../GeneralTopology/PathPublic.lean/declarations/trans-symm.md) | 295 | `result-track:85bd66c62ab07bd75fd2cec2626ab707ce5d1e1adb5d5387d32c683f4cdf79ae` |
| 49 | `theorem` | [extend_trans_of_le_half](../../../../GeneralTopology/PathPublic.lean/declarations/extend-trans-of-le-half.md) | 309 | `result-track:57b690f63b89ba0ae7542b8d74b55566f3f209e67799916c4c51477b880873b2` |
| 50 | `theorem` | [extend_trans_of_half_le](../../../../GeneralTopology/PathPublic.lean/declarations/extend-trans-of-half-le.md) | 315 | `result-track:63a79a14473ce56d5cb89c96be90c654289565b74ad39659a530692b4175baad` |
| 51 | `theorem` | [refl_trans_refl](../../../../GeneralTopology/PathPublic.lean/declarations/refl-trans-refl.md) | 323 | `result-track:e2df5e1cd7bd5d850daf035417d60271392ba74dbb81ab331e552e273b8f1cb9` |
| 52 | `theorem` | [trans_range](../../../../GeneralTopology/PathPublic.lean/declarations/trans-range.md) | 328 | `result-track:d2c9b3c6a986380188eb9ddb56b051b841e73585caf142994529008e34d869f8` |
| 53 | `def` | [map'](../../../../GeneralTopology/PathPublic.lean/declarations/map-source-edition-2.md) | 338 | `declaration-track:65e69a431d64cc24830dd1fa1733627b61f0bea52a333a16aa9daf36fc3cf330` |
| 54 | `def` | [map](../../../../GeneralTopology/PathPublic.lean/declarations/map.md) | 345 | `declaration-track:4d2d44300dc9fa107cfd952451b82ae0517c247b017da344302684a1291e1304` |
| 55 | `theorem` | [map_coe](../../../../GeneralTopology/PathPublic.lean/declarations/map-coe.md) | 349 | `result-track:19b698ffb7b338989c5da18817ecf8f4858fc7db266b13e8d6c441734ce540c6` |
| 56 | `theorem` | [map_symm](../../../../GeneralTopology/PathPublic.lean/declarations/map-symm.md) | 355 | `result-track:0e7fb2b2cc0c2d3630faf094bdcc1f2ed4ca1e366c7e92b21e48e115a96cab2c` |
| 57 | `theorem` | [map_trans](../../../../GeneralTopology/PathPublic.lean/declarations/map-trans.md) | 360 | `result-track:a8d574e0736e27f54faa5875118d30c952b9fa745333e49fecda2598efe97b8b` |
| 58 | `theorem` | [map_id](../../../../GeneralTopology/PathPublic.lean/declarations/map-id.md) | 367 | `result-track:e6fd3c5d0d4aef68badfa1d3311e2e0af861bc5350d51bca9eb09dc2de43360c` |
| 59 | `theorem` | [map_map](../../../../GeneralTopology/PathPublic.lean/declarations/map-map.md) | 372 | `result-track:4e7b45fc674db6a0066e17943283e7c0f45dc7a95de444e384398205d4a03828` |
| 60 | `def` | [cast](../../../../GeneralTopology/PathPublic.lean/declarations/cast.md) | 379 | `declaration-track:f3fa9866310449e5b60a079251d260a7aebd6abb27f9f09b086ee71c257bbb42` |
| 61 | `theorem` | [cast_rfl_rfl](../../../../GeneralTopology/PathPublic.lean/declarations/cast-rfl-rfl.md) | 385 | `result-track:87708542af6c81a935e099d8d7f4de3423625b82aa093a6f73940fe8843b3861` |
| 62 | `theorem` | [cast_symm](../../../../GeneralTopology/PathPublic.lean/declarations/cast-symm.md) | 388 | `result-track:b34c8ff65525dfe41fb2371981a86de761b2583c8d5d690f63d4c41fb82ff238` |
| 63 | `theorem` | [cast_trans](../../../../GeneralTopology/PathPublic.lean/declarations/cast-trans.md) | 393 | `result-track:893505b514a1643eca06b6f6074b5e0ec972351a750d99bfbed3adfc83662f49` |
| 64 | `theorem` | [extend_cast](../../../../GeneralTopology/PathPublic.lean/declarations/extend-cast.md) | 399 | `result-track:f7fa6956340fb7162616cd4785fef76457e44af12630115e4788ddee3cf458d5` |
| 65 | `theorem` | [cast_coe](../../../../GeneralTopology/PathPublic.lean/declarations/cast-coe.md) | 403 | `result-track:762a40adf4be53ab04a4f63ba3697081c4cfb8239d7e8e83ed2b82bc17940117` |
| 66 | `lemma` | [bijective_cast](../../../../GeneralTopology/PathPublic.lean/declarations/bijective-cast.md) | 406 | `result-track:ec565d7586cee169ae5c5019c011ab05b62f131cbb52e27daed28428eda2c629` |
| 67 | `lemma` | [exists_congr](../../../../GeneralTopology/PathPublic.lean/declarations/exists-congr.md) | 410 | `result-track:b46dfdb3947ab7606b0972f7f80b75343d2b4b74f676fb7d012f6b3ff2ccd446` |
| 68 | `theorem` | [symm_continuous_family](../../../../GeneralTopology/PathPublic.lean/declarations/symm-continuous-family.md) | 416 | `result-track:d49fc909bf8be943186113db048a52047bcd726505ca6111eaa6ce254988f064` |
| 69 | `theorem` | [continuous_symm](../../../../GeneralTopology/PathPublic.lean/declarations/continuous-symm.md) | 422 | `result-track:da9aee90a95743d6aaf7eafd859ef07b8d374d9f50fd741a44a65a4ad7dea8f6` |
| 70 | `theorem` | [continuous_uncurry_extend_of_continuous_family](../../../../GeneralTopology/PathPublic.lean/declarations/continuous-uncurry-extend-of-continuous-family.md) | 426 | `result-track:7186ab9e4d8fa42353fd605f7f0f904f6f52085808d54dbc524bda76db7c0913` |
| 71 | `theorem` | [trans_continuous_family](../../../../GeneralTopology/PathPublic.lean/declarations/trans-continuous-family.md) | 433 | `result-track:918237238c9f32a2da0e9c36e7bedad08959e084fdf8e33e7b37292f5be2d148` |
| 72 | `theorem` | [_root_.Continuous.path_trans](../../../../GeneralTopology/PathPublic.lean/declarations/root-continuous-path-trans.md) | 451 | `result-track:406babbe1de492e69c0592a1af7ef5c161c3645123d63541741fa12978043819` |
| 73 | `theorem` | [continuous_trans](../../../../GeneralTopology/PathPublic.lean/declarations/continuous-trans.md) | 458 | `result-track:b1ac411d2fc953ac00aa2df8f2ba4b519ba8ad4d844abef6d93507a421627f09` |
| 74 | `def` | [prod](../../../../GeneralTopology/PathPublic.lean/declarations/prod.md) | 469 | `declaration-track:abf39be5980ffd560747b4685f0555674bd2c21f7f1b0ce2b705e0fff8dbf573` |
| 75 | `theorem` | [prod_coe](../../../../GeneralTopology/PathPublic.lean/declarations/prod-coe.md) | 475 | `result-track:76561efc158b5ac4e46f99ac185174f77fb10d17f179e4319c3a61e7c010efea` |
| 76 | `theorem` | [trans_prod_eq_prod_trans](../../../../GeneralTopology/PathPublic.lean/declarations/trans-prod-eq-prod-trans.md) | 480 | `result-track:5201919383be77ce540b8a4c8e63851b68af2473da98a1e2f6c42cd944ed0134` |
| 77 | `def` | [pi](../../../../GeneralTopology/PathPublic.lean/declarations/pi.md) | 492 | `declaration-track:229ed93bb6fae2c3437cd381c2ce3d53b3392c0db27568824aaa0d7249492412` |
| 78 | `theorem` | [pi_coe](../../../../GeneralTopology/PathPublic.lean/declarations/pi-coe.md) | 498 | `result-track:a50d1acdd92fb27d176fb11ff8b8df2a7e86f75978cf29538185bc0396afd75c` |
| 79 | `theorem` | [trans_pi_eq_pi_trans](../../../../GeneralTopology/PathPublic.lean/declarations/trans-pi-eq-pi-trans.md) | 502 | `result-track:4b3995c2a30a91998f33a90c57359f0b1548d10913022786aef3768110655541` |
| 80 | `def` | [mul](../../../../GeneralTopology/PathPublic.lean/declarations/mul.md) | 518 | `declaration-track:1d97609d6e457d437158069461d79b4398c952d8f8b807739a036c940f527967` |
| 81 | `def` | [inv](../../../../GeneralTopology/PathPublic.lean/declarations/inv.md) | 524 | `declaration-track:1a97ac2a589b8e6571ab982231a09e6a6111d3a6b04b5b270a298c24b79af0a0` |
| 82 | `def` | [truncate](../../../../GeneralTopology/PathPublic.lean/declarations/truncate.md) | 533 | `declaration-track:5d2b67c9b401218e20d809af7f339a8fd8e2d1b22cf9300aaedee84d6b7fbc47` |
| 83 | `def` | [truncateOfLE](../../../../GeneralTopology/PathPublic.lean/declarations/truncateofle.md) | 557 | `declaration-track:028252767d29eb94eaac5b3e176219cb30a8a3457f4fc8a57ebed5e0d225ba2b` |
| 84 | `theorem` | [truncate_range](../../../../GeneralTopology/PathPublic.lean/declarations/truncate-range.md) | 561 | `result-track:60b6322e13597cbe9f231cb5db3ca84f5c91a3672a0c189646df132635001e83` |
| 85 | `theorem` | [truncate_continuous_family](../../../../GeneralTopology/PathPublic.lean/declarations/truncate-continuous-family.md) | 571 | `result-track:7569a6184fbf0068617673e1eed28147e50d927702b32a09d83b6a2bdafa4b40` |
| 86 | `theorem` | [truncate_const_continuous_family](../../../../GeneralTopology/PathPublic.lean/declarations/truncate-const-continuous-family.md) | 578 | `result-track:09bfed605db859dd0528ea14aa7f661745b43cc34a792500cdc52be63b1d00c5` |
| 87 | `theorem` | [truncate_self](../../../../GeneralTopology/PathPublic.lean/declarations/truncate-self.md) | 584 | `result-track:32627db595f9bdd9e81daf2022662e8a8b96e8833c6a56f6f7d61b90051688b5` |
| 88 | `theorem` | [truncate_zero_zero](../../../../GeneralTopology/PathPublic.lean/declarations/truncate-zero-zero.md) | 589 | `result-track:d1c764027d5bd155601d4b75c9a2b9524116413e120126fe899eb0b6a9b6e16c` |
| 89 | `theorem` | [truncate_one_one](../../../../GeneralTopology/PathPublic.lean/declarations/truncate-one-one.md) | 593 | `result-track:3fd3c22df6f3c3a3c3a888f39e730a46653a5390326c6f6cf016cbf00af4b744` |
| 90 | `theorem` | [truncate_zero_one](../../../../GeneralTopology/PathPublic.lean/declarations/truncate-zero-one.md) | 598 | `result-track:e7b9b15a4799843511cebf241acbc8df1f336e149056af88fd265e471d2fb0fe` |
| 91 | `def` | [reparam](../../../../GeneralTopology/PathPublic.lean/declarations/reparam.md) | 611 | `declaration-track:cfeea332a017d5958ee90dc008f0043e5e2654f6aa9fdaca61519181a061e246` |
| 92 | `theorem` | [coe_reparam](../../../../GeneralTopology/PathPublic.lean/declarations/coe-reparam.md) | 619 | `result-track:a1925fd10dee4b1c2dd2163384d213b7e1183935d70c694f0026fbda9b17e5d2` |
| 93 | `theorem` | [reparam_id](../../../../GeneralTopology/PathPublic.lean/declarations/reparam-id.md) | 624 | `result-track:3fc045128ddd6fb0458f500af60576c41631886360e4caa0bd534dbcbbf8d388` |
| 94 | `theorem` | [range_reparam](../../../../GeneralTopology/PathPublic.lean/declarations/range-reparam.md) | 628 | `result-track:4b48440ed56b695165d29c4a3b72ff891139c07ca082ed308c13deb5f4ad2f4f` |
| 95 | `theorem` | [refl_reparam](../../../../GeneralTopology/PathPublic.lean/declarations/refl-reparam.md) | 642 | `result-track:9e35e14553c810b661ee3ce83b92674cd92954055a4c77ab996c430f63c76794` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8506cf853257257e9faae3a3ae4047441f0183ad7ec86869fe2e537601b00645 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Path/Variant91c8fa5452d85bc35258afd61de0b694e82ae483d35d9257b599ce7eaddab038.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Path/Variant91c8fa5452d85bc35258afd61de0b694e82ae483d35d9257b599ce7eaddab038.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
