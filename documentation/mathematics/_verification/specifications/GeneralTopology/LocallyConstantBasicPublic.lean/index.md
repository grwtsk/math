# Verification target: Locally Constant Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c88ed9b2513c3803ff5790b101aa60ec1ef4fe29",
  "lexical_observation_count": 93,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant57c005cec05118edbe54ea3efcc389823258026774226e9f93ff3c862adf5ddf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/index.md) · [Full source](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c88ed9b2513c3803ff5790b101aa60ec1ef4fe29`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant57c005cec05118edbe54ea3efcc389823258026774226e9f93ff3c862adf5ddf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant57c005cec05118edbe54ea3efcc389823258026774226e9f93ff3c862adf5ddf.lean.json)

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
| 1 | `def` | [IsLocallyConstant](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/islocallyconstant.md) | 34 | `declaration-track:52342da066e54a7e88b4f0b34093c7045c4b08894e43afae26ce2b7a69eff593` |
| 2 | `theorem` | [tfae](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/tfae.md) | 40 | `result-track:39dad0971ac669bf91cd8a44a721e12535445c3dc32dedea97e1af64816669ea` |
| 3 | `theorem` | [of_discrete](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/of-discrete.md) | 61 | `result-track:3c554ff30f3df97404b3b6675c92d0858a35cc9b360736f64d1a2b0ad0143b18` |
| 4 | `theorem` | [isOpen_fiber](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/isopen-fiber.md) | 64 | `result-track:effbd0b84b8ae802ca8c6c4020b636eedf11cb9548415ed1dfd50034c59326be` |
| 5 | `theorem` | [isClosed_fiber](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/isclosed-fiber.md) | 67 | `result-track:0a56396a3b2a38d73080ecfcc7d4c47968d234a12d6b355b6b8bc5837c8140fa` |
| 6 | `theorem` | [isClopen_fiber](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/isclopen-fiber.md) | 70 | `result-track:b84e5669d6387956f739e3f2553e8ccee5ee4222b56a6620490b3992ffe6754d` |
| 7 | `theorem` | [iff_exists_open](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/iff-exists-open.md) | 73 | `result-track:ae3b353a260eef8ff4e9a49dfcc95b73bb70e34594341989ec0efea39aa792fa` |
| 8 | `theorem` | [iff_eventually_eq](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/iff-eventually-eq.md) | 77 | `result-track:9937c5ea7f81ceb3005b8fc1fa1325561c0b78c17801f2201757917e60490891` |
| 9 | `theorem` | [exists_open](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/exists-open.md) | 80 | `result-track:4c1d90b9dac546c3e6a824fb89f995cbedfb7955a6d2c12f6ec087febd4022b6` |
| 10 | `theorem` | [eventually_eq](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/eventually-eq.md) | 84 | `result-track:7fcc7b741687cb8cfe53d3b6f509c77d18e63f205834da6ee37f9f9943e1b10c` |
| 11 | `theorem` | [iff_isOpen_fiber_apply](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/iff-isopen-fiber-apply.md) | 88 | `result-track:10351eb635b55ed53a10164a5cda572ffa5bf996df957faf83cff045758be86f` |
| 12 | `theorem` | [iff_isOpen_fiber](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/iff-isopen-fiber.md) | 91 | `result-track:614d5b0bf137c0bef29fbad6ae20eae24e307096fa841fb4a93061c2db647f8b` |
| 13 | `theorem` | [continuous](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/continuous.md) | 94 | `result-track:0fa7b1acb165fb70b51eee5e3efd5752ad1909a436853f5ceb1a6515f44f4910` |
| 14 | `theorem` | [iff_continuous](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/iff-continuous.md) | 98 | `result-track:8691268c488caeb5e389a81973e2bf1444178bf60490fb5d87fff7fda98d1019` |
| 15 | `theorem` | [of_constant](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/of-constant.md) | 102 | `result-track:3aa2481161798cf2519e6df1921caeb05f9f3bdb318720b5e11b279387b8af63` |
| 16 | `theorem` | [const](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/const-source-edition-2.md) | 105 | `result-track:452a7093dc6fab3da98e901ec6760fe8e2f137e9ae8647a627055ef4b6122d39` |
| 17 | `theorem` | [comp](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/comp-source-edition-2.md) | 108 | `result-track:a3efc75f74c06067baeb3ba973356988c53897e9ba99086f203ce4c2d893f748` |
| 18 | `theorem` | [prodMk](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/prodmk.md) | 113 | `result-track:c63817f9a96969a6cfb2eee83f438209d2215d574070309a210cf5d8ef8f1343` |
| 19 | `theorem` | [comp₂](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/comp.md) | 118 | `result-track:4867384f6c984273245e83ddc0573e80b2a8fde2889708bd148af0d95a854062` |
| 20 | `theorem` | [comp_continuous](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/comp-continuous.md) | 122 | `result-track:37376de9c0c9040197e902e9ae5edfeff0ecc823a885aa54f9f7db8a817a9cb8` |
| 21 | `theorem` | [apply_eq_of_isPreconnected](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/apply-eq-of-ispreconnected.md) | 128 | `result-track:ac0362c19f8f548ec753c0d41c8d58a36b344619eae726baa73b7d4c97f86069` |
| 22 | `theorem` | [apply_eq_of_preconnectedSpace](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/apply-eq-of-preconnectedspace.md) | 137 | `result-track:2a8570e5deaae105bcb5da5b6e4a3fd9d077afd8f6dfdba12a4cb7406de489aa` |
| 23 | `theorem` | [eq_const](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/eq-const-source-edition-2.md) | 141 | `result-track:c3df6371b99f41a786644dd9561d1062ac8c39771f49c3838c726ce8ca980566` |
| 24 | `theorem` | [exists_eq_const](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/exists-eq-const.md) | 145 | `result-track:49667c5b52c6cdf7f3d56312662fab168137689562d5c2dcfd2ea1a003542413` |
| 25 | `theorem` | [iff_is_const](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/iff-is-const.md) | 151 | `result-track:88fe997256792197d5809bd29a80331f20acbd7cc915937abb1070db7b5b8958` |
| 26 | `theorem` | [range_finite](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/range-finite-source-edition-2.md) | 154 | `result-track:aea86eece73b4c9cd9efc67a61ba77ed21f661d198b3845b4106230496063b7b` |
| 27 | `theorem` | [one](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/one.md) | 160 | `result-track:88d67b65d930f651ff8591f603cbe2e69d3520c033a3164e3af020f4cdc72cdc` |
| 28 | `theorem` | [inv](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/inv.md) | 163 | `result-track:afefec7fc516d62c0630e8fb006dda5684c6d73493b03b855b703dc56a832828` |
| 29 | `theorem` | [mul](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/mul.md) | 167 | `result-track:c65d66fc97ea1e1f8aba5b37905a999fdaa37c6907ee1e839fd7fc31a32fa679` |
| 30 | `theorem` | [div](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/div.md) | 172 | `result-track:e61131aff7932856dea0fab243a1984fcc641ce6d48b4d5de0c74aecfdd3f3b9` |
| 31 | `theorem` | [desc](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/desc-source-edition-2.md) | 178 | `result-track:f7809297eca997c8a253da07134790bbe93e12fe1734127ef91259faad522f56` |
| 32 | `theorem` | [of_constant_on_connected_components](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/of-constant-on-connected-components.md) | 183 | `result-track:c882a6a49246b927ad8743d938faf1d02d0fc1dfa325fc5b96b2e60965454426` |
| 33 | `theorem` | [of_constant_on_connected_clopens](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/of-constant-on-connected-clopens.md) | 188 | `result-track:6f0fb0a6d8cf143eafb3f2f1f5c72c609048e3ca1c1ecb10097a5b90b0c24f7d` |
| 34 | `theorem` | [of_constant_on_preconnected_clopens](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/of-constant-on-preconnected-clopens.md) | 195 | `result-track:6a08ac97954ba008dab20085a225b2b052578f7315083f3daa33fc5b40d33780` |
| 35 | `structure` | [LocallyConstant](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/locallyconstant.md) | 203 | `declaration-track:a63dfe8f8c4390867d9bbcbff2ddc478833dc5f6e033bc2c041d98ca79c1c20e` |
| 36 | `instance` | [(anonymous)](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/instance.md) | 211 | `declaration-track:517f10326d2d46df3ac95f1ccc99cf5c116f0b147d7f1af1058c492bd7fb52e3` |
| 37 | `instance` | [(anonymous)](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/instance-source-edition-3.md) | 215 | `declaration-track:8e9ca7c6e6c87e1affc91d0f9408ea73b524385dbcab7b9101f03b4eb9d4cef1` |
| 38 | `def` | [Simps.apply](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/simps-apply.md) | 220 | `declaration-track:bdf2da94ae64313c20392699bd43c284d0e342b6f78b0183f32852da12ef0f92` |
| 39 | `theorem` | [toFun_eq_coe](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/tofun-eq-coe.md) | 225 | `result-track:d7afd53577e942a2cc08fae81347bc163889e73a7661297bdbbed2dd468389d3` |
| 40 | `theorem` | [coe_mk](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/coe-mk.md) | 229 | `result-track:0fcba420164dcf7210288b8d0fad7442f9418d3876c673c4d21bac9f5dc902d0` |
| 41 | `theorem` | [congr_fun](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/congr-fun.md) | 232 | `result-track:b2b1f58e252796f8f54ba50662d270849b150b0ca279ebec2f4225152672f24d` |
| 42 | `theorem` | [congr_arg](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/congr-arg.md) | 235 | `result-track:f81e46b1392b36899e6183239fd9b5d58f4bb32cca609956b6280d667b5d27d2` |
| 43 | `theorem` | [coe_injective](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/coe-injective.md) | 238 | `result-track:56adedaf18c0ab326d3139ef8c8a87d15ec12c4f4d24c7e91edcf4652df654db` |
| 44 | `theorem` | [coe_inj](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/coe-inj.md) | 242 | `result-track:18cf94c178ecf9994bcc7ba5fee2a02c807645fbaa392e9e31a675eb3893d0ac` |
| 45 | `theorem` | [ext](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/ext.md) | 246 | `result-track:e53a1ea1488ba7dfaff5218d192c52b404522148fffd7dd791bd4a0fa32c59ef` |
| 46 | `theorem` | [continuous](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/continuous-source-edition-2.md) | 253 | `result-track:28b014caef73f5fe36afb53e98d275bc3f0779defdd9b5c4f2f282f894d31c3d` |
| 47 | `def` | [toContinuousMap](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/tocontinuousmap.md) | 257 | `declaration-track:a64a8e123dfc498589801fa7329a8858e89a767cb97b9a6ae309377d059546a1` |
| 48 | `instance` | [(anonymous)](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/instance-source-edition-2.md) | 261 | `declaration-track:7af37803dcabd8eea71995119889cc8acda8ff5c17ba85396afb31b0587c5516` |
| 49 | `theorem` | [coe_continuousMap](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/coe-continuousmap.md) | 263 | `result-track:eb36a4670b729297de9f0aee20b32de168481b26fe66d2a4a635d9a6e5379329` |
| 50 | `theorem` | [toContinuousMap_injective](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/tocontinuousmap-injective.md) | 265 | `result-track:320d4a2b4d40b7847ef34a4a5b8b36bc8b315c119991daff4357aa2f4acf6f6a` |
| 51 | `def` | [const](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/const.md) | 272 | `declaration-track:30ae18c8cff9283c252e85aeb1e08a35f7cea7e5799ca87c2032e35a48e7508c` |
| 52 | `theorem` | [coe_const](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/coe-const.md) | 276 | `result-track:291e998aff3d8ac6a2b064ef085f542bce2abc888f90b01bf8901ce2d3c70170` |
| 53 | `def` | [eval](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/eval.md) | 281 | `declaration-track:0c1fcece7bd81b4df755c847380171008d607f22f357185ae2fa982025e6a84b` |
| 54 | `def` | [ofIsClopen](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/ofisclopen.md) | 288 | `declaration-track:75ee4c62c595456b40deb29caaf5558932831273dca1b1d3cf50271bd849ad7c` |
| 55 | `theorem` | [ofIsClopen_fiber_zero](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/ofisclopen-fiber-zero.md) | 304 | `result-track:3cd7b74fa425163042b28d9675a162916b6b3d755ecd17290ef6ed8da9937fa2` |
| 56 | `theorem` | [ofIsClopen_fiber_one](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/ofisclopen-fiber-one.md) | 312 | `result-track:0de1829d15659ddf2333c6a1c3eee30e9874f398040753ea8ca2aa909e0f3d61` |
| 57 | `theorem` | [locallyConstant_eq_of_fiber_zero_eq](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/locallyconstant-eq-of-fiber-zero-eq.md) | 318 | `result-track:6a12253e22a7e7cf2c2ec75baa5a6c453029c87f344297f18fabbdf61ffd871c` |
| 58 | `theorem` | [range_finite](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/range-finite.md) | 324 | `result-track:34dfd75fd0c83101ce2770898a5bdb0b0c248adb39135a4d1634d627bce0e0ad` |
| 59 | `theorem` | [apply_eq_of_isPreconnected](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/apply-eq-of-ispreconnected-source-edition-2.md) | 327 | `result-track:de4cf7641e8770b92b65cb0f32e6733ab6a1bd49bc15cb929a80d3e26c2ab82e` |
| 60 | `theorem` | [apply_eq_of_preconnectedSpace](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/apply-eq-of-preconnectedspace-source-edition-2.md) | 331 | `result-track:66492be44f3ef149afa657672010516df404c129f24a0438e31204d4fe807b7f` |
| 61 | `theorem` | [eq_const](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/eq-const.md) | 335 | `result-track:5829d1c5a9485b0a910be90eb891fde3bc3e1a6b5485c6ac050b953285b56484` |
| 62 | `theorem` | [exists_eq_const](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/exists-eq-const-source-edition-2.md) | 338 | `result-track:5d49e6bb3c0f20f7fea14f4ddadb54401c8b2dc14625715f4be3d8be260a0747` |
| 63 | `def` | [map](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/map.md) | 345 | `declaration-track:22c2a60fb2e2dfdf8ce00e3bf1a0167c8caea02a618e71420aeeb17e879d8a84` |
| 64 | `theorem` | [map_apply](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/map-apply.md) | 349 | `result-track:c11aa4877e149265a81c0845148e2bcf2df7ae6f07b56861e2183c2442dcd38d` |
| 65 | `theorem` | [map_id](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/map-id.md) | 353 | `result-track:5aef8f8e7d1f811b887ac72a588302f310a6f12b5b42000b5cd14225b955f84e` |
| 66 | `theorem` | [map_comp](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/map-comp.md) | 356 | `result-track:2c512d6bee8a97f04ca05b15ccca5620781e74c49a43db9157920876867e3651` |
| 67 | `def` | [flip](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/flip.md) | 361 | `declaration-track:23a5a216147a0a2069eed0fde1d4b0f70eb69c26cf4ee53647f6b421b57b1e36` |
| 68 | `def` | [unflip](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/unflip.md) | 367 | `declaration-track:4b26393ba66a9cf2009aa050165141e96b2fbe51af22ecd8781a66e4082aca5b` |
| 69 | `theorem` | [unflip_flip](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/unflip-flip.md) | 377 | `result-track:820b269c2ef18b5e7e7b2c717ac6ebd1eb7d4804d530320c80b26a0b3aabd231` |
| 70 | `theorem` | [flip_unflip](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/flip-unflip.md) | 381 | `result-track:fe26de88daa908346e9d79a197c11e4e9ecfe184ea03fde2afb4d315cc5c4268` |
| 71 | `def` | [comap](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/comap.md) | 389 | `declaration-track:1480ae9a25e34aeeecf586ddc80760e3fb746294cfd00890a884f98b2a7ebc20` |
| 72 | `theorem` | [coe_comap](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/coe-comap.md) | 393 | `result-track:cafcf19554b23b44f1ee4e3e875c1db07555dce5fdc370d67c0769e96bc37111` |
| 73 | `theorem` | [coe_comap_apply](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/coe-comap-apply.md) | 396 | `result-track:e96156d7203d7adc7997ab20b4ef82eb1b24c497d5f70c3b4dde670802d10f24` |
| 74 | `theorem` | [comap_id](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/comap-id.md) | 400 | `result-track:11826db5b67e6d22375bc2550a10dfd7f866f94b7ec8d380dd887e1aea514266` |
| 75 | `theorem` | [comap_comp](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/comap-comp.md) | 402 | `result-track:89c5e6fe5840f89b2988ff93a12b05a71749ae47359520295bf562fd62276d48` |
| 76 | `theorem` | [comap_comap](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/comap-comap.md) | 405 | `result-track:1e2bc28431c0b42979a94dca4c4c652bdb361f7a27e9018e84003e49cfe34f3a` |
| 77 | `theorem` | [comap_const](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/comap-const.md) | 408 | `result-track:905ec378327c7af000009d2b767d27b400932c1f4f72065a4c90667696ae92e3` |
| 78 | `lemma` | [comap_injective](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/comap-injective.md) | 412 | `result-track:d6b8826b1ae180d424de67e11c9bba963d090bf446f6274f7b8fb3212948d74e` |
| 79 | `def` | [desc](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/desc.md) | 425 | `declaration-track:2bef6657b761c5e599202c92c03d5ea5244ded66be9b38f48b19d6bb772cce84` |
| 80 | `theorem` | [coe_desc](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/coe-desc.md) | 431 | `result-track:6a4fc43c4a0715c6f0cb9db64a46e5127aca86663823eedaebdec3c2aed8ad14` |
| 81 | `def` | [mulIndicator](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/mulindicator.md) | 447 | `declaration-track:0c4aaa93339f8d968b5ede9caccb5b90a5b7cc831bcd796b452b3b23cb77f0fe` |
| 82 | `theorem` | [mulIndicator_apply_eq_if](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/mulindicator-apply-eq-if.md) | 457 | `result-track:d47ab654e78944e99f22d7fbb1752faf2d9f4353868636bcb4a7959a57845a7b` |
| 83 | `theorem` | [mulIndicator_of_mem](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/mulindicator-of-mem.md) | 464 | `result-track:417ddf89d8b7d2b8a425d62f244f79089ce9f546dfe4bb871153ee5a8d46a9c6` |
| 84 | `theorem` | [mulIndicator_of_notMem](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/mulindicator-of-notmem.md) | 468 | `result-track:173a81533af6691bb0eb00db79b950997a0909de5a3cb34c25b46edcb905c293` |
| 85 | `def` | [congrLeft](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/congrleft.md) | 480 | `declaration-track:da96954ab7fd1279788a2041f52a236a08cf52497a74adbd5fabd73ab115da2e` |
| 86 | `def` | [congrRight](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/congrright.md) | 495 | `declaration-track:377825832d213f216dfe475790f84a0705419641f4eae09436660169b77dbceb` |
| 87 | `def` | [equivClopens](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/equivclopens.md) | 506 | `declaration-track:b6fef76799a3627250f5dafe97d4a63b57bdd52693476179bc2c7ca88d1d5db5` |
| 88 | `def` | [piecewise](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/piecewise-source-edition-2.md) | 522 | `declaration-track:8bc853797335e279408e304a2ed036f54e150c60ac2bf4842883a1b11e8f938a` |
| 89 | `lemma` | [piecewise_apply_left](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/piecewise-apply-left-source-edition-2.md) | 546 | `result-track:c0c408930c6193d8c261001e6a06c473e022be1dd83d9213e6c83ff23bd79a08` |
| 90 | `lemma` | [piecewise_apply_right](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/piecewise-apply-right.md) | 556 | `result-track:1444bef15e570ad2a95f2091ee5387752b788209e7553cb541202536bcec14ee` |
| 91 | `def` | [piecewise'](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/piecewise.md) | 570 | `declaration-track:1423a783d2fe1cdf5ab0a00375ab4adb988646e7e3d93ba53ac4a58b8069c6ef` |
| 92 | `lemma` | [piecewise'_apply_left](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/piecewise-apply-left.md) | 583 | `result-track:72212c1869b6cdad5c12d1f042185f2001ef176578402ff6f762a0002b8cc476` |
| 93 | `lemma` | [piecewise'_apply_right](../../../../GeneralTopology/LocallyConstantBasicPublic.lean/declarations/piecewise-apply-right-source-edition-2.md) | 595 | `result-track:19a8f16e03ea80512485ff153673985bcef35dfdea8068cbdf1f845d4f007bbe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=87f9c6b248aa84f9c74b07e0c5a6c0a9188f309c3225b484d01fbccb9cd68893 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant57c005cec05118edbe54ea3efcc389823258026774226e9f93ff3c862adf5ddf.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant57c005cec05118edbe54ea3efcc389823258026774226e9f93ff3c862adf5ddf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
