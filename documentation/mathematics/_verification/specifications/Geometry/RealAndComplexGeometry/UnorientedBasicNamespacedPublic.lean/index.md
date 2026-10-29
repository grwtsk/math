# Verification target: Unoriented Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2cf8e67ba43a28fdc2440446b30026480e0a1087",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant28ec7017b856efbce4a0ef221b35144fe56a2a916b46398e2d37c27216e66e08.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespacedPublic.lean/index.md) · [Full source](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2cf8e67ba43a28fdc2440446b30026480e0a1087`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant28ec7017b856efbce4a0ef221b35144fe56a2a916b46398e2d37c27216e66e08.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant28ec7017b856efbce4a0ef221b35144fe56a2a916b46398e2d37c27216e66e08.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [angle](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespacedPublic.lean/declarations/angle.md) | 49 | `declaration-track:deafe71dbb606eb1966abef5fe92b323fbb65e82d52673ac87ce9ad60f69269f` |
| 2 | `theorem` | [continuousAt_angle](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespacedPublic.lean/declarations/continuousat-angle.md) | 52 | `result-track:af6d28f342d13e9489aa8d515511c7fccca57d0129d45150dc157598813b747c` |
| 3 | `theorem` | [angle_smul_smul](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespacedPublic.lean/declarations/angle-smul-smul.md) | 57 | `result-track:19ba873d03df33b85bd7b4b4d00f2778d1091b1057039ebfe48bd2c5ba4ebf67` |
| 4 | `theorem` | [Unoriented Basic Namespaced Public](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespacedPublic.lean/declarations/angle-map.md) | 63 | `result-track:b3c3ae580a8b2ae249521cfef04b4e71608063803ab83ad859734bd575c4b53b` |
| 5 | `theorem` | [Unoriented Basic Namespaced Public](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespacedPublic.lean/declarations/angle-coe.md) | 69 | `result-track:f6e235cd2184a5178431aadcbc0ad931d7ba383306b57c71292baf99a51a0ee5` |
| 6 | `theorem` | [cos_angle](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespacedPublic.lean/declarations/cos-angle.md) | 74 | `result-track:3711902f7413e58c8c97c7f27ffb0bac0e433c5b50f0115d59825fd47e3cf8da` |
| 7 | `theorem` | [angle_comm](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespacedPublic.lean/declarations/angle-comm.md) | 79 | `result-track:e7f17b56c32c57fa3b7584a477191a84d98dd75ce4c74a1c038c09de04a38921` |
| 8 | `theorem` | [angle_neg_neg](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespacedPublic.lean/declarations/angle-neg-neg.md) | 85 | `result-track:99c7fd1898332ffecf12c3652322600184e82786ab4787b8c5f64951f4acacd9` |
| 9 | `theorem` | [angle_nonneg](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespacedPublic.lean/declarations/angle-nonneg.md) | 90 | `result-track:85c7b6a5a478a8932f4ec6fe69d523c7cb33521dbfb7f120d11e15c1bcadec82` |
| 10 | `theorem` | [angle_le_pi](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespacedPublic.lean/declarations/angle-le-pi.md) | 94 | `result-track:98842364993977df6eb9d6fef7fb248f0683db3ec12d142183010efdec7ee278` |
| 11 | `theorem` | [sin_angle_nonneg](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespacedPublic.lean/declarations/sin-angle-nonneg.md) | 98 | `result-track:787ed5f9221b9ddaae37fd4f284f4a26a7d4ba61d12ceefd06035550d3cd73e5` |
| 12 | `theorem` | [angle_neg_right](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespacedPublic.lean/declarations/angle-neg-right.md) | 102 | `result-track:2b85ce2580c4ac5b5e70ce788eef4ad0073c5a3e8bd9f926fefff9019957c74d` |
| 13 | `theorem` | [angle_neg_left](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespacedPublic.lean/declarations/angle-neg-left.md) | 107 | `result-track:ff23861fed262a123a6b370e18cc8f77f271aea740973ef545939266fe733a9b` |
| 14 | `theorem` | [angle_zero_left](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespacedPublic.lean/declarations/angle-zero-left.md) | 112 | `result-track:2d131c8d380cd8c3263fe522d4bf8578a37e0f93a47182418fab7865ac351a53` |
| 15 | `theorem` | [angle_zero_right](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespacedPublic.lean/declarations/angle-zero-right.md) | 118 | `result-track:425437a60c5baa3cdc4928c66b03f7447a56903926581f2ecfbc03eae1cf218b` |
| 16 | `theorem` | [angle_self](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespacedPublic.lean/declarations/angle-self.md) | 124 | `result-track:b29a19405dfb26042779682d59afcc0b226c00e336d98892b778ef7f41611b5b` |
| 17 | `theorem` | [angle_self_neg_of_nonzero](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespacedPublic.lean/declarations/angle-self-neg-of-nonzero.md) | 131 | `result-track:a876bd26392ec160aa698c692615d1caf720589498b4d654c8c59816c5f5318b` |
| 18 | `theorem` | [angle_neg_self_of_nonzero](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespacedPublic.lean/declarations/angle-neg-self-of-nonzero.md) | 137 | `result-track:c9c0374026679f83a81433ca9bf7ea91eda64d11c3698d11ee947d4bc554f1be` |
| 19 | `theorem` | [angle_smul_right_of_pos](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespacedPublic.lean/declarations/angle-smul-right-of-pos.md) | 142 | `result-track:c0ca7ff83e33691abf680079f8ecfb0d4832bdc622ca211bccd4e3fcc704e8ca` |
| 20 | `theorem` | [angle_smul_left_of_pos](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespacedPublic.lean/declarations/angle-smul-left-of-pos.md) | 149 | `result-track:10b0015a2529c8022580f628bdbbe4148a2c9d005f4ae033a64ab7b510ac1917` |
| 21 | `theorem` | [angle_smul_right_of_neg](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespacedPublic.lean/declarations/angle-smul-right-of-neg.md) | 154 | `result-track:a64ccc42a559df712748bb151422e7caaa135f083bd288acd8b84d3d09ed35d4` |
| 22 | `theorem` | [angle_smul_left_of_neg](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespacedPublic.lean/declarations/angle-smul-left-of-neg.md) | 161 | `result-track:90df8eb8d2b53caa6100ab22b40ab5c1cf73015f88be0b33655f1e2bd40593cf` |
| 23 | `theorem` | [cos_angle_mul_norm_mul_norm](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespacedPublic.lean/declarations/cos-angle-mul-norm-mul-norm.md) | 166 | `result-track:b2b98ed32a157b318a51269740b177bdc32038ef40e1ab689c8a47650571a486` |
| 24 | `theorem` | [sin_angle_mul_norm_mul_norm](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespacedPublic.lean/declarations/sin-angle-mul-norm-mul-norm.md) | 172 | `result-track:45fee08f75cb55f2cff98e07216f0aa9ced7cfc0485bbce1e738b3a22e0c990c` |
| 25 | `theorem` | [sin_angle](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespacedPublic.lean/declarations/sin-angle.md) | 184 | `result-track:9a76197904bc361a5712308b4699eb767d1dc7e904f70c7cce27d4951ff715cc` |
| 26 | `theorem` | [sin_angle_add](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespacedPublic.lean/declarations/sin-angle-add.md) | 190 | `result-track:13d24f7084058655d9e2f69571b1e15bccab84ce76045773a3b4b8fb6f761f55` |
| 27 | `theorem` | [angle_eq_zero_iff](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespacedPublic.lean/declarations/angle-eq-zero-iff.md) | 199 | `result-track:df5dff2260a6f0e4c115b003ec83e6357c07857be6f7d4df1f725cbd23c56d45` |
| 28 | `theorem` | [angle_eq_pi_iff](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespacedPublic.lean/declarations/angle-eq-pi-iff.md) | 206 | `result-track:957d8b00d7b23fd09a215926334d548fb56246e5c424d224464a12af1c4a1395` |
| 29 | `theorem` | [angle_add_angle_eq_pi_of_angle_eq_pi](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespacedPublic.lean/declarations/angle-add-angle-eq-pi-of-angle-eq-pi.md) | 212 | `result-track:f950c24bc12532128933b2ba8eb00ba91ce55e1ae1c5d48b2602fd1bd8b3b3ee` |
| 30 | `theorem` | [inner_eq_zero_iff_angle_eq_pi_div_two](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespacedPublic.lean/declarations/inner-eq-zero-iff-angle-eq-pi-div-two.md) | 219 | `result-track:4c760d88e94d70750e9ef3dbd84874df833e0eb599ae2aa1b385a5bccf6eed2e` |
| 31 | `theorem` | [inner_nonpos_iff_pi_div_two_le_angle](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespacedPublic.lean/declarations/inner-nonpos-iff-pi-div-two-le-angle.md) | 224 | `result-track:8145cd927ffaf0fdc6e43a18a35a774a28d45060dcc772796c919aeb83bf661e` |
| 32 | `theorem` | [inner_neg_iff_pi_div_two_lt_angle](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespacedPublic.lean/declarations/inner-neg-iff-pi-div-two-lt-angle.md) | 234 | `result-track:4eaed4403c1c155b1c739ab0bf19b0746592425aad3b6b186324aec54d803f31` |
| 33 | `theorem` | [inner_eq_neg_mul_norm_of_angle_eq_pi](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespacedPublic.lean/declarations/inner-eq-neg-mul-norm-of-angle-eq-pi.md) | 247 | `result-track:e99c28c4133acc87042457a054a0a24134b8e271abf98ed2bb164dc520763308` |
| 34 | `theorem` | [inner_eq_mul_norm_of_angle_eq_zero](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespacedPublic.lean/declarations/inner-eq-mul-norm-of-angle-eq-zero.md) | 252 | `result-track:0fd609db60c468cd0ba83fbb99827eb48a0219cbb2e2f4a715053bd39d9df37a` |
| 35 | `theorem` | [inner_eq_neg_mul_norm_iff_angle_eq_pi](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespacedPublic.lean/declarations/inner-eq-neg-mul-norm-iff-angle-eq-pi.md) | 257 | `result-track:f914ace87df523361ccaa594226d7c9d68ee00d068caef47d562f6c6ba30c01d` |
| 36 | `theorem` | [inner_eq_mul_norm_iff_angle_eq_zero](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespacedPublic.lean/declarations/inner-eq-mul-norm-iff-angle-eq-zero.md) | 265 | `result-track:b8e1e2d3072a4cec97ebf01c44f8f21cc3e8950bfc80869b011aace56bfca76a` |
| 37 | `theorem` | [norm_sub_eq_add_norm_of_angle_eq_pi](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespacedPublic.lean/declarations/norm-sub-eq-add-norm-of-angle-eq-pi.md) | 273 | `result-track:6529ce0db1a116994b74db3b11b93d025eeb8eb8287dbce6dbc6c633ef9d0152` |
| 38 | `theorem` | [norm_add_eq_add_norm_of_angle_eq_zero](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespacedPublic.lean/declarations/norm-add-eq-add-norm-of-angle-eq-zero.md) | 281 | `result-track:162eea460ff5abeafe115670fe0d5b62124ec7427a351fa239aafc60198e4372` |
| 39 | `theorem` | [norm_sub_eq_abs_sub_norm_of_angle_eq_zero](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespacedPublic.lean/declarations/norm-sub-eq-abs-sub-norm-of-angle-eq-zero.md) | 289 | `result-track:155f76a0c2cd8d0d5224df33e3979643351fca5136d5c0ca28d67237d093f35d` |
| 40 | `theorem` | [norm_sub_eq_add_norm_iff_angle_eq_pi](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespacedPublic.lean/declarations/norm-sub-eq-add-norm-iff-angle-eq-pi.md) | 297 | `result-track:bd1511c2260494993b232c1751da761e5e3a12a404e2c7156e69a2596ed597bb` |
| 41 | `theorem` | [norm_add_eq_add_norm_iff_angle_eq_zero](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespacedPublic.lean/declarations/norm-add-eq-add-norm-iff-angle-eq-zero.md) | 309 | `result-track:cd65fe428ce1b148d0735811e89990d420cf0c2b2df3b571e7d4c3c36cb63536` |
| 42 | `theorem` | [norm_sub_eq_abs_sub_norm_iff_angle_eq_zero](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespacedPublic.lean/declarations/norm-sub-eq-abs-sub-norm-iff-angle-eq-zero.md) | 316 | `result-track:0be0a55c483a60871e5910c9fcca8ba4e6b1984fd318a17f2fe255fabdaa726e` |
| 43 | `theorem` | [norm_add_eq_norm_sub_iff_angle_eq_pi_div_two](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespacedPublic.lean/declarations/norm-add-eq-norm-sub-iff-angle-eq-pi-div-two.md) | 330 | `result-track:99e5a2f52d627ead5c0ceda10721d2161edd1890c69b5664ec5c3005bae5156b` |
| 44 | `theorem` | [cos_eq_one_iff_angle_eq_zero](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespacedPublic.lean/declarations/cos-eq-one-iff-angle-eq-zero.md) | 337 | `result-track:223bbe2bcc10257c891618583a070913435dde3729a41ad2afafa17dcba0390b` |
| 45 | `theorem` | [cos_eq_zero_iff_angle_eq_pi_div_two](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespacedPublic.lean/declarations/cos-eq-zero-iff-angle-eq-pi-div-two.md) | 342 | `result-track:ca7030a17227142b84ffe91c82145562348d8b8edcca0a38ea85cd3645f98bd4` |
| 46 | `theorem` | [cos_eq_neg_one_iff_angle_eq_pi](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespacedPublic.lean/declarations/cos-eq-neg-one-iff-angle-eq-pi.md) | 348 | `result-track:d83d866c087d5408058721e9999182e243bc255e9f15fe38556611589b573f3f` |
| 47 | `theorem` | [sin_eq_zero_iff_angle_eq_zero_or_angle_eq_pi](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespacedPublic.lean/declarations/sin-eq-zero-iff-angle-eq-zero-or-angle-eq-pi.md) | 353 | `result-track:bf55533c78f0bc026bfadbce2efafb2299a2e4e85354ff54fcbf48f9db36a2d9` |
| 48 | `theorem` | [sin_eq_one_iff_angle_eq_pi_div_two](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespacedPublic.lean/declarations/sin-eq-one-iff-angle-eq-pi-div-two.md) | 358 | `result-track:b360bcbc8a3c4d1bcdffeb1ba800db04adc2a687bea27a60301b96a89cce7eca` |
| 49 | `lemma` | [eq_of_angle_eq_zero_of_norm_eq](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespacedPublic.lean/declarations/eq-of-angle-eq-zero-of-norm-eq.md) | 364 | `result-track:e6b10bbaec1db2026314fe0f3acf14b7351538363a3c37ac947a4f68d7b75fcb` |
| 50 | `lemma` | [angle_normalize_left](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespacedPublic.lean/declarations/angle-normalize-left.md) | 370 | `result-track:32ebe948df0f6dd4082c377f6bef64b09ccbb15834a65898b2aa721e5699cb26` |
| 51 | `lemma` | [angle_normalize_right](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespacedPublic.lean/declarations/angle-normalize-right.md) | 379 | `result-track:bf0b54f0772323c885270b2ae1d5c8bc5673c6caca96d0a01ebcee58fc3e452e` |
| 52 | `lemma` | [inner_eq_cos_angle_of_norm_eq_one](../../../../../Geometry/RealAndComplexGeometry/UnorientedBasicNamespacedPublic.lean/declarations/inner-eq-cos-angle-of-norm-eq-one.md) | 384 | `result-track:bdae1c0b4c0e4711aa2ea47521f20fa768b1918d4865087c0e3bf04bd2bbca9b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=41934448117e25d30c0a9dd9bcb3d7e73604ffded580cdba97322cd6db9fc3e1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant28ec7017b856efbce4a0ef221b35144fe56a2a916b46398e2d37c27216e66e08.lean","GRWTSK/_verification/specifications/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant28ec7017b856efbce4a0ef221b35144fe56a2a916b46398e2d37c27216e66e08.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
