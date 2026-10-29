# Verification target: Unoriented Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4833c76af38ca76af825d03dfb545508ef47b607",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantc54e86a178da3737491470fc853f048ad2fbaa3d009b0acf016b5a09d953ae18.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespaced.lean/index.md) · [Full source](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4833c76af38ca76af825d03dfb545508ef47b607`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantc54e86a178da3737491470fc853f048ad2fbaa3d009b0acf016b5a09d953ae18.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantc54e86a178da3737491470fc853f048ad2fbaa3d009b0acf016b5a09d953ae18.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Subspace` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Inverse` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [angle](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespaced.lean/declarations/angle.md) | 49 | `declaration-track:870a3bdb18dfad60b6eb318272be2ac2d4ac3e5305480bf5639c267734a531cb` |
| 2 | `theorem` | [continuousAt_angle](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespaced.lean/declarations/continuousat-angle.md) | 52 | `result-track:561d1095ee6e981ffd323bd574ba1352e10e067b5356cfd5b661961aa0cc347b` |
| 3 | `theorem` | [angle_smul_smul](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespaced.lean/declarations/angle-smul-smul.md) | 57 | `result-track:9e8fba80b95c0fd1f0882eb536f82e670d6b035d8188fffe2e1edcd9c671f830` |
| 4 | `theorem` | [Unoriented Basic Namespaced](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespaced.lean/declarations/angle-map.md) | 63 | `result-track:3dc05e2343f173a2a7670ce68dc9f6e988a0a4a1656d10a76bbd56219d7e4470` |
| 5 | `theorem` | [Unoriented Basic Namespaced](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespaced.lean/declarations/angle-coe.md) | 69 | `result-track:bcd1774c02b473301e8f3729f224dc3dc87fab32191bdf29989d0b86536f5768` |
| 6 | `theorem` | [cos_angle](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespaced.lean/declarations/cos-angle.md) | 74 | `result-track:741b9b966b5483258741d44079dfd1d18cb3df53c1bac6763c67a97b22937ab9` |
| 7 | `theorem` | [angle_comm](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespaced.lean/declarations/angle-comm.md) | 79 | `result-track:754563b0cf56240329be9e5834af7c219839b850e193c71c4492f970beb1691a` |
| 8 | `theorem` | [angle_neg_neg](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespaced.lean/declarations/angle-neg-neg.md) | 85 | `result-track:0b40caa2ddea98b14fb9b10c40845ed23a58c1f80cecf85fd7bc63500a0a0f2f` |
| 9 | `theorem` | [angle_nonneg](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespaced.lean/declarations/angle-nonneg.md) | 90 | `result-track:62cf59e3baa9716525eb2a83781bcf11b3e9260761c18848d787714d2f455ec9` |
| 10 | `theorem` | [angle_le_pi](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespaced.lean/declarations/angle-le-pi.md) | 94 | `result-track:76d2286245b1a84aacd0428e0c63816e7f663c74c335313a52a85c24331acd3b` |
| 11 | `theorem` | [sin_angle_nonneg](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespaced.lean/declarations/sin-angle-nonneg.md) | 98 | `result-track:246a5fad4ea30f074a453b2db5719c281879ee894058a0ab595a71de30006e59` |
| 12 | `theorem` | [angle_neg_right](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespaced.lean/declarations/angle-neg-right.md) | 102 | `result-track:3b20b45c7954497e94671d8f09bb9e6c9a46cae703346816310efe4ff8f408a9` |
| 13 | `theorem` | [angle_neg_left](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespaced.lean/declarations/angle-neg-left.md) | 107 | `result-track:0ba9df8f73a6996177b6a735ff3248ef75e2f9f50ae943ed7e0628564ae525a9` |
| 14 | `theorem` | [angle_zero_left](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespaced.lean/declarations/angle-zero-left.md) | 114 | `result-track:5ee4f962b47a2f55b75f54b8694aa35279139caf0bf963c67fc1fda6dbe9cf98` |
| 15 | `theorem` | [angle_zero_right](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespaced.lean/declarations/angle-zero-right.md) | 120 | `result-track:ac3bec0c7ba659f4994993bf8d21aed7746abbed656148a078140dc36f1fc5e6` |
| 16 | `theorem` | [angle_self](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespaced.lean/declarations/angle-self.md) | 126 | `result-track:537fc1468390fcd20b3d6c4c43073a41d88f57e9e28ac4f5356b839a06ac4830` |
| 17 | `theorem` | [angle_self_neg_of_nonzero](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespaced.lean/declarations/angle-self-neg-of-nonzero.md) | 133 | `result-track:07d8f7be9e79940791fb778d298c378a28e78a261be364ac0a7551c1d0ffa5e2` |
| 18 | `theorem` | [angle_neg_self_of_nonzero](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespaced.lean/declarations/angle-neg-self-of-nonzero.md) | 139 | `result-track:2628daf4f358cc88e733bacc6b84a66fa68ae04274ca19b3175c039286079d6d` |
| 19 | `theorem` | [angle_smul_right_of_pos](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespaced.lean/declarations/angle-smul-right-of-pos.md) | 144 | `result-track:e6a52b2f070c0be88074a1e51b950a314b441bd4a985dff4f1f09ef122934147` |
| 20 | `theorem` | [angle_smul_left_of_pos](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespaced.lean/declarations/angle-smul-left-of-pos.md) | 151 | `result-track:6eaaf9eeeaf8ab0fff41d0733e62895c902b649198498237922f29a56dddc6ab` |
| 21 | `theorem` | [angle_smul_right_of_neg](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespaced.lean/declarations/angle-smul-right-of-neg.md) | 156 | `result-track:66df34ee6e0ff6a8cf22b78dce34a4522372cf1d64279c0942ec5a3ae9e82d92` |
| 22 | `theorem` | [angle_smul_left_of_neg](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespaced.lean/declarations/angle-smul-left-of-neg.md) | 163 | `result-track:78333daf236c33ea8730a6b3262068b261256fd4ecde3be6f023f1c4eb7f58b8` |
| 23 | `theorem` | [cos_angle_mul_norm_mul_norm](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespaced.lean/declarations/cos-angle-mul-norm-mul-norm.md) | 168 | `result-track:cc3d89023689c91fef93b140b78692118f650d20f7e023233c9e3c70e86b3990` |
| 24 | `theorem` | [sin_angle_mul_norm_mul_norm](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespaced.lean/declarations/sin-angle-mul-norm-mul-norm.md) | 174 | `result-track:389c727135f2c65fc6d84a74136da84209da06338302344e236ae0b7face5feb` |
| 25 | `theorem` | [angle_eq_zero_iff](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespaced.lean/declarations/angle-eq-zero-iff.md) | 195 | `result-track:67d8a7236b88367e242713ef1b6a5e54d70407d64c114f9d76a6a18822b827ec` |
| 26 | `theorem` | [angle_eq_pi_iff](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespaced.lean/declarations/angle-eq-pi-iff.md) | 202 | `result-track:05bec7e915310df40f85eb9f556015e176841a1f535993ae5b86142f3f2bd5c9` |
| 27 | `theorem` | [angle_add_angle_eq_pi_of_angle_eq_pi](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespaced.lean/declarations/angle-add-angle-eq-pi-of-angle-eq-pi.md) | 208 | `result-track:79b16f771c75bf4f4f9c08b8e259a4b7f4e19466a58726ca9ab10dc13e9281d7` |
| 28 | `theorem` | [inner_eq_zero_iff_angle_eq_pi_div_two](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespaced.lean/declarations/inner-eq-zero-iff-angle-eq-pi-div-two.md) | 215 | `result-track:97d392826203d20101e8b7aa3c2cfe57fdbe6c5ddb1683a7abf2233993f7e7b5` |
| 29 | `theorem` | [inner_eq_neg_mul_norm_of_angle_eq_pi](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespaced.lean/declarations/inner-eq-neg-mul-norm-of-angle-eq-pi.md) | 220 | `result-track:744f90b388f78f9f4a5c5741b5547d7fccf01c85e56b6d4ff5b7893b4f1a46fc` |
| 30 | `theorem` | [inner_eq_mul_norm_of_angle_eq_zero](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespaced.lean/declarations/inner-eq-mul-norm-of-angle-eq-zero.md) | 225 | `result-track:c72a446f26e2582b6d1a025c74bd92c1fe6b0abb460026ef6491209408242c7c` |
| 31 | `theorem` | [inner_eq_neg_mul_norm_iff_angle_eq_pi](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespaced.lean/declarations/inner-eq-neg-mul-norm-iff-angle-eq-pi.md) | 230 | `result-track:669d679f2f1dc647413eb9a95ce942ec7e6dee6535c3406987d3ff53d75ae43a` |
| 32 | `theorem` | [inner_eq_mul_norm_iff_angle_eq_zero](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespaced.lean/declarations/inner-eq-mul-norm-iff-angle-eq-zero.md) | 238 | `result-track:2cdece10bafb38f56bfa5b7de9ce2da894e1c5a142d8f6e92b7a717a248ac4d6` |
| 33 | `theorem` | [norm_sub_eq_add_norm_of_angle_eq_pi](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespaced.lean/declarations/norm-sub-eq-add-norm-of-angle-eq-pi.md) | 246 | `result-track:a68761387b9204af385fb193d4cd45220e9a451ba318cb6588b0fa110118f5b9` |
| 34 | `theorem` | [norm_add_eq_add_norm_of_angle_eq_zero](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespaced.lean/declarations/norm-add-eq-add-norm-of-angle-eq-zero.md) | 254 | `result-track:ddf54b03f11e2f6de5bbece4083e631c5fbb674ffb869117117d4ecb4de6ed43` |
| 35 | `theorem` | [norm_sub_eq_abs_sub_norm_of_angle_eq_zero](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespaced.lean/declarations/norm-sub-eq-abs-sub-norm-of-angle-eq-zero.md) | 262 | `result-track:b4c51b31573272cb5aaf00af8a99eb47a2bfd1f8221e70513f27449ca72d59fe` |
| 36 | `theorem` | [norm_sub_eq_add_norm_iff_angle_eq_pi](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespaced.lean/declarations/norm-sub-eq-add-norm-iff-angle-eq-pi.md) | 270 | `result-track:a3f66055d99c0dad9034ba1302d463d333fcad07f4d887079b3949c942027ae5` |
| 37 | `theorem` | [norm_add_eq_add_norm_iff_angle_eq_zero](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespaced.lean/declarations/norm-add-eq-add-norm-iff-angle-eq-zero.md) | 282 | `result-track:4d81037fac01c389a7d3fdbaeddafd70b69bff0b23f768c75c5cb382792445de` |
| 38 | `theorem` | [norm_sub_eq_abs_sub_norm_iff_angle_eq_zero](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespaced.lean/declarations/norm-sub-eq-abs-sub-norm-iff-angle-eq-zero.md) | 294 | `result-track:310a5365f89168bc4681d83ee985a4a8cea7210e646ccfe26ca04c726db3c8da` |
| 39 | `theorem` | [norm_add_eq_norm_sub_iff_angle_eq_pi_div_two](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespaced.lean/declarations/norm-add-eq-norm-sub-iff-angle-eq-pi-div-two.md) | 308 | `result-track:2e1e2d28fc7cc92ee707c78aaa7b617fb62aeb4f2eab54c21a7474c43530b452` |
| 40 | `theorem` | [cos_eq_one_iff_angle_eq_zero](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespaced.lean/declarations/cos-eq-one-iff-angle-eq-zero.md) | 315 | `result-track:e08bb64de7230626cc41d48bf666db73289823e92bf624debe5a8b147fd40a62` |
| 41 | `theorem` | [cos_eq_zero_iff_angle_eq_pi_div_two](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespaced.lean/declarations/cos-eq-zero-iff-angle-eq-pi-div-two.md) | 320 | `result-track:ebae7c319c5f2540bcc74b40ba62bceb997abb9b91e2cf168a158cc23fb5b0aa` |
| 42 | `theorem` | [cos_eq_neg_one_iff_angle_eq_pi](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespaced.lean/declarations/cos-eq-neg-one-iff-angle-eq-pi.md) | 326 | `result-track:15a7ef74f8ba22664b47d7a1085fd5dcb62161c20b6a0b8b8a46de2d1c3bcf95` |
| 43 | `theorem` | [sin_eq_zero_iff_angle_eq_zero_or_angle_eq_pi](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespaced.lean/declarations/sin-eq-zero-iff-angle-eq-zero-or-angle-eq-pi.md) | 331 | `result-track:f40e447d312d9baa85c1a36583a864097c2eb5fcc23466dbc8a2307b8fd9dce1` |
| 44 | `theorem` | [sin_eq_one_iff_angle_eq_pi_div_two](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespaced.lean/declarations/sin-eq-one-iff-angle-eq-pi-div-two.md) | 336 | `result-track:4b07df34edcfcea46843bab2f2dfdb476b99e6b921d4ccd80154b5cb8989659c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8fa390afa5684e767f9f2f37b80fd4895b0e2bf910572005fefcc0b0efe2e14d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantc54e86a178da3737491470fc853f048ad2fbaa3d009b0acf016b5a09d953ae18.lean","GRWTSK/_verification/specifications/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantc54e86a178da3737491470fc853f048ad2fbaa3d009b0acf016b5a09d953ae18.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
