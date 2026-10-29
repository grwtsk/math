# Verification target: Unoriented Affine Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c6c1789da60121d028146cf736c1fa8f3482873",
  "lexical_observation_count": 70,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant56cb574a4e358f87a26ca6ade5db9dc6502c469b54e887c770e68a444ccb77af.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/index.md) · [Full source](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c6c1789da60121d028146cf736c1fa8f3482873`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant56cb574a4e358f87a26ca6ade5db9dc6502c469b54e887c770e68a444ccb77af.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant56cb574a4e358f87a26ca6ade5db9dc6502c469b54e887c770e68a444ccb77af.lean.json)

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
| 1 | `def` | [angle](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/angle.md) | 50 | `declaration-track:771590825b459d7e674b8fc01fa3191e428d4e0f5691e2bf228a57d938e92349` |
| 2 | `theorem` | [continuousAt_angle](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/continuousat-angle.md) | 55 | `result-track:571d9a3ff560a46ccce6ef7e751a511ee83c9a057f50772da28b35c9101fc412` |
| 3 | `theorem` | [Unoriented Affine Namespaced Public](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/root-grwtsk-geometry-classicalgeometry-euclideangeometry-continuousatang-source-edition-4.md) | 63 | `result-track:3d8da6804c15714615c042468102c0378173f9ff42bb59c4c9efd076fa273ddc` |
| 4 | `theorem` | [Unoriented Affine Namespaced Public](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/root-grwtsk-geometry-classicalgeometry-euclideangeometry-continuousatang-source-edition-15.md) | 69 | `result-track:f3892b5b32c4b811a68b7811ec8fe8a7196c4677a6434d9ade975173b6974847` |
| 5 | `lemma` | [angle_homothety](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/angle-homothety.md) | 76 | `result-track:c104f7ef6899d0bdb32cd0c2255b742811b6cb5ad13f831561921739fe736664` |
| 6 | `theorem` | [angle_const_vadd](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/angle-const-vadd.md) | 85 | `result-track:e8a97a23a4d9ed4533cb1f99dfa564ee30fe1e94fd65041cc5d660cb71649345` |
| 7 | `theorem` | [angle_vadd_const](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/angle-vadd-const.md) | 90 | `result-track:d3c03b86ebcfdadda1ab3ffa65385805528265268614e9aff532d707a8c66c2f` |
| 8 | `theorem` | [angle_const_vsub](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/angle-const-vsub.md) | 95 | `result-track:6282a55f795cd6ef0052b0562932c475508f4686731d6f4a201d6914ed272dbd` |
| 9 | `theorem` | [angle_vsub_const](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/angle-vsub-const.md) | 100 | `result-track:55020a7d4ac9ffb629f27ae974a957bc452fb834c6acafabb80ec915f4c0c299` |
| 10 | `theorem` | [angle_add_const](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/angle-add-const.md) | 105 | `result-track:b4bc131b7b50f3cee88caf2580246c1bffc97aba2b497ed172e8dc82813bcf3c` |
| 11 | `theorem` | [angle_const_add](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/angle-const-add.md) | 110 | `result-track:f4f779a9b1dcb691bd5395ca53f61ea87f8c54281dcf113a55260afa37ab94f5` |
| 12 | `theorem` | [angle_sub_const](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/angle-sub-const.md) | 115 | `result-track:64d0504e8defa6726f2809c720ec3262a50f347e5e190bd9bb50c8b925aa23bc` |
| 13 | `theorem` | [angle_const_sub](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/angle-const-sub.md) | 120 | `result-track:480980c3456e5718af06c00975620c139ebca359ed76020e2210dbe99997486a` |
| 14 | `theorem` | [angle_neg](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/angle-neg.md) | 125 | `result-track:ca403cb417e17e32bb6bdaa6769b9a876cdad7f2d395af7aff73e9b2338e2db0` |
| 15 | `theorem` | [angle_smul_right_of_pos](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/angle-smul-right-of-pos.md) | 128 | `result-track:9d981daaa57167bb850353ee802ac7e2c4b2b2be4423766f9d439dec76e145d9` |
| 16 | `theorem` | [angle_smul_left_of_pos](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/angle-smul-left-of-pos.md) | 134 | `result-track:e7476efc582793c7af51373309e430f3a34cb98cc46891bc53e7da03679703d7` |
| 17 | `theorem` | [angle_comm](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/angle-comm.md) | 142 | `result-track:7fb734454e4ee1c19f1a310cbc342236a0a9698f90765980ae10dfafddb17fbe` |
| 18 | `theorem` | [angle_nonneg](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/angle-nonneg.md) | 146 | `result-track:90152a2e11d7e0456f153be323a3766b62609f0739b7f407c9f024824e690f8b` |
| 19 | `theorem` | [angle_le_pi](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/angle-le-pi.md) | 150 | `result-track:894c5f570d18bb5fe650cabd1cd28c0ad08baf09a50edba4291b6bad3122bbce` |
| 20 | `lemma` | [angle_self_left](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/angle-self-left.md) | 154 | `result-track:782b6777bdb681b884b115a59ca6a520dbf31cb180eb903b5cfd640bc1129f79` |
| 21 | `lemma` | [angle_self_right](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/angle-self-right.md) | 160 | `result-track:53e036767da8939eb17abe17206005f6d36a3cdca90a7bb32f062b2580831603` |
| 22 | `theorem` | [angle_self_of_ne](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/angle-self-of-ne.md) | 163 | `result-track:92818f391b2fe1c59d305a59fee68a2b08ea090607ac81b95c144a8086eeb7f2` |
| 23 | `theorem` | [angle_eq_zero_of_angle_eq_pi_left](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/angle-eq-zero-of-angle-eq-pi-left.md) | 167 | `result-track:a62cd06de0477ae8b416c5a35ff560ba3d4c413547f2d7e1488c030e3f222f0e` |
| 24 | `theorem` | [angle_eq_zero_of_angle_eq_pi_right](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/angle-eq-zero-of-angle-eq-pi-right.md) | 179 | `result-track:56150ead98d5d9f705d6d29bae43a3a874650d31bf35f869c74764b50d10181e` |
| 25 | `theorem` | [angle_eq_angle_of_angle_eq_pi](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/angle-eq-angle-of-angle-eq-pi.md) | 185 | `result-track:97c3b3f8d723137ff829c571696138e4e91bf3b3aa742a5208fce084e01f4471` |
| 26 | `theorem` | [angle_add_angle_eq_pi_of_angle_eq_pi](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/angle-add-angle-eq-pi-of-angle-eq-pi.md) | 197 | `result-track:36629e17aa0c0b39dd2cb8e3469b8aa529e16afeb849e90caf8c22ca3efeee61` |
| 27 | `theorem` | [angle_eq_angle_of_angle_eq_pi_of_angle_eq_pi](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/angle-eq-angle-of-angle-eq-pi-of-angle-eq-pi.md) | 206 | `result-track:4d1334565018ad54821ae9525f58730543c14f584edbb52cc37f4cfd0c37bb3c` |
| 28 | `theorem` | [left_dist_ne_zero_of_angle_eq_pi](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/left-dist-ne-zero-of-angle-eq-pi.md) | 212 | `result-track:2fe1e6a21a2f2031545b41475b27009141e67b60c866dd181cec655181e30c62` |
| 29 | `theorem` | [right_dist_ne_zero_of_angle_eq_pi](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/right-dist-ne-zero-of-angle-eq-pi.md) | 219 | `result-track:4d32c271cf3cce3195d2fa353e9730b3faa738451d4b9c8fb9d89815d93d33b9` |
| 30 | `theorem` | [dist_eq_add_dist_of_angle_eq_pi](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/dist-eq-add-dist-of-angle-eq-pi.md) | 223 | `result-track:f8d229469b979bd39c077ec7cf8b048d7a6bbf3f9f42ecaa1ec7636cad226313` |
| 31 | `theorem` | [dist_eq_add_dist_iff_angle_eq_pi](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/dist-eq-add-dist-iff-angle-eq-pi.md) | 229 | `result-track:d96810267d32c4fc210708763d532c76e40a7e13855b8dbfa5097cdbfb2793a6` |
| 32 | `theorem` | [dist_eq_abs_sub_dist_of_angle_eq_zero](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/dist-eq-abs-sub-dist-of-angle-eq-zero.md) | 237 | `result-track:0dbe79e0ad3026486f61c2294bc7a462b4f350103ed4847c44d3ff08cc598e18` |
| 33 | `theorem` | [dist_eq_abs_sub_dist_iff_angle_eq_zero](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/dist-eq-abs-sub-dist-iff-angle-eq-zero.md) | 243 | `result-track:f39b542d93f0e65f9dc5858fd8d3d5ddbdb4ec59e9ddd14e3d49c6d13a34fe19` |
| 34 | `theorem` | [angle_midpoint_eq_pi](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/angle-midpoint-eq-pi.md) | 251 | `result-track:7b0d82a4143a28011496fdfc6f0085dfb9c6b57245735abf52f44fd88d2dcd7a` |
| 35 | `theorem` | [angle_left_midpoint_eq_pi_div_two_of_dist_eq](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/angle-left-midpoint-eq-pi-div-two-of-dist-eq.md) | 258 | `result-track:66bc8796ca953b1977293bd95d9bf8d6e78dc8c83176f2223b358c6dd8a30e17` |
| 36 | `theorem` | [angle_right_midpoint_eq_pi_div_two_of_dist_eq](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/angle-right-midpoint-eq-pi-div-two-of-dist-eq.md) | 269 | `result-track:b4d88b4a74966695f1cc91cacdabee937d94bdcbe8f65f8047e259afe1d82cda` |
| 37 | `theorem` | [Unoriented Affine Namespaced Public](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/root-grwtsk-geometry-classicalgeometry-euclideangeometry-continuousatang-source-edition-12.md) | 275 | `result-track:e085c100964868ce7a626ca11b40d08cf72f2248b0249b02c581cd5a6377d03f` |
| 38 | `theorem` | [Unoriented Affine Namespaced Public](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/root-grwtsk-geometry-classicalgeometry-euclideangeometry-continuousatang-source-edition-2.md) | 296 | `result-track:26ad6ea259d7a3094e53865364e3ad2da7b6361e39d0c1230ab3aeb7a603da55` |
| 39 | `theorem` | [angle_eq_pi_iff_sbtw](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/angle-eq-pi-iff-sbtw.md) | 301 | `result-track:264cdacb0c53abc543544b03b1b657451976e8e6f756ebf9b84b6bebe4d93a0c` |
| 40 | `theorem` | [Unoriented Affine Namespaced Public](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/root-grwtsk-geometry-classicalgeometry-euclideangeometry-continuousatang-source-edition-3.md) | 318 | `result-track:3c5b0f1ec0dc5ed95a7865269aa11291fd2bb568b639e04ff81a07541f66a090` |
| 41 | `theorem` | [Unoriented Affine Namespaced Public](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/root-grwtsk-geometry-classicalgeometry-euclideangeometry-continuousatang-source-edition-10.md) | 332 | `result-track:bf5a8447d5a3a69cc9dca5b24f8eac68cd6a526ba06977e2183985af4ef5384d` |
| 42 | `theorem` | [Unoriented Affine Namespaced Public](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/root-grwtsk-geometry-classicalgeometry-euclideangeometry-continuousatang-source-edition-8.md) | 337 | `result-track:8ceb41a53ee6c58596958de08b4bfd226deec3560f833b76d4cfbed4590f0d4a` |
| 43 | `theorem` | [Unoriented Affine Namespaced Public](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/root-grwtsk-geometry-classicalgeometry-euclideangeometry-continuousatang-source-edition-16.md) | 342 | `result-track:fd514b663b25e7eb0b1f5eb28a78132bd412fc5907e3f187de801d747c5cdbcb` |
| 44 | `theorem` | [Unoriented Affine Namespaced Public](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/root-grwtsk-geometry-classicalgeometry-euclideangeometry-continuousatang-source-edition-9.md) | 347 | `result-track:a8fd537498d14452a76b35ebaf71f60fb198cc1c7526c13e0f5b85de31ba72f7` |
| 45 | `theorem` | [Unoriented Affine Namespaced Public](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/root-grwtsk-geometry-classicalgeometry-euclideangeometry-continuousatang-source-edition-6.md) | 353 | `result-track:6462ff5443984488e49d1cf002323f3e587f2f3d1d87fa1b57355a3d48e42f31` |
| 46 | `theorem` | [Unoriented Affine Namespaced Public](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/root-grwtsk-geometry-classicalgeometry-euclideangeometry-continuousatang.md) | 358 | `result-track:11f86aca821e705b2baf1f5dea195227c6e2589af2730375bbd0c2dcedb1f015` |
| 47 | `theorem` | [Unoriented Affine Namespaced Public](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/root-grwtsk-geometry-classicalgeometry-euclideangeometry-continuousatang-source-edition-5.md) | 364 | `result-track:535007df4e9fb0492a0117ef2d5759214bead0f7350707cb529d2e4d4fc43de2` |
| 48 | `theorem` | [angle_eq_zero_iff_ne_and_wbtw](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/angle-eq-zero-iff-ne-and-wbtw.md) | 369 | `result-track:77824b3889bf8ad9f0895340ca1806612e1b802f7793be12dce576cd50c7e9a6` |
| 49 | `theorem` | [angle_eq_zero_iff_eq_and_ne_or_sbtw](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/angle-eq-zero-iff-eq-and-ne-or-sbtw.md) | 388 | `result-track:c77268dbbc99eb5cec962be1fc474f3bb1b5ebce3d5d82dc89bdbe18c21b00aa` |
| 50 | `theorem` | [Unoriented Affine Namespaced Public](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/root-grwtsk-geometry-classicalgeometry-euclideangeometry-continuousatang-source-edition-13.md) | 398 | `result-track:ec7a23c4cbe33084c229d0e72ff874568faeaa0e3e194fee3ceb3f201123b344` |
| 51 | `theorem` | [Unoriented Affine Namespaced Public](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/root-grwtsk-geometry-classicalgeometry-euclideangeometry-continuousatang-source-edition-7.md) | 404 | `result-track:6a0c8ffda4133b412caf8f838ef2c6701636b5fc0dcb36a50c7c7126e7169ef2` |
| 52 | `theorem` | [Unoriented Affine Namespaced Public](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/root-grwtsk-geometry-classicalgeometry-euclideangeometry-continuousatang-source-edition-14.md) | 410 | `result-track:ee886ee2d8240c6245106763b9c73de0647f3431c0f82bcf8fbd91fed4521d41` |
| 53 | `theorem` | [Unoriented Affine Namespaced Public](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/root-grwtsk-geometry-classicalgeometry-euclideangeometry-continuousatang-source-edition-11.md) | 417 | `result-track:cef6ad79c6fc007c31aaafdbddbcf3fc92264aa5b13f281410ee065d6ca472c5` |
| 54 | `lemma` | [angle_pointReflection_right](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/angle-pointreflection-right.md) | 421 | `result-track:c3dd68ebf7deab1c81e082c0fe07d6f0dc5607d52e80c6846adf68f4020ab4ab` |
| 55 | `theorem` | [collinear_iff_eq_or_eq_or_angle_eq_zero_or_angle_eq_pi](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/collinear-iff-eq-or-eq-or-angle-eq-zero-or-angle-eq-pi.md) | 432 | `result-track:e64c14eed6b0fc352465f7cb427a5e4fbf0e6edc63eb8b65248bc26bd888fa7a` |
| 56 | `theorem` | [collinear_of_angle_eq_zero](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/collinear-of-angle-eq-zero.md) | 458 | `result-track:b6e4f98a8e59889cab6c4c04dfa3f49400e7779e7279c5b045a3528d3e7c74ea` |
| 57 | `theorem` | [collinear_of_angle_eq_pi](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/collinear-of-angle-eq-pi.md) | 463 | `result-track:e9801275cd041c16ff183200cd74b509e3e07fe2235e99c174fe4d552b8934cb` |
| 58 | `theorem` | [angle_ne_zero_of_not_collinear](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/angle-ne-zero-of-not-collinear.md) | 468 | `result-track:ecd838e337aa7c4207421a3a728c83510c6dd1d7ebb53dc11763f2d8a94436a3` |
| 59 | `theorem` | [angle_ne_pi_of_not_collinear](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/angle-ne-pi-of-not-collinear.md) | 473 | `result-track:ad230588f1d43ef1c6a538bf772ad8979190719ca12e17c3fd6742f5f95a8e07` |
| 60 | `theorem` | [angle_pos_of_not_collinear](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/angle-pos-of-not-collinear.md) | 478 | `result-track:41ef93a11d06d0cd8b922505578269ee72f9ee5d887b38de9e7477f92b22b7e6` |
| 61 | `theorem` | [angle_lt_pi_of_not_collinear](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/angle-lt-pi-of-not-collinear.md) | 483 | `result-track:d60978c83fd8a8bfec1428a70346431bbfd9f4be072abab09156106dc116772e` |
| 62 | `theorem` | [cos_eq_one_iff_angle_eq_zero](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/cos-eq-one-iff-angle-eq-zero.md) | 488 | `result-track:1561d25a3d88008eacbce083a17240a0baa2323ae5f682ddd6d95680e2c88ef2` |
| 63 | `theorem` | [cos_eq_zero_iff_angle_eq_pi_div_two](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/cos-eq-zero-iff-angle-eq-pi-div-two.md) | 493 | `result-track:4d9bd6f79d2d1f03aee05a90262bd0d3793580b88035f7c2bf9b59d405e8ebce` |
| 64 | `theorem` | [cos_eq_neg_one_iff_angle_eq_pi](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/cos-eq-neg-one-iff-angle-eq-pi.md) | 498 | `result-track:d3d754e0464b3cff8ff35ef9e40048b4ccabbc17a0200e477cb2f707b3806872` |
| 65 | `theorem` | [sin_eq_zero_iff_angle_eq_zero_or_angle_eq_pi](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/sin-eq-zero-iff-angle-eq-zero-or-angle-eq-pi.md) | 503 | `result-track:c02d564b835fc5593ff9343a806ded1c1218e2d55ce2e7cb2526c086024d5a71` |
| 66 | `theorem` | [sin_eq_one_iff_angle_eq_pi_div_two](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/sin-eq-one-iff-angle-eq-pi-div-two.md) | 508 | `result-track:bbb724fcacd392f7ee3f98bdce1491183d567ec5e3325dcb35d9dc538eb41f6a` |
| 67 | `theorem` | [collinear_iff_eq_or_eq_or_sin_eq_zero](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/collinear-iff-eq-or-eq-or-sin-eq-zero.md) | 514 | `result-track:251211983f9b7571b31ccf85390f3f1e94acc0265dee113d3e8272c281bd742e` |
| 68 | `theorem` | [sin_pos_of_not_collinear](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/sin-pos-of-not-collinear.md) | 520 | `result-track:05fca52286679450b13fe3f688445bbe802fdb91103c3dee541652fa007c2e84` |
| 69 | `theorem` | [sin_ne_zero_of_not_collinear](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/sin-ne-zero-of-not-collinear.md) | 525 | `result-track:f17a8eca375d99f38117edb62ac84a3a2993b2a442991c45ac3e1f55397b8152` |
| 70 | `theorem` | [collinear_of_sin_eq_zero](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedPublic.lean/declarations/collinear-of-sin-eq-zero.md) | 530 | `result-track:4a1420b6ac030032c08c8089ed5230c762cb2feba67158f62a105a6123682f66` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5424f942fb610210646684a3d7b45d39d6c86cf11372a0f2a9809c7846200935 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant56cb574a4e358f87a26ca6ade5db9dc6502c469b54e887c770e68a444ccb77af.lean","GRWTSK/_verification/specifications/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant56cb574a4e358f87a26ca6ade5db9dc6502c469b54e887c770e68a444ccb77af.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
