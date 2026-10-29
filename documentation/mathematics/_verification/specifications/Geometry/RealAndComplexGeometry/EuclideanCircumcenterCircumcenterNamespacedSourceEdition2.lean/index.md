# Verification target: Euclidean Circumcenter Circumcenter Namespaced Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fdf27b75e3954ea760c79c60baa5cb6d2eca1d7d",
  "lexical_observation_count": 67,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Circumcenter/Variant00b57d8e50410b3427faf52c7032675a4d7f4bbd468fad3fc9c88cd7f03b3dfc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/index.md) · [Full source](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fdf27b75e3954ea760c79c60baa5cb6d2eca1d7d`.

Source path: `GRWTSK/Topology/MetricTopology/Circumcenter/Variant00b57d8e50410b3427faf52c7032675a4d7f4bbd468fad3fc9c88cd7f03b3dfc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Circumcenter/Variant00b57d8e50410b3427faf52c7032675a4d7f4bbd468fad3fc9c88cd7f03b3dfc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Euclidean.Sphere.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.FiniteDimensional` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.DeriveFintype` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [dist_eq_iff_dist_orthogonalProjection_eq](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/dist-eq-iff-dist-orthogonalprojection-eq.md) | 58 | `result-track:3e8ab20167a019442ad21e45f54d8e7f517e12c6b64e5dd4eaa60c2036428a67` |
| 2 | `theorem` | [dist_set_eq_iff_dist_orthogonalProjection_eq](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/dist-set-eq-iff-dist-orthogonalprojection-eq.md) | 71 | `result-track:679a4487802e2defa74d89c5cf4434c1f4a05bf4fc0870982319894719f36a6c` |
| 3 | `theorem` | [exists_dist_eq_iff_exists_dist_orthogonalProjection_eq](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/exists-dist-eq-iff-exists-dist-orthogonalprojection-eq.md) | 86 | `result-track:e89f93e1cc6046e9f5d8e241be264906aae0b1b3deef22909314cd184f4800c1` |
| 4 | `theorem` | [existsUnique_dist_eq_of_insert](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/existsunique-dist-eq-of-insert.md) | 101 | `result-track:c04071aa5d3a1b7c1682dd47c3067f8e30847986c461b050c661e59c43f79ae6` |
| 5 | `theorem` | [Euclidean Circumcenter Circumcenter Namespaced Source Edition2](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/existsunique-dist-eq.md) | 198 | `result-track:679f3e30fced34f750c3ced0c26191130fdfe359f9268c9f94f9a322ee54c835` |
| 6 | `def` | [circumsphere](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/circumsphere.md) | 260 | `declaration-track:0907a1eb938fa8d5feb3c8c11fe983accfe815b114f73ca81a6d5bdea664ddb5` |
| 7 | `theorem` | [circumsphere_unique_dist_eq](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/circumsphere-unique-dist-eq.md) | 265 | `result-track:160db23327be622585adcad26406c3a72eaec268a3a105b9fe75682d48cd7b36` |
| 8 | `def` | [circumcenter](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/circumcenter.md) | 275 | `declaration-track:30f62f01394e429599da5b5de80cdac1c27c0399fbb3be3686aba20c414ebed6` |
| 9 | `def` | [circumradius](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/circumradius.md) | 280 | `declaration-track:e679e36a01e0a9c9a3103108a8a6f4e384b8f7436f83d63de298272fc18608df` |
| 10 | `theorem` | [circumsphere_center](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/circumsphere-center.md) | 286 | `result-track:3b35dae78fa45165a13348a4cb452b4083284f52b278ae923cda0782f0d08627` |
| 11 | `theorem` | [circumsphere_radius](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/circumsphere-radius.md) | 292 | `result-track:78e0a0079b1b2c1e1558dbd9bffe9f609d1f1ba58cbab899aede6b08d3935a95` |
| 12 | `theorem` | [circumcenter_mem_affineSpan](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/circumcenter-mem-affinespan.md) | 297 | `result-track:9c1b7490647dd68fe8f141803752fc1d02898d5b2adb2a34cab0f63ec28f3f2f` |
| 13 | `theorem` | [dist_circumcenter_eq_circumradius](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/dist-circumcenter-eq-circumradius-source-edition-2.md) | 305 | `result-track:344af66ec3d75ec829909579c9c7c919432c625a65e91d6dd4e87fb0347fa32e` |
| 14 | `theorem` | [mem_circumsphere](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/mem-circumsphere.md) | 311 | `result-track:78b773f238ea70d288880e6401b18f079057640ce2b454b1be2d1004a1157846` |
| 15 | `theorem` | [dist_circumcenter_eq_circumradius'](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/dist-circumcenter-eq-circumradius.md) | 319 | `result-track:14a51019ec8f2d12f79a82453f8765746c5978f02a893bcf53df476f7a52b4fe` |
| 16 | `theorem` | [eq_circumcenter_of_dist_eq](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/eq-circumcenter-of-dist-eq.md) | 328 | `result-track:b4cc819062092bfaa3b1c26b780a8d4637362f056a3909cdbd72d8f3c9305847` |
| 17 | `theorem` | [eq_circumradius_of_dist_eq](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/eq-circumradius-of-dist-eq.md) | 343 | `result-track:64179c8546eda1da96c2c8cea9002a9db1d5f99e52c8ec15dedefb085eaf3138` |
| 18 | `theorem` | [circumradius_nonneg](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/circumradius-nonneg.md) | 357 | `result-track:a58e97bbfb8c22e0ef1a2bf43bb2f0e63877322ff9a308aff3c78c31ab9ffe97` |
| 19 | `theorem` | [circumradius_pos](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/circumradius-pos.md) | 363 | `result-track:511ed8d41e99f651575d51732d5403b5d71496c51114eaeffc0214fde93ab1f4` |
| 20 | `theorem` | [circumcenter_eq_point](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/circumcenter-eq-point.md) | 373 | `result-track:8998cd3a66cd5b85343f05e367dec20f14083056e76db7e8082c02dd75eddd3b` |
| 21 | `theorem` | [circumcenter_eq_centroid](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/circumcenter-eq-centroid.md) | 383 | `result-track:dfa581eee527dd479105785ee8d8dc0f5c609997ff153e2556be274987dd749e` |
| 22 | `theorem` | [circumsphere_reindex](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/circumsphere-reindex.md) | 404 | `result-track:3ad75a2a4aaf8d4b4d6d3bf890e220d836ae342e4966f0dd8743cf2a5cd9f84d` |
| 23 | `theorem` | [circumcenter_reindex](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/circumcenter-reindex.md) | 413 | `result-track:5dbdca4716af80e640863bb02561e3eab1d7dc2ef3534d306d5d1c3fc742cdcf` |
| 24 | `theorem` | [circumradius_reindex](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/circumradius-reindex.md) | 419 | `result-track:3fd32d55a2c56d5a69a95dd8a8a1be8eb06399486aef9516706ce28aa56fc071` |
| 25 | `def` | [orthogonalProjectionSpan](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/orthogonalprojectionspan.md) | 426 | `declaration-track:4d49685daa500e78a152568d3793932af0afea3aeb3c01c2f911e18d3544c434` |
| 26 | `theorem` | [orthogonalProjection_vadd_smul_vsub_orthogonalProjection](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/orthogonalprojection-vadd-smul-vsub-orthogonalprojection.md) | 435 | `result-track:efa3d1dc3a1c12f8a551542d5a2228dbe4cecb5b578834a4ace912c27e289968` |
| 27 | `theorem` | [coe_orthogonalProjection_vadd_smul_vsub_orthogonalProjection](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/coe-orthogonalprojection-vadd-smul-vsub-orthogonalprojection.md) | 441 | `result-track:5a6c177f2d69a535dc1b9f6c02d8320b76f9365e1281ee2f0ce6a3f496db06ce` |
| 28 | `theorem` | [dist_sq_eq_dist_orthogonalProjection_sq_add_dist_orthogonalProjection_sq](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/dist-sq-eq-dist-orthogonalprojection-sq-add-dist-orthogonalprojection-sq.md) | 447 | `result-track:f5e5577c89dcbf16a0a3248707898bf85335fd909b306a70cb29d6b6a03fd355` |
| 29 | `theorem` | [dist_circumcenter_sq_eq_sq_sub_circumradius](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/dist-circumcenter-sq-eq-sq-sub-circumradius.md) | 460 | `result-track:c67e1373c52890b9111bc25304cc18d58a220d6f97c04934e782eca070a61a07` |
| 30 | `theorem` | [orthogonalProjection_eq_circumcenter_of_exists_dist_eq](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/orthogonalprojection-eq-circumcenter-of-exists-dist-eq.md) | 473 | `result-track:a95b2fb06b91ba1d373002d6a9a4fcf63db3acc6a640904f9faf4578a45d1059` |
| 31 | `theorem` | [orthogonalProjection_eq_circumcenter_of_dist_eq](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/orthogonalprojection-eq-circumcenter-of-dist-eq.md) | 492 | `result-track:0fffe3578fb7a7ace05d8caaabbb0855fbb7574179728f54cc6fccffc7f3daf1` |
| 32 | `theorem` | [orthogonalProjection_circumcenter](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/orthogonalprojection-circumcenter.md) | 499 | `result-track:1fa9a0464cdc7eaca3a75e85e6414b06d9a9755507a3f87aafd1c31ef4d194aa` |
| 33 | `theorem` | [circumcenter_eq_of_range_eq](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/circumcenter-eq-of-range-eq.md) | 509 | `result-track:6659dc297bbebd098c4d15e0726869c494359546b92e50b547f95d23393a1b83` |
| 34 | `inductive` | [PointsWithCircumcenterIndex](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/pointswithcircumcenterindex.md) | 527 | `declaration-track:bbd8a1393a7fe1eeb53eb8f2a1b19e772af1abdafcb8e8b2191a6a160c39e0c0` |
| 35 | `instance` | [pointsWithCircumcenterIndexInhabited](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/pointswithcircumcenterindexinhabited.md) | 535 | `declaration-track:8b72e779007eb968fcef3cf8e9c2a0ea8aa8bb56fad67792fb324e218f4533f8` |
| 36 | `def` | [pointIndexEmbedding](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/pointindexembedding.md) | 540 | `declaration-track:9efa2a435d7509d25285f1e94f74ddab8641579952c8998d4a9379ff18db7a43` |
| 37 | `theorem` | [sum_pointsWithCircumcenter](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/sum-pointswithcircumcenter.md) | 545 | `result-track:32a32e51da14f43617290f272ec57d6e7e4d13c881b6437397819ed2ec9b881d` |
| 38 | `def` | [pointsWithCircumcenter](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/pointswithcircumcenter.md) | 562 | `declaration-track:f3f6148b3dcccd1a787322ff50c21e51794c5a25c97741ba4641ae65b2af67ff` |
| 39 | `theorem` | [pointsWithCircumcenter_point](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/pointswithcircumcenter-point.md) | 570 | `result-track:36bdaa75d584b39a2e5c96ebff796ceb7158f483b2be0443f1128d35b1785d03` |
| 40 | `theorem` | [pointsWithCircumcenter_eq_circumcenter](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/pointswithcircumcenter-eq-circumcenter.md) | 578 | `result-track:95e1f2300548516c1ef74ca62566a8a04211bb24e1907a9600703d86d771643c` |
| 41 | `def` | [pointWeightsWithCircumcenter](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/pointweightswithcircumcenter.md) | 585 | `declaration-track:71555d8d94d3c8723ee55377e7912ba3b3cc4a9a36802673b4a053807286563a` |
| 42 | `theorem` | [sum_pointWeightsWithCircumcenter](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/sum-pointweightswithcircumcenter.md) | 592 | `result-track:3e77d026541ab4b4309f95b24a2018856f652a0c8f34ce5961a4923bd80e60a1` |
| 43 | `theorem` | [point_eq_affineCombination_of_pointsWithCircumcenter](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/point-eq-affinecombination-of-pointswithcircumcenter.md) | 600 | `result-track:92b3a175b078766ff01eeacd3fa9a25f2731bc06ca841788b43f789e3311d22c` |
| 44 | `def` | [centroidWeightsWithCircumcenter](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/centroidweightswithcircumcenter.md) | 619 | `declaration-track:eea2aa268c5fd5baa1aefb5f6cc9e080e1d0db56f93a77ce5718bbd6111ad6b5` |
| 45 | `theorem` | [sum_centroidWeightsWithCircumcenter](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/sum-centroidweightswithcircumcenter.md) | 627 | `result-track:e6e72f9c376f05e2ac34938c711c1d19a039e3415aecf53290f07a17ee3ab38b` |
| 46 | `theorem` | [centroid_eq_affineCombination_of_pointsWithCircumcenter](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/centroid-eq-affinecombination-of-pointswithcircumcenter.md) | 635 | `result-track:b570847a0cd9711dcd2cde80ca5c1fb2110ef4e45345bb07c9c4a538dbda3306` |
| 47 | `def` | [circumcenterWeightsWithCircumcenter](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/circumcenterweightswithcircumcenter.md) | 651 | `declaration-track:7953f27c93cee1b28055449804efe9d486e3b58cabab82a4dddfac46cd170d6d` |
| 48 | `theorem` | [sum_circumcenterWeightsWithCircumcenter](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/sum-circumcenterweightswithcircumcenter.md) | 658 | `result-track:33b8059e92dcdf02c2ab01878a650594bcac5db3790eff504dfd02db5974d160` |
| 49 | `theorem` | [circumcenter_eq_affineCombination_of_pointsWithCircumcenter](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/circumcenter-eq-affinecombination-of-pointswithcircumcenter.md) | 666 | `result-track:4fa6faa456b2b6454cfa5dd60b010ff8c5bb486a75749f84befffd6330f85b60` |
| 50 | `def` | [reflectionCircumcenterWeightsWithCircumcenter](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/reflectioncircumcenterweightswithcircumcenter.md) | 678 | `declaration-track:66d736cf3b132bbed42d49123673dcaf6bba3a221841dfed6e0756af968e63ac` |
| 51 | `theorem` | [sum_reflectionCircumcenterWeightsWithCircumcenter](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/sum-reflectioncircumcenterweightswithcircumcenter.md) | 686 | `result-track:01dce78ced3283037cdb3531f5eb54d01e3a8a6d0c65fe64a72c13e55537d028` |
| 52 | `theorem` | [reflection_circumcenter_eq_affineCombination_of_pointsWithCircumcenter](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/reflection-circumcenter-eq-affinecombination-of-pointswithcircumcenter.md) | 697 | `result-track:25566409ea03371f7763d81692c682dee669fb5ce9a72dfa89a5c34c0a0642cb` |
| 53 | `theorem` | [cospherical_iff_exists_mem_of_complete](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/cospherical-iff-exists-mem-of-complete.md) | 740 | `result-track:24fa4ff00fb1f24ea1d890082d620b49b16f037f47169cda31d9975488421e07` |
| 54 | `theorem` | [cospherical_iff_exists_mem_of_finiteDimensional](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/cospherical-iff-exists-mem-of-finitedimensional.md) | 754 | `result-track:cdbdd634ed9d7fed69a757d3cd66c40989aed784d3d50c18637837b82047c181` |
| 55 | `theorem` | [exists_circumradius_eq_of_cospherical_subset](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/exists-circumradius-eq-of-cospherical-subset.md) | 762 | `result-track:384821227e1f536e2bd6c3bcff2f5989ece34222008fc71abae83890f5ba7420` |
| 56 | `theorem` | [circumradius_eq_of_cospherical_subset](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/circumradius-eq-of-cospherical-subset.md) | 783 | `result-track:ba101749c2acab3eeef10dfde6ddc13c5c8a92cc06ab081e4b9d6e529faa168d` |
| 57 | `theorem` | [exists_circumradius_eq_of_cospherical](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/exists-circumradius-eq-of-cospherical.md) | 793 | `result-track:504806fb3f0344fa8c80f437874f9e08e077de5b4d284e05f3d79f10ecf75b86` |
| 58 | `theorem` | [circumradius_eq_of_cospherical](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/circumradius-eq-of-cospherical.md) | 804 | `result-track:ef8c52200fb79503703fa3f092e157ba8cf111e9ced809024e05420cc8903e9e` |
| 59 | `theorem` | [exists_circumcenter_eq_of_cospherical_subset](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/exists-circumcenter-eq-of-cospherical-subset.md) | 814 | `result-track:8bdc0a85972624d8e529f1c5031f3ad6854fa2c38b4fc1e5f598c37df91bf256` |
| 60 | `theorem` | [circumcenter_eq_of_cospherical_subset](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/circumcenter-eq-of-cospherical-subset.md) | 835 | `result-track:3814c2c9bbda443512cbfd526491f7cf44abfd0f9de8de32dea255eb374409e0` |
| 61 | `theorem` | [exists_circumcenter_eq_of_cospherical](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/exists-circumcenter-eq-of-cospherical.md) | 845 | `result-track:4ebc366957574ff95ab5d6c6506a9d0890c836e0f49cece909f4a3a4b75439b6` |
| 62 | `theorem` | [circumcenter_eq_of_cospherical](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/circumcenter-eq-of-cospherical.md) | 856 | `result-track:c27d17e78b5ab5efbf05479e04473a0906db49041009c869a341bed84646aa47` |
| 63 | `theorem` | [exists_circumsphere_eq_of_cospherical_subset](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/exists-circumsphere-eq-of-cospherical-subset.md) | 866 | `result-track:8ab6bb830ed6080cf2889c9e213c6dc72a570724c70ae97e4291daf21f6744cd` |
| 64 | `theorem` | [circumsphere_eq_of_cospherical_subset](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/circumsphere-eq-of-cospherical-subset.md) | 877 | `result-track:06d10ea8696908ecc7e1cbca3d50a92863f59a29a410df67bd5bf0faba085bee` |
| 65 | `theorem` | [exists_circumsphere_eq_of_cospherical](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/exists-circumsphere-eq-of-cospherical.md) | 887 | `result-track:7f78ada8efdd7e4a4b97efe691ea1c4b0d530fda7c8c82230ad1c81dbf199ed6` |
| 66 | `theorem` | [circumsphere_eq_of_cospherical](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/circumsphere-eq-of-cospherical.md) | 898 | `result-track:4e1bc521a5763ed1b3a9dba26a3231b1337ec0252501e66f59cdfc7bbbac2acb` |
| 67 | `theorem` | [eq_or_eq_reflection_of_dist_eq](../../../../../Geometry/RealAndComplexGeometry/EuclideanCircumcenterCircumcenterNamespacedSourceEdition2.lean/declarations/eq-or-eq-reflection-of-dist-eq.md) | 911 | `result-track:52f23da97f790940ccc2f2b1c3b69d793ca5b8916f6f03e94ba1fc44f49f12a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2e7ff24a2a39c8de0ea281491b2f247c7bddc1ab834c68b52d1b6924c9c726a3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Circumcenter/Variant00b57d8e50410b3427faf52c7032675a4d7f4bbd468fad3fc9c88cd7f03b3dfc.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Circumcenter/Variant00b57d8e50410b3427faf52c7032675a4d7f4bbd468fad3fc9c88cd7f03b3dfc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
