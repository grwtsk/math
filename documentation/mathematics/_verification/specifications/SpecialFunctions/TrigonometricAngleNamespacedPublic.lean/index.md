# Verification target: Trigonometric Angle Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69368b88c5b14c8e2d8ddd8da3fc1dbd608dc285",
  "lexical_observation_count": 186,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantedc1ba0030c5c87de0e81f679c8b339c93d6ecf35bf60dd8b9a19db15161b7e4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/index.md) · [Full source](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69368b88c5b14c8e2d8ddd8da3fc1dbd608dc285`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantedc1ba0030c5c87de0e81f679c8b339c93d6ecf35bf60dd8b9a19db15161b7e4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantedc1ba0030c5c87de0e81f679c8b339c93d6ecf35bf60dd8b9a19db15161b7e4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Interval` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Angle](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/angle.md) | 39 | `declaration-track:2113db6986975216de246c8455f9ba03a175b7ae2efc74b722225780b697b29b` |
| 2 | `def` | [coe](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/coe.md) | 47 | `declaration-track:3c6a452d17a0749409eaf54845798c10cdfbcf3907a4950ae7a448b37fb5982b` |
| 3 | `instance` | [(anonymous)](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 49 | `declaration-track:f364c44c3b20049fb067e5a57234312ae576066d6c6aca2659fd7af3e9c5e0e6` |
| 4 | `instance` | [(anonymous)](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/instance.md) | 51 | `declaration-track:20c8ccef41f9d375674178eda316b6965ff598cf1b8f91b27d78c2180851dce6` |
| 5 | `theorem` | [continuous_coe](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/continuous-coe.md) | 55 | `result-track:2cc56e2bc53932fcdaf7cf6c54e9bb30ab085fd562eb44e5bd26ae63915a7ea7` |
| 6 | `def` | [coeHom](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/coehom.md) | 59 | `declaration-track:196ceaed2573b33a38955244087bb8b8ec3d9dc173ef71635e8af79302881e43` |
| 7 | `theorem` | [coe_coeHom](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/coe-coehom.md) | 63 | `result-track:0fd8261841dc739d797aeee035aa6d95de5026439ea9d8a7257fada1eabd7eae` |
| 8 | `theorem` | [induction_on](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/induction-on.md) | 69 | `result-track:3a963c464785b6440e32fa5134b18a0bc57ad90e951d2645700d9555ebe8e829` |
| 9 | `theorem` | [coe_zero](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/coe-zero.md) | 73 | `result-track:a379b1363670f09841cea069f4e87efdac1264e8027c6fb596bb3483b1abbab9` |
| 10 | `theorem` | [coe_add](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/coe-add.md) | 77 | `result-track:a993151cf7ad7578eaa7098242f1f2d6136c0e9f024a2c74fc7826923d62517a` |
| 11 | `theorem` | [coe_neg](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/coe-neg.md) | 81 | `result-track:f48e687f5c588f86f3d6335e89f1d46ec74c70ac250a5e05d27e2d1de2d9db2b` |
| 12 | `theorem` | [coe_sub](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/coe-sub.md) | 85 | `result-track:539312fb9155c8cd2411374e4b6b0455f46faef86cfd2a55e38aaf2b45732e7a` |
| 13 | `theorem` | [coe_nsmul](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/coe-nsmul.md) | 88 | `result-track:7d2c91402e5ace37051a2aeb8213fd4229f3a420e9062f7cd90a0bc7ac551f16` |
| 14 | `theorem` | [coe_zsmul](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/coe-zsmul.md) | 91 | `result-track:5209e36264561e7a8188a1c9920b691570a0ac4986faee9671b5d10a3293b977` |
| 15 | `theorem` | [coe_eq_zero_iff](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/coe-eq-zero-iff.md) | 94 | `result-track:7df09db4c2ffb904d249576febd45765be04a3b5f481683a5b755a0c82f800e3` |
| 16 | `theorem` | [natCast_mul_eq_nsmul](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/natcast-mul-eq-nsmul.md) | 98 | `result-track:aee1d7c3114f80eaeec1a251e8d90e7dfb5ce26629103d1e0321a34e3628ab61` |
| 17 | `theorem` | [intCast_mul_eq_zsmul](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/intcast-mul-eq-zsmul.md) | 102 | `result-track:e03098238390c812654910875ebb4e314eecfe685c726935b41c619dd47ee608` |
| 18 | `theorem` | [angle_eq_iff_two_pi_dvd_sub](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/angle-eq-iff-two-pi-dvd-sub.md) | 106 | `result-track:18c2b51b86276671fb9c697499739666fde3775600b6913b1b06d9475b2c5b54` |
| 19 | `theorem` | [coe_two_pi](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/coe-two-pi.md) | 113 | `result-track:348f8937fc7b5f3b42f42cb1258515101e83c1d773c11ebed7138eabc95e47ce` |
| 20 | `theorem` | [neg_coe_pi](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/neg-coe-pi.md) | 117 | `result-track:1912bed54865a10b258fad0a5c08ec33bce9fb64aafd8642017b91016c55164c` |
| 21 | `theorem` | [two_nsmul_coe_div_two](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/two-nsmul-coe-div-two.md) | 123 | `result-track:e85085bccb4f6192092b13bb45f5e562d48c45eb5c60a69f9591331252d6a36c` |
| 22 | `theorem` | [two_zsmul_coe_div_two](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/two-zsmul-coe-div-two.md) | 127 | `result-track:48b1b2ccea62cdc0c0f7f2f928e32d22d195464c374ce412b90a535f60c47660` |
| 23 | `theorem` | [two_nsmul_neg_pi_div_two](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/two-nsmul-neg-pi-div-two.md) | 130 | `result-track:b5a72e09bbe481c07323236af82a64b256dd7174c37a3d07e7bc6e173aefc848` |
| 24 | `theorem` | [two_zsmul_neg_pi_div_two](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/two-zsmul-neg-pi-div-two.md) | 133 | `result-track:b2e206971a52d68d233418feaef6b20f12fe0d825327c534dce48b352e2083c6` |
| 25 | `theorem` | [sub_coe_pi_eq_add_coe_pi](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/sub-coe-pi-eq-add-coe-pi.md) | 136 | `result-track:1b666884260409d3f61e89ab2a1f681dde42cb6eca89e5e017d7ef0b84368a00` |
| 26 | `theorem` | [two_nsmul_coe_pi](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/two-nsmul-coe-pi.md) | 140 | `result-track:6ac23f43ccab7151d0220b38b0cf55c04def8babd5c1f01ae3619af02cdfd0af` |
| 27 | `theorem` | [two_zsmul_coe_pi](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/two-zsmul-coe-pi.md) | 143 | `result-track:ffaeb2563ed0947b51193e5f7289ed6e11fe2f1ed90eeef3a47c5f4aa94cf4e9` |
| 28 | `theorem` | [coe_pi_add_coe_pi](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/coe-pi-add-coe-pi.md) | 146 | `result-track:7efeed3c01172d598e524f1cb38471eb023f19aabf58c9f53291fede3760652f` |
| 29 | `theorem` | [zsmul_eq_iff](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/zsmul-eq-iff.md) | 148 | `result-track:bd551676e855cae66de180149eb9c9dcc460410b94e5e381998637ef047dc255` |
| 30 | `theorem` | [nsmul_eq_iff](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/nsmul-eq-iff.md) | 152 | `result-track:c2db2f5735d033a88936ca99ee8491ff4d1b98fc098078bfac17b69b4a263340` |
| 31 | `theorem` | [two_zsmul_eq_iff](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/two-zsmul-eq-iff.md) | 156 | `result-track:ba323667d925eba985deb4ba380b6cd5b5f82de671cc2ad45e20c96f31e4eda6` |
| 32 | `theorem` | [two_nsmul_eq_iff](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/two-nsmul-eq-iff.md) | 162 | `result-track:271dc04d814781278971aabde72dfb4e7e8b1855d2c583b2ba65d6d26f534bc4` |
| 33 | `theorem` | [two_nsmul_eq_zero_iff](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/two-nsmul-eq-zero-iff.md) | 165 | `result-track:ca6ca9ecc2499aa49891e6b3bc98af13497dcd124570151dd12a55717e66f4cd` |
| 34 | `theorem` | [two_nsmul_ne_zero_iff](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/two-nsmul-ne-zero-iff.md) | 168 | `result-track:305503242640b3ac032748ae6fe3deeb4351260993be71f2b6aa90a795c03946` |
| 35 | `theorem` | [two_zsmul_eq_zero_iff](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/two-zsmul-eq-zero-iff.md) | 171 | `result-track:24a35209a19129708c5659467669946cffe98afae05e56633af0ceb46ec09abb` |
| 36 | `theorem` | [two_zsmul_ne_zero_iff](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/two-zsmul-ne-zero-iff.md) | 174 | `result-track:b283eb867a92366a4cd0cfe0d28c2acf42682977d07cde6783c8638832e75b27` |
| 37 | `theorem` | [eq_neg_self_iff](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/eq-neg-self-iff.md) | 177 | `result-track:21127c9ba9fda2650298053887780fcd0fec06e949df0fd8323fd3576c3fd585` |
| 38 | `theorem` | [ne_neg_self_iff](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/ne-neg-self-iff.md) | 180 | `result-track:33b2043001c9b19f438c367aa237001dfe8cd95931fa2bc0283aeda0b231fa31` |
| 39 | `theorem` | [neg_eq_self_iff](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/neg-eq-self-iff.md) | 183 | `result-track:5c150a2b45e3e3b29daac8797657ed8585883e4cc0cacc633d31bd220e556f70` |
| 40 | `theorem` | [neg_ne_self_iff](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/neg-ne-self-iff.md) | 185 | `result-track:8b365d0875c778381d2fe720893c0a81a4c8c434aa1cc762653c3733b030466d` |
| 41 | `theorem` | [two_nsmul_eq_pi_iff](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/two-nsmul-eq-pi-iff.md) | 188 | `result-track:92de3ebee6328d597a88b129a180308f593e0b49be8c50473119f04c7210afe3` |
| 42 | `theorem` | [two_zsmul_eq_pi_iff](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/two-zsmul-eq-pi-iff.md) | 197 | `result-track:deb5d2eec1e03524cf4a65594942b14a5be43d90bfb7b5474e5113d0638f4958` |
| 43 | `theorem` | [cos_eq_iff_coe_eq_or_eq_neg](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/cos-eq-iff-coe-eq-or-eq-neg.md) | 200 | `result-track:42ece738fdba17b14ac8ed4c521edb0d83705fcbd359443c466462044ab0b710` |
| 44 | `theorem` | [sin_eq_iff_coe_eq_or_add_eq_pi](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/sin-eq-iff-coe-eq-or-add-eq-pi.md) | 223 | `result-track:28d86910849bc102c132214f349d6c9681b326f6a6d03a28034eb36bb0a0a8d5` |
| 45 | `theorem` | [cos_sin_inj](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/cos-sin-inj.md) | 247 | `result-track:a3317083f0ef9c04ae45c5d3f71574176b364aacbeb2581427176f2ec38d5f7d` |
| 46 | `def` | [sin](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/sin.md) | 260 | `declaration-track:1dc68b356a11d3de23d8d1800f31689faa0dfdc4437d8dc97bd0a3f8e8079436` |
| 47 | `theorem` | [sin_coe](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/sin-coe.md) | 264 | `result-track:70b01c87e73554a4e1a7872f73083313e7d8c8ac20b222b0b57e19af95a5b47c` |
| 48 | `theorem` | [continuous_sin](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/continuous-sin.md) | 268 | `result-track:ea95f1e75fb985dcd59535f19842b3af8e1c0119f4b4ad8db78130a9d4f5e9bb` |
| 49 | `def` | [cos](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/cos.md) | 272 | `declaration-track:68089cca6b2e42591ba22955c985782f165b99b140fa0b4ccde91b8a95d718e3` |
| 50 | `theorem` | [cos_coe](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/cos-coe.md) | 276 | `result-track:122323468e85253d4e6e79503672678bcccde859f1d498620427aecd6fc9d532` |
| 51 | `theorem` | [continuous_cos](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/continuous-cos.md) | 280 | `result-track:9d6680ccb6ae7a65d075edb8d7206a6fac4000aafaed7551e5ab2ddc8b7d762e` |
| 52 | `theorem` | [cos_eq_real_cos_iff_eq_or_eq_neg](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/cos-eq-real-cos-iff-eq-or-eq-neg.md) | 283 | `result-track:3e10627848a685cb5660bd6743789f0d5730c11c8a3792efca4956fc66c6a66a` |
| 53 | `theorem` | [cos_eq_iff_eq_or_eq_neg](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/cos-eq-iff-eq-or-eq-neg.md) | 288 | `result-track:98acae5d2bca0d3886ef07641df077355e03840d3ea7ecb73127fff49fbcbde6` |
| 54 | `theorem` | [sin_eq_real_sin_iff_eq_or_add_eq_pi](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/sin-eq-real-sin-iff-eq-or-add-eq-pi.md) | 292 | `result-track:060660dae3bc2825a38c6fb7a30fb57fd72da26d26c901bc426712fe2d3bed00` |
| 55 | `theorem` | [sin_eq_iff_eq_or_add_eq_pi](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/sin-eq-iff-eq-or-add-eq-pi.md) | 297 | `result-track:4f3788313aff61b3595e5a781ae4f7be019e8d53dfef4f194e8399fdf72b9427` |
| 56 | `theorem` | [sin_zero](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/sin-zero.md) | 302 | `result-track:e6af46de3ca1f2ac7c646a525eb0d1a86f71a93db1a65b0ff5fcec4c9c49f9e3` |
| 57 | `theorem` | [sin_coe_pi](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/sin-coe-pi.md) | 304 | `result-track:e63e722edaf3a6525be482922da9e31c607c5e18361ae1cae4c836d46edaa867` |
| 58 | `theorem` | [sin_eq_zero_iff](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/sin-eq-zero-iff.md) | 306 | `result-track:82a8b5a69a507d443914578a721972ff27b295066b7eca2a08487c40de9b01d3` |
| 59 | `theorem` | [sin_ne_zero_iff](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/sin-ne-zero-iff.md) | 311 | `result-track:babf7d81ae9c6914342c9c840d1f8bc8c50f5d1cbac4e7801145fb4e871ddb7a` |
| 60 | `theorem` | [sin_neg](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/sin-neg.md) | 315 | `result-track:8cef4c6c57aa70b9a0eb334f14950e65ee0729f30f2d5afcc1978a9080e271ff` |
| 61 | `theorem` | [sin_antiperiodic](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/sin-antiperiodic.md) | 319 | `result-track:0176b9b9584b61d9d227ce3105101308a9331d56a5ba89a0343fb15a94cf1566` |
| 62 | `theorem` | [sin_add_pi](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/sin-add-pi.md) | 325 | `result-track:b2c68aee8629d6c50f86bb176d5529c4ac28e48fa6c8d8594698a05092e7754b` |
| 63 | `theorem` | [sin_sub_pi](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/sin-sub-pi.md) | 329 | `result-track:dd6ac472608c7f270ad7f0f25a801e7ca4bc81696505e55bef13d188a5bd602c` |
| 64 | `theorem` | [cos_zero](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/cos-zero.md) | 333 | `result-track:36f2885a8dfbe50aa9899e3c5c95b115d9c8b60b2304dee4d0cf625d7cc798ae` |
| 65 | `theorem` | [cos_coe_pi](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/cos-coe-pi.md) | 335 | `result-track:c01eab423ed0bbb7fdd7e2679f07b9035225437976a7a3bfe80d285dac21efee` |
| 66 | `theorem` | [cos_neg](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/cos-neg.md) | 338 | `result-track:cc7243a1b37494a68afd8f2697ffb9e8bcb174000011fc926beaf075d56e171c` |
| 67 | `theorem` | [cos_antiperiodic](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/cos-antiperiodic.md) | 342 | `result-track:2e03314e659d266bd394c356276d3ed275e89e31efa5e9bb06cc1ef07fc13e14` |
| 68 | `theorem` | [cos_add_pi](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/cos-add-pi.md) | 348 | `result-track:3297a0c214fa2df92cde47b1c20f0cee91e05ed6804d6d13070640a15b9d5dd2` |
| 69 | `theorem` | [cos_sub_pi](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/cos-sub-pi.md) | 352 | `result-track:4113f1be827f64d97fd004da3ce6f7652d1706849698b31e3ac200744dff5e41` |
| 70 | `theorem` | [cos_eq_zero_iff](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/cos-eq-zero-iff.md) | 355 | `result-track:8125ee5f20b07ceeae7f61a7ed9d0333feb31e538cde5f38330bdae19d82dc7c` |
| 71 | `theorem` | [sin_add](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/sin-add.md) | 358 | `result-track:b855da188afc9d98ebf17a3b51482f89d29f493f69afe6ab894b21f8024d6ba3` |
| 72 | `theorem` | [cos_add](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/cos-add.md) | 363 | `result-track:ceb26acdb466f39f566166acbb05c2ab9236bed6af4a334c8177f42817e329e3` |
| 73 | `theorem` | [sin_two_nsmul](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/sin-two-nsmul.md) | 368 | `result-track:963ac61e159dcd1d10544b8d241f584b86ffdab1f95e38a671aa5e491e93d9aa` |
| 74 | `theorem` | [cos_sq_add_sin_sq](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/cos-sq-add-sin-sq.md) | 372 | `result-track:f866c29faf0107045469e3eef881068b9ef7ac99d34ea808630ac546fcb0d1cc` |
| 75 | `theorem` | [sin_add_pi_div_two](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/sin-add-pi-div-two.md) | 376 | `result-track:df6ba5a72e41499c691abb87ca8f97274e684433c59157f4c23f64bacf0305f8` |
| 76 | `theorem` | [sin_sub_pi_div_two](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/sin-sub-pi-div-two.md) | 380 | `result-track:90946c6bcd33453f06c57f1cfa55fe55fc24429c1f076e86ea71d4d09505b35e` |
| 77 | `theorem` | [sin_pi_div_two_sub](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/sin-pi-div-two-sub.md) | 384 | `result-track:fae325e6f9978d2224c2e26fb39cffc50d7ec9707b0e0cc75fcd87617cdfd887` |
| 78 | `theorem` | [cos_add_pi_div_two](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/cos-add-pi-div-two.md) | 388 | `result-track:c94205b7d17836bac5be82f73f2760aa5f11349766d0d51d5830572ce35b0d75` |
| 79 | `theorem` | [cos_sub_pi_div_two](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/cos-sub-pi-div-two.md) | 392 | `result-track:b2fcb44f4c50536eb8d12632f8e9ed0f3baa3972abc2d10f58071c3fb638e1b5` |
| 80 | `theorem` | [cos_pi_div_two_sub](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/cos-pi-div-two-sub.md) | 396 | `result-track:ecb0c9829b95a749eea72c9029f344162f5313d0ea78c57c0a6a759e9b7d9433` |
| 81 | `theorem` | [abs_sin_eq_of_two_nsmul_eq](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/abs-sin-eq-of-two-nsmul-eq.md) | 400 | `result-track:ceee1fd63e83cf60b604ebb772c201943fadf9d241e4e5e80d12e7681e444738` |
| 82 | `theorem` | [abs_sin_eq_of_two_zsmul_eq](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/abs-sin-eq-of-two-zsmul-eq.md) | 407 | `result-track:43f77b25a421559405e046e3823552594ea3a2afc0f67c726e5aa6ec5068fae5` |
| 83 | `theorem` | [abs_cos_eq_of_two_nsmul_eq](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/abs-cos-eq-of-two-nsmul-eq.md) | 412 | `result-track:547aea2f6d6e7ab1ea4ee69f0f9b6756074621bb95f0e5c7a7f4052ef6d346c4` |
| 84 | `theorem` | [abs_cos_eq_of_two_zsmul_eq](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/abs-cos-eq-of-two-zsmul-eq.md) | 419 | `result-track:203f1d35f1ab0d853c9f9b65b2f4a5d668c5fe92d6f81defc9e2f779d695f03e` |
| 85 | `theorem` | [coe_toIcoMod](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/coe-toicomod.md) | 425 | `result-track:3763447cafbadbd7d74f0e3d4ca80fdd08a9b6a859bc70fbe05c1ea6749118e2` |
| 86 | `theorem` | [coe_toIocMod](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/coe-toiocmod.md) | 431 | `result-track:09571987f6b9091ffd12e3d81f2d392db072ecccfc9ee257bc475f827ebd4dee` |
| 87 | `def` | [toReal](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/toreal.md) | 437 | `declaration-track:8672d6881f81f5ba76f731b22379d9c7da0b1742d8bdafbfa40f1547a799bdb6` |
| 88 | `theorem` | [toReal_coe](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/toreal-coe.md) | 440 | `result-track:39e0fdd4a4114562cc20606746ed2a261f4a93bb737bd8ac9bc4563791ac086f` |
| 89 | `theorem` | [toReal_coe_eq_self_iff](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/toreal-coe-eq-self-iff.md) | 443 | `result-track:9d5a739471ef9afd61c4cefa46ef542ce37092e3acb6b760441adfef02f1bcf0` |
| 90 | `theorem` | [toReal_coe_eq_self_iff_mem_Ioc](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/toreal-coe-eq-self-iff-mem-ioc.md) | 448 | `result-track:dd483ccb7464578b4f6e29907148b495f13b4c3a30b04a5e1f76d45a4d0616f9` |
| 91 | `theorem` | [toReal_injective](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/toreal-injective.md) | 452 | `result-track:0e5dbaf50450701a2d0ee5ddc165c8f5b58e64f1c4274f5b1f670c0c65282d1a` |
| 92 | `theorem` | [toReal_inj](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/toreal-inj.md) | 460 | `result-track:be79b58caa9b36c3db6776a47051cd5c62691b8dd58fce08da27c4c9001b91a8` |
| 93 | `theorem` | [coe_toReal](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/coe-toreal.md) | 464 | `result-track:c67eb951310c8c5623ddbfe89eb6b9d12afab7524f0118f1717782b653b824bb` |
| 94 | `theorem` | [neg_pi_lt_toReal](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/neg-pi-lt-toreal.md) | 468 | `result-track:fba93f6c4d293fe7b2d81700e6c443a41c953b1e9084c5260415d3c1a6811242` |
| 95 | `theorem` | [toReal_le_pi](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/toreal-le-pi.md) | 472 | `result-track:e2f9d5b2b8d23c8904371d7d77b00b14eb28a8ab0dddb5e50bdd5849cead38b1` |
| 96 | `theorem` | [abs_toReal_le_pi](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/abs-toreal-le-pi.md) | 477 | `result-track:712dc61bb35b3ca62c8d7cb34d9feb464740bf53473fb320e0ab5cab689c0aaf` |
| 97 | `theorem` | [toReal_mem_Ioc](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/toreal-mem-ioc.md) | 480 | `result-track:891d914261f454d531a8ad766bfcab6c6d157d90dda762f0230d1e9defa1388c` |
| 98 | `theorem` | [toIocMod_toReal](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/toiocmod-toreal.md) | 484 | `result-track:50a4924e31e342a8a1665fb673f89e452aa711a2caf467a1aa5986cfc695bf2d` |
| 99 | `theorem` | [toReal_zero](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/toreal-zero.md) | 490 | `result-track:44ef7402fee274e1aadaec99248dbdc297265e1eff9b8546e78759f6abd3878e` |
| 100 | `theorem` | [toReal_eq_zero_iff](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/toreal-eq-zero-iff.md) | 495 | `result-track:d1d77bf864f56e3078eba4589056ad950f245fa350d096e4c6a86b4f89ff8446` |
| 101 | `theorem` | [toReal_pi](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/toreal-pi.md) | 500 | `result-track:1d793b7a2f01719e83685bca8913034b3c90fa878429efc67b8acfe0a8c0fc79` |
| 102 | `theorem` | [toReal_eq_pi_iff](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/toreal-eq-pi-iff.md) | 505 | `result-track:58cc118aae590e42d42eca72b4a60490beb2c432b70c7e4ee24d15b93202e3dc` |
| 103 | `lemma` | [toReal_neg_eq_neg_toReal_iff](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/toreal-neg-eq-neg-toreal-iff.md) | 507 | `result-track:8334f3b9205aa8067ca405a15d83fed4d4aeb8855d4102c2a24caa7747c06cc7` |
| 104 | `lemma` | [abs_toReal_neg](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/abs-toreal-neg.md) | 517 | `result-track:201c3b904d194009d0d1b2c50cfa524f6b230bbab2c3e20568420ac5c7b8fc6d` |
| 105 | `theorem` | [pi_ne_zero](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/pi-ne-zero.md) | 522 | `result-track:d89ddb1832af8bf9f254168b31c785e28cd0c00bf0d54aef658a0811a0826816` |
| 106 | `theorem` | [toReal_pi_div_two](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/toreal-pi-div-two.md) | 527 | `result-track:7780f60b3b3d2c7819628d401448b2485a2f95d62bfa4afc6e92b7ea530f3c58` |
| 107 | `theorem` | [toReal_eq_pi_div_two_iff](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/toreal-eq-pi-div-two-iff.md) | 531 | `result-track:fa97c06b25ee8b4c68a0c21724873f9960ea99c66411884095fe863238f3141f` |
| 108 | `theorem` | [toReal_neg_pi_div_two](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/toreal-neg-pi-div-two.md) | 535 | `result-track:01341eb85c4206859c9ad2a314b3045a6b99df23dd76e07e50eac4736951ff18` |
| 109 | `theorem` | [toReal_eq_neg_pi_div_two_iff](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/toreal-eq-neg-pi-div-two-iff.md) | 539 | `result-track:f3eeeab1139fd58734e159d8c7370b7de5fa53ff045952d0dc0314c3ab7bc215` |
| 110 | `theorem` | [pi_div_two_ne_zero](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/pi-div-two-ne-zero.md) | 542 | `result-track:a3b01189b05d98d6d3f91d5865169a351a9b489afb775a34f2a9d19172e5c1a9` |
| 111 | `theorem` | [neg_pi_div_two_ne_zero](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/neg-pi-div-two-ne-zero.md) | 546 | `result-track:97e3a52ce1867a4dacceb944b1ab509c7522afcfec6f66a683ebd824ffd956f5` |
| 112 | `theorem` | [abs_toReal_coe_eq_self_iff](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/abs-toreal-coe-eq-self-iff.md) | 550 | `result-track:7db897b375f1c58a573d0aedc520018b71382c60e98fafd41b5b6be022b6dc82` |
| 113 | `theorem` | [abs_toReal_neg_coe_eq_self_iff](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/abs-toreal-neg-coe-eq-self-iff.md) | 555 | `result-track:cda5ebf652e7e64effc788c877fa628a406b5fd6e31a44c3f3ff24a49058ecf9` |
| 114 | `theorem` | [abs_toReal_eq_pi_div_two_iff](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/abs-toreal-eq-pi-div-two-iff.md) | 563 | `result-track:63be102dfa805bb13406b991c11770e7efa4e43c8a8f579831b08bad7ea39358` |
| 115 | `theorem` | [nsmul_toReal_eq_mul](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/nsmul-toreal-eq-mul.md) | 568 | `result-track:34b9c1f3e142dec99c2e314e1e21b886b0358809b2532eab8e6c0a0983476cd2` |
| 116 | `theorem` | [two_nsmul_toReal_eq_two_mul](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/two-nsmul-toreal-eq-two-mul.md) | 575 | `result-track:615c8df9ef57622efb5e1c51f0cd5808068af0a96fb11d68b7d5321f09b10714` |
| 117 | `theorem` | [two_zsmul_toReal_eq_two_mul](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/two-zsmul-toreal-eq-two-mul.md) | 579 | `result-track:a929e49953612c251bda5ad1f1094893f68d0da88f96f3d25cc404b45483c3ac` |
| 118 | `theorem` | [toReal_coe_eq_self_sub_two_mul_int_mul_pi_iff](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/toreal-coe-eq-self-sub-two-mul-int-mul-pi-iff.md) | 583 | `result-track:38999674b3a0ae631de6ce62a25f25b0c0acfdea9c67c48d751fd54b43c32629` |
| 119 | `theorem` | [toReal_coe_eq_self_sub_two_pi_iff](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/toreal-coe-eq-self-sub-two-pi-iff.md) | 589 | `result-track:215326b556e093a7a05e982238f5acbab81ff8f21d2db8510f2f0c57e3f0a869` |
| 120 | `theorem` | [toReal_coe_eq_self_add_two_pi_iff](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/toreal-coe-eq-self-add-two-pi-iff.md) | 593 | `result-track:68a0ddc93c050d054e8d5c66fef9b908fc48b395cf6a0ff91fa6634ee006e87b` |
| 121 | `theorem` | [two_nsmul_toReal_eq_two_mul_sub_two_pi](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/two-nsmul-toreal-eq-two-mul-sub-two-pi.md) | 597 | `result-track:1940338284c7f9a8191a96cbb5656c28c5c833db5417f7bb158f9bf715f0b159` |
| 122 | `theorem` | [two_zsmul_toReal_eq_two_mul_sub_two_pi](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/two-zsmul-toreal-eq-two-mul-sub-two-pi.md) | 605 | `result-track:9c43c7f605cff612f8dab91ccd91cb06a3712d2971f3792594f379be9f5358d1` |
| 123 | `theorem` | [two_nsmul_toReal_eq_two_mul_add_two_pi](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/two-nsmul-toreal-eq-two-mul-add-two-pi.md) | 609 | `result-track:c1dab436b834c43bc6f305d4ba32295d3dbe229b015b5062945ef86e2f88cce0` |
| 124 | `theorem` | [two_zsmul_toReal_eq_two_mul_add_two_pi](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/two-zsmul-toreal-eq-two-mul-add-two-pi.md) | 617 | `result-track:6d8734e3e64c8a20b1a930f1f80de9baec561f6d3d4431bf2eb36c2f8d8532ea` |
| 125 | `theorem` | [sin_toReal](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/sin-toreal.md) | 622 | `result-track:899078e2ffd3d9666b7692c6c6faeda2dc7fe933433bfdc230d6215f474de89f` |
| 126 | `theorem` | [cos_toReal](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/cos-toreal.md) | 626 | `result-track:dcee726ce6d9b39d4f2a8defee78e0233f914f24014b6c1d9e5a388b25f1fd80` |
| 127 | `theorem` | [cos_nonneg_iff_abs_toReal_le_pi_div_two](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/cos-nonneg-iff-abs-toreal-le-pi-div-two.md) | 629 | `result-track:bbe32cbdf60f032a8939d37ac97cb9ddd14ac62921573ac8fef841c2b4661d88` |
| 128 | `theorem` | [cos_pos_iff_abs_toReal_lt_pi_div_two](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/cos-pos-iff-abs-toreal-lt-pi-div-two.md) | 635 | `result-track:f3e0eba5645b67270ae1d9fac337eccc93cf84f08b52592c45e7f5fed6284804` |
| 129 | `lemma` | [two_nsmul_eq_iff_eq_of_abs_toReal_lt_pi_div_two](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/two-nsmul-eq-iff-eq-of-abs-toreal-lt-pi-div-two.md) | 642 | `result-track:b9b6e5cb5fdf93a47059c0887c4f516dc5345066aacd459d35df7b7f5354a287` |
| 130 | `lemma` | [two_zsmul_eq_iff_eq_of_abs_toReal_lt_pi_div_two](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/two-zsmul-eq-iff-eq-of-abs-toreal-lt-pi-div-two.md) | 649 | `result-track:f303a470629fc64113550a8762e8092d5f43b28e260663cb71c114a9744f280b` |
| 131 | `theorem` | [cos_neg_iff_pi_div_two_lt_abs_toReal](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/cos-neg-iff-pi-div-two-lt-abs-toreal.md) | 653 | `result-track:d9ac2335144f58c00258a381be6685c5aa3c6bc3b67bd6429a47ca480a85223d` |
| 132 | `theorem` | [abs_cos_eq_abs_sin_of_two_nsmul_add_two_nsmul_eq_pi](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/abs-cos-eq-abs-sin-of-two-nsmul-add-two-nsmul-eq-pi.md) | 656 | `result-track:6455bcf8e6f197557c37226fddfe67022ca216c68fb74b10641ad0941dc9f66d` |
| 133 | `theorem` | [abs_cos_eq_abs_sin_of_two_zsmul_add_two_zsmul_eq_pi](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/abs-cos-eq-abs-sin-of-two-zsmul-add-two-zsmul-eq-pi.md) | 661 | `result-track:fca44e6b29577b7eb2f95f044d5f904e45785e24199f7b3438afa2d9e900b3e1` |
| 134 | `def` | [tan](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/tan.md) | 667 | `declaration-track:b357e06474df5ec786365b89af480c766f8d878daf3086a9e907473d16a393a7` |
| 135 | `theorem` | [tan_eq_sin_div_cos](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/tan-eq-sin-div-cos.md) | 670 | `result-track:d7c6862b6bf07013c174b31106a156bd0c34fcf6008f6a764f974f838938e0d5` |
| 136 | `theorem` | [tan_coe](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/tan-coe.md) | 674 | `result-track:e8a14df0eabc92698d3cf057f0c44e390009644e5714b5a9c2b7f6b8e956b15a` |
| 137 | `theorem` | [tan_zero](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/tan-zero.md) | 678 | `result-track:ef53e8d86060c6aa2a8d451903c6a0a075180589b0664dae8a9a9ddccc9704c5` |
| 138 | `theorem` | [tan_coe_pi](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/tan-coe-pi.md) | 680 | `result-track:317da9a70c29f8af814811eb7f13ede6093df0069a560c83ba947f3b54faa2d2` |
| 139 | `theorem` | [tan_periodic](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/tan-periodic.md) | 682 | `result-track:a0492dc64dcad81fbcaca16b020dae8ada5c5a08947dd138858fac8fedfd6548` |
| 140 | `theorem` | [tan_add_pi](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/tan-add-pi.md) | 689 | `result-track:1b8010963d20eb19c8b6be772d9d3181a16467d456d08a75fb128e8d7737d3ce` |
| 141 | `theorem` | [tan_sub_pi](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/tan-sub-pi.md) | 693 | `result-track:1bcb0a0798cdebc7d17f92d266e861db0a092c619ce6d8bdd6a32b43696bce9d` |
| 142 | `theorem` | [tan_toReal](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/tan-toreal.md) | 697 | `result-track:e957b5c2c1d28125e30f34c98e3bcb7c4d38125ef0f18dbcfaaa3f8986ddf332` |
| 143 | `theorem` | [tan_eq_of_two_nsmul_eq](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/tan-eq-of-two-nsmul-eq.md) | 700 | `result-track:ed73e010f179829c1ce332c485a5cf8c4c018f54cd3f7ddf44a1b9158a09c973` |
| 144 | `theorem` | [tan_eq_of_two_zsmul_eq](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/tan-eq-of-two-zsmul-eq.md) | 706 | `result-track:78b1184d2a8e7a24d4fa6bf6b11d0b8acee67577180a99d12aab86cd7ec129b3` |
| 145 | `theorem` | [tan_eq_inv_of_two_nsmul_add_two_nsmul_eq_pi](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/tan-eq-inv-of-two-nsmul-add-two-nsmul-eq-pi.md) | 710 | `result-track:d0523bd01661710d0faee723f1fa5b603b8eae89da0cb224f79e700836e655c8` |
| 146 | `theorem` | [tan_eq_inv_of_two_zsmul_add_two_zsmul_eq_pi](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/tan-eq-inv-of-two-zsmul-add-two-zsmul-eq-pi.md) | 722 | `result-track:a20123d34cf1a2de2942e995a506cb470d5735bdc1078f6bb715b58c0ddc7df0` |
| 147 | `def` | [sign](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/sign.md) | 730 | `declaration-track:ac2d173d553ddda51f4c0f216be80d4469771b92e792179477ab6ab01ffe7541` |
| 148 | `theorem` | [sign_zero](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/sign-zero.md) | 734 | `result-track:20e69e2a3ef6045b8a580d6891ed90e3177cb2fc256be5b343a84130abf66ec3` |
| 149 | `theorem` | [sign_coe_pi](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/sign-coe-pi.md) | 738 | `result-track:e7748c711d6d9867ce9c47b73178d246bf63a2ea06f9d6dae815b0e522e89b7e` |
| 150 | `theorem` | [sign_neg](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/sign-neg.md) | 741 | `result-track:9f63eeeb8a94de7d0b393cf135858cf6d62784507f0c4b667fcc1cfd8eecfe79` |
| 151 | `theorem` | [sign_antiperiodic](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/sign-antiperiodic.md) | 744 | `result-track:d70ad8218110adbe48c21258195ab5f9e09642192ac7169fce1a90e5ba98c458` |
| 152 | `theorem` | [sign_add_pi](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/sign-add-pi.md) | 748 | `result-track:6195de4e7866019dca7c10a3f60aeee428fc45ca8cd2b615035f4827a262d5f5` |
| 153 | `theorem` | [sign_pi_add](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/sign-pi-add.md) | 752 | `result-track:6a22b456b113c1010393ea62ee3dce29e1b57417956fd1bb43f245061c15d844` |
| 154 | `theorem` | [sign_sub_pi](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/sign-sub-pi.md) | 755 | `result-track:a5efaf9308466021c9b85de65272ddd7dce75a74065876c5ec5d49d1a6a27dc4` |
| 155 | `theorem` | [sign_pi_sub](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/sign-pi-sub.md) | 759 | `result-track:2e624f2e54ce09171bb421e8cf1a5ef9b778c1a4ca448b7765ce2ec055e09c10` |
| 156 | `theorem` | [sign_eq_zero_iff](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/sign-eq-zero-iff.md) | 763 | `result-track:05eb9adf88cc1eef659faf494f39a1475b33b902944e4e73549d0a7cf8bc8016` |
| 157 | `theorem` | [sign_ne_zero_iff](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/sign-ne-zero-iff.md) | 767 | `result-track:6cc9b15a9d4cc8de0644d8545b95102011e1fdbd545508705ffac572c2933c7c` |
| 158 | `theorem` | [toReal_neg_iff_sign_neg](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/toreal-neg-iff-sign-neg.md) | 770 | `result-track:d1d57eaf9bf0f58049541cb809855a12cc3c93cb1f0e35697701b4f953da5f28` |
| 159 | `theorem` | [toReal_nonneg_iff_sign_nonneg](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/toreal-nonneg-iff-sign-nonneg.md) | 774 | `result-track:8a57cf1f07c14e524bb4fbcf4b9187638450a21e99162b5e4d90a353942762b8` |
| 160 | `theorem` | [sign_toReal](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/sign-toreal.md) | 779 | `result-track:64e30c786db662f558cbeee91a7a6d9d1ab1f83815469b11d9fd3fbfed665c66` |
| 161 | `lemma` | [toReal_mem_Ioo_iff_sign_pos](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/toreal-mem-ioo-iff-sign-pos.md) | 787 | `result-track:b83e4cb1acd98eb46f792a84775bea27e03fe88ff31fbbd29c45b815d729961f` |
| 162 | `theorem` | [coe_abs_toReal_of_sign_nonneg](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/coe-abs-toreal-of-sign-nonneg.md) | 794 | `result-track:8b64ce3ad09428846030fd6df2184b27cba5d8156197fe15e1857fc628cf6d36` |
| 163 | `theorem` | [neg_coe_abs_toReal_of_sign_nonpos](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/neg-coe-abs-toreal-of-sign-nonpos.md) | 797 | `result-track:bd7c2180af4d9744c3bae174161c4e1c5e4cf0250a1d041b6d3c6b6ceeec7714` |
| 164 | `theorem` | [eq_iff_sign_eq_and_abs_toReal_eq](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/eq-iff-sign-eq-and-abs-toreal-eq.md) | 804 | `result-track:bebda06613162e18ac360e103e351dd63a7443f37e04ec381e8f572e34f71fc3` |
| 165 | `theorem` | [eq_iff_abs_toReal_eq_of_sign_eq](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/eq-iff-abs-toreal-eq-of-sign-eq.md) | 808 | `result-track:15bc65cd1ff1baa9c1c1b6e8dbe3a0f3924b0d7c79a3533bc583d1e102fff839` |
| 166 | `theorem` | [sign_coe_pi_div_two](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/sign-coe-pi-div-two.md) | 812 | `result-track:c4356824e0717638415c284da047561b46c641058af8d070ed60f4e6e9cf0107` |
| 167 | `theorem` | [sign_coe_neg_pi_div_two](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/sign-coe-neg-pi-div-two.md) | 816 | `result-track:bd8a851d169c0812d3b72df86c293fea7e21ec16c2d2b9201e88def39faf6e56` |
| 168 | `theorem` | [sign_coe_nonneg_of_nonneg_of_le_pi](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/sign-coe-nonneg-of-nonneg-of-le-pi.md) | 819 | `result-track:d77f1c0c2465036125d41f3c9fa6a38f320c26085d60abe6d397835a91dac3e3` |
| 169 | `theorem` | [sign_neg_coe_nonpos_of_nonneg_of_le_pi](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/sign-neg-coe-nonpos-of-nonneg-of-le-pi.md) | 824 | `result-track:175d02840410e91ae3b0a599a19cdc3ff46342c4d1761f34d57892df14e5b528` |
| 170 | `theorem` | [sign_two_nsmul_eq_sign_iff](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/sign-two-nsmul-eq-sign-iff.md) | 829 | `result-track:e3cfb31661ce14e7e88fec892ffc5b0ad8dffb5748ece96aa4a43be8fcc3cd1f` |
| 171 | `theorem` | [sign_two_zsmul_eq_sign_iff](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/sign-two-zsmul-eq-sign-iff.md) | 837 | `result-track:2e47e83c1849c31156d74e48ee1723b71a93b38165c1ca7c3652a415a0010e15` |
| 172 | `lemma` | [sign_two_nsmul_eq_neg_sign_iff](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/sign-two-nsmul-eq-neg-sign-iff.md) | 841 | `result-track:3d7a4b253130c7798075ff0abe3258bfab0469932dfca1faa0488803424c0366` |
| 173 | `lemma` | [sign_two_zsmul_eq_neg_sign_iff](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/sign-two-zsmul-eq-neg-sign-iff.md) | 846 | `result-track:05800d3c59f8f8285880671ae471d9ad7b92f8077bdfe54df5c2e3507a946a0a` |
| 174 | `theorem` | [eq_add_pi_of_two_zsmul_eq_of_sign_eq_neg](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/eq-add-pi-of-two-zsmul-eq-of-sign-eq-neg.md) | 850 | `result-track:fd0e3316b42fc2e38e8215ffcfebd74a14bfbb87e2a77d52de8df73ff5a5d2a4` |
| 175 | `theorem` | [sub_ne_pi_of_sign_eq_of_sign_ne_zero](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/sub-ne-pi-of-sign-eq-of-sign-ne-zero.md) | 859 | `result-track:a87754af935b5a8ad09cceca231ab86ea06485fc17eef03f478cffbe2f78c6f2` |
| 176 | `theorem` | [two_zsmul_eq_iff_eq](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/two-zsmul-eq-iff-eq.md) | 869 | `result-track:0068eea3618a10a9c1ff9ad655b75a65d41015e4fc6b7ed179c25c201709bea3` |
| 177 | `lemma` | [abs_toReal_add_abs_toReal_eq_pi_of_two_nsmul_add_eq_zero_of_sign_eq](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/abs-toreal-add-abs-toreal-eq-pi-of-two-nsmul-add-eq-zero-of-sign-eq.md) | 883 | `result-track:87bb6318f4f0f264d5201fc220292b7ddd1c9c1075a6a06a914d0d9b13fd83f7` |
| 178 | `lemma` | [abs_toReal_add_abs_toReal_eq_pi_of_two_zsmul_add_eq_zero_of_sign_eq](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/abs-toreal-add-abs-toreal-eq-pi-of-two-zsmul-add-eq-zero-of-sign-eq.md) | 898 | `result-track:bdd2b4ff32abf1c26f939b308a943cc02958c1dc7bb3c336ba12084001a82d61` |
| 179 | `lemma` | [toReal_add_of_sign_pos_sign_neg](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/toreal-add-of-sign-pos-sign-neg.md) | 904 | `result-track:7be7ac1d00aa00bddff46d61790f96182f0afebcdb282a422986b0d7b62b6eac` |
| 180 | `lemma` | [toReal_add_of_sign_eq_neg_sign](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/toreal-add-of-sign-eq-neg-sign.md) | 910 | `result-track:77dd9a3d7dcfaf358dab1df61481c605b3fe3d42dacb8d3ce83f0dd8df4cef3f` |
| 181 | `lemma` | [toReal_add_eq_toReal_add_toReal](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/toreal-add-eq-toreal-add-toreal.md) | 915 | `result-track:9cf1865360e88d575a98c53767c1d5753a7ba855ff3f3d2de3993e2672dea759` |
| 182 | `lemma` | [abs_toReal_add_eq_two_pi_sub_abs_toReal_add_abs_toReal_aux](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/abs-toreal-add-eq-two-pi-sub-abs-toreal-add-abs-toreal-aux.md) | 924 | `result-track:7ea8528067e96bd9a91e90e5a4edfc9fe48c81a98e890c8917853a5fd04f290d` |
| 183 | `lemma` | [abs_toReal_add_eq_two_pi_sub_abs_toReal_add_abs_toReal](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/abs-toreal-add-eq-two-pi-sub-abs-toreal-add-abs-toreal.md) | 941 | `result-track:f39c941dd402838752f3e4804bb588a5c1195ec84590c0e07c20f42345fa9717` |
| 184 | `theorem` | [continuousAt_sign](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/continuousat-sign.md) | 952 | `result-track:44548fa5c181ff47d9db570eaf32c85e7a7c156a51993b4a2731c5940d15a8ad` |
| 185 | `theorem` | [Trigonometric Angle Namespaced Public](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/angle-sign-comp.md) | 955 | `result-track:821a42f92a130915939d2530bb353e9d9f12ab79a643b0cd5d8cae9785b558c9` |
| 186 | `theorem` | [sign_eq_of_continuousOn](../../../../SpecialFunctions/TrigonometricAngleNamespacedPublic.lean/declarations/sign-eq-of-continuouson.md) | 964 | `result-track:bf20234c6c498c28720a14fda591c76087dc66e66314273bbcdb4c67d86852b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e8881b13a33e07b537a6fe79aaff7d546622f3f13b04f9814083e2f1887b563f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantedc1ba0030c5c87de0e81f679c8b339c93d6ecf35bf60dd8b9a19db15161b7e4.lean","GRWTSK/_verification/specifications/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantedc1ba0030c5c87de0e81f679c8b339c93d6ecf35bf60dd8b9a19db15161b7e4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
