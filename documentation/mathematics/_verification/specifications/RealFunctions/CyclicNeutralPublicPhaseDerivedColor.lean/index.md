# Verification target: Cyclic Neutral Public Phase Derived Color

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "32cf9b25e31a92bfe7ac47fda14088a11b25ed11",
  "lexical_observation_count": 91,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/CyclicNeutral/Variant102688562a41b130141170beb616ce72d744461fd5b42b66b366a565b747d4fd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/index.md) · [Full source](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `32cf9b25e31a92bfe7ac47fda14088a11b25ed11`.

Source path: `GRWTSK/Analysis/CyclicNeutral/Variant102688562a41b130141170beb616ce72d744461fd5b42b66b366a565b747d4fd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/CyclicNeutral/Variant102688562a41b130141170beb616ce72d744461fd5b42b66b366a565b747d4fd.lean.json)

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
| 1 | `structure` | [NormalizedPhase](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/normalizedphase.md) | 41 | `declaration-track:68b22298e0ec66667832fbba5e5cb4472d555f7b6c1e468f20a6338dddb1a599` |
| 2 | `instance` | [instCoeNormalizedPhaseReal](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/instcoenormalizedphasereal.md) | 46 | `declaration-track:9461d3470015e0024e2393d772ac51a9fd6f065bff627f66285b53ba60a843e3` |
| 3 | `def` | [zero](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/zero.md) | 53 | `declaration-track:f6c92141cdf984e71d8f86a878dce5f89fe5a65b47b8fd35748c547066341823` |
| 4 | `def` | [quarter](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/quarter.md) | 58 | `declaration-track:03ce153bf98ff7a3b826169e1f75e876421c8e0149a64ac13c753358a15d1c96` |
| 5 | `def` | [half](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/half.md) | 63 | `declaration-track:11dc9c927083ef3227eb99f21599b273f631295fbf56a854745c8bc1f5e5e392` |
| 6 | `def` | [threeQuarters](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/threequarters.md) | 68 | `declaration-track:31ee7f75c63624fc6c85a3ef1a39c93c8ac2c09ec482724c24c0cbc1a23cd3e7` |
| 7 | `def` | [normalize](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/normalize.md) | 73 | `declaration-track:acf97c8ee6f1eb155d062d91aa91df7f3c85363924facbc1c9340b19bc7a0c33` |
| 8 | `theorem` | [value_zero](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/value-zero.md) | 77 | `result-track:4ad27b6f718ecf2ae4d61e223da897a92af09c6e7bff2f6011c9d8dee9f8b16c` |
| 9 | `theorem` | [value_quarter](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/value-quarter.md) | 81 | `result-track:13a2bb47f4483f0a75c645ad0e67f9de9bb7eb37f8154184d91df4a5d577d17e` |
| 10 | `theorem` | [value_half](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/value-half.md) | 85 | `result-track:56eac7cc8bde511b76074fab376b9a936d265fd4820223e2b7402ef987a1f325` |
| 11 | `theorem` | [value_threeQuarters](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/value-threequarters.md) | 89 | `result-track:9d967d050957f3a4cd20f2c26e98b01b7ea18152dac6a0151f375243b1652175` |
| 12 | `theorem` | [value_normalize](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/value-normalize.md) | 93 | `result-track:a79384fa58b0d10a846f91495b420389f43b3e8ba39111f171f39fafa37779f9` |
| 13 | `theorem` | [normalize_add_one](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/normalize-add-one.md) | 97 | `result-track:fe5198f6bb1dcb8ca2e2cba6102df7579f5b4212a9befaf65a1d5a55e5175960` |
| 14 | `theorem` | [normalize_zero](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/normalize-zero.md) | 102 | `result-track:048c7fe37766ec957716ddf44dfbafa6585269c90e5e1c810ee28788ec8390b3` |
| 15 | `theorem` | [normalize_one](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/normalize-one.md) | 107 | `result-track:bd30c45ee550eb013d46875c31493baa079735ef0809cd618ec942801b898e3e` |
| 16 | `def` | [phaseAngle](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/phaseangle.md) | 117 | `declaration-track:ddb9d71b1bd38640dbdc461825d3c86d14bb9e5244bcfe9342cbdf79f60ec5f5` |
| 17 | `def` | [lightness](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/lightness.md) | 122 | `declaration-track:6aa83f253a6a41332dae8032287ea8bddb53e0b547b4b16c3ec9d31f7d144ed9` |
| 18 | `def` | [opacityBase](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/opacitybase.md) | 127 | `declaration-track:06b4f53cf8c55d33a066b492b52d54d61f26b7665a2e31e72a9ccb531f5999ee` |
| 19 | `def` | [greenShift](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/greenshift.md) | 136 | `declaration-track:1ba5bc0d44ddb1c745402164cc0fe01da8adfdfae778d945705fd18dce2300da` |
| 20 | `def` | [opacity](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/opacity.md) | 141 | `declaration-track:526fa8cedb534c78188c21556013e1abca39b89bc7aafd6a683f9781d897f895` |
| 21 | `structure` | [Sample](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/sample.md) | 146 | `declaration-track:44a3d1632bd8498260e9e6196baeb1a68e22efbd689f49145b1f7b4ff08796d4` |
| 22 | `def` | [sample](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/sample-source-edition-2.md) | 152 | `declaration-track:f258dfe8a848a182400776c2161cc7b0c0b4820be30f790f17f7bd60bfef6e4a` |
| 23 | `def` | [lightnessAt](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/lightnessat.md) | 158 | `declaration-track:93c91617cd271b3d6a213302241e613bd211f39fdc39b0ca0c603c075051e1a9` |
| 24 | `def` | [opacityAt](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/opacityat.md) | 163 | `declaration-track:e6cebe686111b47980e9d4fdd90fcf6d236e8775a9f973ab32e6fb9d801d9148` |
| 25 | `def` | [greenShiftAt](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/greenshiftat.md) | 168 | `declaration-track:8a91aecd700f7d658da8228cb609a2fe844717ca8cbb53bf5e15103c7d1dfbe9` |
| 26 | `def` | [sampleAt](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/sampleat.md) | 173 | `declaration-track:a8090c305947165b43870470f11fc29b88570776ce8605bbf3634ec8365a6cc4` |
| 27 | `structure` | [ColorSample](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/colorsample-source-edition-2.md) | 178 | `declaration-track:e4f33d618e255ebfaa550f45583f14c4378cf401aab911624b52a3ac94eee7fd` |
| 28 | `def` | [colorSample](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/colorsample.md) | 185 | `declaration-track:1d38effb6b4ca3e725ee0937d847b2bcd346cd5c90623de1fb3da15d1efc4a95` |
| 29 | `def` | [colorSampleAt](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/colorsampleat.md) | 192 | `declaration-track:1edfb5abca5957df2761f54c7bcd04a23f713d78a66b48dd3c4d61c3876eee41` |
| 30 | `theorem` | [sample_lightness](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/sample-lightness.md) | 198 | `result-track:94b385239b100f51d46da5f1390b2234aa806cb6b5db94d8ea3b77fab49bb6e5` |
| 31 | `theorem` | [sample_opacity](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/sample-opacity.md) | 203 | `result-track:8feb4e368c82f5eb51f1acc2de7b48d209e6f3cb6e083e685ea15f676cbfa2f3` |
| 32 | `theorem` | [colorSample_lightness](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/colorsample-lightness.md) | 208 | `result-track:660fd9e85eb155a2aaf3fa55eb5b53f8b3e999456d680251a41ab4da397884e8` |
| 33 | `theorem` | [colorSample_opacity](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/colorsample-opacity.md) | 213 | `result-track:f87d66067f1fe4a9c82ed422f3537b8bbc48ccc7fd03c58a18288adb318c860c` |
| 34 | `theorem` | [colorSample_greenShift](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/colorsample-greenshift.md) | 218 | `result-track:1943a9b4a0fc08b3d61273a42ae54987a1addaf0355ee07c17c9b3da43f1e0d9` |
| 35 | `theorem` | [phaseAngle_zero](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/phaseangle-zero.md) | 222 | `result-track:57420be3562a1fb75746b483bf3efc510d99f374c130aa592eb7ad0225542a48` |
| 36 | `theorem` | [phaseAngle_quarter](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/phaseangle-quarter.md) | 225 | `result-track:fc4a23d9758399e02a321a95fbbbd3ae81b0c9f633cdfd6e967cdc3ce729d365` |
| 37 | `theorem` | [phaseAngle_half](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/phaseangle-half.md) | 230 | `result-track:567b92f6b7638011dcd505f2931d2ca522cdd0d6adf22c56575c9a5001ddc2f4` |
| 38 | `theorem` | [phaseAngle_three_quarters](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/phaseangle-three-quarters.md) | 235 | `result-track:d0619a7da03e877024af6ef4a856507a2110601e83697135a206eef90391794f` |
| 39 | `theorem` | [phaseAngle_one](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/phaseangle-one.md) | 240 | `result-track:8f70a152edc13a37d8ead36334b7330441fb5982caa704f0153fc10cb530ada9` |
| 40 | `theorem` | [phaseAngle_add_one](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/phaseangle-add-one.md) | 245 | `result-track:cd45a818405ac924d7fb36b4bb673aa0b01cc16c72e6691e6659be68bb2c1642` |
| 41 | `theorem` | [phaseAngle_add_half](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/phaseangle-add-half.md) | 250 | `result-track:2233e0b23c3488bec3a22a290dce534675f421f9c556a86c0ab82e7de65e101b` |
| 42 | `theorem` | [lightness_add_one](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/lightness-add-one.md) | 258 | `result-track:f8bbcddc24a659e103a8b096b40fcc1c2b0b5cdd80c4a70be915e8a1618d461b` |
| 43 | `theorem` | [opacityBase_add_one](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/opacitybase-add-one.md) | 263 | `result-track:8c371b423e4999ea543b6b0e4b46cfcab3abded009328465859faff31e353a4c` |
| 44 | `theorem` | [greenShift_add_one](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/greenshift-add-one.md) | 268 | `result-track:23b04f6465fa9bb9890949319f0093a086bf34e14340efd011a336482c39cb2a` |
| 45 | `theorem` | [opacity_add_one](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/opacity-add-one.md) | 273 | `result-track:677a481fac643ca3381b5a9b8c47513cda1b81a68e46442054abd550aacdd2b5` |
| 46 | `theorem` | [sample_add_one](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/sample-add-one.md) | 278 | `result-track:7209c05fb214d10e6430af6c46fea13aac018d1697351a24b4afc3752a0dbc01` |
| 47 | `theorem` | [colorSample_add_one](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/colorsample-add-one.md) | 285 | `result-track:0b863a9567eb88d8a2d0bd52424c5ee3d420319108a25a619bf9bbbd5dd8c858` |
| 48 | `theorem` | [lightness_zero](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/lightness-zero.md) | 293 | `result-track:209425e4585f0b63772b3350cc9f249c0bca326c94909f372870e4f7e8fcca5f` |
| 49 | `theorem` | [lightness_quarter](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/lightness-quarter.md) | 298 | `result-track:a58e7db352eb52d1798cb6063d30fc38da45b7d01c5aea56b44a4efc24c2c49a` |
| 50 | `theorem` | [lightness_half](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/lightness-half.md) | 304 | `result-track:66fa236a09f74e74e89a1364772d6347b2b342854e1127e22146149e6bb9c3e4` |
| 51 | `theorem` | [lightness_three_quarters](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/lightness-three-quarters.md) | 310 | `result-track:6543175c2967ff3a1e66408f179c75b9a65652803be8c35765c5c624868fe0fa` |
| 52 | `theorem` | [lightness_one](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/lightness-one.md) | 316 | `result-track:7e2d88ac651e3c1607ad131c5525c250f3683f7b4b3349c2a4b99731cc6434f5` |
| 53 | `theorem` | [opacity_zero](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/opacity-zero.md) | 322 | `result-track:7430320569558198c89ad3a5d42fdcc2743b6ea539128e3f4b364309a87083a5` |
| 54 | `theorem` | [opacity_quarter](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/opacity-quarter.md) | 326 | `result-track:4635dac263beb50b1b1895d728ad807f7df6b09e2d6e465cfff17159aae6b398` |
| 55 | `theorem` | [opacity_half](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/opacity-half.md) | 332 | `result-track:d5b3962f8b77adba97461a5ff9c7a36ce5429910ab167a09e9ffd8fe7374f551` |
| 56 | `theorem` | [opacity_three_quarters](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/opacity-three-quarters.md) | 337 | `result-track:8aa5f87c15db3a5ad5dcb3b8062f41a0d417dd16007ee29338b844ed43f41633` |
| 57 | `theorem` | [opacity_one](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/opacity-one.md) | 343 | `result-track:34e380e9061e4298442adce7c94f796666012b20c9c1415c78c27a99dabc959c` |
| 58 | `theorem` | [greenShift_mem_Icc](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/greenshift-mem-icc.md) | 348 | `result-track:806c466b9abf017c553f542b2354634a743fc3cce3882988174f9f14473eea0b` |
| 59 | `theorem` | [opacity_mem_Icc](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/opacity-mem-icc.md) | 358 | `result-track:2fb4d738c26fcb169b2cbf87722454d702ba91dad090b395498553c01385e4b0` |
| 60 | `theorem` | [greenShift_zero](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/greenshift-zero.md) | 373 | `result-track:b6d1667661f0f10989097aa17577542d4f82ef12f2bdcc6002cd5d97e2998a57` |
| 61 | `theorem` | [greenShift_quarter](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/greenshift-quarter.md) | 377 | `result-track:48a3c809c7951940c3c3b0e32bf49e5d2957880e83b4dc564a508f67a4ee1148` |
| 62 | `theorem` | [greenShift_half](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/greenshift-half.md) | 382 | `result-track:11057a436ecada6cfcce99386d8a3bb0f72b743530e32e02b1516cd04543db1d` |
| 63 | `theorem` | [greenShift_three_quarters](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/greenshift-three-quarters.md) | 387 | `result-track:9027a8bf9406e0722f8846c73f55cc1e519e31f7ec4061b923beb689d6659355` |
| 64 | `theorem` | [greenShift_one](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/greenshift-one.md) | 393 | `result-track:05035a47aaba2c6d32fe53713f5f297cc93add30c26e7d1ade2752c2cde0e7d9` |
| 65 | `theorem` | [greenShift_add_half](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/greenshift-add-half.md) | 399 | `result-track:46546271bb6d7bd0da814e3d28e7c34bd0bde1fce50c9d6f702d7086f91a2b66` |
| 66 | `theorem` | [lightness_add_half](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/lightness-add-half.md) | 407 | `result-track:6489f8824a3de1d0668c28e61a0cd24545ddc52eca989d98e1585ac10c422045` |
| 67 | `theorem` | [lightness_periodic](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/lightness-periodic.md) | 414 | `result-track:e6800bf94b52dec24940317cfc90803f40463afa14822e83713a20d9eebaba8f` |
| 68 | `theorem` | [opacity_periodic](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/opacity-periodic.md) | 420 | `result-track:8d8909d10a6dd84cfe97d5b790c51b2d23ab47ea7913d7ad90a340d07b3202a5` |
| 69 | `theorem` | [greenShift_periodic](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/greenshift-periodic.md) | 427 | `result-track:61ee97d226dc3eb242f5509b1311a344aca531d3d6b05b2311a4805cbc587ae0` |
| 70 | `theorem` | [sample_periodic](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/sample-periodic.md) | 434 | `result-track:b8373a7c9caa26f73bbea4ae543fa78eddf4fc4b65e3ca5d5edd9986da4f87c2` |
| 71 | `theorem` | [colorSample_periodic](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/colorsample-periodic.md) | 442 | `result-track:2b4b845779d6168d4bc148a8d97f79a5819a905f6f80f6f96572bb8ba2d6d058` |
| 72 | `theorem` | [sample_zero](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/sample-zero.md) | 451 | `result-track:6f4e0b726a154495149f9bf62f334834c5e12c910644135e0d94842d88696f2c` |
| 73 | `theorem` | [sample_quarter](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/sample-quarter.md) | 458 | `result-track:49096560deab89d8649d243ad29734246364588d8c568ca40c23ca25eac6e1ae` |
| 74 | `theorem` | [sample_half](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/sample-half.md) | 465 | `result-track:bcee367a0e0184eb8b8930dab963c3027ad5f7d342a781de87e0eb22a54c63c8` |
| 75 | `theorem` | [sample_three_quarters](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/sample-three-quarters.md) | 472 | `result-track:429fbdd7dd10e285600c998c5eef471d2e51f3e3ebfa39ed4fcd9fcab8a31f9e` |
| 76 | `theorem` | [sample_one](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/sample-one.md) | 479 | `result-track:69a46c02b50a27a501e6855db2e2967f49ce454ee8d5f54cfb927447aa4347b2` |
| 77 | `theorem` | [colorSample_zero](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/colorsample-zero.md) | 486 | `result-track:c2891c99cf37148c675c6c9e342eb7f32cf34c9c04758a5bccb0a648ed74dca6` |
| 78 | `theorem` | [colorSample_quarter](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/colorsample-quarter.md) | 494 | `result-track:5a5df6e7016406f2457cac79789ca256597e7a25929294c37ec497a4b143ac75` |
| 79 | `theorem` | [colorSample_half](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/colorsample-half.md) | 503 | `result-track:7b2f51fd3adb43e737729a32a12af24de86c59022ff3bd804092b2894e6d67fc` |
| 80 | `theorem` | [colorSample_three_quarters](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/colorsample-three-quarters.md) | 511 | `result-track:4c50b49037ef5e28b1b59c949924617d26ba6460bd0d52e91840919798f315d2` |
| 81 | `theorem` | [colorSampleAt_zero](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/colorsampleat-zero.md) | 520 | `result-track:531be5ebc5429ee9ca5423aa22ecb0e184a94be60c835363b5a25c8c8fa2582f` |
| 82 | `theorem` | [colorSampleAt_quarter](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/colorsampleat-quarter.md) | 525 | `result-track:1577452b05cb14e07f1b96f0013e9ae207b4ca664b667f8852231de76cb678f2` |
| 83 | `theorem` | [colorSampleAt_half](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/colorsampleat-half.md) | 531 | `result-track:a7c40663e6e51688a0692baf4d621f0a536886d12160ac196fb370a66d54d5c6` |
| 84 | `theorem` | [colorSampleAt_three_quarters](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/colorsampleat-three-quarters.md) | 536 | `result-track:f7710a2c21da6924d0ff67acda6fc837782832fbbd31c1592cc3aa7fe29d69ca` |
| 85 | `theorem` | [normalized_neutral_half_distinct](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/normalized-neutral-half-distinct.md) | 547 | `result-track:377eb53baf3d8acf28190c5119d338f4ea819f219ec14d6b5a7a7c77031c72e3` |
| 86 | `theorem` | [sample_wrap](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/sample-wrap.md) | 557 | `result-track:5ef45823f126dd9280469ce3f695ec1d5717070ecf323171c4497a5558386288` |
| 87 | `theorem` | [neutral_antipodes_distinct](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/neutral-antipodes-distinct.md) | 566 | `result-track:8864c306c1ea163ef7d3c5185974e923ae97f7f89e342534eb44534a2fac281e` |
| 88 | `structure` | [PhaseDerivedColor](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/phasederivedcolor.md) | 580 | `declaration-track:12fc86be85c9a2ae4701f5dd8b2c00e82767c1a768125571b71105ecaa6d4416` |
| 89 | `theorem` | [phaseDerivedColor_retains_authoritative_phase](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/phasederivedcolor-retains-authoritative-phase.md) | 586 | `result-track:ceccadabfcf50da4ef991bd68aba77f4ac6189f7fdbc5898716e2bec08562d81` |
| 90 | `def` | [ProvesColorimetricTorsion](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/provescolorimetrictorsion.md) | 597 | `declaration-track:9a82901d98dbafe889df6a6bbf93aa2ea38dada62cb63346018e4da0f408d7c7` |
| 91 | `theorem` | [cyclicNeutral_has_no_colorimetric_torsion_authority](../../../../RealFunctions/CyclicNeutralPublicPhaseDerivedColor.lean/declarations/cyclicneutral-has-no-colorimetric-torsion-authority.md) | 600 | `result-track:8f0b3f1027c1ae7e8c9ad47cd892f9e4e6dd89d11a45790e2d98de38d668d130` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=16d2afa2d00cb578d661df93888fb962bdcd9ff04a726a4b679f23e37b726369 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/CyclicNeutral/Variant102688562a41b130141170beb616ce72d744461fd5b42b66b366a565b747d4fd.lean","GRWTSK/_verification/specifications/Analysis/CyclicNeutral/Variant102688562a41b130141170beb616ce72d744461fd5b42b66b366a565b747d4fd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
