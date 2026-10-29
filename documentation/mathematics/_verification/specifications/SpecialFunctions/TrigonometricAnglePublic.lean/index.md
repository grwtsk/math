# Verification target: Trigonometric Angle Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "815f53c00815218f96f6ae5af380b3feb4a51f42",
  "lexical_observation_count": 186,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variant680b5c7d7efd61908b2c54b1dc3dcb1d04d104c6ced4e31a2ea5060d5df7730a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/index.md) · [Full source](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `815f53c00815218f96f6ae5af380b3feb4a51f42`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variant680b5c7d7efd61908b2c54b1dc3dcb1d04d104c6ced4e31a2ea5060d5df7730a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variant680b5c7d7efd61908b2c54b1dc3dcb1d04d104c6ced4e31a2ea5060d5df7730a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Interval` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Angle](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/angle.md) | 31 | `declaration-track:61e59e869d7eed131992e45781ab21c49a6bdaa9d6660f4f5f9178a652123c6e` |
| 2 | `def` | [coe](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/coe.md) | 39 | `declaration-track:6f20fcc2ae2555315ae3cea49f1605565c70318af6e03a82fb88027a0658b4aa` |
| 3 | `instance` | [(anonymous)](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/instance-source-edition-2.md) | 41 | `declaration-track:c8cd1d7ebe8cc557ce52a5e0ae42f14af693957b92fd9a3e2f8098139626af47` |
| 4 | `instance` | [(anonymous)](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/instance.md) | 43 | `declaration-track:7139ba49c902ed259b91db6a6d16ac9602fa4cab92a9d4abf1ba7c26fac5240d` |
| 5 | `theorem` | [continuous_coe](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/continuous-coe.md) | 47 | `result-track:2f63ee4486c4a7f6c903ea18d64ea799df3d31013ac13a099ed587f3017c889f` |
| 6 | `def` | [coeHom](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/coehom.md) | 51 | `declaration-track:e27298ca1e8bf3a7e25a9cdf56c326b44974351040427ceae8d1ab9f3c78e574` |
| 7 | `theorem` | [coe_coeHom](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/coe-coehom.md) | 55 | `result-track:7ee6c3834cad7cc46f3144938fa833c6a183b01f102345e9f9c67a07799d0a8f` |
| 8 | `theorem` | [induction_on](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/induction-on.md) | 61 | `result-track:3deb3980e5f701173c9fafb75f1c6b20b7a10e58baf722128a6521963802c764` |
| 9 | `theorem` | [coe_zero](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/coe-zero.md) | 65 | `result-track:ae91536a73840e58707321798208e073746ef0ea98cb262df40824c1886acc4c` |
| 10 | `theorem` | [coe_add](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/coe-add.md) | 69 | `result-track:8cdfa397cf0bb31698689d1a298084d09a6dff099a92511a681b5fa7ab811b9d` |
| 11 | `theorem` | [coe_neg](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/coe-neg.md) | 73 | `result-track:93d10b2c690c591f0a08661cf956d7e574c1ac2c2b0603a452234f187bf6e6b9` |
| 12 | `theorem` | [coe_sub](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/coe-sub.md) | 77 | `result-track:07d1ad263ff9d0eab2ca01b32bfa12ccbe7cc75f602bbc678069cefcdb7765ce` |
| 13 | `theorem` | [coe_nsmul](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/coe-nsmul.md) | 80 | `result-track:9220625c1a0639fe0b7bf26f0cefa506e7cb34ac9ff1d8296e6006b6db105f94` |
| 14 | `theorem` | [coe_zsmul](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/coe-zsmul.md) | 83 | `result-track:d0f6283b0bc6548f66e1ccba06793f48fda74b0437ba97ac8d3f059cc798f599` |
| 15 | `theorem` | [coe_eq_zero_iff](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/coe-eq-zero-iff.md) | 86 | `result-track:03c0f499057aa7ee9e08ebd8a70aec322ab708a3b2216e31d98317740b634a56` |
| 16 | `theorem` | [natCast_mul_eq_nsmul](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/natcast-mul-eq-nsmul.md) | 90 | `result-track:abcfc2c1f8dfe3900ab53c7f98e0aff5948b5806437ccc2169b943d5abf26529` |
| 17 | `theorem` | [intCast_mul_eq_zsmul](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/intcast-mul-eq-zsmul.md) | 94 | `result-track:a676453193dd7bc32eae8f8af7d0527cf4cade97a3df23a2c32106c0166b4339` |
| 18 | `theorem` | [angle_eq_iff_two_pi_dvd_sub](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/angle-eq-iff-two-pi-dvd-sub.md) | 98 | `result-track:59f74b9fa2e972bd741a4b10a8da269cb6892c88834a2660ad2ac168cdd8321d` |
| 19 | `theorem` | [coe_two_pi](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/coe-two-pi.md) | 105 | `result-track:6c09bd5b6394fe7d7a5d10a1447dab5d9d9210ea27336a95e4722685c9439b12` |
| 20 | `theorem` | [neg_coe_pi](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/neg-coe-pi.md) | 109 | `result-track:e893fcc4434849a7c95a656050a17aa4e74162a42b40b524e050ba765b53374f` |
| 21 | `theorem` | [two_nsmul_coe_div_two](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/two-nsmul-coe-div-two.md) | 115 | `result-track:a849a5975267e48afb55c6d09ead8e7e02c48def2c9a72a3c5e0eb954f0895bc` |
| 22 | `theorem` | [two_zsmul_coe_div_two](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/two-zsmul-coe-div-two.md) | 119 | `result-track:609664f923aee073345f47cc464bdd62eb36cbd48680eb2f1cda111db33b51eb` |
| 23 | `theorem` | [two_nsmul_neg_pi_div_two](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/two-nsmul-neg-pi-div-two.md) | 122 | `result-track:ce5a1e53f04ec0a7c4efe8cb67b07aa813713e1850c929449b9455cfd885536b` |
| 24 | `theorem` | [two_zsmul_neg_pi_div_two](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/two-zsmul-neg-pi-div-two.md) | 125 | `result-track:09358950c933f0ce274550172fa55d754290b2197b690610529441143e353ae1` |
| 25 | `theorem` | [sub_coe_pi_eq_add_coe_pi](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/sub-coe-pi-eq-add-coe-pi.md) | 128 | `result-track:8f10f8d9b1e37dbc22a773dbe726eb4f7412c87cc5aacf5a598e5eb15644d2a7` |
| 26 | `theorem` | [two_nsmul_coe_pi](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/two-nsmul-coe-pi.md) | 132 | `result-track:450f2fa37cc1e97360bdaaeddcef4e62339bfd92e5081cbc9cac71c2ac15be79` |
| 27 | `theorem` | [two_zsmul_coe_pi](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/two-zsmul-coe-pi.md) | 135 | `result-track:926699affa514f0a3144626e2de544253f6d6dcbaee10e807a2195f46d98a4ac` |
| 28 | `theorem` | [coe_pi_add_coe_pi](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/coe-pi-add-coe-pi.md) | 138 | `result-track:0c38e3380da424a0db3b5224d5461c2bca61e92771f0212f9b04ba8ad006b8b2` |
| 29 | `theorem` | [zsmul_eq_iff](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/zsmul-eq-iff.md) | 140 | `result-track:a7764130753c6dec715de9b4578697290f28ba6582b264082aae0e4b163e9ce4` |
| 30 | `theorem` | [nsmul_eq_iff](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/nsmul-eq-iff.md) | 144 | `result-track:66c541a870f64b56d179ccee3adf65017726754ddd584c4bc642e63315496b8a` |
| 31 | `theorem` | [two_zsmul_eq_iff](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/two-zsmul-eq-iff.md) | 148 | `result-track:e75ca00803449779ac0457cca01a0d9f698bdc3f1c97aa8b4d16b0badcd22d06` |
| 32 | `theorem` | [two_nsmul_eq_iff](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/two-nsmul-eq-iff.md) | 154 | `result-track:a4e8c07e84eedb5660db86a4fe5a9e1e92a77eadc98be3bd5d920a03f5289ff2` |
| 33 | `theorem` | [two_nsmul_eq_zero_iff](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/two-nsmul-eq-zero-iff.md) | 157 | `result-track:0f1128fef6b8794aeee93719ca6f4e1ea2837753f8e5226da922350a346b98ec` |
| 34 | `theorem` | [two_nsmul_ne_zero_iff](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/two-nsmul-ne-zero-iff.md) | 160 | `result-track:af6ade0452e8778801ecc940b6c1626cef9b8b5530b85082074a661c96fa0b16` |
| 35 | `theorem` | [two_zsmul_eq_zero_iff](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/two-zsmul-eq-zero-iff.md) | 163 | `result-track:8cbe6fb5fe573cf86dd1ebd8118e92c5c058f5458c968b9bfd93a7402f4e5d32` |
| 36 | `theorem` | [two_zsmul_ne_zero_iff](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/two-zsmul-ne-zero-iff.md) | 166 | `result-track:1b3b8b0b9dc95636c20425f8e1f4fa905d71d1adcc9d14b4b8f7e4c4e25fe1ae` |
| 37 | `theorem` | [eq_neg_self_iff](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/eq-neg-self-iff.md) | 169 | `result-track:b4cf6e086c6d9c1b52c8fde7566ca31b26b4364c5408d8e149625cc214e075fc` |
| 38 | `theorem` | [ne_neg_self_iff](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/ne-neg-self-iff.md) | 172 | `result-track:58b41ca5f630d681eff313d7f076bebfdd9b80537eb98d7ea4ac9ef56dd3a8dd` |
| 39 | `theorem` | [neg_eq_self_iff](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/neg-eq-self-iff.md) | 175 | `result-track:1df2bca768eef8351fa2150e49926def64246ed7839eb0e7b70e369f4ff36f72` |
| 40 | `theorem` | [neg_ne_self_iff](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/neg-ne-self-iff.md) | 177 | `result-track:c291e71ddb3849027ea76abe18c4449eaaf5acf4ce97a15cfb494b501defa472` |
| 41 | `theorem` | [two_nsmul_eq_pi_iff](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/two-nsmul-eq-pi-iff.md) | 180 | `result-track:661b45cbd720cf3ceab05c48fe7e305175c56267106796ad805a0e05a040faa1` |
| 42 | `theorem` | [two_zsmul_eq_pi_iff](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/two-zsmul-eq-pi-iff.md) | 189 | `result-track:8f295d770073850b3a3830232bbe190e930b44838e08082ae2324d5880016cd2` |
| 43 | `theorem` | [cos_eq_iff_coe_eq_or_eq_neg](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/cos-eq-iff-coe-eq-or-eq-neg.md) | 192 | `result-track:48859d537d72f3b170e45916e4258472fe3910fba47e60f81e2f35bd10032f70` |
| 44 | `theorem` | [sin_eq_iff_coe_eq_or_add_eq_pi](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/sin-eq-iff-coe-eq-or-add-eq-pi.md) | 215 | `result-track:22b293733fd146b8e0ab1c378ee39fb460a8f24abc7aacb4db7ec41609ebf845` |
| 45 | `theorem` | [cos_sin_inj](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/cos-sin-inj.md) | 239 | `result-track:0e360ea4f745fa5f4a521ea8b68063f6bfaf91d9e2179f2b3c296920ba72e086` |
| 46 | `def` | [sin](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/sin.md) | 252 | `declaration-track:e1ebac7b1e4b2032e9bd65fda3e72cb751e9148823c22911368de03503c16835` |
| 47 | `theorem` | [sin_coe](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/sin-coe.md) | 256 | `result-track:89ef72d6e5f38f26a04f8a81719bcb41a67bef66c55d408230b3f20359b669fb` |
| 48 | `theorem` | [continuous_sin](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/continuous-sin.md) | 260 | `result-track:5f57e8b17e906ffa5c95e9dc80491cf4cf70596c6baa7cc368b901296a5ec210` |
| 49 | `def` | [cos](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/cos.md) | 264 | `declaration-track:4c5c49f55c429ebef5b5f7ef0ac6174b06e5e17385c6b619bac4d91dc03258ef` |
| 50 | `theorem` | [cos_coe](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/cos-coe.md) | 268 | `result-track:a586f770bad718c7a61ec08bcf6d91ef70a4fd9ec70426e27fc2b3228a921752` |
| 51 | `theorem` | [continuous_cos](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/continuous-cos.md) | 272 | `result-track:a3a978356fe00e4b92ae66c56c8669ed70dfab00f9155b05178ba6afeb5a132e` |
| 52 | `theorem` | [cos_eq_real_cos_iff_eq_or_eq_neg](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/cos-eq-real-cos-iff-eq-or-eq-neg.md) | 275 | `result-track:8e2217dd996984d42d28a4c5219f1f714dafba4b56bcfd50726111fc5dcae37b` |
| 53 | `theorem` | [cos_eq_iff_eq_or_eq_neg](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/cos-eq-iff-eq-or-eq-neg.md) | 280 | `result-track:06e05f56443b83f23b4e3552c262c5e1b59f3477b319c205beb7202846ee8bfe` |
| 54 | `theorem` | [sin_eq_real_sin_iff_eq_or_add_eq_pi](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/sin-eq-real-sin-iff-eq-or-add-eq-pi.md) | 284 | `result-track:788d57ec7d12846274edbf0b24757eaa05a7611118d8e123930cf4378424e0f6` |
| 55 | `theorem` | [sin_eq_iff_eq_or_add_eq_pi](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/sin-eq-iff-eq-or-add-eq-pi.md) | 289 | `result-track:09a6d42cf434c9f07d7011058deb9cafba53a99b11551da06d579d592d4d03e3` |
| 56 | `theorem` | [sin_zero](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/sin-zero.md) | 294 | `result-track:2315423f3d9fe7fa51e60d89f782f195df6ffeeafa8690778b49f59ac8f85dde` |
| 57 | `theorem` | [sin_coe_pi](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/sin-coe-pi.md) | 296 | `result-track:df3964ca142825477e4d3709500fd714ddc24caf67a340703622182cd7f32dea` |
| 58 | `theorem` | [sin_eq_zero_iff](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/sin-eq-zero-iff.md) | 298 | `result-track:2f1bdd58d44e39938f26f58ce3330af373f70bd3265b651d5d190ab326c18183` |
| 59 | `theorem` | [sin_ne_zero_iff](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/sin-ne-zero-iff.md) | 303 | `result-track:147275be5789646052bb4e2f0cba313eb5839b0d8b0c7e050ebd5a66ab521c5b` |
| 60 | `theorem` | [sin_neg](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/sin-neg.md) | 307 | `result-track:0be00c03c9b405d4c6cc990fcf93b1d045b2f90af52761fca2757f1cd42bf9b3` |
| 61 | `theorem` | [sin_antiperiodic](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/sin-antiperiodic.md) | 311 | `result-track:0b6cbb9f4199ed92527102d7c40fd9da72dbd608a9d18ad3948a07c9846c26bc` |
| 62 | `theorem` | [sin_add_pi](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/sin-add-pi.md) | 317 | `result-track:df9c3fd666e29bfbf5a5f9a42364c1c11912ee4a13b3e23a2b836c226db4646b` |
| 63 | `theorem` | [sin_sub_pi](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/sin-sub-pi.md) | 321 | `result-track:4247b1aa4fc6a6b38edad80b496345a8262422b26bac0c5a0ef5108d192dd4be` |
| 64 | `theorem` | [cos_zero](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/cos-zero.md) | 325 | `result-track:dd9e2cfb71baff98d26eefafd1eda770c35972b0528186fc22eaceffff470b1a` |
| 65 | `theorem` | [cos_coe_pi](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/cos-coe-pi.md) | 327 | `result-track:9affd88eb0d14a3c6dae1aead3b5796a0bb985e1f42497b8d9f11628fe5f8893` |
| 66 | `theorem` | [cos_neg](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/cos-neg.md) | 330 | `result-track:3dd96a4d9315df8e2e0a2f4d3653d6a2384d140fc475f4b79f2f5c058f875b95` |
| 67 | `theorem` | [cos_antiperiodic](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/cos-antiperiodic.md) | 334 | `result-track:bb9570151bd89a84e7faaa01c1b6a8321c1e30db5cd4375876f27843ba0e6581` |
| 68 | `theorem` | [cos_add_pi](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/cos-add-pi.md) | 340 | `result-track:0cdc9e57c2050b348fae3f045e0b3049c65ca619bf64b3ef317da34adafe3d71` |
| 69 | `theorem` | [cos_sub_pi](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/cos-sub-pi.md) | 344 | `result-track:1eac657f64f6427b993d434458bbf8b95c3067a955683579af642c555bb188fd` |
| 70 | `theorem` | [cos_eq_zero_iff](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/cos-eq-zero-iff.md) | 347 | `result-track:fae49d24025cac1675bf8c4fe280d6155a8fb29960439068391e470f36d6cbd0` |
| 71 | `theorem` | [sin_add](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/sin-add.md) | 350 | `result-track:81e9f5e1743b57c2153e136fc03172706ec1cb7acf8db90c23a09ed9a5eb349f` |
| 72 | `theorem` | [cos_add](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/cos-add.md) | 355 | `result-track:fb201fd59486766647895652eb2cea713d7b47a6db482501aeac70417d0890bc` |
| 73 | `theorem` | [sin_two_nsmul](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/sin-two-nsmul.md) | 360 | `result-track:ef62d1c9c5c9458af7626abbc0748a13185747fb2c1ecafe807289f8cf818fff` |
| 74 | `theorem` | [cos_sq_add_sin_sq](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/cos-sq-add-sin-sq.md) | 364 | `result-track:3c6d21a6a38f3650843febbafcfb7d00075eb0951a4de0284ed80fecbe08faff` |
| 75 | `theorem` | [sin_add_pi_div_two](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/sin-add-pi-div-two.md) | 368 | `result-track:0b062c9a48c797d5e0fec741ec83b18e27d00f331a9b990fa5ebf7d0e43d2cf0` |
| 76 | `theorem` | [sin_sub_pi_div_two](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/sin-sub-pi-div-two.md) | 372 | `result-track:a5122e7c9b41dd96da2057c60d45d660a27db9df45616786be3da91ffa7c5bfd` |
| 77 | `theorem` | [sin_pi_div_two_sub](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/sin-pi-div-two-sub.md) | 376 | `result-track:a970929fdb7a957289126eb98da8d6ab5648d0e746d6621518d86dcb89d9287a` |
| 78 | `theorem` | [cos_add_pi_div_two](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/cos-add-pi-div-two.md) | 380 | `result-track:210858c09269ad6667d52fe76f98a889b2d22a2e71f985fd0ad8c21f87e99c94` |
| 79 | `theorem` | [cos_sub_pi_div_two](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/cos-sub-pi-div-two.md) | 384 | `result-track:4fa853e3f8cca0fb205b8c8469db4d9e6da4b9fde8a4334577edf248d146df94` |
| 80 | `theorem` | [cos_pi_div_two_sub](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/cos-pi-div-two-sub.md) | 388 | `result-track:726d2ff068de7e5e9f82e0dbd14556e89a210aacd6803037e5ce5497c09efbab` |
| 81 | `theorem` | [abs_sin_eq_of_two_nsmul_eq](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/abs-sin-eq-of-two-nsmul-eq.md) | 392 | `result-track:a106de5678c7cca4f7a0bfcf77965b519a235ab20b5ef8a910ba7745f582f5c0` |
| 82 | `theorem` | [abs_sin_eq_of_two_zsmul_eq](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/abs-sin-eq-of-two-zsmul-eq.md) | 399 | `result-track:e446ee7cbc858bc6ad1eae0c98842fb45c175a44632f0ccb2bc8e984d29344c4` |
| 83 | `theorem` | [abs_cos_eq_of_two_nsmul_eq](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/abs-cos-eq-of-two-nsmul-eq.md) | 404 | `result-track:95a7405b2781519c6e08384aa61d66533c131b312520b5e59035b1412393a79e` |
| 84 | `theorem` | [abs_cos_eq_of_two_zsmul_eq](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/abs-cos-eq-of-two-zsmul-eq.md) | 411 | `result-track:38c7d56bf17db6e17361260503d15535f9b0576f69b7d753c2ef9717b7d79e27` |
| 85 | `theorem` | [coe_toIcoMod](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/coe-toicomod.md) | 417 | `result-track:9aa203a430b11ce50dc5a7f18549f24e51cc16ea70d44a609fd1eaebd642df04` |
| 86 | `theorem` | [coe_toIocMod](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/coe-toiocmod.md) | 423 | `result-track:bcaede2b5fe077a152878cabb27be779243d5d0ee18fd872e288ddfa85cfd3f7` |
| 87 | `def` | [toReal](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/toreal.md) | 429 | `declaration-track:3c5c03277f2c2803c721a5202e13cc83715a102d2ed21665394af77917ed0aea` |
| 88 | `theorem` | [toReal_coe](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/toreal-coe.md) | 432 | `result-track:22777ea67128817d9d395f022c510beb70177e76daab2329d856c9d1821189c3` |
| 89 | `theorem` | [toReal_coe_eq_self_iff](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/toreal-coe-eq-self-iff.md) | 435 | `result-track:a387f9d1946bd48482075a24b2f1c256a2b4805cef3ec701c223fd92ece1a164` |
| 90 | `theorem` | [toReal_coe_eq_self_iff_mem_Ioc](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/toreal-coe-eq-self-iff-mem-ioc.md) | 440 | `result-track:7e16ecfc09e83423450d40f8d158e5ee711492833af69d3cadab84f066cc7d15` |
| 91 | `theorem` | [toReal_injective](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/toreal-injective.md) | 444 | `result-track:a32d6ba742bfd0f94c1455ae602c610910c2aee2b61ec5df5375329baf750ae8` |
| 92 | `theorem` | [toReal_inj](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/toreal-inj.md) | 452 | `result-track:1cf89cec2a640312c145200185d3e17e9ac70071b093355542e2f7b76cc4aec3` |
| 93 | `theorem` | [coe_toReal](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/coe-toreal.md) | 456 | `result-track:14b9ea90814db389468002d5bcccca304a5dc7557b314379417edb051f6cf602` |
| 94 | `theorem` | [neg_pi_lt_toReal](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/neg-pi-lt-toreal.md) | 460 | `result-track:37ea9c5e141748441798e33c6e3e824d31acd74a9aba961dc1bcd75582f2bf7f` |
| 95 | `theorem` | [toReal_le_pi](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/toreal-le-pi.md) | 464 | `result-track:fdbe084ba4a4aec7033d8e6e6ac18c3c7ec6314dd35402809b2928d22964d53e` |
| 96 | `theorem` | [abs_toReal_le_pi](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/abs-toreal-le-pi.md) | 469 | `result-track:2ff9819178b08783dea4543313947dd3d145c0e839e66e8ddedfc4673fa285c0` |
| 97 | `theorem` | [toReal_mem_Ioc](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/toreal-mem-ioc.md) | 472 | `result-track:9705487de6bd1f956ac63ea47ab49536c52cbca883a60308f44e0e5120f57b12` |
| 98 | `theorem` | [toIocMod_toReal](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/toiocmod-toreal.md) | 476 | `result-track:644a77333412716544f4470296d0f618f18123a8c39958eb1d22e4656eaffe81` |
| 99 | `theorem` | [toReal_zero](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/toreal-zero.md) | 482 | `result-track:501d773ca512a8c411990236b11de148178518615a7fbc5fe3df493093e98062` |
| 100 | `theorem` | [toReal_eq_zero_iff](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/toreal-eq-zero-iff.md) | 487 | `result-track:591b6851050488d2692f8f0235525a17a427a3a6f3c727764aef1e374ea93a25` |
| 101 | `theorem` | [toReal_pi](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/toreal-pi.md) | 492 | `result-track:951e51ca6d08d5671f67f3db5451c2ce9ea7b973cd3235ef8116b188a3572568` |
| 102 | `theorem` | [toReal_eq_pi_iff](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/toreal-eq-pi-iff.md) | 497 | `result-track:2effdc25c9b2dd4cd4132fdb08245de79f6d9d057273c79e50904d14eeaba17e` |
| 103 | `lemma` | [toReal_neg_eq_neg_toReal_iff](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/toreal-neg-eq-neg-toreal-iff.md) | 499 | `result-track:38370f9dc79d5e36350a3d1a074f966791ef94ec5d2bfb873e471b224f076959` |
| 104 | `lemma` | [abs_toReal_neg](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/abs-toreal-neg.md) | 509 | `result-track:e1888189600ec3b1bf02f9163cadd501171f35a5581edeadf8a79941ef5d1185` |
| 105 | `theorem` | [pi_ne_zero](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/pi-ne-zero.md) | 514 | `result-track:2d5e9fda330de9dc79860e64cd99f17a7a7ea40775c92c850a73ee9628a6080d` |
| 106 | `theorem` | [toReal_pi_div_two](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/toreal-pi-div-two.md) | 519 | `result-track:5f672d43a4d2ed1eea96e7e901f79a77d148953154eda6c41b31d5d8b7f9f157` |
| 107 | `theorem` | [toReal_eq_pi_div_two_iff](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/toreal-eq-pi-div-two-iff.md) | 523 | `result-track:f05373b52017381da6872b9414198406eed562aee1d4f496e0542d0506020520` |
| 108 | `theorem` | [toReal_neg_pi_div_two](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/toreal-neg-pi-div-two.md) | 527 | `result-track:3bde2f28f71c3df7ae660f45d64d60df204a2033c9479b083b6004c4491eee83` |
| 109 | `theorem` | [toReal_eq_neg_pi_div_two_iff](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/toreal-eq-neg-pi-div-two-iff.md) | 531 | `result-track:136b894c493d0a17feaa238de1e3ad935eb348225072beed2684ad83030df6d9` |
| 110 | `theorem` | [pi_div_two_ne_zero](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/pi-div-two-ne-zero.md) | 534 | `result-track:a772d4e08abc2dfe92c06086680060cc5832eb8badd3e9ce219cd51bbf6da238` |
| 111 | `theorem` | [neg_pi_div_two_ne_zero](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/neg-pi-div-two-ne-zero.md) | 538 | `result-track:6891c047b8d9da46dadb7d48acefcdbc827dbf71204879048f4e26b13318df62` |
| 112 | `theorem` | [abs_toReal_coe_eq_self_iff](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/abs-toreal-coe-eq-self-iff.md) | 542 | `result-track:dbb5bef353b0b26f65cd5e7b77d5e583442e26313d3527cdad7a344c1ed052a8` |
| 113 | `theorem` | [abs_toReal_neg_coe_eq_self_iff](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/abs-toreal-neg-coe-eq-self-iff.md) | 547 | `result-track:6881ea4f6a10329b94b5647547a79fc27eca25e5b638db580c25910c50c620e3` |
| 114 | `theorem` | [abs_toReal_eq_pi_div_two_iff](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/abs-toreal-eq-pi-div-two-iff.md) | 555 | `result-track:c637b84e2b6c945ddb8071b8c9c9af2ac899a7f2f3899244c33bba3e3006fed2` |
| 115 | `theorem` | [nsmul_toReal_eq_mul](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/nsmul-toreal-eq-mul.md) | 560 | `result-track:2b98b78ca13d3a4ed8a6cb0099a1eb429de683c58975f8a6b8e04373b13758f7` |
| 116 | `theorem` | [two_nsmul_toReal_eq_two_mul](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/two-nsmul-toreal-eq-two-mul.md) | 567 | `result-track:99596b84a5f92e0935d8752c902a7d4016995bd04b9af9f0147a47ac5b466a07` |
| 117 | `theorem` | [two_zsmul_toReal_eq_two_mul](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/two-zsmul-toreal-eq-two-mul.md) | 571 | `result-track:fe75ff7aa47f1402aa779e5de986863513f6ddc8742340050ac3b92113667102` |
| 118 | `theorem` | [toReal_coe_eq_self_sub_two_mul_int_mul_pi_iff](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/toreal-coe-eq-self-sub-two-mul-int-mul-pi-iff.md) | 575 | `result-track:755d8de6b1e35ad2c867b33939a7b2fbbb1088f9d7c29e977a4acbbc227e0059` |
| 119 | `theorem` | [toReal_coe_eq_self_sub_two_pi_iff](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/toreal-coe-eq-self-sub-two-pi-iff.md) | 581 | `result-track:9b834f48b3f42955663633b47df1c37dd0e30c34a02fc09b3e12253ea60d4283` |
| 120 | `theorem` | [toReal_coe_eq_self_add_two_pi_iff](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/toreal-coe-eq-self-add-two-pi-iff.md) | 585 | `result-track:0066fa4982f3b090ee2a43a27b5070ddffc597778830df7b92772b2371bdd518` |
| 121 | `theorem` | [two_nsmul_toReal_eq_two_mul_sub_two_pi](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/two-nsmul-toreal-eq-two-mul-sub-two-pi.md) | 589 | `result-track:465a17287d4ba92af655f5d98ab08ba4f9e118a20ab15dbcabd391e102f3e843` |
| 122 | `theorem` | [two_zsmul_toReal_eq_two_mul_sub_two_pi](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/two-zsmul-toreal-eq-two-mul-sub-two-pi.md) | 597 | `result-track:7ae5fd3073b29891fadc5098f5eb9a0215c8a082fc77944345f7f0d7f6af2515` |
| 123 | `theorem` | [two_nsmul_toReal_eq_two_mul_add_two_pi](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/two-nsmul-toreal-eq-two-mul-add-two-pi.md) | 601 | `result-track:23ee0b7d3e52e0b021310194ca2b52691c8dba2606edcb8e80db0a275b140a66` |
| 124 | `theorem` | [two_zsmul_toReal_eq_two_mul_add_two_pi](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/two-zsmul-toreal-eq-two-mul-add-two-pi.md) | 609 | `result-track:0b97258e78b24213a0448872a1e77cbcb0db8c265b3dc71944a186f08e6d4495` |
| 125 | `theorem` | [sin_toReal](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/sin-toreal.md) | 614 | `result-track:3e3350fad72b912016a8337c6608329998b58ab4add5291d4877b7273fabc598` |
| 126 | `theorem` | [cos_toReal](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/cos-toreal.md) | 618 | `result-track:fb12df581baa87a56421e886ca4255aab1d0cf0a9686c9b9f3e24e3a93844da5` |
| 127 | `theorem` | [cos_nonneg_iff_abs_toReal_le_pi_div_two](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/cos-nonneg-iff-abs-toreal-le-pi-div-two.md) | 621 | `result-track:6104c4d42d0dedf47d267133f0cb6c968fceecf12504bc1f48fb888bf05fd9ab` |
| 128 | `theorem` | [cos_pos_iff_abs_toReal_lt_pi_div_two](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/cos-pos-iff-abs-toreal-lt-pi-div-two.md) | 627 | `result-track:1566a99adad455ca35e2d83da5500636fade936c3b053c5b32a154c39b9a0b41` |
| 129 | `lemma` | [two_nsmul_eq_iff_eq_of_abs_toReal_lt_pi_div_two](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/two-nsmul-eq-iff-eq-of-abs-toreal-lt-pi-div-two.md) | 634 | `result-track:eb11be7137d3261ed4890dc6c340a11368c7294b2055b9f58528f933ff9aa3d2` |
| 130 | `lemma` | [two_zsmul_eq_iff_eq_of_abs_toReal_lt_pi_div_two](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/two-zsmul-eq-iff-eq-of-abs-toreal-lt-pi-div-two.md) | 641 | `result-track:bbf3ec10950614ff52755e6eda6a1c34d6ae66b76bfe38823ae7bb52beff00b3` |
| 131 | `theorem` | [cos_neg_iff_pi_div_two_lt_abs_toReal](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/cos-neg-iff-pi-div-two-lt-abs-toreal.md) | 645 | `result-track:e9fad8165d853b03d9f78f3a06d6859996abeba5e488e0d5efc8e109371afd97` |
| 132 | `theorem` | [abs_cos_eq_abs_sin_of_two_nsmul_add_two_nsmul_eq_pi](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/abs-cos-eq-abs-sin-of-two-nsmul-add-two-nsmul-eq-pi.md) | 648 | `result-track:2d06ceca88bfbe2b37b2e8dea6c76e7a14afc59de1e0ad758351a774fdc13227` |
| 133 | `theorem` | [abs_cos_eq_abs_sin_of_two_zsmul_add_two_zsmul_eq_pi](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/abs-cos-eq-abs-sin-of-two-zsmul-add-two-zsmul-eq-pi.md) | 653 | `result-track:0f53994a49c8908a41b6fac97a66dda221407aac0dbd9ab03788756d7ef85e9a` |
| 134 | `def` | [tan](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/tan.md) | 659 | `declaration-track:364c04fbb441ad09e52d16bb119004a89d0cc86b532843c64158b5ad3e4dcbe9` |
| 135 | `theorem` | [tan_eq_sin_div_cos](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/tan-eq-sin-div-cos.md) | 662 | `result-track:cee28ef860f567145d1f3e2f8dc0ee76195dc69eb7e8467024562277d1bd067e` |
| 136 | `theorem` | [tan_coe](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/tan-coe.md) | 666 | `result-track:6d8d765cf2a3bbc65d107f9083d807387e18d4f5649a454c7b42446a6a5af7bd` |
| 137 | `theorem` | [tan_zero](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/tan-zero.md) | 670 | `result-track:6ba1ab9dab768b7206e4725beb12cb43d9fb6568140b600eb90cd56997aa89f0` |
| 138 | `theorem` | [tan_coe_pi](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/tan-coe-pi.md) | 672 | `result-track:bdde8d5057461b2b958da9e883eb4b992c04049aa1a990f81215dfd197d46893` |
| 139 | `theorem` | [tan_periodic](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/tan-periodic.md) | 674 | `result-track:97449764c9f2bff71b159cd323ed94ac0730780a63488b7ec6259796c314da03` |
| 140 | `theorem` | [tan_add_pi](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/tan-add-pi.md) | 681 | `result-track:822cb908db50ed7b684f79706b97fd4a6ab08bf4c96c47cf40fc0f2bd2646dc8` |
| 141 | `theorem` | [tan_sub_pi](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/tan-sub-pi.md) | 685 | `result-track:de09e0f170a62914d7cfc42a55ac94bfc3ddf3e5855107c543a5aa692f970ffb` |
| 142 | `theorem` | [tan_toReal](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/tan-toreal.md) | 689 | `result-track:b4c1bec621c9656863170349237249e42503266197b50a14d078703e77bdcb33` |
| 143 | `theorem` | [tan_eq_of_two_nsmul_eq](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/tan-eq-of-two-nsmul-eq.md) | 692 | `result-track:11cf974f13f7aa8875695c6c649ce49fa41663de98f6ae1f8696f1626920a878` |
| 144 | `theorem` | [tan_eq_of_two_zsmul_eq](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/tan-eq-of-two-zsmul-eq.md) | 698 | `result-track:3ff64e55344d1636c25efe763c29ff52bb1c6e8272c1670d568eebd1377b0d20` |
| 145 | `theorem` | [tan_eq_inv_of_two_nsmul_add_two_nsmul_eq_pi](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/tan-eq-inv-of-two-nsmul-add-two-nsmul-eq-pi.md) | 702 | `result-track:7902abe103cbedd7e0e2f6ebb402c4f3784b1de3bc8f7c9c0009ac0f07027e14` |
| 146 | `theorem` | [tan_eq_inv_of_two_zsmul_add_two_zsmul_eq_pi](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/tan-eq-inv-of-two-zsmul-add-two-zsmul-eq-pi.md) | 714 | `result-track:d8cf2e65b234a7e322e663d306efa39ad30257b75739452f0658ec7069ec9d9d` |
| 147 | `def` | [sign](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/sign.md) | 722 | `declaration-track:bb5c889017ea059773a517a351f7ecc97f18634cd461e9a47b922b29a777ae94` |
| 148 | `theorem` | [sign_zero](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/sign-zero.md) | 726 | `result-track:71eb7998bfffe842567de78daba19947699341dfa8711a7506ea415d5d58fe25` |
| 149 | `theorem` | [sign_coe_pi](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/sign-coe-pi.md) | 730 | `result-track:6bea039de6d5129fbdaae9775320c702e968da47ce9bd9046f323a467af6e67f` |
| 150 | `theorem` | [sign_neg](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/sign-neg.md) | 733 | `result-track:3a1308164ffe922b864d122329c20c7c19a3a7750427eee76a9949f89fe678bf` |
| 151 | `theorem` | [sign_antiperiodic](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/sign-antiperiodic.md) | 736 | `result-track:e2be9a06320a7c59043e84c44d9bc4086247f7c04db44b8a3659874c46b46876` |
| 152 | `theorem` | [sign_add_pi](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/sign-add-pi.md) | 740 | `result-track:021440c9ecc9b0919b227334fea7df2d7212814822b601a63bbcc84e1400ee9e` |
| 153 | `theorem` | [sign_pi_add](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/sign-pi-add.md) | 744 | `result-track:b3a1aaf5177a36a13a5dc191e9a3db4a46061a1fe84500afa3a7d9bc2b650320` |
| 154 | `theorem` | [sign_sub_pi](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/sign-sub-pi.md) | 747 | `result-track:3f3da282c85b5402164652d9b6b7780b9219df369cd7a7e7cb68a5c339e810d9` |
| 155 | `theorem` | [sign_pi_sub](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/sign-pi-sub.md) | 751 | `result-track:7d7ce8ad4d59f1c4919f1eb020c145d195dbc7182ff09510b513fb4526fbf7f9` |
| 156 | `theorem` | [sign_eq_zero_iff](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/sign-eq-zero-iff.md) | 755 | `result-track:435561c18aaa212d9575397cf9df0d353c6a8dda9df842af7330618089a4a83e` |
| 157 | `theorem` | [sign_ne_zero_iff](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/sign-ne-zero-iff.md) | 759 | `result-track:3ad12d7041ed35e938c73e824a6943b947fdab4df39922afcd58fdde918c357a` |
| 158 | `theorem` | [toReal_neg_iff_sign_neg](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/toreal-neg-iff-sign-neg.md) | 762 | `result-track:6f0102b48822a44f4299ee20f4f4bf68e07db8468d3765a4044457391deaf6d3` |
| 159 | `theorem` | [toReal_nonneg_iff_sign_nonneg](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/toreal-nonneg-iff-sign-nonneg.md) | 766 | `result-track:f8dacaf163910163eaa1d6bd3438c5197d3996db867ff2ce4c4759ec4cd928c0` |
| 160 | `theorem` | [sign_toReal](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/sign-toreal.md) | 771 | `result-track:0671c47158c615cf9fc37c9f978bacbde1bfee87e513ba4ad964aebeafd1ea07` |
| 161 | `lemma` | [toReal_mem_Ioo_iff_sign_pos](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/toreal-mem-ioo-iff-sign-pos.md) | 779 | `result-track:1fdb2e4bdca4e0b938791c89918fc3685ee9bd8bec8168a0d8e1e05ef59a44f9` |
| 162 | `theorem` | [coe_abs_toReal_of_sign_nonneg](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/coe-abs-toreal-of-sign-nonneg.md) | 786 | `result-track:a6f81ac618fe028aa331934533bb7136aa709133e1f1d4b7629ea2d9f7d18cf6` |
| 163 | `theorem` | [neg_coe_abs_toReal_of_sign_nonpos](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/neg-coe-abs-toreal-of-sign-nonpos.md) | 789 | `result-track:2913f5c5ea62e94c0d67c609179b0edff7c3c148908dd21853d7b1d4271acf02` |
| 164 | `theorem` | [eq_iff_sign_eq_and_abs_toReal_eq](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/eq-iff-sign-eq-and-abs-toreal-eq.md) | 796 | `result-track:c8181c6954adf421d69a0d58821b8fd765ef6c7daf8654bdeb2db9ebe1463d42` |
| 165 | `theorem` | [eq_iff_abs_toReal_eq_of_sign_eq](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/eq-iff-abs-toreal-eq-of-sign-eq.md) | 800 | `result-track:8ea200a4eb240eef50ebeec0c3ea8e9dd4294f0b5d7f0e8e9aa1f782e7b11514` |
| 166 | `theorem` | [sign_coe_pi_div_two](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/sign-coe-pi-div-two.md) | 804 | `result-track:9890f55a1f156e02037035a417ac0ddb0059a15f80e45d2c9754a8ca5f12cb93` |
| 167 | `theorem` | [sign_coe_neg_pi_div_two](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/sign-coe-neg-pi-div-two.md) | 808 | `result-track:5bdda0e241e08c699c04ec9263d78029c704d5afb15d384a91ecce68abf2ae2f` |
| 168 | `theorem` | [sign_coe_nonneg_of_nonneg_of_le_pi](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/sign-coe-nonneg-of-nonneg-of-le-pi.md) | 811 | `result-track:f6c5a7d6f90c921a9f077f5e18541bc06b9af9bf7ad68d5c8a1025c687bd754d` |
| 169 | `theorem` | [sign_neg_coe_nonpos_of_nonneg_of_le_pi](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/sign-neg-coe-nonpos-of-nonneg-of-le-pi.md) | 816 | `result-track:6d2075e3f3cf4cecdd6b3deccdd268226cd5d66905345ac203b4f5f2db374268` |
| 170 | `theorem` | [sign_two_nsmul_eq_sign_iff](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/sign-two-nsmul-eq-sign-iff.md) | 821 | `result-track:bfdc47eb591bee17defa715b38cfd5cbe76d168560571d9a35cdf6af6357e1fa` |
| 171 | `theorem` | [sign_two_zsmul_eq_sign_iff](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/sign-two-zsmul-eq-sign-iff.md) | 829 | `result-track:8ff329a9364fb5c2c94b3df029e9a0610b243f1864582d09b264996d57d32f28` |
| 172 | `lemma` | [sign_two_nsmul_eq_neg_sign_iff](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/sign-two-nsmul-eq-neg-sign-iff.md) | 833 | `result-track:b9665f51c3f3b842ca0e0616359ec0d86728976c67938dbb70c8c363f4e3a936` |
| 173 | `lemma` | [sign_two_zsmul_eq_neg_sign_iff](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/sign-two-zsmul-eq-neg-sign-iff.md) | 838 | `result-track:e0ecd75aeed3f27e0afc15235ca18f98525dc1f79f06f12dbc4100e2de5558ec` |
| 174 | `theorem` | [eq_add_pi_of_two_zsmul_eq_of_sign_eq_neg](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/eq-add-pi-of-two-zsmul-eq-of-sign-eq-neg.md) | 842 | `result-track:cdf485edfc72d74ac6a2e166432f7a95e513a128b416ee2ad817b66a83485836` |
| 175 | `theorem` | [sub_ne_pi_of_sign_eq_of_sign_ne_zero](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/sub-ne-pi-of-sign-eq-of-sign-ne-zero.md) | 851 | `result-track:3b30bc2abfa97be59b9c90e6b37be9b750a5f03786a1ee0c68e49a658130d25b` |
| 176 | `theorem` | [two_zsmul_eq_iff_eq](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/two-zsmul-eq-iff-eq.md) | 861 | `result-track:7f173e1a8303426e775e600d604d3d1154b9246891900173fc82e15cc21ce13f` |
| 177 | `lemma` | [abs_toReal_add_abs_toReal_eq_pi_of_two_nsmul_add_eq_zero_of_sign_eq](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/abs-toreal-add-abs-toreal-eq-pi-of-two-nsmul-add-eq-zero-of-sign-eq.md) | 875 | `result-track:80fea84d58779d36da82118846ea050b0ec76a1511381aabb5f8d9ab98aa7ca4` |
| 178 | `lemma` | [abs_toReal_add_abs_toReal_eq_pi_of_two_zsmul_add_eq_zero_of_sign_eq](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/abs-toreal-add-abs-toreal-eq-pi-of-two-zsmul-add-eq-zero-of-sign-eq.md) | 890 | `result-track:9d0038b41fbeb568eccf7057c35de0b622a5efcb962c1aad7a9b8f815d912dcf` |
| 179 | `lemma` | [toReal_add_of_sign_pos_sign_neg](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/toreal-add-of-sign-pos-sign-neg.md) | 896 | `result-track:5abe55439591387d8f1b64caf66cd05d495f5914236484626240662154e438fd` |
| 180 | `lemma` | [toReal_add_of_sign_eq_neg_sign](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/toreal-add-of-sign-eq-neg-sign.md) | 902 | `result-track:848801cd11ca9daa93d152f792567a66d55de5c5bba02ff57d83995695b78cf8` |
| 181 | `lemma` | [toReal_add_eq_toReal_add_toReal](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/toreal-add-eq-toreal-add-toreal.md) | 907 | `result-track:077841bf053330de4ba8d275656f99c31820c01def8f3f083687fcc8a572568e` |
| 182 | `lemma` | [abs_toReal_add_eq_two_pi_sub_abs_toReal_add_abs_toReal_aux](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/abs-toreal-add-eq-two-pi-sub-abs-toreal-add-abs-toreal-aux.md) | 916 | `result-track:303f6d2972d76b207dd8354d2f548c6c9fdb6dca4369f5b6b41b7a6114c094f1` |
| 183 | `lemma` | [abs_toReal_add_eq_two_pi_sub_abs_toReal_add_abs_toReal](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/abs-toreal-add-eq-two-pi-sub-abs-toreal-add-abs-toreal.md) | 933 | `result-track:1cebeff606bcd60de41e770cd2377352422c34503b2f8c4c1759d81f90bc0b5b` |
| 184 | `theorem` | [continuousAt_sign](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/continuousat-sign.md) | 944 | `result-track:a017415a32ee220ac073d3d7a03a684ef6adb2cb97c6cf1029be413ea4c194c0` |
| 185 | `theorem` | [_root_.ContinuousOn.angle_sign_comp](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/root-continuouson-angle-sign-comp.md) | 947 | `result-track:b5f1039530a03ee20f92cf3876ec9656204f75714251f27ffcb0c99b413bc0ca` |
| 186 | `theorem` | [sign_eq_of_continuousOn](../../../../SpecialFunctions/TrigonometricAnglePublic.lean/declarations/sign-eq-of-continuouson.md) | 956 | `result-track:86a03264888515d975990ab2c44b451daf9863beae73dfc811b3204553051c4c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5f1c6f7e57c5c1f5b5ff59281cadd9ffa7bdf9827a737d05256636834da36e49 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variant680b5c7d7efd61908b2c54b1dc3dcb1d04d104c6ced4e31a2ea5060d5df7730a.lean","GRWTSK/_verification/specifications/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variant680b5c7d7efd61908b2c54b1dc3dcb1d04d104c6ced4e31a2ea5060d5df7730a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
