# Verification target: Cyclic Neutral Public Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0a713333adcb9c2a1d9e3b5226aa27eced1bdaef",
  "lexical_observation_count": 87,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/CyclicNeutral/Variant3184950d8b5d438e1ef9ca4429c62a764f6307b1d219171655e4f2f717f27025.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/index.md) · [Full source](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0a713333adcb9c2a1d9e3b5226aa27eced1bdaef`.

Source path: `GRWTSK/Analysis/CyclicNeutral/Variant3184950d8b5d438e1ef9ca4429c62a764f6307b1d219171655e4f2f717f27025.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/CyclicNeutral/Variant3184950d8b5d438e1ef9ca4429c62a764f6307b1d219171655e4f2f717f27025.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [NormalizedPhase](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/normalizedphase.md) | 39 | `declaration-track:4c1a5623b078bfbf9ec474de14d107f363ceeeffa705a3c56d437d2588911186` |
| 2 | `instance` | [(anonymous)](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/instance.md) | 44 | `declaration-track:4367821755dbeb0a59abd1329e50529781528751a4d154942dcde6d73889a071` |
| 3 | `def` | [zero](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/zero.md) | 51 | `declaration-track:13448feaecbb070eeea4b1ec8922e7e1e93d73b2cd0d9f968f7be645e1d7681f` |
| 4 | `def` | [quarter](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/quarter.md) | 56 | `declaration-track:23db78ef6a5e7ca5124eab4a5688bbbeb80760d527d09abe11e2357af84b0b57` |
| 5 | `def` | [half](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/half.md) | 61 | `declaration-track:f7e1ec081df34d3a4027d83e8f8ad1063c295e953802cc23f08c5439cf65fdef` |
| 6 | `def` | [threeQuarters](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/threequarters.md) | 66 | `declaration-track:2f1e31a1e7581db5a5dfbeade4c1441fdefe01bedaf3bede8ee87bb51b5b88f3` |
| 7 | `def` | [normalize](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/normalize.md) | 71 | `declaration-track:ecee078dad3a303d14c91daa64ba4d5e63109c150535ca158d43ba4a8dd10757` |
| 8 | `theorem` | [value_zero](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/value-zero.md) | 75 | `result-track:b54113bb778840233f388c83d341e85b770ea5db5554c9cfa2308e063a8d6fd2` |
| 9 | `theorem` | [value_quarter](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/value-quarter.md) | 79 | `result-track:0344c63fc3d1bca830e07815e165708acbb65412ee9648daf56f0563e1a977c0` |
| 10 | `theorem` | [value_half](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/value-half.md) | 83 | `result-track:4126033540ab4cf2fb3c8c417a6dc98222bc4e66a39c6324c7f2e55c90b18d4d` |
| 11 | `theorem` | [value_threeQuarters](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/value-threequarters.md) | 87 | `result-track:98ca709c083899d1d93434bfee9a64d8f5d9d6f3eab2309251b989f4a6c4e41b` |
| 12 | `theorem` | [value_normalize](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/value-normalize.md) | 91 | `result-track:ece9dfc1d0df5b7475aa04f757788273d8660e12cbe5690d8523dbb38a71df52` |
| 13 | `theorem` | [normalize_add_one](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/normalize-add-one.md) | 95 | `result-track:21b3f26e657df79a438d9ad92fc62c836e070be95bd35594b66761e38456c034` |
| 14 | `theorem` | [normalize_zero](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/normalize-zero.md) | 100 | `result-track:487f5746fb9085b2841f98857d51b39a391d367a2dcc7a451716e80805460b88` |
| 15 | `theorem` | [normalize_one](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/normalize-one.md) | 105 | `result-track:c1344f5ff73446c92e74bd170749673a703e8c24129b88e577caa20fb1736d9f` |
| 16 | `def` | [phaseAngle](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/phaseangle.md) | 113 | `declaration-track:d7bb7cdad814b8a5a409f9d93172940096b1d9dc5cf801c9f8798970746048f9` |
| 17 | `def` | [lightness](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/lightness.md) | 118 | `declaration-track:06c6bf5f63622c06d024d408fbaa56128c604725c7d700327c5d2657b0629ade` |
| 18 | `def` | [opacityBase](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/opacitybase.md) | 123 | `declaration-track:927f11ebc9f4831d077a2b5a539a7a4f77145a259acc82dddcc706cc97c6ce7b` |
| 19 | `def` | [greenShift](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/greenshift.md) | 132 | `declaration-track:f3e1ed7868133e7109606c56a5950793c88d5e7c5759ef5c96e758d792a94b81` |
| 20 | `def` | [opacity](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/opacity.md) | 137 | `declaration-track:bf0103f70912afc1b2f777b920ddd770f444eb0fcdf5373680bffac990e8b575` |
| 21 | `structure` | [Sample](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/sample-source-edition-2.md) | 142 | `declaration-track:e5de3a2eeeb9ed824f9ed3f895859627521e95b6af9557198397ba35cd21665d` |
| 22 | `def` | [sample](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/sample.md) | 148 | `declaration-track:a49b3bc2645954e2e19b8e37e4951f7f8d0414ad4188453174fc78da9f3991e4` |
| 23 | `def` | [lightnessAt](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/lightnessat.md) | 154 | `declaration-track:d6c59e029847a857aeef2f5e761bbe3d654a6eee20a7ed1a202668845f0e2ae6` |
| 24 | `def` | [opacityAt](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/opacityat.md) | 159 | `declaration-track:f2d04524cd3e1d27eb92ba29d0cbfa945fdeab421c1278939704f15eb3c3d234` |
| 25 | `def` | [greenShiftAt](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/greenshiftat.md) | 164 | `declaration-track:40c6c22c4c1f15dd604969dee5c411da5bf5e0707bb2b187df944269a26e3f84` |
| 26 | `def` | [sampleAt](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/sampleat.md) | 169 | `declaration-track:8f66869bd6e5ef66f403cb5cc0fb4ed9c7fe8225e59f69baa8ae0abd39b35b99` |
| 27 | `structure` | [ColorSample](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/colorsample.md) | 174 | `declaration-track:0bbe9d9418c1a5a55c975a7107d2d6888ddb3e7f0054c94ec9df8154676c450f` |
| 28 | `def` | [colorSample](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/colorsample-source-edition-2.md) | 181 | `declaration-track:f6f655a2ac4282885e5f9797555f08dcdd60fe538caa329b612ead401146a955` |
| 29 | `def` | [colorSampleAt](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/colorsampleat.md) | 188 | `declaration-track:2c65ce536fe198999b21749b17e54344667128c98b4a7fc027baaa7e012aa9b3` |
| 30 | `theorem` | [sample_lightness](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/sample-lightness.md) | 192 | `result-track:79d3217a6761337308a1a81b6e6f43fed5df07faa34bdd6ad98ceda85d33fa61` |
| 31 | `theorem` | [sample_opacity](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/sample-opacity.md) | 197 | `result-track:6af54d6d7615df5497908a2ce3db5ec8a0d1c179669ab56343cd7b6cb8642b19` |
| 32 | `theorem` | [colorSample_lightness](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/colorsample-lightness.md) | 202 | `result-track:27551354e6d566fcc0482552a7912a4fde3af05597840552eafcb2421b9fb0ca` |
| 33 | `theorem` | [colorSample_opacity](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/colorsample-opacity.md) | 207 | `result-track:a5f1fa0a771f8c7e7b5ec32a1d2083d9303a7f15b486a74d89aaf6deda176d94` |
| 34 | `theorem` | [colorSample_greenShift](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/colorsample-greenshift.md) | 212 | `result-track:c2bdc43534a328afe0337070fd2d5b4cc5f20a4a8251e2edd7f4f2b5aa88faef` |
| 35 | `theorem` | [phaseAngle_zero](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/phaseangle-zero.md) | 216 | `result-track:d4522ce8881ea7c6c76af8725f7957a67a3cd367b59284993d7866663a5274ad` |
| 36 | `theorem` | [phaseAngle_quarter](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/phaseangle-quarter.md) | 219 | `result-track:b1f433eaac9b33f1d1759094319d2dc448993c3e83df27dd428d8a534a5bf3eb` |
| 37 | `theorem` | [phaseAngle_half](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/phaseangle-half.md) | 224 | `result-track:57416f1f9b565de727b30114e910afc82b1544305404bd3e72af7f108a755d85` |
| 38 | `theorem` | [phaseAngle_three_quarters](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/phaseangle-three-quarters.md) | 229 | `result-track:ab0036838eca973965486f5bf13ddd6fd56d76ac541b836f29a80b42df62288e` |
| 39 | `theorem` | [phaseAngle_one](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/phaseangle-one.md) | 234 | `result-track:a2f4a88ab1a62a1a91687919530b121c747ca075ace3619e355f7661f0037d4a` |
| 40 | `theorem` | [phaseAngle_add_one](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/phaseangle-add-one.md) | 239 | `result-track:15b829922f9843e75ebac85efdf0503ebbc300f0b726a18b27d5cc801e07a9dd` |
| 41 | `theorem` | [phaseAngle_add_half](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/phaseangle-add-half.md) | 244 | `result-track:989e83c365306fccbb3fbab59499a1a28008ff050cfb8087376bef7825ef2f41` |
| 42 | `theorem` | [lightness_add_one](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/lightness-add-one.md) | 252 | `result-track:1c13517abfe12c59e77f06c2414e5d415b0a92453c9d9d6a4b6c406a7f52f258` |
| 43 | `theorem` | [opacityBase_add_one](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/opacitybase-add-one.md) | 257 | `result-track:9cc8f89bfb91259ac870c0c5417154bc5e8afeb0745498d2aa2ae4297bbac966` |
| 44 | `theorem` | [greenShift_add_one](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/greenshift-add-one.md) | 262 | `result-track:ee0b726e168458c2e8501f83ccb4853b93c657e64e168e396c766be4494b4551` |
| 45 | `theorem` | [opacity_add_one](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/opacity-add-one.md) | 267 | `result-track:c3fd069ff892ea885b136230f34751d646035bccdb8ecb490b5fa73a090f8a37` |
| 46 | `theorem` | [sample_add_one](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/sample-add-one.md) | 272 | `result-track:e6883c99842739e6051223b69887e38d55a36a8e5ca60129fa9e0a1af1f2dd46` |
| 47 | `theorem` | [colorSample_add_one](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/colorsample-add-one.md) | 279 | `result-track:65f3462dab1b98ac7c87f95c0bf8f701bff9e8f0b2d05a0fcf18ec0ab23c382a` |
| 48 | `theorem` | [lightness_zero](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/lightness-zero.md) | 287 | `result-track:ce6b88436f2f050b308a0dbe29d6744f2050b2400c92c11e3e51a6cbc3569d5f` |
| 49 | `theorem` | [lightness_quarter](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/lightness-quarter.md) | 292 | `result-track:8113b7989ba4af59779560dbc9b39625f51ba8c8b68bea9100dbbcbda1b42145` |
| 50 | `theorem` | [lightness_half](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/lightness-half.md) | 298 | `result-track:7629d741d4958a9f37bfc1958ca31ae2ccfdebd0d585380fb1733823ba1caf73` |
| 51 | `theorem` | [lightness_three_quarters](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/lightness-three-quarters.md) | 304 | `result-track:46a03cb68bc0224cbbee62651344615985a80a1a3cacacdd002d8677ed4e29e5` |
| 52 | `theorem` | [lightness_one](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/lightness-one.md) | 310 | `result-track:df2ab6895186c2a755052d0d223971143550e10ffdd2c3c1afc3a000e13703b3` |
| 53 | `theorem` | [opacity_zero](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/opacity-zero.md) | 316 | `result-track:3235746d56952adaf3d5365ba021ba46c3594c13f105253b5380d42d08124288` |
| 54 | `theorem` | [opacity_quarter](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/opacity-quarter.md) | 320 | `result-track:374c7341268ee7263f48d97600e8c81eb68dc796915fa8addfe8b1de732e8d71` |
| 55 | `theorem` | [opacity_half](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/opacity-half.md) | 326 | `result-track:1c12050ef68029bccea5daa050a876ec78f93b2cc4ba8fed7175a06dbb85db1a` |
| 56 | `theorem` | [opacity_three_quarters](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/opacity-three-quarters.md) | 331 | `result-track:17edb9079043b20322744425363e695d2137e75c98d7a43c80f8fe2b8a5d2e36` |
| 57 | `theorem` | [opacity_one](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/opacity-one.md) | 337 | `result-track:f41deba943da5c80ddb5275c99afff15a2efd5ef5bd9c4034c417d50d4c97502` |
| 58 | `theorem` | [greenShift_mem_Icc](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/greenshift-mem-icc.md) | 342 | `result-track:e6469505ecf4b907d28cc83df735a9acaa4a05f05df42c2ed802f1009a0287d9` |
| 59 | `theorem` | [opacity_mem_Icc](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/opacity-mem-icc.md) | 352 | `result-track:4d1cf9ca0f50d00ebd75344c092ad718d4fb5f2f9f2354db71509b3249114d32` |
| 60 | `theorem` | [greenShift_zero](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/greenshift-zero.md) | 367 | `result-track:80cde3ff2e42c1cf2bb983bcdae94e875afd4793d045a0b5a423576cec69fe94` |
| 61 | `theorem` | [greenShift_quarter](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/greenshift-quarter.md) | 371 | `result-track:328fabf1321437f31aeebc457361d984537b20946b772013fa317ea1917c156a` |
| 62 | `theorem` | [greenShift_half](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/greenshift-half.md) | 376 | `result-track:93795c195bc9126b1a3b510f68cc8c7a0a29daaf0bfcd9dda38bde9f8f91a4be` |
| 63 | `theorem` | [greenShift_three_quarters](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/greenshift-three-quarters.md) | 381 | `result-track:c13b3591460bdd7f295ffde01d099e2764cdfea57d36a73423bd275592c02650` |
| 64 | `theorem` | [greenShift_one](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/greenshift-one.md) | 387 | `result-track:c833db66b3c0a61efbe583caa8886bb5a0f8d4261068c1fe89bbaaa5be2076e6` |
| 65 | `theorem` | [greenShift_add_half](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/greenshift-add-half.md) | 393 | `result-track:a7151226d1d3b5a7a95b9ce4d35300de0e44676d2bdf0d76125d94df0b466fd3` |
| 66 | `theorem` | [lightness_add_half](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/lightness-add-half.md) | 401 | `result-track:9f322f17b2ab9ab1be60f68b8db19d657a7713af34dfe7bd333a5791393516c3` |
| 67 | `theorem` | [lightness_periodic](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/lightness-periodic.md) | 408 | `result-track:a2e26b5d727e2fc11bdb685a9efd214dfbce2fe99f312d3f0248a14ecad307f2` |
| 68 | `theorem` | [opacity_periodic](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/opacity-periodic.md) | 414 | `result-track:ff403a5a0180564f0feae7a732801fd0adf46dd4de2f8288c9dc885e20d63855` |
| 69 | `theorem` | [greenShift_periodic](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/greenshift-periodic.md) | 421 | `result-track:99d95960646e80df95fa4558e37ad79ac7c89c6d57fc3d0388d585130a3bb0f5` |
| 70 | `theorem` | [sample_periodic](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/sample-periodic.md) | 428 | `result-track:e80f1f36a647484a838aac91ed29914a657ba8ded7803b51cb456357acd63a33` |
| 71 | `theorem` | [colorSample_periodic](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/colorsample-periodic.md) | 436 | `result-track:b2b0837628442121243f9857eba69197110aefe28274ccf8524f78d7092f00b5` |
| 72 | `theorem` | [sample_zero](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/sample-zero.md) | 445 | `result-track:1c62ab78c1598b37b2f4afbacaa40b4840273757f2a72c362e69dff376346f1b` |
| 73 | `theorem` | [sample_quarter](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/sample-quarter.md) | 452 | `result-track:f43a9775f292c2886bc57e30aa03743a4fa6add69e36bd51667e4d84df575553` |
| 74 | `theorem` | [sample_half](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/sample-half.md) | 459 | `result-track:58dc9d8fc6b60aac8dd1a9da7f51f20afba852e6d9bbdea189aac81a607fe61c` |
| 75 | `theorem` | [sample_three_quarters](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/sample-three-quarters.md) | 466 | `result-track:3601b53c7e9f3ebceb75774748240a00d7d9151f95b173eeb63a39ad7f7b27c3` |
| 76 | `theorem` | [sample_one](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/sample-one.md) | 473 | `result-track:457fbc86b6dfa8b35d0bf239bfb3b586a9eb9e552181460205ccaf3adb2cda00` |
| 77 | `theorem` | [colorSample_zero](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/colorsample-zero.md) | 480 | `result-track:17630c1cbaf83014944ad8c782a75fa1520c13a84101e2888de5e9591163a80e` |
| 78 | `theorem` | [colorSample_quarter](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/colorsample-quarter.md) | 488 | `result-track:f3c7b8c0460b72683be3a83121f5071d59fca26475ebf3b754a7b415bc065da3` |
| 79 | `theorem` | [colorSample_half](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/colorsample-half.md) | 497 | `result-track:48a394ff382adcea9a194021f2a0bcb5de2355a91337138eb1f27938040d351e` |
| 80 | `theorem` | [colorSample_three_quarters](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/colorsample-three-quarters.md) | 505 | `result-track:6489b8b7da70223cf4d2e2915747f4b66ae8de24228fef0f911c5c8e3f9a890d` |
| 81 | `theorem` | [colorSampleAt_zero](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/colorsampleat-zero.md) | 514 | `result-track:8ede09dd3cd98798d8627d34575a9a498fa24a9ccfbbe67e69f8922b249a90b7` |
| 82 | `theorem` | [colorSampleAt_quarter](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/colorsampleat-quarter.md) | 519 | `result-track:daf80ade4136bef8bd6456cbf2a5931ba6d7255504bd2bdcd2805263c0eaa454` |
| 83 | `theorem` | [colorSampleAt_half](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/colorsampleat-half.md) | 525 | `result-track:9197955c19109683d052f9285ec7b5ca601d6ab95c506975c8cc16f064c4949f` |
| 84 | `theorem` | [colorSampleAt_three_quarters](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/colorsampleat-three-quarters.md) | 530 | `result-track:cf119adad6487b5a5a03078cf3503017abb5e279e8d6eac7307908b516661156` |
| 85 | `theorem` | [normalized_neutral_half_distinct](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/normalized-neutral-half-distinct.md) | 541 | `result-track:42f7481fdd96ec66a51150b554c56f4c72b0cb5250eaba6c4d1ff84138f0cbbc` |
| 86 | `theorem` | [sample_wrap](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/sample-wrap.md) | 551 | `result-track:66382d3d741f4fb49f24a762d05dbffff50dad25490377ec2ba82eb0750bf82c` |
| 87 | `theorem` | [neutral_antipodes_distinct](../../../../RealFunctions/CyclicNeutralPublicEdition1.lean/declarations/neutral-antipodes-distinct.md) | 560 | `result-track:33e18dde4c174bf3ef42663dac575e093220480ef6fbd1e22ac62dd58073a922` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f14033542b8f9cd07f0a5fae46bbe65b0a31b706ecc181ea187d75a569941481 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/CyclicNeutral/Variant3184950d8b5d438e1ef9ca4429c62a764f6307b1d219171655e4f2f717f27025.lean","GRWTSK/_verification/specifications/Analysis/CyclicNeutral/Variant3184950d8b5d438e1ef9ca4429c62a764f6307b1d219171655e4f2f717f27025.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
