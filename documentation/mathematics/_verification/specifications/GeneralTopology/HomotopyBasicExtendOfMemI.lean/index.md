# Verification target: Homotopy Basic Extend Of Mem I

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6499b31bd0cb95bd62b3c1f4cca68ec23db069e5",
  "lexical_observation_count": 96,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/Basic/Variantb0abdba97ada729242c5ef06799598f465f04b6ec7fea79895a9f5a4056f2e84.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/index.md) · [Full source](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6499b31bd0cb95bd62b3c1f4cca68ec23db069e5`.

Source path: `GRWTSK/Topology/AlgebraicTopology/Basic/Variantb0abdba97ada729242c5ef06799598f465f04b6ec7fea79895a9f5a4056f2e84.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/Basic/Variantb0abdba97ada729242c5ef06799598f465f04b6ec7fea79895a9f5a4056f2e84.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order.ProjIcc` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Ordered` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.CompactOpen` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UnitInterval` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Homotopy](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/homotopy.md) | 72 | `declaration-track:00b9ca383a9c675ea250831fa5bbdfde4316bde6c94d4ef778f0be1bf07d7b9d` |
| 2 | `class` | [HomotopyLike](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/homotopylike.md) | 84 | `declaration-track:0fb165b989f58d5a180e43065c5f50644bf66c27c97613754e90f1b9a67f20ca` |
| 3 | `instance` | [instFunLike](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/instfunlike.md) | 100 | `declaration-track:140649cf15ce88555fe80aabe0ec4dce1447f094f00eb811fad5c75dde4461a4` |
| 4 | `instance` | [(anonymous)](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/instance-source-edition-4.md) | 107 | `declaration-track:abf4d13033b922896dec5f740247386a46d16edce886b09358eeb815c2af2901` |
| 5 | `theorem` | [ext](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/ext.md) | 113 | `result-track:49705c6c918124d4cb446b62c236d04f78e5c988497ff1ad8391c0d2f0299f52` |
| 6 | `def` | [Simps.apply](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/simps-apply-source-edition-2.md) | 118 | `declaration-track:6fd277e6b6959d4252d3d4c454ad80b45df736b240c532f7a41727585e4bdb09` |
| 7 | `theorem` | [continuous](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/continuous.md) | 124 | `result-track:0dff547667810339cfddd044ef734e2ebc65ba205f939f8754ce1441a2e1f2ff` |
| 8 | `theorem` | [apply_zero](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/apply-zero-source-edition-2.md) | 128 | `result-track:d33fc1dbd398ad35d22a71d40fe0682475c83e3e6e95c2084cf13de60515cd13` |
| 9 | `theorem` | [apply_one](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/apply-one-source-edition-2.md) | 132 | `result-track:6afa6df436fc1a9969b0cbd02ee85e348d266b6c0793d5763f5b0a4f842f0ec4` |
| 10 | `theorem` | [coe_toContinuousMap](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/coe-tocontinuousmap.md) | 136 | `result-track:0a049652f882e1898f11cd441bf43a3e9257d5f9d3bb8f70e68ba68036d19c11` |
| 11 | `def` | [curry](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/curry.md) | 141 | `declaration-track:39ab8d2f3722ea5f526e1a028bb9f0da503f1e0193f832410ede02030ea7a6fa` |
| 12 | `theorem` | [curry_apply](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/curry-apply.md) | 145 | `result-track:5d681d8f8a98d7241879774194151be06e8beaef206df01efc393825ad2b06fc` |
| 13 | `theorem` | [curry_zero](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/curry-zero.md) | 148 | `result-track:db7daf27255c2a2a96a88052d12b43bc9eeafa5e580e834ac61988ae9069115b` |
| 14 | `theorem` | [curry_one](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/curry-one.md) | 149 | `result-track:976802cb93fe27af74854592daf432e2195813afd122eeb2901267cbe6e84308` |
| 15 | `def` | [extend](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/extend.md) | 153 | `declaration-track:8324d7d766198e4381626367f96aadd8d618fcb75b84513ffd885d836a659e71` |
| 16 | `theorem` | [extend_apply_of_le_zero](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/extend-apply-of-le-zero.md) | 156 | `result-track:6392100221662b7bc114ef4dd7a70399e2a316ea08215b33aa5eb34dc7863967` |
| 17 | `theorem` | [extend_apply_of_one_le](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/extend-apply-of-one-le.md) | 161 | `result-track:ecc1ddccbfb3e33754b4fb3dc2b01bae2ba269811d50e6911fc8ee49cef63bd9` |
| 18 | `theorem` | [extend_apply_coe](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/extend-apply-coe.md) | 166 | `result-track:0706c6b57bc26f565353904983bc0aa63cf14fcf024c94967ca8a6ad940271a7` |
| 19 | `theorem` | [extend_of_mem_I](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/extend-of-mem-i.md) | 170 | `result-track:241f9827107ce57d63e6d65ffe31a5371864a6847fd3065a1c0c33b277024d20` |
| 20 | `theorem` | [extend_zero](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/extend-zero.md) | 174 | `result-track:c8aedb81f0206b328575e990a5eadcb7e20781689c9a3364b1904776d5e8e074` |
| 21 | `theorem` | [extend_one](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/extend-one.md) | 175 | `result-track:ba7dabf756455803819fb5da1d40c71ed07aa4b06a1851964dd79b3087b99ed5` |
| 22 | `theorem` | [extend_apply_of_mem_I](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/extend-apply-of-mem-i.md) | 177 | `result-track:796d19845d3f0a8430db376f04e5b97f091a6dbe529ccf96eb6184248b0f2d81` |
| 23 | `theorem` | [congr_fun](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/congr-fun.md) | 181 | `result-track:b7bdfd40d9de111d85f149b9c5849ad77d9945ca1cc6f201ab32ee248445b578` |
| 24 | `theorem` | [congr_arg](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/congr-arg.md) | 184 | `result-track:07b46a813df35ad81f8efefd99f3ac385f436f4c7faa1aba8efb9da98ee7b1f4` |
| 25 | `def` | [refl](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/refl-source-edition-5.md) | 192 | `declaration-track:e20cd360321fef19ade01c32fd55c78fc7580bceea4cd79fb2d76785debf678c` |
| 26 | `instance` | [(anonymous)](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/instance-source-edition-2.md) | 197 | `declaration-track:42fbc69cadf2146017f42f3cb66e774e75c253ed9b32da5cbdcfd18761f0b094` |
| 27 | `def` | [symm](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/symm-source-edition-2.md) | 203 | `declaration-track:1c45e2bd59a94f2e50054be72850c505f4e5d7009b4d2fa1056c78c3080c33b8` |
| 28 | `theorem` | [symm_symm](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/symm-symm.md) | 209 | `result-track:50ce4a674aeecf6063752a698cd7b93d82d93ff2b789bc2fcbe12a438aa28394` |
| 29 | `theorem` | [symm_bijective](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/symm-bijective-source-edition-3.md) | 213 | `result-track:a60ba0d616cb675f8787555b2a42c4b4af77cf1f17e3876fb0d64e80aff60f73` |
| 30 | `def` | [trans](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/trans-source-edition-3.md) | 221 | `declaration-track:2c0346b6296cced0eb5928a6601d2a01a6319d5c4bfac1e1685882f0b419da4d` |
| 31 | `theorem` | [trans_apply](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/trans-apply-source-edition-2.md) | 233 | `result-track:2a517b4dc5c25c5b090db8106001ae7b8a257bd9adc1eb487552a3769b8a368a` |
| 32 | `theorem` | [symm_trans](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/symm-trans-source-edition-3.md) | 244 | `result-track:6c070cd9c2047c3f9571926f5b9302fddcf91beb2e5d9f6dabdb99c2ed1dc4d7` |
| 33 | `def` | [cast](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/cast.md) | 266 | `declaration-track:60e9617d4ea2a5056182a38854b5f8b493230130f3fdc4083d0a8fa20b179291` |
| 34 | `def` | [compContinuousMap](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/compcontinuousmap.md) | 275 | `declaration-track:280473014ead46401c9eeec85d2997913214e6402a089d0304232c511249f14a` |
| 35 | `def` | [hcomp](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/hcomp-source-edition-2.md) | 285 | `declaration-track:e2f64f35b29e3a1181966ae8520cc9c29309906cf9cdd57dd7856fa6f9cffd82` |
| 36 | `def` | [prodMk](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/prodmk.md) | 294 | `declaration-track:9812f32eb48ccdcc3ae73f9e8ae627f4cb5ba5b491d716cc6ee67c52e8594349` |
| 37 | `def` | [prodMap](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/prodmap.md) | 303 | `declaration-track:4df2eb1658e6e8352af61c15d27903e0b7d160d1b6094c88a2f20c0b547909d3` |
| 38 | `def` | [pi](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/pi-source-edition-2.md) | 309 | `declaration-track:47656aa45337c29a530d17a477bfbb747bd7e424041c0ae144f04a5a1b426476` |
| 39 | `def` | [piMap](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/pimap-source-edition-2.md) | 318 | `declaration-track:d1024b62596ef3edbd6d14da01de059225fa6a3fcf8a1db01d5403223601079c` |
| 40 | `def` | [Homotopic](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/homotopic-source-edition-2.md) | 328 | `declaration-track:b6daf3a5c35be0e26211f340030c4abf2d3300868b8bf8171686e5085864b184` |
| 41 | `theorem` | [refl](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/refl-source-edition-2.md) | 334 | `result-track:3516269362fe76ad0ec50cb20b5f0cc43cb2faea62fb8ea0645df05656ad12c1` |
| 42 | `theorem` | [symm](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/symm.md) | 338 | `result-track:1a62f69376999fdb49bfd5385456a2b994385499f73081eeae8394fbe9a81335` |
| 43 | `theorem` | [trans](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/trans-source-edition-4.md) | 342 | `result-track:486d3b35796978709d748aba706cf1e320f93e8dcb1ff4edf4fa20125656f3e6` |
| 44 | `theorem` | [hcomp](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/hcomp.md) | 345 | `result-track:a3bfbe81f0b353503a7491023b47987d89f16da42cba64de60d751589c65ea72` |
| 45 | `theorem` | [equivalence](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/equivalence.md) | 349 | `result-track:5d6ca97252cb2952238db16407f32b3a7207c32eb8ff8a1dc1c2e29e39a7cfd4` |
| 46 | `theorem` | [prodMk](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/prodmk-source-edition-2.md) | 352 | `result-track:f9811b2b39d4c9db2d0aced75af2f24a76d073f5c2561d0bf0f1717bb9417220` |
| 47 | `theorem` | [prodMap](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/prodmap-source-edition-2.md) | 356 | `result-track:aeb0019f2ae522cdf60e608e04e016e123e9730d0ddc8faec67c8a3d88a92be6` |
| 48 | `theorem` | [pi](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/pi.md) | 362 | `result-track:1125adfc727ffbf50a7ddbfd26cf750d546c573a1e409b7cbeea77e441d93698` |
| 49 | `theorem` | [piMap](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/pimap.md) | 369 | `result-track:3c068dd9008cf2834d5e73ba8e606dcdc187ecf53825fbd545779f1a4097185b` |
| 50 | `structure` | [HomotopyWith](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/homotopywith.md) | 380 | `declaration-track:57885dcdfaf97a52aef6994ae05195911515a4800046c82f4e043e0b84676a83` |
| 51 | `instance` | [instFunLike](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/instfunlike-source-edition-2.md) | 392 | `declaration-track:b8f2f9beed31066b4abf5feb3260f5fe5764e843e47af6c5ae190f5d76f5f5b4` |
| 52 | `instance` | [(anonymous)](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/instance-source-edition-3.md) | 397 | `declaration-track:75f3e36a1a3831a0ef948bc19a1deaa0b3c40b9068c97eb733f24eb02a5ba027` |
| 53 | `theorem` | [coeFn_injective](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/coefn-injective.md) | 402 | `result-track:5226ae9c47a77b6e37f1ac880cf6acc6e02eecc9b060a5874587a56463b99720` |
| 54 | `theorem` | [ext](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/ext-source-edition-2.md) | 406 | `result-track:e2909ccdc1ccbaebd643706b04ac705e2595fccb0a9bf6c83b0a2473ec33377c` |
| 55 | `def` | [Simps.apply](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/simps-apply.md) | 410 | `declaration-track:50bada97f180b485465f8e0971184f023f2e72a62099890277afdc2976dfc78d` |
| 56 | `theorem` | [continuous](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/continuous-source-edition-2.md) | 415 | `result-track:37fbf12a50e175e96be34ffd7a3252834c4c1677291d913a8f391023659df4e6` |
| 57 | `theorem` | [apply_zero](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/apply-zero.md) | 419 | `result-track:ac9f64b0733a421b5997ad280ca9a9a8d3000ab3b8445cf6d6d2fd5697e658a9` |
| 58 | `theorem` | [apply_one](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/apply-one.md) | 423 | `result-track:4a73f00b33955e22fc71d413805e223b758ecd7bbcaae1e9ab4cb8f37fde8880` |
| 59 | `theorem` | [coe_toContinuousMap](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/coe-tocontinuousmap-source-edition-2.md) | 426 | `result-track:f32c769b721039a95a4ca2ae7ccc24b3a4e58da3e22db48e611cb032435acf3f` |
| 60 | `theorem` | [coe_toHomotopy](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/coe-tohomotopy.md) | 430 | `result-track:46be0ae5e820fad4551bc1375ea94f1fdaac960a8f64f4f9d4f3bcfaf18746f8` |
| 61 | `theorem` | [prop](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/prop.md) | 433 | `result-track:e3293e7456e805a402cdb938e2c120d4aff50007accec9444aa03250140b941b` |
| 62 | `theorem` | [extendProp](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/extendprop.md) | 435 | `result-track:e01270df011f8797f90a93a583aeaeae717c728738538f25855212dc2539084f` |
| 63 | `def` | [refl](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/refl-source-edition-6.md) | 445 | `declaration-track:ea6112dfc2d7961ffba2ba99d1f17fd1d0e7d709fbc8a83518bcf6d436c5ca3b` |
| 64 | `instance` | [(anonymous)](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/instance.md) | 449 | `declaration-track:2ca245f43f4076dce5c588c7bd1cfec84c1740b0153af0f020964f0f31c97d1d` |
| 65 | `def` | [symm](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/symm-source-edition-5.md) | 456 | `declaration-track:d38fa098aceb322151ad5ed21fc20214060d25a0dbd3dc5033f9ccc5da99a748` |
| 66 | `theorem` | [symm_symm](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/symm-symm-source-edition-3.md) | 461 | `result-track:c1064dbd50a991f1b97e678252436091fb10cf41b355191ab8d4c352662ceef8` |
| 67 | `theorem` | [symm_bijective](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/symm-bijective.md) | 464 | `result-track:0a6878eddb9ffb71fb6bbeed5df7fdde12eeb68d948f59861da7eca7a12e3a0d` |
| 68 | `def` | [trans](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/trans-source-edition-2.md) | 472 | `declaration-track:24f422e0722443f8bcb3c75a54b50df4ce5008f560c2ea13bb1448bd748be9f4` |
| 69 | `theorem` | [trans_apply](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/trans-apply.md) | 482 | `result-track:26b69ea3e8579af9beb1a3234802a56736fb5373bad050a9fa120bb7b17d385a` |
| 70 | `theorem` | [symm_trans](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/symm-trans-source-edition-2.md) | 491 | `result-track:5fe267e18e15a464e9f33bd878ba063b67294bb3bffaf4f5bb440b285a2f514a` |
| 71 | `def` | [cast](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/cast-source-edition-3.md) | 498 | `declaration-track:d66ccc818d072c6565655cabb9ceeb802b3e0238e35220674d9f9ab5bedd764f` |
| 72 | `def` | [HomotopicWith](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/homotopicwith.md) | 508 | `declaration-track:383e2e35fad09df7acb53839d1af9b8c6da676e0241fe97c49439ea9f3a03e91` |
| 73 | `theorem` | [refl](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/refl-source-edition-3.md) | 516 | `result-track:c6412e38be6639d6071a028e5aaa687560b240472112c3d706346b50d52c9a6a` |
| 74 | `theorem` | [symm](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/symm-source-edition-3.md) | 520 | `result-track:58d5b17047655e71a359b9985b1ae77c7f4dc05bec0abda4b71d32a0efcbd865` |
| 75 | `theorem` | [trans](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/trans.md) | 528 | `result-track:019983ece539ba82ed6190c7598b62c57ada220291ccb9c2a062fa4dbdc28bf7` |
| 76 | `abbrev` | [HomotopyRel](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/homotopyrel.md) | 537 | `declaration-track:001013c683c29bae8ce99b69737eec7462f1dd26ecd1cbc1d6e26c74c90b1d5f` |
| 77 | `theorem` | [eq_fst](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/eq-fst.md) | 546 | `result-track:29daee097bf36f0f99c39a0eacf9ed29b6a931d5f41d30b6e0e53392a20af9c8` |
| 78 | `theorem` | [eq_snd](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/eq-snd.md) | 549 | `result-track:26558d7b42f89b8d0db65d894f33c1140a40b24c15afcd9e25f8719af572e7ab` |
| 79 | `theorem` | [fst_eq_snd](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/fst-eq-snd.md) | 552 | `result-track:c7ad359f38f59a24c7ba0361f4e9dd3d654a2f1c0eec15eadd5389caef3c0ecc` |
| 80 | `def` | [refl](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/refl.md) | 564 | `declaration-track:1f1904dfd4316d693f9c82783afcfea387b1a06a2094f269ccee72fc6e8e8d4e` |
| 81 | `def` | [symm](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/symm-source-edition-6.md) | 571 | `declaration-track:e5efa9a187e037e4e38210393de6b2a18df60b48ccef8f619d31627a87df6b85` |
| 82 | `theorem` | [symm_symm](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/symm-symm-source-edition-2.md) | 576 | `result-track:90b6e6d68cfb03930b96b107ee3d225cf50f7013dc90d5f96b50290208d9109b` |
| 83 | `theorem` | [symm_bijective](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/symm-bijective-source-edition-2.md) | 579 | `result-track:9806249250d47b2d3605ef55c8e7091f1f95501c409cee10e744ef0d1c75c9d5` |
| 84 | `def` | [trans](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/trans-source-edition-5.md) | 586 | `declaration-track:60595cab2a57ceea9014cba9c807ed664e70aaea089dfd1c4924fc3bb85cb3c9` |
| 85 | `theorem` | [trans_apply](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/trans-apply-source-edition-3.md) | 594 | `result-track:dea6ce2aa0a8413d96b09e8373817a6cd198a6769197b6a210382a891a3e3630` |
| 86 | `theorem` | [symm_trans](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/symm-trans.md) | 602 | `result-track:1159e5f53d87b0f25ef707419eaef512c07dadb3623e398e6b60c1d9677940de` |
| 87 | `def` | [cast](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/cast-source-edition-2.md) | 609 | `declaration-track:65dd402cbd46c195a6f5ef1d94bbcceeff558ce0647278121dad92cfcba57733` |
| 88 | `def` | [compContinuousMap](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/compcontinuousmap-source-edition-2.md) | 615 | `declaration-track:ea10d05f578ab276c229a3337b79b354eb074cd4f7a06cf459e9caa8ba668dc6` |
| 89 | `def` | [HomotopicRel](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/homotopicrel.md) | 625 | `declaration-track:7dd7d8267effc970c2dd2062c2628c60faad188cf32528d7be3a054da93b06eb` |
| 90 | `theorem` | [homotopic](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/homotopic.md) | 633 | `result-track:525a139fb6966c5d7ec94ea43598bb9367104a6432b8e9f73bd0f765a5190489` |
| 91 | `theorem` | [refl](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/refl-source-edition-4.md) | 637 | `result-track:d73237bbdd47ccc3ffeb6d88fabc408d63c8feabbff14af4a3f7727e04746b24` |
| 92 | `theorem` | [symm](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/symm-source-edition-4.md) | 641 | `result-track:89731ef27a1bf84694a3b5ad6e19a80943f41777ba60eec315507edd3f997622` |
| 93 | `theorem` | [trans](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/trans-source-edition-6.md) | 645 | `result-track:b10aa4652c49b9a38a7fb895ee12604085d761ce4a4f668aa6b02899099a968b` |
| 94 | `theorem` | [equivalence](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/equivalence-source-edition-2.md) | 649 | `result-track:6f6bf65245ac7ec614ec3144d0e830f78dd7220253331d5ece8a27579a5c6706` |
| 95 | `theorem` | [comp_continuousMap](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/comp-continuousmap.md) | 652 | `result-track:a144f38bb67d062166630154828eece88bfc3e12cff79d187f2feefc9449fc11` |
| 96 | `theorem` | [homotopicRel_empty](../../../../GeneralTopology/HomotopyBasicExtendOfMemI.lean/declarations/homotopicrel-empty.md) | 657 | `result-track:b62750c0fd3cbf01544cabbdc8f6a80ff34dce3c90c4ecd44ffe3bc2726f6a01` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d317976fa1e815ea8066a555eeeb98176bfd1be5a8ec03ccd02e79cf28600338 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/AlgebraicTopology/Basic/Variantb0abdba97ada729242c5ef06799598f465f04b6ec7fea79895a9f5a4056f2e84.lean","GRWTSK/_verification/specifications/Topology/AlgebraicTopology/Basic/Variantb0abdba97ada729242c5ef06799598f465f04b6ec7fea79895a9f5a4056f2e84.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
