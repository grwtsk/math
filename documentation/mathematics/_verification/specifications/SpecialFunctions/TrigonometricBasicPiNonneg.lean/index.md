# Verification target: Trigonometric Basic Pi Nonneg

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a5eff052333541ad7bcf8a1e19037cac3d154ae6",
  "lexical_observation_count": 274,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variantcfe0d0a0f849d6f8d4b80e47ebe065776344d1629c0733e088f6ed893523e3da.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/index.md) · [Full source](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a5eff052333541ad7bcf8a1e19037cac3d154ae6`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variantcfe0d0a0f849d6f8d4b80e47ebe065776344d1629c0733e088f6ed893523e3da.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variantcfe0d0a0f849d6f8d4b80e47ebe065776344d1629c0733e088f6ed893523e3da.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.NegOnePow` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Field.Periodic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.QuadraticDiscriminant` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Exp` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [continuous_sin](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/continuous-sin.md) | 52 | `result-track:56ca67a541941b84ec17a599ccb348e984b3c1bfe8a8334551ea83312538abb1` |
| 2 | `theorem` | [continuousOn_sin](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/continuouson-sin-source-edition-2.md) | 57 | `result-track:cf18a1706923c74f3e9f179734d0188b146e4826d014a32f15e8717e1f2c2e3f` |
| 3 | `theorem` | [continuous_cos](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/continuous-cos.md) | 61 | `result-track:061e7e342c6a7bd3f4f20f61651e4dc906cdbd9a19c5dae20b081f520e2105df` |
| 4 | `theorem` | [continuousOn_cos](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/continuouson-cos-source-edition-2.md) | 66 | `result-track:860f74746e5b7f56e88c9d6a9ba34108da5a1cea44ae2e018495098f12bdd95a` |
| 5 | `theorem` | [continuous_sinh](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/continuous-sinh.md) | 70 | `result-track:1a36886547eda78523f1e8a7e70ed6e39fa3633a6be1e6ce01932d903952a44a` |
| 6 | `theorem` | [continuous_cosh](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/continuous-cosh.md) | 75 | `result-track:1c58f720a1004fcf9807a05839f44c9c8bcc9ad6e8c3cb8b17f12f4f912e4f20` |
| 7 | `theorem` | [continuous_sin](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/continuous-sin-source-edition-2.md) | 86 | `result-track:811687a4f8282a00439ae4abeb39f8f1cc4459314021c19a4c0b98c0d6dd317d` |
| 8 | `theorem` | [continuousOn_sin](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/continuouson-sin.md) | 90 | `result-track:b933aacb7c9b9f015ee163cd8a684444de66ed4a3dcc00c7e7189fbe826e3588` |
| 9 | `theorem` | [continuous_cos](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/continuous-cos-source-edition-2.md) | 94 | `result-track:e9fea3e67048ffd64e6d734b2fe23e52bd0c2bb225b8e55441f9397d81924d8a` |
| 10 | `theorem` | [continuousOn_cos](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/continuouson-cos.md) | 98 | `result-track:79555bc341df882496c431cb5eb649df794d302b6e6554fb0605714bfe4b7162` |
| 11 | `theorem` | [continuous_sinh](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/continuous-sinh-source-edition-2.md) | 102 | `result-track:76a9c6e111ac149650078e994fb460872027de1c93a37e90bb04cd27177c53f4` |
| 12 | `theorem` | [continuous_cosh](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/continuous-cosh-source-edition-2.md) | 106 | `result-track:e0037e46dbee76265a0089937689f3344a441496e77f6a810847b9b2d5139dad` |
| 13 | `theorem` | [exists_cos_eq_zero](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/exists-cos-eq-zero.md) | 113 | `result-track:868977d531d83fa34e7ed70e4765ffd5c3cfd704f4715cca578aaf8cd31cb390` |
| 14 | `def` | [pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/pi.md) | 121 | `declaration-track:3dd27628db32bf8c06d3f540567da63be138751ff1b24a85524f85f84c232ec8` |
| 15 | `theorem` | [cos_pi_div_two](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-pi-div-two.md) | 128 | `result-track:1dcaf95f32e77e4db692d7f5f716908b995fc375147282e0538c0947f486f695` |
| 16 | `theorem` | [one_le_pi_div_two](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/one-le-pi-div-two.md) | 132 | `result-track:94b7c439608493e00fc7f6c6ee91856e494c718652bc409d4336e01d33d0fafc` |
| 17 | `theorem` | [pi_div_two_le_two](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/pi-div-two-le-two.md) | 136 | `result-track:5293cb1962a80f57574e2ed13db501d26e67704a3dc9d5dbc6c75528147fba0e` |
| 18 | `theorem` | [two_le_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/two-le-pi.md) | 140 | `result-track:656171d0e409a41a6653fe9d15ad54744cfed45fe25df9a49ca55808f24f3efd` |
| 19 | `theorem` | [pi_le_four](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/pi-le-four.md) | 144 | `result-track:5c3f12c27deb2c23c52257f6df055303c3b8232b39ca85d6817faa36c12cf368` |
| 20 | `theorem` | [pi_pos](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/pi-pos-source-edition-2.md) | 151 | `result-track:c084f729919b84847e38f300663c9426f2472c14fec7dbead1fa968af8ffc643` |
| 21 | `theorem` | [pi_nonneg](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/pi-nonneg.md) | 155 | `result-track:ff7fdd59e9ffdcbf2a84abe935c16243cd1f24f1511d9771002e5f22a0434847` |
| 22 | `theorem` | [pi_ne_zero](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/pi-ne-zero.md) | 158 | `result-track:402f61c259ed19658379b22d885ad684d9fdc7b2e2fc39bb9f02449d5a2171fa` |
| 23 | `theorem` | [pi_div_two_pos](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/pi-div-two-pos.md) | 161 | `result-track:2d4fc5074a19d7cf629b40bebe33edb7fab9a718e64a3638cb83e70953ebb24c` |
| 24 | `theorem` | [two_pi_pos](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/two-pi-pos.md) | 164 | `result-track:4c57196149629cfc3cf2f34bc4d27eef4b3e7a8c1001cfa868ca254beaa018e9` |
| 25 | `def` | [evalRealPi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/evalrealpi.md) | 173 | `declaration-track:6ce55a829ffce2435dcc632b94110a8c0e22353468f0576c0f096b787e770ee8` |
| 26 | `def` | [pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/pi-source-edition-2.md) | 189 | `declaration-track:8a06e8d6e0450708918063e5694dcda939c42ba6a59dbc8e6899f989fba8bc94` |
| 27 | `theorem` | [coe_real_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/coe-real-pi.md) | 193 | `result-track:8e1bf49419463b2ec514bc527a896365b34922d62761ec8dc9f4ecd9f66dfd96` |
| 28 | `theorem` | [pi_pos](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/pi-pos.md) | 196 | `result-track:0d3fba39d7ec75a3f4d7ab6b7fb7e72872b58a3b0eb6478c1df196ec19e492e2` |
| 29 | `theorem` | [pi_ne_zero](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/pi-ne-zero-source-edition-2.md) | 198 | `result-track:5698f7c3a7cd19cc238acb3d40a5d9f6cf5223668beae6ce6b6d616785ba85b2` |
| 30 | `theorem` | [sin_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-pi.md) | 206 | `result-track:3a44fecf276e95ef672737883bb2bd8b508926a7a5acd107bddee5f139c34e61` |
| 31 | `theorem` | [cos_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-pi-source-edition-2.md) | 210 | `result-track:ad4834788fdeb5c842f7aca8af6810932de57a5ff653dc818766196c33926a0b` |
| 32 | `theorem` | [sin_two_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-two-pi-source-edition-2.md) | 215 | `result-track:1f04a1cee9537178b5c3885ed4703e48445e8efaf636d5f33105c68eb2c65497` |
| 33 | `theorem` | [cos_two_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-two-pi-source-edition-2.md) | 218 | `result-track:6f4594f7ab2737ab966551615faff681f8dff20f76f48612824e0fa418bc0102` |
| 34 | `theorem` | [sin_antiperiodic](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-antiperiodic-source-edition-2.md) | 220 | `result-track:b3ad58850ab703c361f4b40a944cf40f35a6b23e4a00e14dabfacafc31b71973` |
| 35 | `theorem` | [sin_periodic](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-periodic.md) | 222 | `result-track:1b3d80ea18dd895ba775f424255c73200eb94c12a32390504bd9bfb7a2157d5e` |
| 36 | `theorem` | [sin_add_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-add-pi-source-edition-2.md) | 226 | `result-track:b47b0de4e5c60b9b2c157043241bd39cf9546fbd1716b8a91732a0342acddb42` |
| 37 | `theorem` | [sin_add_two_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-add-two-pi-source-edition-2.md) | 230 | `result-track:de530f9555c18ee87469029b0994a9d45809c09666fd9081962297982ac849c1` |
| 38 | `theorem` | [sin_sub_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-sub-pi-source-edition-2.md) | 234 | `result-track:4912e3fcd5a43d5ab00e6f3fc127ccb4a53bc7df958a93dd855bac94a195fcc2` |
| 39 | `theorem` | [sin_sub_two_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-sub-two-pi-source-edition-2.md) | 238 | `result-track:d2153b1e5aef2cc4ecf631a8cdebd94ef7c17ba7934a63462ca0ff1c1ad456ce` |
| 40 | `theorem` | [sin_pi_sub](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-pi-sub.md) | 242 | `result-track:401e29183cb9abfbfd3e82866939fbd3727b16e1b59fb9fba023eb67b2ced4a2` |
| 41 | `theorem` | [sin_two_pi_sub](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-two-pi-sub.md) | 246 | `result-track:8b5ba747b7718fe9698efb6b9f6615fd60c49d99b7910338765ec4b417ad7205` |
| 42 | `theorem` | [sin_nat_mul_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-nat-mul-pi-source-edition-2.md) | 250 | `result-track:3b5058d59293b8bfb3ab980b7ad40d9aa029d58b6ba95fb7daf4f8dddf4df163` |
| 43 | `theorem` | [sin_int_mul_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-int-mul-pi.md) | 254 | `result-track:34ccaa138e4b101cc281e192f7a370cceec79823e5e355439b1a080a30c57c81` |
| 44 | `theorem` | [sin_add_nat_mul_two_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-add-nat-mul-two-pi-source-edition-2.md) | 258 | `result-track:a205898fabf70062763228d31066ab6c4ef69062a28c7e76b5e2791374483cb9` |
| 45 | `theorem` | [sin_add_int_mul_two_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-add-int-mul-two-pi.md) | 262 | `result-track:2619b0d9732221da5a5712afa90024c96c2dd6849a0527b290ce76df28990548` |
| 46 | `theorem` | [sin_sub_nat_mul_two_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-sub-nat-mul-two-pi.md) | 266 | `result-track:a6ddcb4d7f5fa65c1f3898661365b9d467fe4dc400beeeed5729dffa08ff4aa1` |
| 47 | `theorem` | [sin_sub_int_mul_two_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-sub-int-mul-two-pi-source-edition-2.md) | 270 | `result-track:52b07bfe20bd159be17a09e985b3191a1b7adc2d40d6122a0228b85e71f2444e` |
| 48 | `theorem` | [sin_nat_mul_two_pi_sub](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-nat-mul-two-pi-sub-source-edition-2.md) | 274 | `result-track:e8e8259a6d984d78573b910cbf1c35d4c30c7c9e95d226381e00fa8274b04cae` |
| 49 | `theorem` | [sin_int_mul_two_pi_sub](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-int-mul-two-pi-sub.md) | 278 | `result-track:aceac036beaf476c94806a8f18f16ea2941123e377145b60d3974f6f6653330d` |
| 50 | `theorem` | [sin_add_int_mul_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-add-int-mul-pi.md) | 281 | `result-track:3db8401e46c0251d3a82e9b4459645eb49d23564c62f4aa79615df55093f6e5e` |
| 51 | `theorem` | [sin_add_nat_mul_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-add-nat-mul-pi.md) | 284 | `result-track:6bd4e61a615a6c70419fcbf219c5b3144e2b44ed99c057d505642a60b7816ce6` |
| 52 | `theorem` | [sin_sub_int_mul_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-sub-int-mul-pi.md) | 287 | `result-track:81a523391d779a1587c465a42df4f851b8299d10e5ca5f9346c4bb8211b9815b` |
| 53 | `theorem` | [sin_sub_nat_mul_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-sub-nat-mul-pi.md) | 290 | `result-track:08a13a251935793d4556285595fd707717f97e47ca78d6adb60ff9cb909c1636` |
| 54 | `theorem` | [sin_int_mul_pi_sub](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-int-mul-pi-sub.md) | 293 | `result-track:cc8244f9082ed8420431c8ac71782d3209efa14de477fca533d92a6634f4fabd` |
| 55 | `theorem` | [sin_nat_mul_pi_sub](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-nat-mul-pi-sub.md) | 296 | `result-track:b5a9522f1e01525deea83162f357730a80a59cd2c244148a5df13ca4f1f1dbd6` |
| 56 | `theorem` | [cos_antiperiodic](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-antiperiodic.md) | 299 | `result-track:82120793145ad14c97d46ef4da2ed0bd3eadde9e1d95d7e97bb4bfc7dcf643c1` |
| 57 | `theorem` | [cos_periodic](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-periodic-source-edition-2.md) | 301 | `result-track:a05ba16e85b26c6bcea10a9addfb92ca5e0b6ea27f4c4ad9c4cf5c1781222b6b` |
| 58 | `theorem` | [abs_cos_int_mul_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/abs-cos-int-mul-pi.md) | 305 | `result-track:6728815acca02e2d916c228ab77dc68f1eba532c75f0ee58fad4ff37bb4a93af` |
| 59 | `theorem` | [cos_add_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-add-pi.md) | 309 | `result-track:943061f7f94610f2741dcc8a0327504c8c2b47afbf401a1af50d8fac9bbe33d2` |
| 60 | `theorem` | [cos_add_two_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-add-two-pi-source-edition-2.md) | 313 | `result-track:d8af600c7ff5326caec0b2d2cacc1d12211906046b87ca3216bc5e65a3d6360c` |
| 61 | `theorem` | [cos_sub_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-sub-pi-source-edition-2.md) | 317 | `result-track:6d46bac4455c6eaaf4dfd3699e85433bf97c9a5942423ed20cf1ccc5eb21f14d` |
| 62 | `theorem` | [cos_sub_two_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-sub-two-pi.md) | 321 | `result-track:7316f207ee284b9f656f5d96e7c11ee2197a642e110b72bff08d03f6381a3289` |
| 63 | `theorem` | [cos_pi_sub](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-pi-sub-source-edition-2.md) | 325 | `result-track:fcf198ab4c9983b8ea1c168d7a859045eb39a4935b05e4c9a4702da2332d509c` |
| 64 | `theorem` | [cos_two_pi_sub](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-two-pi-sub.md) | 329 | `result-track:31e3200ee0ea334ee6df62d513d1399be9d94165b2fdbea0afe8fc80770b4203` |
| 65 | `theorem` | [cos_nat_mul_two_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-nat-mul-two-pi.md) | 333 | `result-track:16d32937334d3ef0207b63c3010f6e88734b6d08aa9538e715d539a5eedffced` |
| 66 | `theorem` | [cos_int_mul_two_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-int-mul-two-pi-source-edition-2.md) | 337 | `result-track:ebb6c6875784c486fb80ea760552b32ea746d522bf363026e1fbb0e83e50c190` |
| 67 | `theorem` | [cos_add_nat_mul_two_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-add-nat-mul-two-pi.md) | 341 | `result-track:917773525422a4dfdc4e4e4843b53855562f53f0f5e2616932123335ac33d921` |
| 68 | `theorem` | [cos_add_int_mul_two_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-add-int-mul-two-pi-source-edition-2.md) | 345 | `result-track:864ba7687a7ed659ccc9aeb978eeaf83cc5835ac15f15f552a8749a9a813124a` |
| 69 | `theorem` | [cos_sub_nat_mul_two_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-sub-nat-mul-two-pi.md) | 349 | `result-track:050fa63422882ae3412d8ea49ea79e2324134a5fec13e7d7ffddf3bfa9332ef4` |
| 70 | `theorem` | [cos_sub_int_mul_two_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-sub-int-mul-two-pi-source-edition-2.md) | 353 | `result-track:c8a394dbf0f202e85cce9d61c5e09a683f60c7bbee2e82d1bd62ad3f1ec32e05` |
| 71 | `theorem` | [cos_nat_mul_two_pi_sub](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-nat-mul-two-pi-sub.md) | 357 | `result-track:002601fbef7a1bdd6e2476dc12fd416c693d2c90587a0d4a9bbde52672baf501` |
| 72 | `theorem` | [cos_int_mul_two_pi_sub](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-int-mul-two-pi-sub-source-edition-2.md) | 361 | `result-track:cb90f36ecb3cca7ab25c39eccf2301799d7c5c62518dce2f6fb6342ad5e9f74a` |
| 73 | `theorem` | [cos_add_int_mul_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-add-int-mul-pi.md) | 364 | `result-track:7148a0889167c1e14a786e38262e87bc92e8479425378f32f32b5e5df69c5482` |
| 74 | `theorem` | [cos_add_nat_mul_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-add-nat-mul-pi.md) | 367 | `result-track:02e6df968c33bbbd2130e61a612b46f60e2d0bbfac3d466e8f1ede73f37eac88` |
| 75 | `theorem` | [cos_sub_int_mul_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-sub-int-mul-pi.md) | 370 | `result-track:ceb332fb9770b1820f871b043f44c33e75d2d92196f58c4d400780bda83a4130` |
| 76 | `theorem` | [cos_sub_nat_mul_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-sub-nat-mul-pi.md) | 373 | `result-track:78bd19d539396cb92c6a57f90acd9d731d2ba3dee4e4505a2726c571a253e029` |
| 77 | `theorem` | [cos_int_mul_pi_sub](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-int-mul-pi-sub.md) | 376 | `result-track:b0badb1a2c2075e09d6942970b872efb8fa26afa0b599fed25c5926601f92300` |
| 78 | `theorem` | [cos_nat_mul_pi_sub](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-nat-mul-pi-sub.md) | 379 | `result-track:1e8036c9c6a50dcd43b9b4ce18a272e47996ab54e8a057266fa491b8f04bbd92` |
| 79 | `theorem` | [cos_nat_mul_two_pi_add_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-nat-mul-two-pi-add-pi-source-edition-2.md) | 382 | `result-track:c511c1f9d1ff0c0cb592518fe0367a9ab5f75ef0559e44d1978fe2d1e288c89d` |
| 80 | `theorem` | [cos_int_mul_two_pi_add_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-int-mul-two-pi-add-pi.md) | 385 | `result-track:59fc421803f56d854fe53f022cfd76c60a6f6199d7aaf3a7818a9779c48dbf7e` |
| 81 | `theorem` | [cos_nat_mul_two_pi_sub_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-nat-mul-two-pi-sub-pi-source-edition-2.md) | 388 | `result-track:a128b8c431bfe852ad3a467ec4543812097889624c15e9307355121b7ceed9e1` |
| 82 | `theorem` | [cos_int_mul_two_pi_sub_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-int-mul-two-pi-sub-pi-source-edition-2.md) | 391 | `result-track:e2ca8fed485dba2eb8d1c346a61af111065dc76d7b0f4e435e6376ad7d6c857b` |
| 83 | `theorem` | [sin_pos_of_pos_of_lt_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-pos-of-pos-of-lt-pi.md) | 394 | `result-track:24c4d209147b37c0faddad3b46d605bb814731cf041ca5e75579811335d99b7f` |
| 84 | `theorem` | [sin_pos_of_mem_Ioo](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-pos-of-mem-ioo.md) | 402 | `result-track:758ab431545defb50f82ac61d977fabede05b8e94fad40acbaa96ad0612362df` |
| 85 | `theorem` | [sin_nonneg_of_mem_Icc](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-nonneg-of-mem-icc.md) | 405 | `result-track:f1b5a3130672d95e377df1ff2d5b7fe7f41bb05505f9e83a256a144c57595277` |
| 86 | `theorem` | [sin_nonneg_of_nonneg_of_le_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-nonneg-of-nonneg-of-le-pi.md) | 411 | `result-track:af20f98e64082c130da0bb6bffbf6daa59d6924df667f9cb733dfdd8e86d8e2c` |
| 87 | `theorem` | [sin_neg_of_neg_of_neg_pi_lt](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-neg-of-neg-of-neg-pi-lt.md) | 414 | `result-track:5cf1400117f5e111ec6db5dad8a54d4fd2104da06fc2615f0bee6ddae5b41259` |
| 88 | `theorem` | [sin_nonpos_of_nonnpos_of_neg_pi_le](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-nonpos-of-nonnpos-of-neg-pi-le.md) | 417 | `result-track:a74cbb7b10f3faf28ff9143e1953837c48ce549293891de4ce7f6f289047656a` |
| 89 | `theorem` | [sin_pi_div_two](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-pi-div-two.md) | 421 | `result-track:9bf012f9ca7aeec26eb1498ae260488229b6727ac5be6e2bd7856720d7a2b34d` |
| 90 | `theorem` | [sin_add_pi_div_two](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-add-pi-div-two-source-edition-2.md) | 428 | `result-track:d4bc4aac2d335deee36cdf75862ebcaedd99265f845faedef18bee74b69665e3` |
| 91 | `theorem` | [sin_sub_pi_div_two](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-sub-pi-div-two-source-edition-2.md) | 430 | `result-track:fa743dfcef34cd194a9de31f7258c6de4f88d884d20f44b9f95ef6f1437690fd` |
| 92 | `theorem` | [sin_pi_div_two_sub](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-pi-div-two-sub-source-edition-2.md) | 432 | `result-track:eaebb4fd4e10227bedb8a1ad5ea2c1719232741c50f316c7642e293931d5327a` |
| 93 | `theorem` | [cos_add_pi_div_two](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-add-pi-div-two.md) | 434 | `result-track:263c24a9ec87b10d97b82afa83c615725c9ab22e12d477edf960259183460783` |
| 94 | `theorem` | [cos_sub_pi_div_two](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-sub-pi-div-two-source-edition-2.md) | 436 | `result-track:f7817e384d8ec1771833797993b8f97a2ae00ed6508ed10b3ac3421cc614bf1d` |
| 95 | `theorem` | [cos_pi_div_two_sub](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-pi-div-two-sub-source-edition-2.md) | 438 | `result-track:e0b0a598234986468a0b2e0e4da8ec18e95b817cf17561c7a31f43afd93dbf26` |
| 96 | `theorem` | [cos_pos_of_mem_Ioo](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-pos-of-mem-ioo.md) | 441 | `result-track:db70e2d09419aabdb435099a75c79d2d3e76593c85fc92c5c6f575a6f226c9bd` |
| 97 | `theorem` | [cos_nonneg_of_mem_Icc](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-nonneg-of-mem-icc.md) | 444 | `result-track:f8a6ad328037a2750e22aadb0dc204089311641ed14ff4d6a38ab69200910763` |
| 98 | `theorem` | [cos_nonneg_of_neg_pi_div_two_le_of_le](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-nonneg-of-neg-pi-div-two-le-of-le.md) | 447 | `result-track:2305b5f94dc557556e08fe37d6593688adcfd2116d6bc05ecba77d41c1029125` |
| 99 | `theorem` | [cos_neg_of_pi_div_two_lt_of_lt](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-neg-of-pi-div-two-lt-of-lt.md) | 451 | `result-track:285d56d67295e420ae5b985cc6c9e796a021ce306782d07ba680f03df79a8607` |
| 100 | `theorem` | [cos_nonpos_of_pi_div_two_le_of_le](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-nonpos-of-pi-div-two-le-of-le.md) | 455 | `result-track:28e56b2bae1cb8278ef1e092a2ce00d23b649aca84e499b6ee0d28d8836d3df7` |
| 101 | `theorem` | [sin_eq_sqrt_one_sub_cos_sq](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-eq-sqrt-one-sub-cos-sq.md) | 459 | `result-track:251670fc0d88efaea68a4a1cae9c073a6f1572454835c43e56de51e9bc492d57` |
| 102 | `theorem` | [cos_eq_sqrt_one_sub_sin_sq](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-eq-sqrt-one-sub-sin-sq.md) | 463 | `result-track:8be89308fd9da519617fe65d6c4893b72ac481a73967370913f79e0ea9c48d44` |
| 103 | `lemma` | [cos_half](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-half.md) | 467 | `result-track:89999aace065cf4abd0f2fca1e0e874fc7005d696362508bd9f07f2b486e8bea` |
| 104 | `lemma` | [abs_sin_half](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/abs-sin-half.md) | 471 | `result-track:7da79b9b070ad40d2ca7c15d8d1f13ad558f86cb115458d455728a9c0641e400` |
| 105 | `lemma` | [sin_half_eq_sqrt](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-half-eq-sqrt.md) | 474 | `result-track:1e21c6a93b7c3db0077e506d17da18f0dc9e473c993df4778a91516ea9a19c6a` |
| 106 | `lemma` | [sin_half_eq_neg_sqrt](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-half-eq-neg-sqrt.md) | 479 | `result-track:cca245355959fc6fef2739e227f681800113baa4d8b4c573b3d1da8426fdc7ca` |
| 107 | `theorem` | [sin_eq_zero_iff_of_lt_of_lt](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-eq-zero-iff-of-lt-of-lt.md) | 484 | `result-track:96403d43c06e62432af97cff5bdb8f907330a9c19813224a9ef673024e64ba14` |
| 108 | `theorem` | [sin_eq_zero_iff](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-eq-zero-iff.md) | 492 | `result-track:af92f51b50a0d7689d815275b6a45549269535a76e595e08ac14c68fd71a23fb` |
| 109 | `theorem` | [sin_ne_zero_iff](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-ne-zero-iff.md) | 502 | `result-track:32aa3dbccd2e7bd52cbefe534b7b71f749b8ffd6d48c8dbe783ee78408cc585e` |
| 110 | `theorem` | [sin_eq_zero_iff_cos_eq](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-eq-zero-iff-cos-eq.md) | 505 | `result-track:28990b4d1fc2eeebd56674134632dceeaf24ee0ef084e2f504e89bd4605e18f0` |
| 111 | `theorem` | [cos_eq_one_iff](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-eq-one-iff.md) | 509 | `result-track:00a289b7840888108132c0ab6ba45513dd1b05c81c1b1e9ea795b0bb28205078` |
| 112 | `theorem` | [cos_eq_one_iff_of_lt_of_lt](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-eq-one-iff-of-lt-of-lt.md) | 524 | `result-track:ac86e92e2f82dfc6f55d696738fa489729b6b51fd90f96a3ae114efa02751964` |
| 113 | `theorem` | [sin_lt_sin_of_lt_of_le_pi_div_two](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-lt-sin-of-lt-of-le-pi-div-two.md) | 534 | `result-track:8f5178884fd4598707969752d9dd92da570b01681f52e65e352802697b377b8b` |
| 114 | `theorem` | [strictMonoOn_sin](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/strictmonoon-sin.md) | 541 | `result-track:14fef0cc3a56f00ea269b83123b35b0851ecd95fa4fe0277f52573d416d67c34` |
| 115 | `theorem` | [cos_lt_cos_of_nonneg_of_le_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-lt-cos-of-nonneg-of-le-pi.md) | 544 | `result-track:c1c15b7a4aa97a25e29ca4708c9fb2f0539289e963bdb33f9ff55b2bf4854f45` |
| 116 | `theorem` | [cos_lt_cos_of_nonneg_of_le_pi_div_two](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-lt-cos-of-nonneg-of-le-pi-div-two.md) | 549 | `result-track:912075bad02cc00c9cc1b4e97e2ac895cf54a7cc1e0a10cb4dd6ef5d8fe0fb4e` |
| 117 | `theorem` | [strictAntiOn_cos](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/strictantion-cos.md) | 553 | `result-track:87397b658f47423358df7e39283145c898514450685dbadab3c0746ef822b0ce` |
| 118 | `theorem` | [cos_le_cos_of_nonneg_of_le_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-le-cos-of-nonneg-of-le-pi.md) | 556 | `result-track:f1125ad2386616e48de3b94246ba9f5d2f00df0a8e20d9df33c3f695ae25a9f9` |
| 119 | `theorem` | [sin_le_sin_of_le_of_le_pi_div_two](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-le-sin-of-le-of-le-pi-div-two.md) | 560 | `result-track:1aa0e22e9ec25ec8c4eb5b970c6ec91d8b604a53e6dbe13a1b1cfbd5970ab7ed` |
| 120 | `theorem` | [injOn_sin](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/injon-sin.md) | 564 | `result-track:ade5632540e74a57777d14c541f1d1ee310d1b5aaadfccc73f19195c3eca0186` |
| 121 | `theorem` | [injOn_cos](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/injon-cos.md) | 567 | `result-track:e2dd71f24569115f0cab3c5e38798115338647e84f633f909935265022c28a74` |
| 122 | `theorem` | [surjOn_sin](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/surjon-sin.md) | 570 | `result-track:845057e76b887bf27f41cd657b4d4320e1c7967346acbed5e595ef44d23f97bd` |
| 123 | `theorem` | [surjOn_cos](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/surjon-cos.md) | 574 | `result-track:c9ed27b2b494e6b46b958911eca5d60c98f3fb4a34b0f8d6a89f70864084a963` |
| 124 | `theorem` | [sin_mem_Icc](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-mem-icc.md) | 577 | `result-track:c338ebfc6cd636a5c60c327ddc1fe45afd0432ce890f3367dba7455c322b35c8` |
| 125 | `theorem` | [cos_mem_Icc](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-mem-icc.md) | 580 | `result-track:292ef527ae5e02f2a6fc21a9daf40995e7db7aebdfdcfb4d9f3d5b2d1f8c2ad4` |
| 126 | `theorem` | [mapsTo_sin](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/mapsto-sin.md) | 583 | `result-track:dabc1b7a475bc8be120f84712fd8756824d2cec4f02b30242fa93d98d34a09ab` |
| 127 | `theorem` | [mapsTo_cos](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/mapsto-cos.md) | 585 | `result-track:fc037fd79b0a8071f9a8575f5a47eb3a88d043624fb9d63991611f3b93fe1bf0` |
| 128 | `theorem` | [bijOn_sin](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/bijon-sin.md) | 587 | `result-track:5da3105f66032f6ac621990d31fb51a18b16c457be42aa424bbe7e7afc5a71b0` |
| 129 | `theorem` | [bijOn_cos](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/bijon-cos.md) | 590 | `result-track:f17865123bce01d139cc22b8478cd6c9a1298760923063c2f7f256316c626e2b` |
| 130 | `theorem` | [range_cos](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/range-cos.md) | 594 | `result-track:648f7297b2893ab3a80bf43fcffaadede39284d5868801447467edd1236f09d4` |
| 131 | `theorem` | [range_sin](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/range-sin.md) | 598 | `result-track:47cea818c86f3d07f9ad6ae9d8e7de514ed0b027df5b04e0b39a04d0d811e742` |
| 132 | `theorem` | [range_cos_infinite](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/range-cos-infinite.md) | 601 | `result-track:1e2592708133bfec976f6d8c732ac9c694ae1119a8f8950c5d183cec28884c6e` |
| 133 | `theorem` | [range_sin_infinite](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/range-sin-infinite.md) | 605 | `result-track:590d0deb23bfdf126f86b8bfc912eeef0145b77e16a67e2a9eaff12ffb6c63c3` |
| 134 | `def` | [sqrtTwoAddSeries](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sqrttwoaddseries.md) | 617 | `declaration-track:819181e9ba195eaf4568adf0fa113e275ff64bc51d848b3300279bc56b5a9f10` |
| 135 | `theorem` | [sqrtTwoAddSeries_zero](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sqrttwoaddseries-zero.md) | 621 | `result-track:d62e15d09ebd75b269540f1729719a300d0a699db8b1d5b2b8a3e075c617b42b` |
| 136 | `theorem` | [sqrtTwoAddSeries_one](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sqrttwoaddseries-one.md) | 623 | `result-track:ce3b051db4db1ae31336967142255a887c5ceeaac6cf7c7b5df0a2b3171f7850` |
| 137 | `theorem` | [sqrtTwoAddSeries_two](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sqrttwoaddseries-two.md) | 625 | `result-track:b2d1b3d23b184c9438a5f61d3bd551e62f381f1d70d1d0f9ed8aa23f7d5daea7` |
| 138 | `theorem` | [sqrtTwoAddSeries_zero_nonneg](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sqrttwoaddseries-zero-nonneg.md) | 627 | `result-track:57ac34ecfd87d5caa079a7b96adf41d748e551626fbbdba4e0aa7987393a9789` |
| 139 | `theorem` | [sqrtTwoAddSeries_nonneg](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sqrttwoaddseries-nonneg.md) | 631 | `result-track:5be306aef09ad25e15bf34b637f2668b11af1b084a4d086c0f56c70e034e4118` |
| 140 | `theorem` | [sqrtTwoAddSeries_lt_two](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sqrttwoaddseries-lt-two.md) | 635 | `result-track:7771882c7db18dc552edcc703c1326dd60c37d2e5a4b02ac3b553ffc84386ff1` |
| 141 | `theorem` | [sqrtTwoAddSeries_succ](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sqrttwoaddseries-succ.md) | 644 | `result-track:f1e45fbd0b74404729d0952edf0850bb021ed53b3db6dbbbd1fa75d044a65582` |
| 142 | `theorem` | [sqrtTwoAddSeries_monotone_left](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sqrttwoaddseries-monotone-left.md) | 649 | `result-track:cf3fb209ef44c874d41b370e722ae07c78be35eb92b7a449300d10e58665986b` |
| 143 | `theorem` | [cos_pi_over_two_pow](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-pi-over-two-pow.md) | 657 | `result-track:b3f57ce77082aea0d7a4ed62243b3f7fd9ffaaab5b5b854296a287a10785475e` |
| 144 | `theorem` | [sin_sq_pi_over_two_pow](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-sq-pi-over-two-pow.md) | 667 | `result-track:a8835d27d1cd0cefa33920a5956a57c9a9527b2329a1993fe67930d92acb74c3` |
| 145 | `theorem` | [sin_sq_pi_over_two_pow_succ](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-sq-pi-over-two-pow-succ.md) | 671 | `result-track:8e971d137978f9e5192cc621f08777732afabe18652810936b2d239977a4569a` |
| 146 | `theorem` | [sin_pi_over_two_pow_succ](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-pi-over-two-pow-succ.md) | 680 | `result-track:09e96c3a664b47a05a1a7f91bf152918225b34fb5e5e6019f11cba820db6bdc5` |
| 147 | `theorem` | [cos_pi_div_four](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-pi-div-four.md) | 692 | `result-track:5c94bd6c9cb3c3d7a40beae5d6937ab5fe7b7a3398da0de03a5e193deb4d11f9` |
| 148 | `theorem` | [sin_pi_div_four](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-pi-div-four.md) | 699 | `result-track:c560cf3bf3d44373ecdb7135c138070fa6fb65c421f655883c00761ac2f6929e` |
| 149 | `theorem` | [cos_pi_div_eight](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-pi-div-eight.md) | 706 | `result-track:d61e511a6c2636997200030d0fba967681496644d57fda7e517006876bcd757e` |
| 150 | `theorem` | [sin_pi_div_eight](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-pi-div-eight.md) | 713 | `result-track:6b04f770f95b0eebfa7d8613b89ab3048d6676f0686bcdbb4f1d3663ef0106f1` |
| 151 | `theorem` | [cos_pi_div_sixteen](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-pi-div-sixteen.md) | 720 | `result-track:c82f8139edd352387ca0c2c9a149c81abfc571b372ea1bd97f7cfac5a3f1875a` |
| 152 | `theorem` | [sin_pi_div_sixteen](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-pi-div-sixteen.md) | 727 | `result-track:f04080dbd53ba22e2cff09211d273a07465e2ad0a28b5e5cf2a79b9b3f88c9be` |
| 153 | `theorem` | [cos_pi_div_thirty_two](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-pi-div-thirty-two.md) | 734 | `result-track:588073e3e3e1d95d464587cf4b6a0a5e6e4d3b13b7446a7d146dd249a1a13b56` |
| 154 | `theorem` | [sin_pi_div_thirty_two](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-pi-div-thirty-two.md) | 741 | `result-track:be7322da1ca1ba7a9511f0fd782f4f94c13179f30d1ede9eadf5da2ae0baceda` |
| 155 | `theorem` | [cos_pi_div_three](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-pi-div-three.md) | 750 | `result-track:294e0721023dafd03f061a857507a530fcf322ed87f29f2df8377867a321316b` |
| 156 | `theorem` | [cos_pi_div_six](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-pi-div-six.md) | 764 | `result-track:a95d2191c428759bf68d5472772d9216d903a131e0f70fdc2e49f3f70ca906bd` |
| 157 | `theorem` | [sq_cos_pi_div_six](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sq-cos-pi-div-six.md) | 770 | `result-track:344b9727450e6a8c4af71fcd5b55dfb69641b0c3a5f6107fca15fc09c22d762a` |
| 158 | `theorem` | [sin_pi_div_six](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-pi-div-six.md) | 775 | `result-track:a9f719d3293f91f66a73a8b846ca9d29c45bc4f2358739ee1c79222fded455db` |
| 159 | `theorem` | [sq_sin_pi_div_three](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sq-sin-pi-div-three.md) | 782 | `result-track:fa3ffb5e89cf6e2d428d6d2ec464f2cfcb6dd48d8861919c9381787537239acb` |
| 160 | `theorem` | [sin_pi_div_three](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-pi-div-three.md) | 789 | `result-track:23118aca0194b259ade50c47148b9644b38993ddd98bf0679c05304ffa50536f` |
| 161 | `theorem` | [quadratic_root_cos_pi_div_five](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/quadratic-root-cos-pi-div-five.md) | 794 | `result-track:da6cc70ec38b51fcd44d5857d40fae32e3052ab6ab98a7f1ee7f321c3519032b` |
| 162 | `theorem` | [Polynomial.isRoot_cos_pi_div_five](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/polynomial-isroot-cos-pi-div-five.md) | 819 | `result-track:43df8562862bbb6fba25fdd651acc60b17a319663c4b86db6af29bd25b4e75b5` |
| 163 | `theorem` | [cos_pi_div_five](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-pi-div-five.md) | 825 | `result-track:71dbf4f0677e4a81224661f6ea6af95dabe800ff203801988003d40314cf007c` |
| 164 | `def` | [sinOrderIso](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sinorderiso.md) | 840 | `declaration-track:8d687f341a6763c66acc8960630e7975b2b2eb233f30f6fb45cfb942ce4fed2b` |
| 165 | `theorem` | [coe_sinOrderIso_apply](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/coe-sinorderiso-apply.md) | 844 | `result-track:358c276fa671b68613b767b7ceb3f9d2a4c3a31a0e03991d214cb0039162efab` |
| 166 | `theorem` | [sinOrderIso_apply](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sinorderiso-apply.md) | 847 | `result-track:c92b47a8915385f43797df91057d540d9efa4c0f9bcea8099269a5a68851b3a1` |
| 167 | `theorem` | [tan_pi_div_four](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/tan-pi-div-four.md) | 851 | `result-track:2f5d15ec433bb5fe8ae37058ee420266a5bbeb8fd95ab3b0aa68ea4a22613dbb` |
| 168 | `theorem` | [tan_pi_div_two](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/tan-pi-div-two.md) | 857 | `result-track:668f01aa39df1baacbcf5baf3765dbbdf1ebb71d6705a18ee91ced127e23c5f1` |
| 169 | `theorem` | [tan_pi_div_six](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/tan-pi-div-six.md) | 860 | `result-track:c0b3852792083db24e8ce916ca4b67b67bab31ce65f26a33567c4a64f8536bca` |
| 170 | `theorem` | [tan_pi_div_three](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/tan-pi-div-three.md) | 865 | `result-track:26be6589b71bcab9984cb1709989d943a61f264f7fce75441a6ab7094ec94343` |
| 171 | `theorem` | [tan_pos_of_pos_of_lt_pi_div_two](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/tan-pos-of-pos-of-lt-pi-div-two.md) | 869 | `result-track:a436b49c29ff283458ea77d3717aa72f5d7e7fc0dbe3a6989dfaca96bf8a0146` |
| 172 | `theorem` | [tan_nonneg_of_nonneg_of_le_pi_div_two](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/tan-nonneg-of-nonneg-of-le-pi-div-two.md) | 873 | `result-track:9abaa09fa679b77afc87f52223ca3ec084b70bfea2ff28b0da41431629c0c368` |
| 173 | `theorem` | [tan_neg_of_neg_of_pi_div_two_lt](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/tan-neg-of-neg-of-pi-div-two-lt.md) | 879 | `result-track:0a515a9e0090a5ae34c60f98769febc6498224631c742eb9d6bf857aa3093584` |
| 174 | `theorem` | [tan_nonpos_of_nonpos_of_neg_pi_div_two_le](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/tan-nonpos-of-nonpos-of-neg-pi-div-two-le.md) | 882 | `result-track:659af3e6e2ab17afe4955fb48f38cea63410ff7d6ea4cec9be25fd901134f390` |
| 175 | `theorem` | [strictMonoOn_tan](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/strictmonoon-tan.md) | 886 | `result-track:9ee56dc7b6d803d1aacc73fae40a35856579e3de8e9217f617e88f088a6fe896` |
| 176 | `theorem` | [tan_lt_tan_of_lt_of_lt_pi_div_two](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/tan-lt-tan-of-lt-of-lt-pi-div-two.md) | 892 | `result-track:338dda1a08061191aa6f69ffd9b3ef23b861a13742c6fa87cd127015f2222cea` |
| 177 | `theorem` | [tan_lt_tan_of_nonneg_of_lt_pi_div_two](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/tan-lt-tan-of-nonneg-of-lt-pi-div-two.md) | 896 | `result-track:dec0ca54b43b807fd1592bf8e8e1a9200b53e37cce1a4f8afb78c8e7e00f6be0` |
| 178 | `theorem` | [injOn_tan](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/injon-tan.md) | 900 | `result-track:8c5cdda078c008ad3c887a17301495e8e5cfd65a0b9fe91bdeac04ba456cc012` |
| 179 | `theorem` | [tan_inj_of_lt_of_lt_pi_div_two](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/tan-inj-of-lt-of-lt-pi-div-two.md) | 903 | `result-track:c04914a2c758b5469f04c3532315006fd8b8d5f230b235335214612080867d13` |
| 180 | `theorem` | [tan_periodic](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/tan-periodic.md) | 907 | `result-track:b3f8e30333bb3cb83d389b15008918dda2584018ad7835f7e9f6995ce3159c22` |
| 181 | `theorem` | [tan_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/tan-pi.md) | 911 | `result-track:733bc7f4465234f4062724636d073edde285e92cfe66bc8fd28dde27c079ba1b` |
| 182 | `theorem` | [tan_add_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/tan-add-pi.md) | 913 | `result-track:3ec091b7c25f87d2d8b6665cbdc90762b5d87c179cb26636f9f87e7f30977b1f` |
| 183 | `theorem` | [tan_sub_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/tan-sub-pi-source-edition-2.md) | 916 | `result-track:b8809c7dc4afe3cccd4a982e0a5b8b8a71650e1436cf41c054e2ed2cd289749e` |
| 184 | `theorem` | [tan_pi_sub](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/tan-pi-sub-source-edition-2.md) | 919 | `result-track:bed5d9c2fa3fc11ed366e78a72cd7de4b5b351e27214ba1a1e4f7f56c0a95274` |
| 185 | `theorem` | [tan_pi_div_two_sub](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/tan-pi-div-two-sub.md) | 922 | `result-track:0fe4a6d04ef49d9ac3ae9147bbc5b2f7d320255a2a15a5e45452f5d32a8a114d` |
| 186 | `theorem` | [tan_nat_mul_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/tan-nat-mul-pi.md) | 925 | `result-track:0e31ba8c5a3f41cd897159ebf867ed6ca6705a8f7ced571fddd7ac06852a98bc` |
| 187 | `theorem` | [tan_int_mul_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/tan-int-mul-pi.md) | 928 | `result-track:6d48e3bc6f26ea6de4a6b32bd6b7ca562de1c852d23be04aa7d218ebda5b2e7d` |
| 188 | `theorem` | [tan_add_nat_mul_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/tan-add-nat-mul-pi.md) | 931 | `result-track:4387e26c44c1accec952290b0055eb508d5123cb8b6035691890eef064be4ef3` |
| 189 | `theorem` | [tan_add_int_mul_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/tan-add-int-mul-pi-source-edition-2.md) | 934 | `result-track:e2686eb0f2b8b86ddd99736c2174da957e76636c54554b18678de596633b44fa` |
| 190 | `theorem` | [tan_sub_nat_mul_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/tan-sub-nat-mul-pi.md) | 937 | `result-track:5dcbf9716696c569a6833b8e6d34335c291b6ed013a1c493e418700ac07a86e5` |
| 191 | `theorem` | [tan_sub_int_mul_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/tan-sub-int-mul-pi.md) | 940 | `result-track:03ba679a9cd1ec7997aa9a100634354c05f3bfd4771f2a44a053fa8580ff39da` |
| 192 | `theorem` | [tan_nat_mul_pi_sub](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/tan-nat-mul-pi-sub-source-edition-2.md) | 943 | `result-track:5153a495d5bc5dd3239180eda94dc6569e42f107169b198ed6340f64be8bf74b` |
| 193 | `theorem` | [tan_int_mul_pi_sub](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/tan-int-mul-pi-sub-source-edition-2.md) | 946 | `result-track:805a9a32c93194fd8d983a5aeb15092832fd32212ec81173a12c4cf53f51802b` |
| 194 | `theorem` | [tendsto_sin_pi_div_two](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/tendsto-sin-pi-div-two.md) | 949 | `result-track:89b53fad5ef1c1be36402b6052dd4430a9e94907ba2d952c181fc1b5d7133f3a` |
| 195 | `theorem` | [tendsto_cos_pi_div_two](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/tendsto-cos-pi-div-two.md) | 953 | `result-track:5d6339264a664b79639f012855367345b63515ca6f8564d1cd89d5a6b71e6dd7` |
| 196 | `theorem` | [tendsto_tan_pi_div_two](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/tendsto-tan-pi-div-two.md) | 960 | `result-track:ac5cf524f41e66f9391d82355bfcd18b1f2cc2542edefdc9b689711e519132d3` |
| 197 | `theorem` | [tendsto_sin_neg_pi_div_two](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/tendsto-sin-neg-pi-div-two.md) | 965 | `result-track:a051451810533312dc0e5dc55e30102863f1066bfd626c426df6f789a9861455` |
| 198 | `theorem` | [tendsto_cos_neg_pi_div_two](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/tendsto-cos-neg-pi-div-two.md) | 969 | `result-track:851909e3f7077a388d6ed3d1a12726e893cda74a9eead6fdcc2be139816def33` |
| 199 | `theorem` | [tendsto_tan_neg_pi_div_two](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/tendsto-tan-neg-pi-div-two.md) | 976 | `result-track:e90b72ef8c23239b4b713919287755dfe659920c2a9bdef192ba98862a98f7b0` |
| 200 | `theorem` | [sin_eq_zero_iff_cos_eq](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-eq-zero-iff-cos-eq-source-edition-2.md) | 987 | `result-track:7b0ef97ce8d6468c79136eea00c0e97b5f73bd3812aac747bf97b4631d16085b` |
| 201 | `theorem` | [cos_pi_div_two](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-pi-div-two-source-edition-2.md) | 992 | `result-track:64ff82c9badc8043cf4d72a9be29bbf22ca61545942f4afef65a016b5ff5fc0b` |
| 202 | `theorem` | [sin_pi_div_two](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-pi-div-two-source-edition-2.md) | 998 | `result-track:a1ab2157c7f9fc9b4b3723b8b797f64b82094d5870147eedf201bf760e0065df` |
| 203 | `theorem` | [sin_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-pi-source-edition-2.md) | 1004 | `result-track:e466a1d1d706284994df2a308b6d7040d0ff62357195598b07bda2aee2b1f9f1` |
| 204 | `theorem` | [cos_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-pi.md) | 1007 | `result-track:5d339aba14ba7a0b7bb0f3e39a82250d25636031605f5a319aa53ab9aeab8f72` |
| 205 | `theorem` | [sin_two_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-two-pi.md) | 1010 | `result-track:1e8da43d4aa39712c2de7d6130987cbf84462f6fb47c806fac1436e6f6c14115` |
| 206 | `theorem` | [cos_two_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-two-pi.md) | 1013 | `result-track:6d7aa69d2b8420f5e4370494c86621233a7c6ffc5f3f169b187df17b3b057acc` |
| 207 | `theorem` | [sin_antiperiodic](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-antiperiodic.md) | 1015 | `result-track:4d4ec5d4cd2c6195554569abb7ab7c24382c847a787ecc26c53af0d0e84294f7` |
| 208 | `theorem` | [sin_periodic](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-periodic-source-edition-2.md) | 1017 | `result-track:787c23156d56918a48d2ff2067e6b937ac16302c9654887ef929e9e516ec7ec3` |
| 209 | `theorem` | [sin_add_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-add-pi.md) | 1020 | `result-track:6f7ec45f905978ddf0809d9ed0ed753bffd51023905b07c47c940bd5f413ebbc` |
| 210 | `theorem` | [sin_add_two_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-add-two-pi.md) | 1023 | `result-track:995e2774c86b88179f3a066a5d9fc4085a0937c5c193d535f7596bfd6c394b72` |
| 211 | `theorem` | [sin_sub_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-sub-pi.md) | 1026 | `result-track:2c978a88d3df2c7efeddc4d5e6e19118692f8d76b5c95e9c5846e58f9577c7a1` |
| 212 | `theorem` | [sin_sub_two_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-sub-two-pi.md) | 1029 | `result-track:2363cab115afe002877971648ea2c763fc2301f3bfff48a030b6351144d5d991` |
| 213 | `theorem` | [sin_pi_sub](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-pi-sub-source-edition-2.md) | 1032 | `result-track:cc4cefe9b015d1aa9932f72118b9fde254877dba7c1dc72ebad4d72282924dcb` |
| 214 | `theorem` | [sin_two_pi_sub](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-two-pi-sub-source-edition-2.md) | 1035 | `result-track:d17b7ea5535be9b7fd7e9fef5ba8f750f469ae2baba1142c8ce313ad4b679c90` |
| 215 | `theorem` | [sin_nat_mul_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-nat-mul-pi.md) | 1038 | `result-track:352d15a7b75c0380c26e26638f9fdff595c6ba103a7f63a4c3449cfcf1d61e25` |
| 216 | `theorem` | [sin_int_mul_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-int-mul-pi-source-edition-2.md) | 1041 | `result-track:b62df8413bae6d754a313161422803f3f706fe93ebc7563bd2a7746524965a4c` |
| 217 | `theorem` | [sin_add_nat_mul_two_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-add-nat-mul-two-pi.md) | 1044 | `result-track:7909cf79cf353d9c54e4bd624817f210b58e3f053c7a97ea2b669a85bb5bbf7f` |
| 218 | `theorem` | [sin_add_int_mul_two_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-add-int-mul-two-pi-source-edition-2.md) | 1047 | `result-track:d226c9513c125db42f1e0c9cd9cac040d890ce06e75657b6887efbffd20fda3e` |
| 219 | `theorem` | [sin_sub_nat_mul_two_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-sub-nat-mul-two-pi-source-edition-2.md) | 1050 | `result-track:dc7e7da0ef85d23ae5ea2736e41d3f454b77c9d4a50c1dd31ebbdd3b94ffa38c` |
| 220 | `theorem` | [sin_sub_int_mul_two_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-sub-int-mul-two-pi.md) | 1053 | `result-track:38e257203abfd807cb972339bbf639239e7194f95c5454b6fd7015929d5f1b43` |
| 221 | `theorem` | [sin_nat_mul_two_pi_sub](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-nat-mul-two-pi-sub.md) | 1056 | `result-track:dc8c1fdae63cdab03b463506fadf19a41c09cc22648ff7d8f00627ee9931b92b` |
| 222 | `theorem` | [sin_int_mul_two_pi_sub](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-int-mul-two-pi-sub-source-edition-2.md) | 1059 | `result-track:c813c878192478e2ef599d4838aa37003641235b27854ce4815293b3e3cd1b71` |
| 223 | `theorem` | [cos_antiperiodic](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-antiperiodic-source-edition-2.md) | 1062 | `result-track:891e9c03c62367f0b32499b719c9b931ffc34682cd6e03dc19cb9977495ebdf5` |
| 224 | `theorem` | [cos_periodic](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-periodic.md) | 1064 | `result-track:0e5220b0e874e7bc960192239cdc356035694730da7748581354dfa51a3bada9` |
| 225 | `theorem` | [cos_add_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-add-pi-source-edition-2.md) | 1067 | `result-track:d95959784c78750386a7d26a869651d459a931ba6e4f2894b899be6bc5c35d2f` |
| 226 | `theorem` | [cos_add_two_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-add-two-pi.md) | 1070 | `result-track:8ec0419f8a1505d2c0034d41323096c0ee57be97a5e8629210e83cfa6449c19a` |
| 227 | `theorem` | [cos_sub_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-sub-pi.md) | 1073 | `result-track:4a46b128891962b92b4bc4d2b72d732e9d893c968370635bf0e7ad4064ffd33f` |
| 228 | `theorem` | [cos_sub_two_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-sub-two-pi-source-edition-2.md) | 1076 | `result-track:d31b192b54b6385ebc9dd9ffb5dfae6ab64ef8edb3fc6ec67b0367b72fcf2318` |
| 229 | `theorem` | [cos_pi_sub](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-pi-sub.md) | 1079 | `result-track:ad3fcac269b3d31b31344b5d899db08b889c2dbe3a90a5024a4aab1a0955efff` |
| 230 | `theorem` | [cos_two_pi_sub](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-two-pi-sub-source-edition-2.md) | 1082 | `result-track:c81e1056f7d1c03cd45c030b364714ca22abaff9c1f8fb82175bbf769bd7cf08` |
| 231 | `theorem` | [cos_nat_mul_two_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-nat-mul-two-pi-source-edition-2.md) | 1085 | `result-track:8b8825837b2b620f3f5a2441c4464a8fabef8c00b3c1011a30c14ec5c38f14a1` |
| 232 | `theorem` | [cos_int_mul_two_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-int-mul-two-pi.md) | 1088 | `result-track:6707bd7e1c33a573270cdda45e298f52855e8f8a8e1b0105f07d80e6db2c2295` |
| 233 | `theorem` | [cos_add_nat_mul_two_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-add-nat-mul-two-pi-source-edition-2.md) | 1091 | `result-track:c72676ccdef01f92cd3e0ecef8d1f5af05ddcdc607ee7cbe966a5dbca68614e6` |
| 234 | `theorem` | [cos_add_int_mul_two_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-add-int-mul-two-pi.md) | 1094 | `result-track:66ff0c43cfaa0bbdedf669438ece6453dbfe21ca9a30ef2e734316b0fd353b07` |
| 235 | `theorem` | [cos_sub_nat_mul_two_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-sub-nat-mul-two-pi-source-edition-2.md) | 1097 | `result-track:635995d001dfebdaa8440d815b0c94977d7f31757a7254e374464d5e96be81d4` |
| 236 | `theorem` | [cos_sub_int_mul_two_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-sub-int-mul-two-pi.md) | 1100 | `result-track:774835d74dcdedfa099c59936e384da1ae0e083529122380db2241755f5156e1` |
| 237 | `theorem` | [cos_nat_mul_two_pi_sub](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-nat-mul-two-pi-sub-source-edition-2.md) | 1103 | `result-track:b27159e1f27e506dd08d094527a5bf4f193b51707aeccad20c3992309e707e6b` |
| 238 | `theorem` | [cos_int_mul_two_pi_sub](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-int-mul-two-pi-sub.md) | 1106 | `result-track:391142a6eac76e3276200d2c7daff0a0c80391cb7e22e802cd82f04247a2a50a` |
| 239 | `theorem` | [cos_nat_mul_two_pi_add_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-nat-mul-two-pi-add-pi.md) | 1109 | `result-track:9fead7a20e6689aaad7eca0dd6a8ffeb2a2fb36721e33e46cce8601f2b9d716d` |
| 240 | `theorem` | [cos_int_mul_two_pi_add_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-int-mul-two-pi-add-pi-source-edition-2.md) | 1112 | `result-track:a096626ff143c3a5924931f4c78108d1da946b0389cdf0d6a9e753440edd5d41` |
| 241 | `theorem` | [cos_nat_mul_two_pi_sub_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-nat-mul-two-pi-sub-pi.md) | 1115 | `result-track:301819cb7a67306191b0dc1a50e9a011e97c8d8a25c9450ae8c531d6bc16a0cd` |
| 242 | `theorem` | [cos_int_mul_two_pi_sub_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-int-mul-two-pi-sub-pi.md) | 1118 | `result-track:2a69be1d53904465f394ff5e8fc1dfbd18280ace04f0ba8fda85c368c3bdbf57` |
| 243 | `theorem` | [sin_add_pi_div_two](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-add-pi-div-two.md) | 1121 | `result-track:c01c30bdac8d794ce92e664ad5bee9b80a74b73c8bfc41e20f399af3374bbe4a` |
| 244 | `theorem` | [sin_sub_pi_div_two](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-sub-pi-div-two.md) | 1123 | `result-track:14db98ca5d5477949360da45e7250dae05713beadfea98e4fc2a95a80decaa87` |
| 245 | `theorem` | [sin_pi_div_two_sub](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/sin-pi-div-two-sub.md) | 1125 | `result-track:d81dae94f794fa7583cba42ab072463960f0f6adc7f230b17ec8f166e99be1ac` |
| 246 | `theorem` | [cos_add_pi_div_two](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-add-pi-div-two-source-edition-2.md) | 1127 | `result-track:f31bed2af98029a099c41078dcbdd5bc78bf611991dad930691b07da68f8e366` |
| 247 | `theorem` | [cos_sub_pi_div_two](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-sub-pi-div-two.md) | 1129 | `result-track:94d5d3b7d16dbc138b4e1fc172d4c6eb1450902a75d3ae8476ef64630bedff34` |
| 248 | `theorem` | [cos_pi_div_two_sub](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/cos-pi-div-two-sub.md) | 1131 | `result-track:8569893c28c67b92f410ab3cbddedeec78b8b42a637e6e62d7b9de25ec7b2e4f` |
| 249 | `theorem` | [tan_periodic](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/tan-periodic-source-edition-2.md) | 1134 | `result-track:e75178b545801938bd2a47c9e0cb74dcdd25e7a5d7e4829310c1763a76a4a304` |
| 250 | `theorem` | [tan_add_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/tan-add-pi-source-edition-2.md) | 1137 | `result-track:5339359d4d8540a8340059933a997b18581a4a3bf65d0022893b8b927b49385f` |
| 251 | `theorem` | [tan_sub_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/tan-sub-pi.md) | 1140 | `result-track:a38cced36b2da04a4780244fa4061fdabe1eb189dbc13fee7e23738b3e89fa61` |
| 252 | `theorem` | [tan_pi_sub](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/tan-pi-sub.md) | 1143 | `result-track:7c973f06b7e0f5acde634b5f80b7e1c3e085cb5d18c460c512e6bd2d8f5609e1` |
| 253 | `theorem` | [tan_pi_div_two_sub](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/tan-pi-div-two-sub-source-edition-2.md) | 1146 | `result-track:4ffcdcca054c30e4e1b12b3fbc3814297d5b6ab0c68aee9e9ff56690e914a060` |
| 254 | `theorem` | [tan_nat_mul_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/tan-nat-mul-pi-source-edition-2.md) | 1149 | `result-track:68c804aad54f81a0cb2e26aba7d4c6a336f50c8a214583e851b8d4993cc9e778` |
| 255 | `theorem` | [tan_int_mul_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/tan-int-mul-pi-source-edition-2.md) | 1152 | `result-track:93d04f66f8c16a9b6bf2fbc528dcb3a5810929b5defbfe75c607cd8fac3fdbcd` |
| 256 | `theorem` | [tan_add_nat_mul_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/tan-add-nat-mul-pi-source-edition-2.md) | 1155 | `result-track:bf634b9d9349b55d5f9967623607ef9a33ac16d63af85fa3c1dfe0be9aae3964` |
| 257 | `theorem` | [tan_add_int_mul_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/tan-add-int-mul-pi.md) | 1158 | `result-track:5a3fc89540b35ea9b98f8a6fec6f06b30969c0a2727f68c448586564933887c0` |
| 258 | `theorem` | [tan_sub_nat_mul_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/tan-sub-nat-mul-pi-source-edition-2.md) | 1161 | `result-track:c8d104b76e2bf5eacccbef0791cc4f29c488d3017aec47072270d8c08f9961d5` |
| 259 | `theorem` | [tan_sub_int_mul_pi](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/tan-sub-int-mul-pi-source-edition-2.md) | 1164 | `result-track:b0c013e62eb8391d025ccebc321c87b34a79575dcd70383c71229ac78e0fffc1` |
| 260 | `theorem` | [tan_nat_mul_pi_sub](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/tan-nat-mul-pi-sub.md) | 1167 | `result-track:1823fe2ea82fef29e392b6104337915569c6e6912747e77929a99be18848ed53` |
| 261 | `theorem` | [tan_int_mul_pi_sub](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/tan-int-mul-pi-sub.md) | 1170 | `result-track:7d076a7ddf324fbd98b3997ff163eb150b0d5777fd78a34d5e9614affa440a28` |
| 262 | `theorem` | [exp_antiperiodic](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/exp-antiperiodic.md) | 1173 | `result-track:fe1ce56092e6d677816d4e337c0e3b1c874ec41e22a7cc7297b1cf3375c0cb3b` |
| 263 | `theorem` | [exp_periodic](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/exp-periodic.md) | 1175 | `result-track:d5d75d1d7eec640b0bf98ed5942a9825c0d8039f5cc3ba03c35887c9a1189dd2` |
| 264 | `theorem` | [exp_mul_I_antiperiodic](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/exp-mul-i-antiperiodic.md) | 1178 | `result-track:3145d351bb5e6f70fdfa40876f60a4ec6df8a450c63c7b3eb82037c9c22acbf6` |
| 265 | `theorem` | [exp_mul_I_periodic](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/exp-mul-i-periodic.md) | 1181 | `result-track:db712ae9f7d44e8219e3be4b20cb788ad6293ecf39174baec9a65857f366e862` |
| 266 | `theorem` | [exp_pi_mul_I](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/exp-pi-mul-i.md) | 1185 | `result-track:f5864a8217b80b9c1baf4499de482aa52002f6e6909535dbb06b61e63167ac61` |
| 267 | `theorem` | [exp_two_pi_mul_I](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/exp-two-pi-mul-i.md) | 1189 | `result-track:d25b81043fc8aadc065e6801f95bccbf46eaebcf64c1782efbc78ef8fd06181c` |
| 268 | `lemma` | [exp_pi_div_two_mul_I](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/exp-pi-div-two-mul-i.md) | 1193 | `result-track:8ed37736dccdd76471391a2042865715824ac4f5c6a12e1acffdde7bcaea3307` |
| 269 | `lemma` | [exp_neg_pi_div_two_mul_I](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/exp-neg-pi-div-two-mul-i.md) | 1197 | `result-track:8a39ea34d74f7597b09a138880acc64f9bc23b9967827ae8603c400b54b9dfb4` |
| 270 | `theorem` | [exp_nat_mul_two_pi_mul_I](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/exp-nat-mul-two-pi-mul-i.md) | 1202 | `result-track:ed7e8c7e67fdc7e007fc962e2d963b70fa006bd6a70f57e5cf9e120eac9615ce` |
| 271 | `theorem` | [exp_int_mul_two_pi_mul_I](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/exp-int-mul-two-pi-mul-i.md) | 1206 | `result-track:934df292938d4d1eb35a768624d8f054165037d1d048aeb36caf13b3dbfbcc17` |
| 272 | `theorem` | [exp_add_pi_mul_I](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/exp-add-pi-mul-i.md) | 1210 | `result-track:382d962aae4a3260ff74f4f5b1ecfcf63ec71f7bbb05b055163353b5e556f25a` |
| 273 | `theorem` | [exp_sub_pi_mul_I](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/exp-sub-pi-mul-i.md) | 1214 | `result-track:6665ee41f9d9d1825a65a3b7ad2080066f182728f3640d3e781a885900ab5810` |
| 274 | `theorem` | [norm_exp_mul_exp_add_exp_neg_le_of_abs_im_le](../../../../SpecialFunctions/TrigonometricBasicPiNonneg.lean/declarations/norm-exp-mul-exp-add-exp-neg-le-of-abs-im-le.md) | 1221 | `result-track:6bd02bc4fbcc6c0582c13208e27fdfc3575e7b0222b88cb3c92ae5dcb4f82053` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c601347e8274559390360f83152a6a47ffc6d4fa8f449edc3158ea15e9cb606c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variantcfe0d0a0f849d6f8d4b80e47ebe065776344d1629c0733e088f6ed893523e3da.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variantcfe0d0a0f849d6f8d4b80e47ebe065776344d1629c0733e088f6ed893523e3da.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
