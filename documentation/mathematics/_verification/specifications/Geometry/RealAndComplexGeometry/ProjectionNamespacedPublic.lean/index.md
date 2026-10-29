# Verification target: Projection Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "677631e1550b57ba430dc68795e4c22ee2c5d3da",
  "lexical_observation_count": 67,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Projection/Variant0c9c9571b66a64edad7ec23f9e32b81421da3b3eecfca56dde9384bfa782ed79.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/index.md) · [Full source](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `677631e1550b57ba430dc68795e4c22ee2c5d3da`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Projection/Variant0c9c9571b66a64edad7ec23f9e32b81421da3b3eecfca56dde9384bfa782ed79.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Projection/Variant0c9c9571b66a64edad7ec23f9e32b81421da3b3eecfca56dde9384bfa782ed79.lean.json)

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
| 1 | `def` | [orthogonalProjection](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/orthogonalprojection.md) | 50 | `declaration-track:add1e5b065353b99fda9d6ab86b643cb92dafaddd05e6cd547ae89bd0abb6654` |
| 2 | `theorem` | [orthogonalProjection_apply](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/orthogonalprojection-apply-source-edition-2.md) | 58 | `result-track:f8f9a800b1c6d417c26654ec2dd07b747c312af6b3338d9109d87dbbcf75225a` |
| 3 | `theorem` | [orthogonalProjection_apply'](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/orthogonalprojection-apply.md) | 64 | `result-track:13dc4978157b3724df2fa668a2b6cbafc803191b42c74080d4ac857d6736aeae` |
| 4 | `theorem` | [orthogonalProjection_apply_mem](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/orthogonalprojection-apply-mem.md) | 71 | `result-track:17c0c0ca55dfc9904421489e72afb3eb20ecaf6ca9249ba8f822e694ab5a3216` |
| 5 | `theorem` | [orthogonalProjection_congr](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/orthogonalprojection-congr.md) | 84 | `result-track:6e58eb3df89589a609969bf8d7f718c742aa7892ee4e1de828a7d38b90d562db` |
| 6 | `theorem` | [orthogonalProjection_linear](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/orthogonalprojection-linear.md) | 95 | `result-track:387e25859b33aaac8755c196ecbf13c589263296468dabadcc119e9a76495fec` |
| 7 | `theorem` | [orthogonalProjection_contLinear](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/orthogonalprojection-contlinear.md) | 102 | `result-track:84525dbb4024556f0dcf9ae58dbe585d38de2ff0567bd6c642b75839e29ba896` |
| 8 | `theorem` | [orthogonalProjection_mem](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/orthogonalprojection-mem.md) | 108 | `result-track:7dc367914dc61edd61ae370fdb1382a2bf7f842615304310e81da005f3b4fe1d` |
| 9 | `theorem` | [orthogonalProjection_mem_orthogonal](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/orthogonalprojection-mem-orthogonal.md) | 113 | `result-track:30d58b2cdb8a08063a6727b232deef9bdbc19dedc837365f10a3de86f65b9605` |
| 10 | `theorem` | [inter_eq_singleton_orthogonalProjection](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/inter-eq-singleton-orthogonalprojection.md) | 123 | `result-track:142ecc95f6fad1bbd6fa1627c5566e2a64777227f4af7c12284746d2f0167218` |
| 11 | `theorem` | [orthogonalProjection_vsub_mem_direction](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/orthogonalprojection-vsub-mem-direction.md) | 137 | `result-track:bfc166559e29e1f52fefaa0ac88a1eed2e945e9b4d8b4780bffae6f7e075e972` |
| 12 | `theorem` | [vsub_orthogonalProjection_mem_direction](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/vsub-orthogonalprojection-mem-direction.md) | 144 | `result-track:3312273174ec0629f3aa976babbd42cb9e8a059128d1eb18f511e045092c4b15` |
| 13 | `theorem` | [orthogonalProjection_eq_self_iff](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/orthogonalprojection-eq-self-iff.md) | 151 | `result-track:65f175be240044d56505cb151c01b84e50ec33fa2eb9cb98adcc25015f8fb7ec` |
| 14 | `theorem` | [orthogonalProjection_mem_subspace_eq_self](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/orthogonalprojection-mem-subspace-eq-self.md) | 162 | `result-track:b16d49b672c9dc1f2427e0cbb3bdded0d81ce62df528c3bad105864caf59cc98` |
| 15 | `theorem` | [orthogonalProjection_orthogonalProjection](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/orthogonalprojection-orthogonalprojection.md) | 169 | `result-track:d3728287a7bc3017bb8a6a8d87c8af9090335c3ae0ee1228cf356e55e092a39a` |
| 16 | `theorem` | [eq_orthogonalProjection_of_eq_subspace](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/eq-orthogonalprojection-of-eq-subspace.md) | 174 | `result-track:b31e20fb1560b38d11484399c245d8d3dad5a94309537c9484f6753d1390ab1c` |
| 17 | `lemma` | [orthogonalProjection_singleton](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/orthogonalprojection-singleton.md) | 180 | `result-track:01915b4483c5d63516c45739fb624a39ec854853df0292bf830ca392edc3a2a9` |
| 18 | `lemma` | [orthogonalProjection_affineSpan_singleton](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/orthogonalprojection-affinespan-singleton.md) | 186 | `result-track:b97eb82ce796b1a772e93701b9a04ef0d0630aeed469b71c0313f64a9ffa774f` |
| 19 | `theorem` | [dist_orthogonalProjection_eq_zero_iff](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/dist-orthogonalprojection-eq-zero-iff.md) | 191 | `result-track:27c701b02318fc4ebcff5ba29b2e8c694fb2914dd88a898f180fb592814f8452` |
| 20 | `theorem` | [dist_orthogonalProjection_ne_zero_of_notMem](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/dist-orthogonalprojection-ne-zero-of-notmem.md) | 198 | `result-track:4e8d1277ac8075db20b740e48cfc5b79e62881907c7a1bac5557206c55c09e62` |
| 21 | `theorem` | [orthogonalProjection_vsub_mem_direction_orthogonal](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/orthogonalprojection-vsub-mem-direction-orthogonal.md) | 205 | `result-track:722fd3fcadf700b506aa08a1199fa4a4f502a4028e8013076b6f2d65f28b1eb5` |
| 22 | `theorem` | [vsub_orthogonalProjection_mem_direction_orthogonal](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/vsub-orthogonalprojection-mem-direction-orthogonal.md) | 213 | `result-track:3000bc770a5717cd49989cf9d5f0456393061d45b2e3dd3e2b38a8f945e18e50` |
| 23 | `theorem` | [orthogonalProjection_vsub_orthogonalProjection](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/orthogonalprojection-vsub-orthogonalprojection.md) | 220 | `result-track:fe63990334c902db3695b2535a2ebdde5ff0a6dcb35ba0c57fb3d159f24a6f77` |
| 24 | `lemma` | [coe_orthogonalProjection_eq_iff_mem](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/coe-orthogonalprojection-eq-iff-mem.md) | 228 | `result-track:d57e263341e6f1aacbecde8ac79afe97028648c5c37e09d30f6325fa7d855f58` |
| 25 | `lemma` | [orthogonalProjection_eq_iff_mem](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/orthogonalprojection-eq-iff-mem.md) | 246 | `result-track:207e09fc7279c4bf70bdc046780d80b960d328b3976ab3f94cd21ff51d1ba7ba` |
| 26 | `lemma` | [orthogonalProjection_eq_orthogonalProjection_iff_vsub_mem](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/orthogonalprojection-eq-orthogonalprojection-iff-vsub-mem.md) | 252 | `result-track:f182f1713b8b56d8397c81f07cb0ccd00b97e18d447df52695cec43978a66485` |
| 27 | `lemma` | [orthogonalProjection_sup_of_orthogonalProjection_eq](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/orthogonalprojection-sup-of-orthogonalprojection-eq.md) | 261 | `result-track:0ffb3ce9ab129442838b33a2e0e7da49309d1dabe7ffd64cc882367116d638b5` |
| 28 | `theorem` | [orthogonalProjection_vadd_eq_self](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/orthogonalprojection-vadd-eq-self.md) | 276 | `result-track:6167ee79ac9a2ca6f7248a35774741fc240ce79229c842bb817e091bcd8e4956` |
| 29 | `theorem` | [orthogonalProjection_vadd_smul_vsub_orthogonalProjection](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/orthogonalprojection-vadd-smul-vsub-orthogonalprojection-source-edition-2.md) | 286 | `result-track:5cbcf4f971048f0a6cc18583812052ea9aeafcf6b6df484c9669fca719b4b241` |
| 30 | `lemma` | [orthogonalProjection_orthogonalProjection_of_le](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/orthogonalprojection-orthogonalprojection-of-le.md) | 292 | `result-track:f20928e3884cf92e930c48b32f19f3028bd6d458816d3e9698b90e3d5cc0f925` |
| 31 | `theorem` | [dist_sq_eq_dist_orthogonalProjection_sq_add_dist_orthogonalProjection_sq](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/dist-sq-eq-dist-orthogonalprojection-sq-add-dist-orthogonalprojection-sq-source-edition-2.md) | 303 | `result-track:de6f4869c427b2462b96290cd0356c7a334179e7cb2ef4ccf3dfb29b7e2203ae` |
| 32 | `lemma` | [dist_orthogonalProjection_eq_dist_iff_eq_of_mem](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/dist-orthogonalprojection-eq-dist-iff-eq-of-mem.md) | 317 | `result-track:1df5bbb47268760f085b4b0155ec86ec668ff6cd659621be292367acd44aafee` |
| 33 | `lemma` | [dist_orthogonalProjection_eq_infDist](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/dist-orthogonalprojection-eq-infdist.md) | 335 | `result-track:11419f196d478063f0303f6d41c3ec6d992dc3efe6d436ce8c114ba34a6e0d20` |
| 34 | `lemma` | [dist_orthogonalProjection_eq_infNndist](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/dist-orthogonalprojection-eq-infnndist.md) | 351 | `result-track:17a9432c7eb825fca7a9165486ddde30538b234b0ec75c5040e5204263bd1ca0` |
| 35 | `theorem` | [dist_sq_smul_orthogonal_vadd_smul_orthogonal_vadd](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/dist-sq-smul-orthogonal-vadd-smul-orthogonal-vadd.md) | 360 | `result-track:1a94bfe0330d8375b9f065b423912b85887449d8e6fd9d424038204afee32cda` |
| 36 | `theorem` | [dist_eq_iff_dist_orthogonalProjection_eq](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/dist-eq-iff-dist-orthogonalprojection-eq.md) | 379 | `result-track:ee2dde9f4d99337f9f1ac6788867726e66c5f8ef3b3f9ccca3ed83201dde412d` |
| 37 | `theorem` | [dist_set_eq_iff_dist_orthogonalProjection_eq](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/dist-set-eq-iff-dist-orthogonalprojection-eq.md) | 391 | `result-track:7ca2fa0a90532a32848903db86b9c006e139b3dde112f081ad24f22c1587be74` |
| 38 | `theorem` | [exists_dist_eq_iff_exists_dist_orthogonalProjection_eq](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/exists-dist-eq-iff-exists-dist-orthogonalprojection-eq.md) | 405 | `result-track:06e64e70d6189a871d2fd605283cd166d214f2d89d7cdf2c304cc68546f3aa1d` |
| 39 | `def` | [reflection](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/reflection.md) | 418 | `declaration-track:5e374d6eb9eb0e18183cfef814771da775eb6f206627799dd6e672cb8498ad3c` |
| 40 | `theorem` | [reflection_apply](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/reflection-apply-source-edition-2.md) | 425 | `result-track:ca30df8afbf4e116be078585fd0ef869b5363d6005e6f10e25e01f80323ebc2c` |
| 41 | `theorem` | [reflection_apply_of_mem](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/reflection-apply-of-mem.md) | 431 | `result-track:61620946a1a3b1d320f2ac6fe554f5f0d6a60d8a44ae8d428d85af5d8e01c389` |
| 42 | `theorem` | [reflection_apply'](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/reflection-apply.md) | 438 | `result-track:858fea04c148426440e5954765d6ed73289cc453ac2d72373e6db0f9881ea2f8` |
| 43 | `theorem` | [eq_reflection_of_eq_subspace](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/eq-reflection-of-eq-subspace.md) | 447 | `result-track:cd5efa93799f168a996f818df3bfcf56cb4e3a8d350990657701749fdd524014` |
| 44 | `theorem` | [reflection_reflection](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/reflection-reflection.md) | 455 | `result-track:629d60fdadd09711d6b5891104cfa5371f9b2aeeee8e9052b231aa054d04e947` |
| 45 | `theorem` | [reflection_symm](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/reflection-symm.md) | 461 | `result-track:07cf52c23d0698bf70c2c686f46f6177f6e91c5afcd170cb30e213cf497fe054` |
| 46 | `theorem` | [reflection_involutive](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/reflection-involutive.md) | 468 | `result-track:0c7ce8f443f920cec95c1f35bbc05c4671cc278c41ba58c8b4751f48fc6f99c3` |
| 47 | `theorem` | [reflection_eq_self_iff](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/reflection-eq-self-iff.md) | 473 | `result-track:bc3fa39f77cdc944728a4a428cf77382ed162105757eca223b3ea39b8f5248f7` |
| 48 | `theorem` | [reflection_eq_iff_orthogonalProjection_eq](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/reflection-eq-iff-orthogonalprojection-eq.md) | 482 | `result-track:dfd7cf158e7aa3a4cc62de094591102c2cac145427a4cf6cb48fd010e3443ddc` |
| 49 | `theorem` | [dist_reflection](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/dist-reflection.md) | 499 | `result-track:df62b2b26dde2eaeb8cb37e4cd24e2cbb2bde64e45f8f72ba7622183af85e2c9` |
| 50 | `theorem` | [dist_reflection_eq_of_mem](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/dist-reflection-eq-of-mem.md) | 506 | `result-track:0c52c5e9c2df94ce45d0cebb19157d85e3193da5e2c7367cc368ee4bb8a4e191` |
| 51 | `theorem` | [reflection_mem_of_le_of_mem](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/reflection-mem-of-le-of-mem.md) | 515 | `result-track:1b34143d9fd2e42ffc2bfab40bced4b75513fc6152ded326d685f3dca80f72e0` |
| 52 | `theorem` | [reflection_orthogonal_vadd](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/reflection-orthogonal-vadd.md) | 524 | `result-track:4d46a65fde452f6784eb0fe7c500cead29535b746745256cc8ce6927dca589b1` |
| 53 | `theorem` | [reflection_vadd_smul_vsub_orthogonalProjection](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/reflection-vadd-smul-vsub-orthogonalprojection.md) | 534 | `result-track:8ebb88a0794c1c778ca4dbae5c9a0a562d0d45deae3aba209e4c4cd9bad31a64` |
| 54 | `lemma` | [orthogonalProjection_map](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/orthogonalprojection-map.md) | 543 | `result-track:5c9460f46d3fb3655a74f13e5771cc5f9e0275550e6114b6e587fabbc110d3a7` |
| 55 | `lemma` | [orthogonalProjection_subtype](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/orthogonalprojection-subtype.md) | 558 | `result-track:0944b070ac4238d5b42616a93278226625854d1530c29b3fe7036a2c33dbbc08` |
| 56 | `lemma` | [reflection_map](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/reflection-map.md) | 568 | `result-track:4871acb1a3716dc23ca5759f0c4f5ca42a185b30e7eea492eca6c4d1ed943e64` |
| 57 | `lemma` | [reflection_subtype](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/reflection-subtype.md) | 574 | `result-track:b5d57176d5a3f4834e4e6e1715f8e4e1d8ad9fc2a8903ad0ac921dc77c11c0f0` |
| 58 | `def` | [orthogonalProjectionSpan](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/orthogonalprojectionspan.md) | 595 | `declaration-track:f729e680731ff3325ce12a99b3d245920f12b35f4deb196ebee8b50400928d0b` |
| 59 | `lemma` | [orthogonalProjectionSpan_congr](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/orthogonalprojectionspan-congr.md) | 599 | `result-track:c028604fbeae845a037c70eb1c2754477e9f5b769a707dbd611656d3e0391291` |
| 60 | `lemma` | [orthogonalProjectionSpan_reindex](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/orthogonalprojectionspan-reindex.md) | 604 | `result-track:898014fca73217a6a04dafcb220c86e617543d2f0fc76de7f4f11bb3fde8bef2` |
| 61 | `theorem` | [orthogonalProjection_vadd_smul_vsub_orthogonalProjection](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/orthogonalprojection-vadd-smul-vsub-orthogonalprojection.md) | 613 | `result-track:563e02553f4fb72bbf9bb67dcbbabdf6e4abcf071cec755f65b158f7472d6556` |
| 62 | `theorem` | [coe_orthogonalProjection_vadd_smul_vsub_orthogonalProjection](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/coe-orthogonalprojection-vadd-smul-vsub-orthogonalprojection.md) | 618 | `result-track:4b201411276537fd8879705a93cdbfe2a56afd6717ab024d886f3138dceb4bb4` |
| 63 | `theorem` | [dist_sq_eq_dist_orthogonalProjection_sq_add_dist_orthogonalProjection_sq](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/dist-sq-eq-dist-orthogonalprojection-sq-add-dist-orthogonalprojection-sq.md) | 623 | `result-track:45b0619c2f4ed6fde5e3ec4de8405d2e9187b139fcf09f08df96911b0b2845fb` |
| 64 | `lemma` | [orthogonalProjectionSpan_eq_point](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/orthogonalprojectionspan-eq-point.md) | 631 | `result-track:e714b86ed9987544c409098cb4bb9ebd3f63ac8fad9de4582bcfc0ac9bbc7e91` |
| 65 | `lemma` | [orthogonalProjectionSpan_faceOpposite_eq_point_rev](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/orthogonalprojectionspan-faceopposite-eq-point-rev.md) | 637 | `result-track:055f22a8bfc649da888bef338ecc234f86845f209d712a8ab8c666a5bff308a1` |
| 66 | `lemma` | [orthogonalProjectionSpan_map](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/orthogonalprojectionspan-map.md) | 643 | `result-track:b3d9db543e5e06f800a351170176d53d08c56585105b7d31d52b468fc8393f7e` |
| 67 | `lemma` | [orthogonalProjectionSpan_restrict](../../../../../Geometry/RealAndComplexGeometry/ProjectionNamespacedPublic.lean/declarations/orthogonalprojectionspan-restrict.md) | 650 | `result-track:f8f65f046fd15c05f895203a40f86c83b169da6b34c3463bacf29c0ce56f5102` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=37805655cbf50e3c7b163fc4b5870afda206bbd11396253e30d610a970a70a07 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Projection/Variant0c9c9571b66a64edad7ec23f9e32b81421da3b3eecfca56dde9384bfa782ed79.lean","GRWTSK/_verification/specifications/Geometry/ClassicalGeometry/EuclideanGeometry/Projection/Variant0c9c9571b66a64edad7ec23f9e32b81421da3b3eecfca56dde9384bfa782ed79.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
