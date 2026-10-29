# Verification target: Unoriented Affine Namespaced Angle Self Of Ne

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "338879a70c8444ba628584a05335292d0e5cdbb2",
  "lexical_observation_count": 62,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant5a754d351a18d9ffe3dfc91783f399bd11ca9ac3c75bacabbff8e043e2874763.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/index.md) · [Full source](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `338879a70c8444ba628584a05335292d0e5cdbb2`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant5a754d351a18d9ffe3dfc91783f399bd11ca9ac3c75bacabbff8e043e2874763.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant5a754d351a18d9ffe3dfc91783f399bd11ca9ac3c75bacabbff8e043e2874763.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Between` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.AddTorsor` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Affine.Isometry` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [angle](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/declarations/angle.md) | 50 | `declaration-track:48f11fdd6e0d03ece9b0089a951cdc93ee1e000de59c43ef42f77305c5aef032` |
| 2 | `theorem` | [continuousAt_angle](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/declarations/continuousat-angle.md) | 55 | `result-track:3827093a703cb53d0af83f5bee6f93747e1d176bce15acdede0bfa274d257a0c` |
| 3 | `theorem` | [Unoriented Affine Namespaced Angle Self Of Ne](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/declarations/root-grwtsk-geometry-classicalgeometry-euclideangeometry-continuousatang-source-edition-5.md) | 63 | `result-track:aafebb7c56a5fc2d709093468eed76c4f01c7c4c5c4ea63f2b11a9553d55ec0f` |
| 4 | `theorem` | [Unoriented Affine Namespaced Angle Self Of Ne](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/declarations/root-grwtsk-geometry-classicalgeometry-euclideangeometry-continuousatang-source-edition-12.md) | 69 | `result-track:fe6b3c192600eca08acb5f7f07f56362115bdef34413d9f078686fc82be0bb66` |
| 5 | `theorem` | [angle_const_vadd](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/declarations/angle-const-vadd.md) | 77 | `result-track:9f8fbd7721a99c37caa603bf87d5889c35fb2ea995343b7d70eb2379e1d43118` |
| 6 | `theorem` | [angle_vadd_const](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/declarations/angle-vadd-const.md) | 82 | `result-track:2698c726026896a5793b4db977ecbe2ce4ded309e99e87601d5002fcfc811645` |
| 7 | `theorem` | [angle_const_vsub](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/declarations/angle-const-vsub.md) | 87 | `result-track:120257bb1990f76f54d4a141f048e4bfa824327b7673c73525d7070460338a75` |
| 8 | `theorem` | [angle_vsub_const](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/declarations/angle-vsub-const.md) | 92 | `result-track:8340d3129afb25cf747a3f0d897053d452de64b1ad81682adfe85eabdfb093b7` |
| 9 | `theorem` | [angle_add_const](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/declarations/angle-add-const.md) | 97 | `result-track:f29c04738c34e40fe5ea1bfbb1243184bdc39db3c36ca5423fdcbd66a71a79e3` |
| 10 | `theorem` | [angle_const_add](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/declarations/angle-const-add.md) | 102 | `result-track:017d01b6416ab8687c4926d19fee805e5a1c4a3bc394ae5534807bf82bdad29a` |
| 11 | `theorem` | [angle_sub_const](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/declarations/angle-sub-const.md) | 107 | `result-track:c0e16751dadf5274fe32def2dd038651f4743109609a0c0c6246e4646cde0007` |
| 12 | `theorem` | [angle_const_sub](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/declarations/angle-const-sub.md) | 112 | `result-track:6c0fcada35720bac7799b7e9656f680bf203bc14c552d710ff86ec5cb5b3774b` |
| 13 | `theorem` | [angle_neg](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/declarations/angle-neg.md) | 117 | `result-track:2fa2a668d623a58a357cdda80f1a6d8b8fbb01587e77c6608d0ae74f7ea43a7a` |
| 14 | `theorem` | [angle_comm](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/declarations/angle-comm.md) | 122 | `result-track:770751a0da8a9019143c579ad8190d4ba4046be4a4e2e1485f5a0433208dff08` |
| 15 | `theorem` | [angle_nonneg](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/declarations/angle-nonneg.md) | 126 | `result-track:3d6844746f0469e5f8e307a82190241f35023f0e04a86a3b7cdfe01744755e4f` |
| 16 | `theorem` | [angle_le_pi](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/declarations/angle-le-pi.md) | 130 | `result-track:5ca1394a6bb594ce89d0ccfa6eeb048c679ff8136afb62ee8767e7c15d0ac6f7` |
| 17 | `lemma` | [angle_self_left](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/declarations/angle-self-left.md) | 134 | `result-track:e2b337d5b6ab7cb601ac46fb82d6b94f13cf10ce43d04375b8231dbb7898bba7` |
| 18 | `lemma` | [angle_self_right](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/declarations/angle-self-right.md) | 140 | `result-track:c8accaa15bd224949eb3007ec14168eb58ebdba5df0ae7df03d36b251195df6c` |
| 19 | `theorem` | [angle_self_of_ne](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/declarations/angle-self-of-ne.md) | 143 | `result-track:27037fa4b631082f1781dd0103cf5bbc11d3c570eacb08a1a8abecb4e87ef55c` |
| 20 | `theorem` | [angle_eq_zero_of_angle_eq_pi_left](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/declarations/angle-eq-zero-of-angle-eq-pi-left.md) | 147 | `result-track:265651b3d5f5aa4e25a77877ef7453bdf379f2dd84434b1532d155f422362378` |
| 21 | `theorem` | [angle_eq_zero_of_angle_eq_pi_right](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/declarations/angle-eq-zero-of-angle-eq-pi-right.md) | 159 | `result-track:c4fdb7988f6321109439d44e9788784b0f3662860e4a918dae845bdbd6e349fd` |
| 22 | `theorem` | [angle_eq_angle_of_angle_eq_pi](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/declarations/angle-eq-angle-of-angle-eq-pi.md) | 165 | `result-track:fb40572c6d606296026a7eb36e433947d5d239997dbc0408040bae843e931771` |
| 23 | `theorem` | [angle_add_angle_eq_pi_of_angle_eq_pi](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/declarations/angle-add-angle-eq-pi-of-angle-eq-pi.md) | 175 | `result-track:5899639665fb2dfc8ce45b793a6f3ef7236a146b2b4fdd2e2f4cbcc1ce05b2df` |
| 24 | `theorem` | [angle_eq_angle_of_angle_eq_pi_of_angle_eq_pi](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/declarations/angle-eq-angle-of-angle-eq-pi-of-angle-eq-pi.md) | 184 | `result-track:5f176cab742f3f06ba2ed23fb8dc8b3aeb18e1533ab1a140d994cf709794e7ee` |
| 25 | `theorem` | [left_dist_ne_zero_of_angle_eq_pi](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/declarations/left-dist-ne-zero-of-angle-eq-pi.md) | 190 | `result-track:78609a2605409ae0744901018b05f49fb730ef6818baaaa9364835aa3fccd8ec` |
| 26 | `theorem` | [right_dist_ne_zero_of_angle_eq_pi](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/declarations/right-dist-ne-zero-of-angle-eq-pi.md) | 197 | `result-track:67b7fd1d0b4684c25649a9611f26b4d3108b1f4ecacb68913572f838ce199f8d` |
| 27 | `theorem` | [dist_eq_add_dist_of_angle_eq_pi](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/declarations/dist-eq-add-dist-of-angle-eq-pi.md) | 201 | `result-track:00bd686d2668c9c73b8e08c77448a533518ef5e87fec51b39540d497dc788d96` |
| 28 | `theorem` | [dist_eq_add_dist_iff_angle_eq_pi](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/declarations/dist-eq-add-dist-iff-angle-eq-pi.md) | 207 | `result-track:387bd9408c49de338812957eb4227caea82b427a4b184c5180626d997363aeac` |
| 29 | `theorem` | [dist_eq_abs_sub_dist_of_angle_eq_zero](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/declarations/dist-eq-abs-sub-dist-of-angle-eq-zero.md) | 215 | `result-track:d6080441bf4b5f0b2798873208157e926bf82665c3b428e993f07947932f945d` |
| 30 | `theorem` | [dist_eq_abs_sub_dist_iff_angle_eq_zero](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/declarations/dist-eq-abs-sub-dist-iff-angle-eq-zero.md) | 221 | `result-track:0027c42d21b6ddf72360316bbf58763be4c6c30366efd9517a90f40c4a293ab8` |
| 31 | `theorem` | [angle_midpoint_eq_pi](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/declarations/angle-midpoint-eq-pi.md) | 229 | `result-track:83877dd7765bd03c85b174ad626cd731f8002982fecb80cb1ced53f30311e54f` |
| 32 | `theorem` | [angle_left_midpoint_eq_pi_div_two_of_dist_eq](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/declarations/angle-left-midpoint-eq-pi-div-two-of-dist-eq.md) | 238 | `result-track:0683dc1636a324ca816a9ea101bb8637fd1a4911e2eb5f0f8c49d98923acd00d` |
| 33 | `theorem` | [angle_right_midpoint_eq_pi_div_two_of_dist_eq](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/declarations/angle-right-midpoint-eq-pi-div-two-of-dist-eq.md) | 249 | `result-track:6d40f168a31404e1255d4b45ed0fc076c714e2ac818e1af0265ab94934994f58` |
| 34 | `theorem` | [Unoriented Affine Namespaced Angle Self Of Ne](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/declarations/root-grwtsk-geometry-classicalgeometry-euclideangeometry-continuousatang.md) | 255 | `result-track:1b245f646bf3cb46252744b07bde5884fb106c127ed8fa984beb0bb1511cc48c` |
| 35 | `theorem` | [Unoriented Affine Namespaced Angle Self Of Ne](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/declarations/root-grwtsk-geometry-classicalgeometry-euclideangeometry-continuousatang-source-edition-3.md) | 276 | `result-track:5fab5cde519e60fe19091c953b3e44897edaa2dfab4d8d3fa09f509601c7058f` |
| 36 | `theorem` | [angle_eq_pi_iff_sbtw](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/declarations/angle-eq-pi-iff-sbtw.md) | 281 | `result-track:34120569ab750244123b7796a24f73b20f53aaf8e18a1eb9effe2948bf54263f` |
| 37 | `theorem` | [Unoriented Affine Namespaced Angle Self Of Ne](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/declarations/root-grwtsk-geometry-classicalgeometry-euclideangeometry-continuousatang-source-edition-10.md) | 299 | `result-track:dff436c31c421ccb9372f4ab1d7dc9d8279293d1d202d9a342cbd37eea17b80d` |
| 38 | `theorem` | [Unoriented Affine Namespaced Angle Self Of Ne](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/declarations/root-grwtsk-geometry-classicalgeometry-euclideangeometry-continuousatang-source-edition-9.md) | 313 | `result-track:d4ab46c0a4499ae3c16ebdfea9d6396f66f5b6e493a7a68cddd728375f2aa9c9` |
| 39 | `theorem` | [Unoriented Affine Namespaced Angle Self Of Ne](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/declarations/root-grwtsk-geometry-classicalgeometry-euclideangeometry-continuousatang-source-edition-6.md) | 318 | `result-track:bd02273c225425a7751a1dda1725e14114feda7f646fdee9a4e4085eb0c8d9e0` |
| 40 | `theorem` | [Unoriented Affine Namespaced Angle Self Of Ne](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/declarations/root-grwtsk-geometry-classicalgeometry-euclideangeometry-continuousatang-source-edition-8.md) | 323 | `result-track:ce75840a90d44dc905cbb766789b9dfb505c77e56d2213b8af44b49723932847` |
| 41 | `theorem` | [Unoriented Affine Namespaced Angle Self Of Ne](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/declarations/root-grwtsk-geometry-classicalgeometry-euclideangeometry-continuousatang-source-edition-2.md) | 328 | `result-track:32b7cfaf9572ff40fc68a59ccbeece2a6d74bd10e977329b5d0f41bc38c8d8df` |
| 42 | `theorem` | [Unoriented Affine Namespaced Angle Self Of Ne](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/declarations/root-grwtsk-geometry-classicalgeometry-euclideangeometry-continuousatang-source-edition-4.md) | 334 | `result-track:85439f4937da7271099d28b6f73087823f0a50a196effa6e79138e0deb969c0d` |
| 43 | `theorem` | [Unoriented Affine Namespaced Angle Self Of Ne](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/declarations/root-grwtsk-geometry-classicalgeometry-euclideangeometry-continuousatang-source-edition-7.md) | 339 | `result-track:bda33298cb5381b08e48c9881f62588b7904ea6dc2d5c8722869e8c7a955f420` |
| 44 | `theorem` | [Unoriented Affine Namespaced Angle Self Of Ne](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/declarations/root-grwtsk-geometry-classicalgeometry-euclideangeometry-continuousatang-source-edition-11.md) | 345 | `result-track:e8dfd27aa0f552bc87b06c0592640660ab5f61178209fd9a5b1ebc708d68a25e` |
| 45 | `theorem` | [angle_eq_zero_iff_ne_and_wbtw](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/declarations/angle-eq-zero-iff-ne-and-wbtw.md) | 350 | `result-track:5ab1cf1132e09bfa2ab42260ddb9be8ddcf41025aa1e86143be9f063b5ca5fcd` |
| 46 | `theorem` | [angle_eq_zero_iff_eq_and_ne_or_sbtw](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/declarations/angle-eq-zero-iff-eq-and-ne-or-sbtw.md) | 369 | `result-track:06af4e467026896477730d43c9217b2ec190479e348872592cbb9456fb8e7925` |
| 47 | `theorem` | [collinear_iff_eq_or_eq_or_angle_eq_zero_or_angle_eq_pi](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/declarations/collinear-iff-eq-or-eq-or-angle-eq-zero-or-angle-eq-pi.md) | 379 | `result-track:4a1d300a6ba616406e0c214a885df75dbecef29c8fad0738358dcff8ec192705` |
| 48 | `theorem` | [collinear_of_angle_eq_zero](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/declarations/collinear-of-angle-eq-zero.md) | 405 | `result-track:547932dd382de883cd7a2e2dcaf6cccd416f10e933a73af89a2648b4168023e0` |
| 49 | `theorem` | [collinear_of_angle_eq_pi](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/declarations/collinear-of-angle-eq-pi.md) | 410 | `result-track:706bc181e25e46c3a5598396995b61a39d9454b2befeec4e08bdd0c9eef10882` |
| 50 | `theorem` | [angle_ne_zero_of_not_collinear](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/declarations/angle-ne-zero-of-not-collinear.md) | 415 | `result-track:a62f2c9b4f9b2021110f5480574b7403f86b82487156ffd9a3ec93486f4b3bfd` |
| 51 | `theorem` | [angle_ne_pi_of_not_collinear](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/declarations/angle-ne-pi-of-not-collinear.md) | 420 | `result-track:d4011e88275ddca0f23dfeec77082b0c0e687a62680ff65f9ed94024ae546a19` |
| 52 | `theorem` | [angle_pos_of_not_collinear](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/declarations/angle-pos-of-not-collinear.md) | 425 | `result-track:df77cec8e6e94dd37649a5a2479e24909dd3bae53d1fae51bf76aab49c328bf6` |
| 53 | `theorem` | [angle_lt_pi_of_not_collinear](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/declarations/angle-lt-pi-of-not-collinear.md) | 430 | `result-track:45b544a635645adbd54b5c79b5f7db389cb0c04a3f9b4dd4dc83916a64558bed` |
| 54 | `theorem` | [cos_eq_one_iff_angle_eq_zero](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/declarations/cos-eq-one-iff-angle-eq-zero.md) | 435 | `result-track:b54679cfda493e4a51914f867cda36c47dd71cdca9fac214ece45aefca7efa28` |
| 55 | `theorem` | [cos_eq_zero_iff_angle_eq_pi_div_two](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/declarations/cos-eq-zero-iff-angle-eq-pi-div-two.md) | 440 | `result-track:e2083c0096c1be1cd2698abbceca99896ef17d2a430e6e9cf789e0c07a2a7d25` |
| 56 | `theorem` | [cos_eq_neg_one_iff_angle_eq_pi](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/declarations/cos-eq-neg-one-iff-angle-eq-pi.md) | 445 | `result-track:2bab384fadaea24847d798697ba7e3c0a41816b8035e684c8e73c8218c054d3d` |
| 57 | `theorem` | [sin_eq_zero_iff_angle_eq_zero_or_angle_eq_pi](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/declarations/sin-eq-zero-iff-angle-eq-zero-or-angle-eq-pi.md) | 450 | `result-track:4d21be3e87551f71782133e56a0d2c02f770403a215a3f33a5c032bf6074f18e` |
| 58 | `theorem` | [sin_eq_one_iff_angle_eq_pi_div_two](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/declarations/sin-eq-one-iff-angle-eq-pi-div-two.md) | 455 | `result-track:f598f78e123bbe29f8ba248a5faf8fd185dd8fec930174e7f1549389a75afced` |
| 59 | `theorem` | [collinear_iff_eq_or_eq_or_sin_eq_zero](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/declarations/collinear-iff-eq-or-eq-or-sin-eq-zero.md) | 461 | `result-track:a9c453525100ded5873a5a8b7e6f62c226cd5c5807f22df4879c37337d09a1b6` |
| 60 | `theorem` | [sin_pos_of_not_collinear](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/declarations/sin-pos-of-not-collinear.md) | 467 | `result-track:d44ac7b7fadb4dc7b880eed66de51ae27d36b3694f506aa968476f063c2ac35c` |
| 61 | `theorem` | [sin_ne_zero_of_not_collinear](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/declarations/sin-ne-zero-of-not-collinear.md) | 472 | `result-track:5b87757f6619b5a54e2b463b4cc3cfaaaa14bafb11ff0f510435966efbb49d76` |
| 62 | `theorem` | [collinear_of_sin_eq_zero](../../../../../Geometry/RealAndComplexGeometry/UnorientedAffineNamespacedAngleSelfOfNe.lean/declarations/collinear-of-sin-eq-zero.md) | 477 | `result-track:7b19926a528fb8baf81fdbc54b8344c5742b18649ccf65e1ed39a929af2e8a22` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4778f842f6b9263a34d7bb26c8381b32fa8f1537a067963f12c2fca8cc8af6ec -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant5a754d351a18d9ffe3dfc91783f399bd11ca9ac3c75bacabbff8e043e2874763.lean","GRWTSK/_verification/specifications/Geometry/ClassicalGeometry/EuclideanGeometry/Affine/Variant5a754d351a18d9ffe3dfc91783f399bd11ca9ac3c75bacabbff8e043e2874763.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
