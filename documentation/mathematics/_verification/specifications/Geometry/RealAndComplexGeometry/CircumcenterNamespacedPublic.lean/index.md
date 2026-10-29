# Verification target: Circumcenter Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a90181c1c9463a6040d112e20d5d79aff5530ae3",
  "lexical_observation_count": 65,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Circumcenter/Variant76b251d29eccd6c4a983f7da5549bf9c4df0b534d2d50ac859b7b10db17880b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/index.md) · [Full source](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a90181c1c9463a6040d112e20d5d79aff5530ae3`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Circumcenter/Variant76b251d29eccd6c4a983f7da5549bf9c4df0b534d2d50ac859b7b10db17880b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Circumcenter/Variant76b251d29eccd6c4a983f7da5549bf9c4df0b534d2d50ac859b7b10db17880b4.lean.json)

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
| 1 | `theorem` | [existsUnique_dist_eq_of_insert](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/existsunique-dist-eq-of-insert.md) | 62 | `result-track:a05d5b9bf72ea7c1103ea4896c83c48a9fc48f33eb003d425824b790231aeb50` |
| 2 | `theorem` | [Circumcenter Namespaced Public](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/root-grwtsk-geometry-classicalgeometry-euclideangeometry-pointswithcircu.md) | 142 | `result-track:b49f479f937e81615cb496b60816a901027483476d8fa0a3f47822d89839068c` |
| 3 | `def` | [circumsphere](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/circumsphere.md) | 202 | `declaration-track:d75c879c547477d60005c5845e9ac67bc30dbf9378166c823d11605b213a58c7` |
| 4 | `theorem` | [circumsphere_unique_dist_eq](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/circumsphere-unique-dist-eq.md) | 206 | `result-track:069f85335ad6815fe237975a3d436546bc89c8c4f2de14bb2dea75908a588eec` |
| 5 | `def` | [circumcenter](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/circumcenter.md) | 215 | `declaration-track:61efaf497f9afe1610723127945032ae8c4ab435202b354a514710750172a20b` |
| 6 | `def` | [circumradius](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/circumradius.md) | 219 | `declaration-track:ee1d92a8197e473c75112e78dbc9baa62296e4f4316b204415cecbf9b1104530` |
| 7 | `theorem` | [circumsphere_center](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/circumsphere-center.md) | 224 | `result-track:3c97c995dad8add5150b02135ca9a94e55fe1e9f6d5d90d6c0c62e1607c766e5` |
| 8 | `theorem` | [circumsphere_radius](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/circumsphere-radius.md) | 229 | `result-track:1a3fd38f8707c5095bb8b4df5175d763d15b027d1e198de849c3c964f4b5753e` |
| 9 | `theorem` | [circumcenter_mem_affineSpan](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/circumcenter-mem-affinespan.md) | 233 | `result-track:16537bce563656cc45738c263703778c6eb501a014712469ce055825a76c0f84` |
| 10 | `theorem` | [dist_circumcenter_eq_circumradius](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/dist-circumcenter-eq-circumradius-source-edition-2.md) | 240 | `result-track:cd7432f4220f75c6945c613004998f09f0f977733ee5d681e401585ea535b69b` |
| 11 | `theorem` | [mem_circumsphere](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/mem-circumsphere.md) | 245 | `result-track:0fc7283e8be1bd52bb190e2e11344dd07e3050246fc25eacdd070256426c5cca` |
| 12 | `theorem` | [dist_circumcenter_eq_circumradius'](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/dist-circumcenter-eq-circumradius.md) | 252 | `result-track:80b4fbf4565bb926fe30ad9da8eda16a66da5a8d1a2a3aa5a655368537ef642f` |
| 13 | `theorem` | [eq_circumcenter_of_dist_eq](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/eq-circumcenter-of-dist-eq.md) | 260 | `result-track:01d4e67b414764ffc7e0a2295bafcd9e0fe79d3e3e85163f18bc38aad78eb29b` |
| 14 | `theorem` | [eq_circumradius_of_dist_eq](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/eq-circumradius-of-dist-eq.md) | 270 | `result-track:b9abc1c97cfb79482ff9ea7637ce27efb1eece75f5c6ed724fcac69bfe1fbffb` |
| 15 | `theorem` | [circumradius_nonneg](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/circumradius-nonneg.md) | 279 | `result-track:756e248b92eb237c9a66ef6abd96e96202f0da636e2282a65a0e22ecf99639ea` |
| 16 | `theorem` | [circumradius_pos](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/circumradius-pos.md) | 284 | `result-track:6c243a9fd4200e140cc1315b0c81962ebab2e997522fc15cebf44901b87c27e1` |
| 17 | `theorem` | [circumcenter_eq_point](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/circumcenter-eq-point.md) | 293 | `result-track:f88315be46ce8d237c1ebe2c9b9379b913936e4935cc0879f02d29347191a105` |
| 18 | `lemma` | [circumcenter_ne_point](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/circumcenter-ne-point.md) | 301 | `result-track:f5693d5f48aa135861ca569e65a590a08eb1d5cbbdc704de3b7df5a44928b6bf` |
| 19 | `theorem` | [circumcenter_eq_centroid](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/circumcenter-eq-centroid.md) | 307 | `result-track:16de14f973add03d624022ab27c6a3d03ad133295c910fd5a655d25b21a15cac` |
| 20 | `theorem` | [circumsphere_reindex](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/circumsphere-reindex.md) | 327 | `result-track:6220da48745f8702bc6dc9abfe0fb3faf738bf9591e20b2ba11be3959fda06d0` |
| 21 | `theorem` | [circumcenter_reindex](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/circumcenter-reindex.md) | 335 | `result-track:c9c21f10b1616a3ea64c09da8f2bc8800fe59132a9a003e1d72f6140187fc61d` |
| 22 | `theorem` | [circumradius_reindex](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/circumradius-reindex.md) | 340 | `result-track:324afc0b45d399015a8c25f8012901a62beda6b43ec1a5bd03dbd0bb8b5e1c1e` |
| 23 | `lemma` | [circumcenter_map](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/circumcenter-map.md) | 343 | `result-track:5df5ba1fe0dbef9be4aed615ae9c11b40e85cae7162d825c461f87f43f064756` |
| 24 | `lemma` | [circumradius_map](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/circumradius-map.md) | 352 | `result-track:a5ad194e3ba8f58e826319a8a4eda2576048de65a8f80fa5d5ea11f4474b21e0` |
| 25 | `lemma` | [circumcenter_restrict](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/circumcenter-restrict.md) | 361 | `result-track:08ff4cd1392da2a0b7fbefa6b2b15c02e617679d1c7275182bfb79185e18b6ca` |
| 26 | `lemma` | [circumradius_restrict](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/circumradius-restrict.md) | 369 | `result-track:a19cdf82be81075f0333b2e302baf5e64562df9ca2275ce4fdf4e4f6b6aad324` |
| 27 | `theorem` | [dist_circumcenter_sq_eq_sq_sub_circumradius](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/dist-circumcenter-sq-eq-sq-sub-circumradius.md) | 377 | `result-track:330ed48ecf289ff7030e9d7fdb85818989ee28eb7145fb1774bbeb816ad53327` |
| 28 | `theorem` | [orthogonalProjection_eq_circumcenter_of_exists_dist_eq](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/orthogonalprojection-eq-circumcenter-of-exists-dist-eq.md) | 388 | `result-track:6f4823516bb660f83276ab475f145789286fbfc2c2999c9d25e05e7a4456c462` |
| 29 | `theorem` | [orthogonalProjection_eq_circumcenter_of_dist_eq](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/orthogonalprojection-eq-circumcenter-of-dist-eq.md) | 406 | `result-track:219811834b08907cd41e36e3d38ac7d276e1a0b0db26bd127f22625524547a53` |
| 30 | `theorem` | [orthogonalProjection_circumcenter](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/orthogonalprojection-circumcenter.md) | 412 | `result-track:dfdf8774fb474d399271c7c3141938244f281dba816efac44fa2a84a34948d47` |
| 31 | `theorem` | [circumcenter_eq_of_range_eq](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/circumcenter-eq-of-range-eq.md) | 421 | `result-track:2ed5f86b98882b1bd09c0727c55a049196ce62199579bd3d374e442e9ef8e60b` |
| 32 | `inductive` | [PointsWithCircumcenterIndex](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/pointswithcircumcenterindex.md) | 438 | `declaration-track:f162fdf03b46d8371c09006faf79ee87d621e0b9505d86a3bdf94dabf3df0451` |
| 33 | `instance` | [pointsWithCircumcenterIndexInhabited](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/pointswithcircumcenterindexinhabited.md) | 445 | `declaration-track:e624ea708d65405c65421bfcc40f59085d292ca8a6136feac97035662ce4f74f` |
| 34 | `def` | [pointIndexEmbedding](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/pointindexembedding.md) | 449 | `declaration-track:4032916e4194765672c136122fa3fc2240d4e9127ca56e2d068a2d6e436758fe` |
| 35 | `theorem` | [sum_pointsWithCircumcenter](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/sum-pointswithcircumcenter.md) | 453 | `result-track:bfa3d0a7446af7aa553656b836b73c96daabebdc9c983beeaf1aab354de4e488` |
| 36 | `def` | [pointsWithCircumcenter](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/pointswithcircumcenter.md) | 470 | `declaration-track:677f8785e9e335ba1125147d0e5a13c0710d7de0a2a500c3df64ac6508fd510d` |
| 37 | `theorem` | [pointsWithCircumcenter_point](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/pointswithcircumcenter-point.md) | 477 | `result-track:bee38298c725c342434965ec4735dcfe2edbf900eab862f2fefd2007975f275a` |
| 38 | `theorem` | [pointsWithCircumcenter_eq_circumcenter](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/pointswithcircumcenter-eq-circumcenter.md) | 484 | `result-track:f969cf441d0b614e945bd11565e5ac1e191be29249610014e0c7f71327192277` |
| 39 | `def` | [pointWeightsWithCircumcenter](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/pointweightswithcircumcenter.md) | 490 | `declaration-track:f6c89a0edb83ab35fb72d08b42dabd09284e2426c0edef63eddbd7d58badd45c` |
| 40 | `theorem` | [sum_pointWeightsWithCircumcenter](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/sum-pointweightswithcircumcenter.md) | 496 | `result-track:7a81e58bb2ec2aed1437a96986c62574f916ebbc12e3dcee83c035bb32979087` |
| 41 | `theorem` | [point_eq_affineCombination_of_pointsWithCircumcenter](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/point-eq-affinecombination-of-pointswithcircumcenter.md) | 504 | `result-track:eba5a200223776a3443cad9fdeb10475f52aebb3480f538889f1fde077e6d84a` |
| 42 | `def` | [centroidWeightsWithCircumcenter](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/centroidweightswithcircumcenter.md) | 522 | `declaration-track:1dee253fe95e5706a27cf9a82b1ff766c18cc58a2694f2270881f288f628b263` |
| 43 | `theorem` | [sum_centroidWeightsWithCircumcenter](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/sum-centroidweightswithcircumcenter.md) | 529 | `result-track:5fc017e66fcc66f3ec67091e8c62a8efea62e54635d2ca8c88e1ae69781525a2` |
| 44 | `theorem` | [centroid_eq_affineCombination_of_pointsWithCircumcenter](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/centroid-eq-affinecombination-of-pointswithcircumcenter.md) | 536 | `result-track:58eb58db30a908fc4ea18d10fca1971a9b7628b2ebc77f76a36715648bade6bc` |
| 45 | `def` | [circumcenterWeightsWithCircumcenter](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/circumcenterweightswithcircumcenter.md) | 551 | `declaration-track:00f0de41fd6b68de23f61ab3d3b73c7e05d17eb3d654b624e81fb8c843725eb7` |
| 46 | `theorem` | [sum_circumcenterWeightsWithCircumcenter](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/sum-circumcenterweightswithcircumcenter.md) | 557 | `result-track:baefcf90b8e4102b03937696dddec8abb760cd19dae8d7e4b47a4b6dc5ede4df` |
| 47 | `theorem` | [circumcenter_eq_affineCombination_of_pointsWithCircumcenter](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/circumcenter-eq-affinecombination-of-pointswithcircumcenter.md) | 565 | `result-track:9a3802c065ca23f15cd2a45f363a61327061626258c19d0be10ab604133475b7` |
| 48 | `def` | [reflectionCircumcenterWeightsWithCircumcenter](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/reflectioncircumcenterweightswithcircumcenter.md) | 576 | `declaration-track:a3a91a4b2759c074180be3b9ffd722b47d99d24dc8b8a660e7772e4900628b23` |
| 49 | `theorem` | [sum_reflectionCircumcenterWeightsWithCircumcenter](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/sum-reflectioncircumcenterweightswithcircumcenter.md) | 583 | `result-track:600e16f07d8d665425e953368451f4f0470b7962e9e2bf44ac47339fb08979a8` |
| 50 | `theorem` | [reflection_circumcenter_eq_affineCombination_of_pointsWithCircumcenter](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/reflection-circumcenter-eq-affinecombination-of-pointswithcircumcenter.md) | 593 | `result-track:ca23d7161d892da97e51725bb02611df118fe4ba2373d3162c7f68c02ea1692c` |
| 51 | `theorem` | [cospherical_iff_exists_mem_of_complete](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/cospherical-iff-exists-mem-of-complete.md) | 633 | `result-track:e11f0ef5505e4793a0001ec1ad59d0f0cd621a34dee9c4d7a06048b4491f12ad` |
| 52 | `theorem` | [cospherical_iff_exists_mem_of_finiteDimensional](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/cospherical-iff-exists-mem-of-finitedimensional.md) | 646 | `result-track:c6d36e46d5b804029c888b4f57d8e12dac605e6a8e6e365d49f32aba3c427cd4` |
| 53 | `theorem` | [exists_circumradius_eq_of_cospherical_subset](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/exists-circumradius-eq-of-cospherical-subset.md) | 653 | `result-track:a6b5d62ee32a438cb25d3f3a30a796493c0e32a65939dbd5dce97cf060998d5b` |
| 54 | `theorem` | [circumradius_eq_of_cospherical_subset](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/circumradius-eq-of-cospherical-subset.md) | 673 | `result-track:d3cac75449a6874e66d2c6206ba3227ef85da6ed53d60954b22e42c481ed3a72` |
| 55 | `theorem` | [exists_circumradius_eq_of_cospherical](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/exists-circumradius-eq-of-cospherical.md) | 682 | `result-track:c7a86e591f8dd2ba35d8d6ebeadbcb2f003e5024d72dca5889f8d356a0766693` |
| 56 | `theorem` | [circumradius_eq_of_cospherical](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/circumradius-eq-of-cospherical.md) | 691 | `result-track:53cf643cea841506176ecc5d2070d08c0d9d4af1dbb8dd1a9230ceddb8cfee80` |
| 57 | `theorem` | [exists_circumcenter_eq_of_cospherical_subset](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/exists-circumcenter-eq-of-cospherical-subset.md) | 700 | `result-track:50f7102f247cdb93d6112bbd5a0ad5f6fde9d87d06930789d7264192211bb554` |
| 58 | `theorem` | [circumcenter_eq_of_cospherical_subset](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/circumcenter-eq-of-cospherical-subset.md) | 720 | `result-track:96c6fa1d747e5bae10742ae521b07194363406e6e53a66ff508c9fdbdbfbf981` |
| 59 | `theorem` | [exists_circumcenter_eq_of_cospherical](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/exists-circumcenter-eq-of-cospherical.md) | 729 | `result-track:e86c00dbe272f8aff5e43c0173785a06af4eb5dcf112933a5dd9e626f6a69286` |
| 60 | `theorem` | [circumcenter_eq_of_cospherical](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/circumcenter-eq-of-cospherical.md) | 738 | `result-track:c994e85e883921c0c09e5ed1bdf98a5bc4a921a7ca4e2f6b5f0ffa82b542cae1` |
| 61 | `theorem` | [exists_circumsphere_eq_of_cospherical_subset](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/exists-circumsphere-eq-of-cospherical-subset.md) | 747 | `result-track:37ad2b535c48033b3c467744b0f1fb1b1ea0bb4e488945a08ab7f87910881ca8` |
| 62 | `theorem` | [circumsphere_eq_of_cospherical_subset](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/circumsphere-eq-of-cospherical-subset.md) | 757 | `result-track:1827ad339c24383da873d1bcb79d93b28993b4591e0a33e523dec10066651113` |
| 63 | `theorem` | [exists_circumsphere_eq_of_cospherical](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/exists-circumsphere-eq-of-cospherical.md) | 766 | `result-track:b1e62c8fc78963c7547c3f5dedfbd1e7b8ab9595cb44b401c0820692f7a5318a` |
| 64 | `theorem` | [circumsphere_eq_of_cospherical](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/circumsphere-eq-of-cospherical.md) | 775 | `result-track:de245fc5821a5d0612347b5c2e80b987c18bce1e66e0d1bf5dad80b38ac317bb` |
| 65 | `theorem` | [eq_or_eq_reflection_of_dist_eq](../../../../../Geometry/RealAndComplexGeometry/CircumcenterNamespacedPublic.lean/declarations/eq-or-eq-reflection-of-dist-eq.md) | 787 | `result-track:4833436097933d8db8aebc031ae556cef36a435fb825c274afec5941fc5a3c3b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d6e961773270a57c9d9015e8e93effcfe0b9e5a654b339bc1b75a090237883a4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Circumcenter/Variant76b251d29eccd6c4a983f7da5549bf9c4df0b534d2d50ac859b7b10db17880b4.lean","GRWTSK/_verification/specifications/Geometry/ClassicalGeometry/EuclideanGeometry/Circumcenter/Variant76b251d29eccd6c4a983f7da5549bf9c4df0b534d2d50ac859b7b10db17880b4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
