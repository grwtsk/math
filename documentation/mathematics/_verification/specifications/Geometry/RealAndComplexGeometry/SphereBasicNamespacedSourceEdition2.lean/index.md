# Verification target: Sphere Basic Namespaced Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce18d7ccd2f432d9fca9b7b7b8e53460b8b9a8c8",
  "lexical_observation_count": 72,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Basic/Variantfe947ebeba250654b6a93cd2416ee4d54fa5af0a778b737477aa94750aac7ffb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/index.md) · [Full source](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce18d7ccd2f432d9fca9b7b7b8e53460b8b9a8c8`.

Source path: `GRWTSK/Topology/MetricTopology/Basic/Variantfe947ebeba250654b6a93cd2416ee4d54fa5af0a778b737477aa94750aac7ffb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Basic/Variantfe947ebeba250654b6a93cd2416ee4d54fa5af0a778b737477aa94750aac7ffb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.StrictConvexBetween` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Convex` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Affine.Convex` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Euclidean.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Sphere](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/sphere.md) | 56 | `declaration-track:422204fe907d3fbdcc3862d2c93312da1e1cc2e3ff9b19890d6ee898cfb85c5e` |
| 2 | `instance` | [(anonymous)](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/instance-source-edition-3.md) | 68 | `declaration-track:eaca23633292a365cf2f93ab04d8905f5a03691b8abc5a3920580dfbe9fd63b3` |
| 3 | `instance` | [(anonymous)](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/instance.md) | 71 | `declaration-track:21b4ef4bc88d49c88289540932c2d9802e3ab1befb5fe21df2635516304d698b` |
| 4 | `instance` | [(anonymous)](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/instance-source-edition-2.md) | 74 | `declaration-track:d9d7a2c0db6c4803b5075d6b14903e9fcd6768a81080de2d7b319668a9479126` |
| 5 | `theorem` | [Sphere.mk_center](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/sphere-mk-center.md) | 77 | `result-track:d128a2d5b562c9c983618420008836e9270da7f22d101cfbefc4397d82483c1a` |
| 6 | `theorem` | [Sphere.mk_radius](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/sphere-mk-radius.md) | 80 | `result-track:ad35468441bee67d430429b43da64067d7a1392e8c290b0138bc7d0649d0164e` |
| 7 | `theorem` | [Sphere.mk_center_radius](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/sphere-mk-center-radius.md) | 84 | `result-track:fd169c92d549f1fedd90cc76e6c3ee21e3f76876949dcb393515ed4bff160312` |
| 8 | `theorem` | [Sphere.coe_mk](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/sphere-coe-mk.md) | 92 | `result-track:7935dfe46e4603203c43bb3aa8e5c145a3446121078ad41e441ec75805a53665` |
| 9 | `theorem` | [Sphere.mem_coe](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/sphere-mem-coe.md) | 96 | `result-track:ac5374eb3023375b36b53ed86481c367f5362259bc53941703c3e06f208aabfe` |
| 10 | `theorem` | [Sphere.mem_coe'](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/sphere-mem-coe-source-edition-2.md) | 100 | `result-track:ecf531aa203c49b2201ffd590aff29d79f7bd63f05c46ed7f39890d3e3570402` |
| 11 | `theorem` | [mem_sphere](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/mem-sphere-source-edition-2.md) | 103 | `result-track:6c73aebb42ad5be942cce81432fcf4ab1c6d78011b94c95c538552a1f11907d4` |
| 12 | `theorem` | [mem_sphere'](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/mem-sphere.md) | 106 | `result-track:0b9082e8e55db89d36e90af9cdc23244eded5278e10fdfa1722db1d769f0e50f` |
| 13 | `theorem` | [subset_sphere](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/subset-sphere.md) | 109 | `result-track:85baee825a00b80f5e231616ed8b0a6d9f7c747e0b86c288e477cca312fc1a4b` |
| 14 | `theorem` | [dist_of_mem_subset_sphere](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/dist-of-mem-subset-sphere.md) | 112 | `result-track:7d94b71fd1ea37a07f2216a565a08aaba49190c522181e57eb4a16fc3bf095b1` |
| 15 | `theorem` | [dist_of_mem_subset_mk_sphere](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/dist-of-mem-subset-mk-sphere.md) | 116 | `result-track:3f405827151730fc40f3eaedb05adb42b0042927649ae55de868fe7839a3d704` |
| 16 | `theorem` | [Sphere.ne_iff](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/sphere-ne-iff.md) | 120 | `result-track:30997c02db3b0791dfaf767bebcb60efa23c3efb317630004851c26c07d61a12` |
| 17 | `theorem` | [Sphere.center_eq_iff_eq_of_mem](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/sphere-center-eq-iff-eq-of-mem.md) | 124 | `result-track:54e10c0b880894d147fcb0ce224a7d378daccc5639d947709e9122f7a7bcecad` |
| 18 | `theorem` | [Sphere.center_ne_iff_ne_of_mem](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/sphere-center-ne-iff-ne-of-mem.md) | 130 | `result-track:a6d669a0815970dd2980c99c479dfa4e7dc93b8feb71eab07e8c05405103c1d1` |
| 19 | `theorem` | [dist_center_eq_dist_center_of_mem_sphere](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/dist-center-eq-dist-center-of-mem-sphere.md) | 134 | `result-track:2866d020cf8b46b7a3d016de2abbc2574db20343cdeba753f9134264a2f41507` |
| 20 | `theorem` | [dist_center_eq_dist_center_of_mem_sphere'](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/dist-center-eq-dist-center-of-mem-sphere-source-edition-2.md) | 138 | `result-track:3003280e5e6d05d4cbbafdc244493c3df34341d48c0b1306de6c05cf6516e53b` |
| 21 | `lemma` | [Sphere.radius_nonneg_of_mem](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/sphere-radius-nonneg-of-mem.md) | 142 | `result-track:2f8c94d071b84dd0cce61106c3c3b1fe106e09fc3d3934fd022ed225f2dbd83c` |
| 22 | `lemma` | [Sphere.center_mem_iff](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/sphere-center-mem-iff.md) | 145 | `result-track:67b3f352a0d473b8f0a9978fbff69b353dfe70548375d5bbda0f50ba18d24467` |
| 23 | `def` | [Cospherical](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/cospherical.md) | 151 | `declaration-track:1c57369994d9a083ca50d2146537714de8a514b10e142d28e020fb778fb1bd60` |
| 24 | `theorem` | [cospherical_def](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/cospherical-def.md) | 155 | `result-track:c487e551fe26fd1637e505acd0bbc25e926542ffaca5976f799842029e2d67c7` |
| 25 | `theorem` | [cospherical_iff_exists_sphere](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/cospherical-iff-exists-sphere.md) | 160 | `result-track:f097542726062dc96cd586087db09db0e7d491b3e23783b0041ccff37cd93f48` |
| 26 | `theorem` | [Sphere.cospherical](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/sphere-cospherical.md) | 169 | `result-track:7c3e83be3e7f78ded3e77f9ba12249f3957aaf444e7718303422d9798fa0ec14` |
| 27 | `theorem` | [Cospherical.subset](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/cospherical-subset.md) | 173 | `result-track:60f5124009315b2f2db1e712cf8781bbbcfb5c4cc6f0af7496c7b682b05839be` |
| 28 | `theorem` | [cospherical_empty](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/cospherical-empty.md) | 179 | `result-track:48d5befb49768f41bf8de651e96cb84b684451d981c65c36b0a56619b1bc2678` |
| 29 | `theorem` | [cospherical_singleton](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/cospherical-singleton.md) | 184 | `result-track:b9cf205b98215eb57dc504dc4d054b806626940fdb713aab65cbde62aae5b045` |
| 30 | `lemma` | [Sphere.nonempty_iff](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/sphere-nonempty-iff.md) | 194 | `result-track:a8ed3d03181dd41fdab4d285a60a00fec6060651869ccb67f1987b013a2bfa1f` |
| 31 | `theorem` | [cospherical_pair](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/cospherical-pair.md) | 202 | `result-track:4c9aedd2f40bb9e19ecf966c8b6547afefe3712ed7d5293bbd83456e84240b27` |
| 32 | `structure` | [Concyclic](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/concyclic.md) | 210 | `declaration-track:7ed2e29c82aea81b15e3cfca257cf1477ea598f80b59c747f78e4b1177ad107d` |
| 33 | `theorem` | [Concyclic.subset](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/concyclic-subset.md) | 215 | `result-track:eed94ae6f0174e6753d0e6e14404f817712a9a747e7a4fab7b8567f6f4cd2b75` |
| 34 | `theorem` | [concyclic_empty](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/concyclic-empty.md) | 219 | `result-track:303e592c1405b4044b94f95af456a76c829a11c4ed84b944f893b7ce3f5e6499` |
| 35 | `theorem` | [concyclic_singleton](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/concyclic-singleton.md) | 223 | `result-track:fed6835aacb3a259b28ec6055c9183157f062b07b485f87e85a7ab4ef5b6ef81` |
| 36 | `theorem` | [concyclic_pair](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/concyclic-pair.md) | 227 | `result-track:ea4890bd5033a42b710405fe08653ac20b611c9431349d507a348722ddd96aae` |
| 37 | `structure` | [IsDiameter](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/isdiameter.md) | 233 | `declaration-track:2f454e3fd584bba3ed2ed5e8d1edf6374ce71b843a3fab1da777ed1a964fbdbb` |
| 38 | `lemma` | [IsDiameter.right_mem](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/isdiameter-right-mem.md) | 239 | `result-track:671b611cb64c3384aa3512e445fa4b5aa502c92e6e567396a0f6b448b15155e3` |
| 39 | `lemma` | [IsDiameter.symm](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/isdiameter-symm.md) | 243 | `result-track:5b82b8cfd91cfaeba86a3a9f6416d8f678c220e5711774480b602038e614b864` |
| 40 | `lemma` | [isDiameter_comm](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/isdiameter-comm.md) | 246 | `result-track:20bb9b318a82f6c38478e93497865129e19b398509c1965f896368a65e3766a2` |
| 41 | `lemma` | [isDiameter_iff_left_mem_and_midpoint_eq_center](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/isdiameter-iff-left-mem-and-midpoint-eq-center.md) | 249 | `result-track:6b512dca554f951bf6e8278a1b401ace468393466ad9486ceabf20faf6d5a81d` |
| 42 | `lemma` | [isDiameter_iff_right_mem_and_midpoint_eq_center](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/isdiameter-iff-right-mem-and-midpoint-eq-center.md) | 253 | `result-track:a175025a30ec1e0e44be55fc2c8814db92a06cbb63ea9ac268c5e27147a0ee0f` |
| 43 | `lemma` | [IsDiameter.pointReflection_center_left](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/isdiameter-pointreflection-center-left.md) | 257 | `result-track:a3d5ccb11f2f172481cd29097543acce3b7cf258302546b4e6db4038ad0f7c25` |
| 44 | `lemma` | [IsDiameter.pointReflection_center_right](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/isdiameter-pointreflection-center-right.md) | 261 | `result-track:d520914e2bd69a5d4956ddedcd7a1a6e8edaac12ccd92bb046b86247e19f94e3` |
| 45 | `lemma` | [isDiameter_iff_left_mem_and_pointReflection_center_left](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/isdiameter-iff-left-mem-and-pointreflection-center-left.md) | 265 | `result-track:3cfc3bc501412857c1f48ac5d4935297e8aa5b11f9071fce3cf4a5ae0acef4a4` |
| 46 | `lemma` | [isDiameter_iff_right_mem_and_pointReflection_center_right](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/isdiameter-iff-right-mem-and-pointreflection-center-right.md) | 269 | `result-track:f7e596e842f24cafabfada43e41fad19af67807855c198b1e20ac1be437ad9fc` |
| 47 | `lemma` | [IsDiameter.right_eq_of_isDiameter](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/isdiameter-right-eq-of-isdiameter.md) | 273 | `result-track:cfa9c262da96e66f76870e57133f1a9416330675ed5d916f9b3b17ea657a16d3` |
| 48 | `lemma` | [IsDiameter.left_eq_of_isDiameter](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/isdiameter-left-eq-of-isdiameter.md) | 277 | `result-track:76f92d6f34bc8a9ed52be89c8bcf44b54fcab4a654b9165f6e32c8638ea8da94` |
| 49 | `lemma` | [IsDiameter.dist_left_right](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/isdiameter-dist-left-right.md) | 281 | `result-track:7a204a4c01ea789229571890926572eac5952e92103e7f640e320c01c0d285bb` |
| 50 | `lemma` | [IsDiameter.dist_left_right_div_two](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/isdiameter-dist-left-right-div-two.md) | 285 | `result-track:86c9b70ad5d70546acfe19e3fb72cebac66bcc7e60dc997f4e74a5b1f960f37a` |
| 51 | `lemma` | [IsDiameter.left_eq_right_iff](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/isdiameter-left-eq-right-iff.md) | 289 | `result-track:3bfe38b0d27089283e947e503d4f8036b246ea895c542441960a40a1af2bb2f5` |
| 52 | `lemma` | [IsDiameter.left_ne_right_iff_radius_ne_zero](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/isdiameter-left-ne-right-iff-radius-ne-zero.md) | 293 | `result-track:d6c99decdd64e653decfb5db1a4fbcc9e930b154ecbc9a6ddcfff6cad2bfaa9c` |
| 53 | `lemma` | [IsDiameter.left_ne_right_iff_radius_pos](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/isdiameter-left-ne-right-iff-radius-pos.md) | 297 | `result-track:8ad9721fb192351e49ece4a5e4d30d0a3a796f396fddc8f9fe7324cc67addf71` |
| 54 | `lemma` | [IsDiameter.wbtw](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/isdiameter-wbtw.md) | 302 | `result-track:3b2cb128a73f706ff1a8bb6f9cef535ebead7bb579684ab14e94765c92a79da9` |
| 55 | `lemma` | [IsDiameter.sbtw](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/isdiameter-sbtw.md) | 306 | `result-track:7cd21b5f8aeb023af6a5102a24b07e640484a27a3bdfa716237b3450d28383e9` |
| 56 | `def` | [ofDiameter](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/ofdiameter.md) | 312 | `declaration-track:f95e98195c2caab772618a5152acd71795e3e7f808411c8e1cf2db8cbab71e8e` |
| 57 | `lemma` | [isDiameter_ofDiameter](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/isdiameter-ofdiameter.md) | 315 | `result-track:764adc2dd363ac2d4df1f2d1a5838742216d647d6ca2008e9771ff45e97abdc0` |
| 58 | `lemma` | [IsDiameter.ofDiameter_eq](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/isdiameter-ofdiameter-eq.md) | 318 | `result-track:d9850ae155e0f7162c51be6ac50fd54f38fa33966b2bd0c5b22e8135f4dee215` |
| 59 | `lemma` | [isDiameter_iff_ofDiameter_eq](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/isdiameter-iff-ofdiameter-eq.md) | 323 | `result-track:abe16cd4bf1c9f41ff46b0e0d826a27994a7f51efb4a8e61357b62dbb99957ac` |
| 60 | `theorem` | [Cospherical.affineIndependent](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/cospherical-affineindependent.md) | 335 | `result-track:1a854a2deda7de168d7fcc8797f4e338ae12d5cfe5f3b9294ff7bbf80ff25431` |
| 61 | `theorem` | [Cospherical.affineIndependent_of_mem_of_ne](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/cospherical-affineindependent-of-mem-of-ne.md) | 372 | `result-track:7d1224cfb4b0a8067e069c72254a9f0de3763baae751a0464befa5119b5a457a` |
| 62 | `theorem` | [Cospherical.affineIndependent_of_ne](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/cospherical-affineindependent-of-ne.md) | 381 | `result-track:aed076fe623ac6c020dec2ca18fe46ea8adbb272a82b2ee212249bda17f464f7` |
| 63 | `theorem` | [inner_vsub_vsub_of_mem_sphere_of_mem_sphere](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/inner-vsub-vsub-of-mem-sphere-of-mem-sphere.md) | 391 | `result-track:cd370e50c737ac6b93f82eac626f59cfbb04a2d14e4c705b691f6f7f866bb4df` |
| 64 | `theorem` | [eq_of_mem_sphere_of_mem_sphere_of_mem_of_finrank_eq_two](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/eq-of-mem-sphere-of-mem-sphere-of-mem-of-finrank-eq-two.md) | 400 | `result-track:34c075f6a2afc8c7de328cad4b1f072b42824345c44d4c9a26ff950919c662dd` |
| 65 | `theorem` | [eq_of_mem_sphere_of_mem_sphere_of_finrank_eq_two](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/eq-of-mem-sphere-of-mem-sphere-of-finrank-eq-two.md) | 410 | `result-track:73d850eb01fe102ecca06d7bbd7dcc4272a587121cc452578df386eca7752fd2` |
| 66 | `theorem` | [inner_pos_or_eq_of_dist_le_radius](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/inner-pos-or-eq-of-dist-le-radius.md) | 419 | `result-track:68ac0311d53c1faa308cba8b3e5fb02b69e7fb7340b33a4892c46d1751913d56` |
| 67 | `theorem` | [inner_nonneg_of_dist_le_radius](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/inner-nonneg-of-dist-le-radius.md) | 448 | `result-track:609d2bbfd10c1368a8fcb8f0c9a63296dcdb36fded5d22acfbfd35accac3f1f6` |
| 68 | `theorem` | [inner_pos_of_dist_lt_radius](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/inner-pos-of-dist-lt-radius.md) | 456 | `result-track:ef443649a3c85c711447f77bab8a8fd991d9b4f0a6c15d85892666238f6467fc` |
| 69 | `theorem` | [wbtw_of_collinear_of_dist_center_le_radius](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/wbtw-of-collinear-of-dist-center-le-radius.md) | 465 | `result-track:ef724e1bb42821451df62ede0ac112036b2fd1b0ebf06efaf48d83db5ae7f021` |
| 70 | `theorem` | [sbtw_of_collinear_of_dist_center_lt_radius](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/sbtw-of-collinear-of-dist-center-lt-radius.md) | 472 | `result-track:41a0e6c377f4b03bddeaba80dc2578df6e8c23650ec5c07d726f9663b280d10f` |
| 71 | `lemma` | [isDiameter_iff_mem_and_mem_and_dist](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/isdiameter-iff-mem-and-mem-and-dist.md) | 481 | `result-track:e5d37b9dfdd11541f79b074e5542364e4fada4c69abd8eddd71543cbc1f13873` |
| 72 | `lemma` | [isDiameter_iff_mem_and_mem_and_wbtw](../../../../../Geometry/RealAndComplexGeometry/SphereBasicNamespacedSourceEdition2.lean/declarations/isdiameter-iff-mem-and-mem-and-wbtw.md) | 490 | `result-track:f9f4399bda50f4aea1c007cd6a147c38660a5e2eeead334bff00db5189cb7f19` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f12c98d1a097fc0e8f1bde42b07c111e454ca3cab71069990b3b4e2dd3214b47 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Basic/Variantfe947ebeba250654b6a93cd2416ee4d54fa5af0a778b737477aa94750aac7ffb.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Basic/Variantfe947ebeba250654b6a93cd2416ee4d54fa5af0a778b737477aa94750aac7ffb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
