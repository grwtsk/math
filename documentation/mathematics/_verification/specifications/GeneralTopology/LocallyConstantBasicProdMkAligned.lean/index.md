# Verification target: Locally Constant Basic Prod Mk Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b86aa213913f66461368b6e1466a3e40aad5b864",
  "lexical_observation_count": 86,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant103e05a7c0d98164c903668a7522bcf28c8e8af3de52ece97b49ce576f9a8ff3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/index.md) · [Full source](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b86aa213913f66461368b6e1466a3e40aad5b864`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant103e05a7c0d98164c903668a7522bcf28c8e8af3de52ece97b49ce576f9a8ff3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant103e05a7c0d98164c903668a7522bcf28c8e8af3de52ece97b49ce576f9a8ff3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.SubsetProperties` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Connected` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousFunction.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.IndicatorFunction` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TFAE` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsLocallyConstant](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/islocallyconstant.md) | 38 | `declaration-track:397f108e0f328663d0a20cf47be538dcb6ec0a36936c08e749f457b70401f32d` |
| 2 | `theorem` | [tfae](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/tfae.md) | 45 | `result-track:87d3a4a5cea7c2fd7a9a6cc089601c7f5861d30f351b0f1f729c207b0a6feded` |
| 3 | `theorem` | [of_discrete](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/of-discrete.md) | 67 | `result-track:cd0b5f93fc25bebec6a7e355efca995d25f5be6bc447213afbaedae29d98183f` |
| 4 | `theorem` | [isOpen_fiber](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/isopen-fiber.md) | 71 | `result-track:d81aaac400b5d53ca136cf8bd1a106439184666288c2296c88a5f37e6ef6120c` |
| 5 | `theorem` | [isClosed_fiber](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/isclosed-fiber.md) | 75 | `result-track:7294492fbde7c923bcb14682bf04e4816c52cfe62dcbb126439e61db2236e66a` |
| 6 | `theorem` | [isClopen_fiber](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/isclopen-fiber.md) | 79 | `result-track:e944ca39dc4585ea0753e7f91d7d94232d9a4e10d9b65829a802dc560682d255` |
| 7 | `theorem` | [iff_exists_open](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/iff-exists-open.md) | 83 | `result-track:9764f037f83392cb59b03b4ca28acd07796812b5415fb4ce701257b3d88c2c09` |
| 8 | `theorem` | [iff_eventually_eq](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/iff-eventually-eq.md) | 88 | `result-track:7e96b7600517bc6233374868e87d2a1a19bbc9bb2980a5c2c398119dd4c8db59` |
| 9 | `theorem` | [exists_open](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/exists-open.md) | 92 | `result-track:c68edc6b0008d2c0af814c6d1a9267fd4fb5cc0e67825f6fbe5460b06f6db3bd` |
| 10 | `theorem` | [eventually_eq](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/eventually-eq.md) | 97 | `result-track:8aeb9b404661d204a11d08bd83f114107fe249544df0305b91927ced93451330` |
| 11 | `theorem` | [iff_isOpen_fiber_apply](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/iff-isopen-fiber-apply.md) | 103 | `result-track:f00416d0d4f19193bbd222ea26cfb8a58fb4e1b0ee47fa4c61a2f3c8f330b9b6` |
| 12 | `theorem` | [iff_isOpen_fiber](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/iff-isopen-fiber.md) | 107 | `result-track:dfe5ab86ab6c9916d6552b2e83aff0992113181d36e790d95746073bf17b6d48` |
| 13 | `theorem` | [continuous](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/continuous.md) | 110 | `result-track:24dbfbb3d0417eb93fcd370837d35e099bb816ac48723cbf05073a5cfdc0c8ce` |
| 14 | `theorem` | [iff_continuous](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/iff-continuous.md) | 115 | `result-track:e59a0c73a5dc5d440b92f314a4fce3ed1a3d57821ed94eb2de0262c60c19203e` |
| 15 | `theorem` | [of_constant](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/of-constant.md) | 120 | `result-track:100976a76078bb2ac2ded7821bf2c7e1b65645e0c317e2abafbb92fcc276520f` |
| 16 | `theorem` | [const](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/const.md) | 124 | `result-track:084f9d6e15a1ce112b96e45104f2e4d182133adcc7d3ed37252e1822f7c1c2ea` |
| 17 | `theorem` | [comp](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/comp-source-edition-2.md) | 128 | `result-track:d93fa529ead42523afca16da2ec99533b4fca30bbffc6966997334f8e38ba5ab` |
| 18 | `theorem` | [prod_mk](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/prod-mk.md) | 134 | `result-track:ec133b6140fb608b721ed51907e1bc3770b3a1749ea7b4ff0c87079fab9ad94a` |
| 19 | `theorem` | [comp₂](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/comp.md) | 140 | `result-track:ca16e466ae8ddf4e60682097aaa13deaeeecd900dea8717a221c530c93cd8715` |
| 20 | `theorem` | [comp_continuous](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/comp-continuous.md) | 145 | `result-track:8d6f9a5405a6fc43adca0a4834f2df11e95f155e1a448bf5235ad9f3bc7a7117` |
| 21 | `theorem` | [apply_eq_of_isPreconnected](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/apply-eq-of-ispreconnected-source-edition-2.md) | 152 | `result-track:6fba5b76c7b76766da43d379475132305f2012b9779ea8228b6830df7a57fb58` |
| 22 | `theorem` | [apply_eq_of_preconnectedSpace](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/apply-eq-of-preconnectedspace.md) | 162 | `result-track:abb72b36986659a0795555ea9991771be1e1e2c017c2a027c7aa1d26373805fe` |
| 23 | `theorem` | [eq_const](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/eq-const.md) | 167 | `result-track:015b70133b99613ddd45f1bb2f6bc60bc719b366860fb0c6d4b46d986367acf0` |
| 24 | `theorem` | [exists_eq_const](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/exists-eq-const-source-edition-2.md) | 172 | `result-track:75cb8590ffd4ee3ded7dd45a618b9b49a8e1fe1b9b95bdc611aaa29a44f9dcda` |
| 25 | `theorem` | [iff_is_const](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/iff-is-const.md) | 179 | `result-track:c9214e059b928dc3db9cfff5b956535cde3e8b0a02e4c68e5baaa3d53de03612` |
| 26 | `theorem` | [range_finite](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/range-finite.md) | 183 | `result-track:353acb76606c0e6a17710840cbfb1d1a2174aba28f3e27b47fdd9f2606395ab8` |
| 27 | `theorem` | [one](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/one.md) | 190 | `result-track:73b56a097c995db84197cd89f806b768e1d8d47826577b3bf34b26753adf0e7b` |
| 28 | `theorem` | [inv](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/inv.md) | 195 | `result-track:74ace68aeaef68e8c2e10c79aafca82d08164d04e83dd6d4e0523c95585fc7cc` |
| 29 | `theorem` | [mul](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/mul.md) | 201 | `result-track:830183dd4d934e690a699ad6193e05601ccd2b3a6fabfef4c2fe7e4d69f1eba1` |
| 30 | `theorem` | [div](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/div.md) | 208 | `result-track:623d3d296a0b8680058545bb8cb2cc8b8b83f4b3c6e7d57b7e2582d88385ff17` |
| 31 | `theorem` | [desc](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/desc.md) | 216 | `result-track:25db64baadc44c212ab3eb2ad639266bf4647e39481a0828f377aed7d443a1f0` |
| 32 | `theorem` | [of_constant_on_connected_components](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/of-constant-on-connected-components.md) | 222 | `result-track:8d554e1c10035ba25e8a545b90f255539522f4e09aac67d3e274460800b6ec33` |
| 33 | `theorem` | [of_constant_on_connected_clopens](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/of-constant-on-connected-clopens.md) | 228 | `result-track:dafecbc54bddad748cf0c40f08231a991ceda6b0317e61781a09bc28741fd8e8` |
| 34 | `theorem` | [of_constant_on_preconnected_clopens](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/of-constant-on-preconnected-clopens.md) | 235 | `result-track:a4d2af0179b38ee63b2f5432d84d6abf0378d0ee6ddb73a5a5f782b4f94720c5` |
| 35 | `structure` | [LocallyConstant](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/locallyconstant.md) | 244 | `declaration-track:1ea8b9451e6d9fa3437b09a603d3776b184eeec26b69a82673a75677c6c284e6` |
| 36 | `instance` | [(anonymous)](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/instance-source-edition-3.md) | 253 | `declaration-track:7adeb1d18287812858e54ecdd719c71b6f11e1b08abd45dfd5fc20499f7ab733` |
| 37 | `instance` | [(anonymous)](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/instance.md) | 256 | `declaration-track:4b2f7dcfefe01687d50a732adc7e3ed15847b277591ddb432dd724b05a6fd833` |
| 38 | `def` | [Simps.apply](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/simps-apply.md) | 261 | `declaration-track:a114191e905ac2db35ef91f7be7d542ee68601c8c84225b2c3daa976a27bb622` |
| 39 | `theorem` | [toFun_eq_coe](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/tofun-eq-coe.md) | 266 | `result-track:7138fba3ed47696b08ad464a5554a42e7928cee5f89d896e0f40746d1c864ffb` |
| 40 | `theorem` | [coe_mk](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/coe-mk.md) | 271 | `result-track:64bafeef4a1cc083c3934aa14f56af95df110e39615af0352d574c0ebc69c90b` |
| 41 | `theorem` | [congr_fun](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/congr-fun.md) | 275 | `result-track:2f53301ad5db5d71a4c388af2dfc284807ab4d0312b0669aa0a85123f99e31e2` |
| 42 | `theorem` | [congr_arg](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/congr-arg.md) | 279 | `result-track:caace71c592536127f118cc3cc21b92168ed677d294f855a61ea06cf8702f2ef` |
| 43 | `theorem` | [coe_injective](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/coe-injective.md) | 283 | `result-track:0a330c81737e0395e719a89ad10dd9747460ba0b773f97c3a52b04aad1cf764e` |
| 44 | `theorem` | [coe_inj](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/coe-inj.md) | 288 | `result-track:b27d3426ae0d0e660ec7804fd8a7595b5e31a0dc53561514df522c5aa0792c76` |
| 45 | `theorem` | [ext](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/ext.md) | 293 | `result-track:a896c50f790c66824edf36d39e64f00b01406622540adca1345cb0e716ccd2cf` |
| 46 | `theorem` | [ext_iff](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/ext-iff.md) | 297 | `result-track:adbf58f2a331bd8c3fed436e101cd1a715b2030a42330b8c0f39a2ad2f824076` |
| 47 | `theorem` | [continuous](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/continuous-source-edition-2.md) | 304 | `result-track:2dcb91ed7fdab727b93970423fcf3ec7c5e235117dfad9e43469b132705c4c08` |
| 48 | `def` | [toContinuousMap](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/tocontinuousmap.md) | 309 | `declaration-track:a8789ec265ef4d64aaf9dff5a5ab9ca2644e0be0170c7d96a3af6e6e8f35ad4f` |
| 49 | `instance` | [(anonymous)](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/instance-source-edition-2.md) | 314 | `declaration-track:67fbb9e80af014b29345a1ab9fcc90391bf98b271bcb5c52fa0fef5249146415` |
| 50 | `theorem` | [coe_continuousMap](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/coe-continuousmap.md) | 319 | `result-track:efbf7369b96698f77dafaac37a731e7eb8df99b9a8753a8220ebf0a0f30f6ef4` |
| 51 | `theorem` | [toContinuousMap_injective](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/tocontinuousmap-injective.md) | 322 | `result-track:e9cf5397c25724f83d2e88b580067cdd21b0de54ea9ae39e7756fb0b1f1abc2f` |
| 52 | `def` | [const](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/const-source-edition-2.md) | 330 | `declaration-track:5877dff3a470c21bd993274dcd2dc1e87cc0a54cd735559612f65daff5a04573` |
| 53 | `theorem` | [coe_const](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/coe-const.md) | 335 | `result-track:5091e9e97940f5e55d391c133429f5190f37306a729c9ced447788b5998256ba` |
| 54 | `def` | [ofClopen](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/ofclopen.md) | 340 | `declaration-track:366c8b23de93b11e5536087ba7e6ddec77a4e2869084ed4269650a6db28e1292` |
| 55 | `theorem` | [ofClopen_fiber_zero](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/ofclopen-fiber-zero.md) | 357 | `result-track:0c803b571995887ae55c76dfaac3c79ef9f00876286ded636f316eebddf1c177` |
| 56 | `theorem` | [ofClopen_fiber_one](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/ofclopen-fiber-one.md) | 366 | `result-track:f8be4ab60e79aa151b38ffb22f35b5b0c583703833a5fa8e1f4bdec51116508d` |
| 57 | `theorem` | [locallyConstant_eq_of_fiber_zero_eq](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/locallyconstant-eq-of-fiber-zero-eq.md) | 373 | `result-track:8c0ac9dcf7662e376b7a05fa7c27eafc1cecf4f8fd4ccf7b79a418adfeea54cf` |
| 58 | `theorem` | [range_finite](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/range-finite-source-edition-2.md) | 380 | `result-track:f32436d58090b52fea5d8a941d471f092d84a9ed54657e885c0a9b08e9c70a0e` |
| 59 | `theorem` | [apply_eq_of_isPreconnected](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/apply-eq-of-ispreconnected.md) | 384 | `result-track:0a8c4b9a8475496519322f2e2c2a9566a6e3c59e4e398fb5f2647100d9350355` |
| 60 | `theorem` | [apply_eq_of_preconnectedSpace](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/apply-eq-of-preconnectedspace-source-edition-2.md) | 389 | `result-track:dbac9729465af2984d9118503782ce728ba38339019878450790198a4aae2e91` |
| 61 | `theorem` | [eq_const](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/eq-const-source-edition-2.md) | 394 | `result-track:19e7e79fad8d9786dbd39294795c8043f593d2ee2626c1199a07fa882999f2ca` |
| 62 | `theorem` | [exists_eq_const](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/exists-eq-const.md) | 398 | `result-track:0978976551bd6e32b909edf83a48c79318717b468bf2474de4f1ba513bd6bb60` |
| 63 | `def` | [map](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/map.md) | 406 | `declaration-track:6400de6790fe43af4169aa6e4c21708431d0bed64fd4c79cee4887a8f7251b7c` |
| 64 | `theorem` | [map_apply](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/map-apply.md) | 411 | `result-track:3d813bf6f155a4f09b19459e2ba3fdb96c2a24188d9dd7f5d2538027c730376c` |
| 65 | `theorem` | [map_id](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/map-id.md) | 416 | `result-track:fdb98fbbfd2a9eb14428ad031350babab8b643a59213518fe1b053353d1886f0` |
| 66 | `theorem` | [map_comp](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/map-comp.md) | 420 | `result-track:fde124123c2ae558fd137678b832e7e3a635f2abc57a259ac8a41e681edbc3d5` |
| 67 | `def` | [flip](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/flip.md) | 426 | `declaration-track:8b0117a534c3cb80a0d7520c314da09b4c184468472acfa654afcbb94f08c2a3` |
| 68 | `def` | [unflip](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/unflip.md) | 433 | `declaration-track:d32c62fbd85f6bf99b8777f3536f7e509656127d43dac52eb6ba8d1f03d26348` |
| 69 | `theorem` | [unflip_flip](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/unflip-flip.md) | 444 | `result-track:264ec08955a9ca998db454c67b1c6b95da3ad79d94535edf63d8a4464160b7a9` |
| 70 | `theorem` | [flip_unflip](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/flip-unflip.md) | 449 | `result-track:71f159de170166c4d4d95e0e2317aa57c69ab2187648b9fb9ac836321d9e4be9` |
| 71 | `def` | [comap](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/comap.md) | 466 | `declaration-track:9d89500d69941b25f501ad131ad3a7729813114a368abecaa64483085a8e32a5` |
| 72 | `theorem` | [coe_comap](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/coe-comap.md) | 479 | `result-track:c05177b13f48bb3a4809cfbd4014c0ef40a2f9af9f06534ec5142148e05f9cd2` |
| 73 | `theorem` | [coe_comap_apply](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/coe-comap-apply.md) | 485 | `result-track:5a2f9dc55d2da7dacd868d5e455a8306d9cca5b627e76ef63072d90b10895ac3` |
| 74 | `theorem` | [comap_id](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/comap-id.md) | 490 | `result-track:2c0dc10f5ba1ae1053a49905fed9aee69f58c6ba9bfd1350adb94772d22f2815` |
| 75 | `theorem` | [comap_comp](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/comap-comp.md) | 495 | `result-track:8748f8286d4233e071d566e92a3eb9058ba187a7ecf567865012fd66d9363bc4` |
| 76 | `theorem` | [comap_comap](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/comap-comap.md) | 502 | `result-track:d1c39d48428dc2d6d0c427ad5fcc549e1d8fa16540b61e301abd3d15e376eefb` |
| 77 | `theorem` | [comap_const](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/comap-const.md) | 507 | `result-track:93d7923a9848bb776cecbed82cf367519afd32de8f62e28cdd3b4449f79033be` |
| 78 | `lemma` | [comap_injective](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/comap-injective.md) | 515 | `result-track:338f118b748b84dd9d2cdea1f3d19f77ff7cf2703a31c07b381f6e3ea5878185` |
| 79 | `def` | [desc](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/desc-source-edition-2.md) | 530 | `declaration-track:414b36efdd1c2159f18327aee6843728f06f42a4bf750ed534a57d0c2483a9be` |
| 80 | `theorem` | [coe_desc](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/coe-desc.md) | 537 | `result-track:fce1df852009d561690d7900de28acf46406000021634c5906bb4ddf9e22accd` |
| 81 | `def` | [mulIndicator](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/mulindicator.md) | 556 | `declaration-track:074ffa7b011c0f20dc60375be954dd9a2acdb31d69ace5d33c5df8de691b5f6a` |
| 82 | `theorem` | [mulIndicator_apply_eq_if](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/mulindicator-apply-eq-if.md) | 567 | `result-track:217263754bcbad5dbf9e3d7feadcd56b86d73e5bb8ba35d800769f671f058156` |
| 83 | `theorem` | [mulIndicator_of_mem](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/mulindicator-of-mem.md) | 576 | `result-track:735f1321a1bc9de996cb874d72eb32241305cf2f1c9b29cd06e354a90ca615b8` |
| 84 | `theorem` | [mulIndicator_of_not_mem](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/mulindicator-of-not-mem.md) | 582 | `result-track:1651afc7c44fa61ea1016ace3bf34542aa4b33b826055ca489a804f6c63df351` |
| 85 | `def` | [congrLeft](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/congrleft.md) | 595 | `declaration-track:92724234e6416109292bc55e231ac1f3c1658cfed7ec8bd5f2b7264a7d4ce3e2` |
| 86 | `def` | [piecewise](../../../../GeneralTopology/LocallyConstantBasicProdMkAligned.lean/declarations/piecewise.md) | 614 | `declaration-track:6198201a827b41d4eb1df09427bfafd4e28203ee27c5a0788102077904c67f57` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=194361b654227a33210492b4793b13c154221ad642e63d44a73d828783ee62bc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant103e05a7c0d98164c903668a7522bcf28c8e8af3de52ece97b49ce576f9a8ff3.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant103e05a7c0d98164c903668a7522bcf28c8e8af3de52ece97b49ce576f9a8ff3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
