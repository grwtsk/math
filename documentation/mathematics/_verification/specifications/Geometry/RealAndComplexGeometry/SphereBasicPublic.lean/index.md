# Verification target: Sphere Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65e60c522aa7a6ed8b00ff637f51a8e3530c2a47",
  "lexical_observation_count": 84,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant80a583b0409b46a462932b8eec9ba960bc92bb6da6172aa392c2e30b7903e6f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/index.md) · [Full source](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65e60c522aa7a6ed8b00ff637f51a8e3530c2a47`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant80a583b0409b46a462932b8eec9ba960bc92bb6da6172aa392c2e30b7903e6f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant80a583b0409b46a462932b8eec9ba960bc92bb6da6172aa392c2e30b7903e6f4.lean.json)

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
| 1 | `structure` | [Sphere](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/sphere.md) | 53 | `declaration-track:ff15254d57537190fa89e799cf2b3592bcb5922538c801d78cf28517f64e2fe1` |
| 2 | `instance` | [(anonymous)](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/instance-source-edition-2.md) | 65 | `declaration-track:2a10faf1dd8557c6058dc5e16dee973f2f81754957bd9ca626d6b9ff1f054acf` |
| 3 | `instance` | [(anonymous)](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/instance-source-edition-3.md) | 68 | `declaration-track:44254199c40eee0d99c1360eff46e648c8c2f2d64e627bec1530b1b38a34161e` |
| 4 | `instance` | [(anonymous)](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/instance.md) | 71 | `declaration-track:0c65c75b71b412665c58dc939f55cc71235e118e23baf11c39087122792fd58e` |
| 5 | `theorem` | [Sphere.mk_center](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/sphere-mk-center.md) | 74 | `result-track:e23c36870edc64e097016f2cf2abd66deb4dd55017030b2f4a513f52948a70fc` |
| 6 | `theorem` | [Sphere.mk_radius](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/sphere-mk-radius.md) | 77 | `result-track:c973381e6a26e94e5c49854456a4bc310aed61b0cc0cd51780427d89d3037d2b` |
| 7 | `theorem` | [Sphere.mk_center_radius](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/sphere-mk-center-radius.md) | 81 | `result-track:6e72026239102932446cffdaa8b872d2a1cd990124a10e3f499bd61fb34b3f08` |
| 8 | `theorem` | [Sphere.coe_mk](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/sphere-coe-mk.md) | 85 | `result-track:3fb78ede23477460fa0237a0ec368be05cd8ad41dd1585a724a427f7a50b7e41` |
| 9 | `theorem` | [Sphere.mem_coe](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/sphere-mem-coe-source-edition-2.md) | 89 | `result-track:f024c52e6f8de303c3e4d8bbd6df448891a379fcaf7028a4a499756611040e0c` |
| 10 | `theorem` | [Sphere.mem_coe'](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/sphere-mem-coe.md) | 93 | `result-track:1c5d8cd0a414818aeb30f17dd6f4c764168a1d15ebfc9d39f5ea097e7fb0b56b` |
| 11 | `theorem` | [mem_sphere](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/mem-sphere.md) | 96 | `result-track:80f5e197eb53e34e66b7ac3c1131b62cfe766ced1c2670c4b136c3faa2bc0588` |
| 12 | `theorem` | [mem_sphere'](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/mem-sphere-source-edition-2.md) | 99 | `result-track:c9910316583a76ae94fea8e3f67d7a233821690c1e5623a7efc8635ab7edd014` |
| 13 | `theorem` | [subset_sphere](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/subset-sphere.md) | 102 | `result-track:6dd02a1b525f4165f0a6680bdd83dbb50b0c77ffe1ba2ffb0d19bac7addf1302` |
| 14 | `theorem` | [dist_of_mem_subset_sphere](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/dist-of-mem-subset-sphere.md) | 105 | `result-track:964a5142587bdddfbc9d67787cf654fbbd1b81441b54220ff649dafa89399f2d` |
| 15 | `theorem` | [dist_of_mem_subset_mk_sphere](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/dist-of-mem-subset-mk-sphere.md) | 109 | `result-track:3a1807916da2b5ba02b0316b7985ab43405a51cde8c85989395496a9f0cad7f3` |
| 16 | `theorem` | [Sphere.ne_iff](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/sphere-ne-iff.md) | 113 | `result-track:d20eabf8515f7dbd5e0cebe3770a5bf8fa555f430b943de90e31e8c53f21db59` |
| 17 | `theorem` | [Sphere.center_eq_iff_eq_of_mem](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/sphere-center-eq-iff-eq-of-mem.md) | 117 | `result-track:b136bac44943ad79a9ef8959e1f4a6c530cf8b134e2752439dc2bc5b405901bf` |
| 18 | `theorem` | [Sphere.center_ne_iff_ne_of_mem](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/sphere-center-ne-iff-ne-of-mem.md) | 123 | `result-track:a74dc575d1b3b76413cc6bba35a43a9b303f46eb8ca9d33f5905c740d19d3e32` |
| 19 | `theorem` | [dist_center_eq_dist_center_of_mem_sphere](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/dist-center-eq-dist-center-of-mem-sphere.md) | 127 | `result-track:417c7073701bca4c7d9c458c40f3fdf8c126a345f2b7793c49a32c2b27f8d9cf` |
| 20 | `theorem` | [dist_center_eq_dist_center_of_mem_sphere'](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/dist-center-eq-dist-center-of-mem-sphere-source-edition-2.md) | 131 | `result-track:779e32b3e89dc06a90b47713ed298c0288a133f74003059e3b6f06791798e20c` |
| 21 | `lemma` | [Sphere.radius_nonneg_of_mem](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/sphere-radius-nonneg-of-mem.md) | 135 | `result-track:ec145adc96519455a788de9b1ea1444282cee5d75237abe0e74a6619feaa834e` |
| 22 | `lemma` | [Sphere.center_mem_iff](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/sphere-center-mem-iff.md) | 138 | `result-track:544089f27f39a0f8e2363cf6b35e215f45454823c72712b3cbcf077304544ce6` |
| 23 | `lemma` | [Sphere.ne_center_of_mem_of_mem_of_ne](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/sphere-ne-center-of-mem-of-mem-of-ne.md) | 142 | `result-track:9db1e0e8c1bb859f91ce96e52a7ff165de16b8c65467c68511ab70a18d7db733` |
| 24 | `def` | [Cospherical](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/cospherical.md) | 149 | `declaration-track:bee99314d79666446e645ad978bd4d25b96e14e7a4a9f9c04120d88bc8781ba9` |
| 25 | `theorem` | [cospherical_def](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/cospherical-def.md) | 153 | `result-track:d7492e45d43e20a49a0297b2dc409207bad811d219b97d603d62c8012ed347b8` |
| 26 | `theorem` | [cospherical_iff_exists_sphere](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/cospherical-iff-exists-sphere.md) | 158 | `result-track:80bda694937baf082518bd4f23c9add10520e3e96047c2a5c1fb6f4e5edebeac` |
| 27 | `theorem` | [Sphere.cospherical](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/sphere-cospherical.md) | 167 | `result-track:fdd2aa9016f4b497901c69f715b1cee6f3ece9e8ab3f546a082d9803b9c100a1` |
| 28 | `theorem` | [Cospherical.subset](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/cospherical-subset.md) | 171 | `result-track:d71f58636b2f3609ef6c0249f0a93ca0a1065ff7e52724c73b45f8e973a4ba91` |
| 29 | `theorem` | [cospherical_empty](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/cospherical-empty.md) | 177 | `result-track:dd5cf096ee2cbcb07e41d8903205415102d5cbf360633cdf8c2162935284f6e6` |
| 30 | `theorem` | [cospherical_singleton](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/cospherical-singleton.md) | 182 | `result-track:a17f9efe332530c2385ef645f8ca26139472b47542f1137466b280112c869199` |
| 31 | `theorem` | [_root_.Isometry.cospherical](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/root-isometry-cospherical.md) | 187 | `result-track:7f46147a43666c23db277a89c5e16562b9929aebf3fbafe26155e49b897bf883` |
| 32 | `theorem` | [Cospherical.inclusion](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/cospherical-inclusion.md) | 202 | `result-track:badd60e2197e3306f15e53d5f81994ad01a51f7f8ef65967c3c02d746d34cc45` |
| 33 | `theorem` | [Cospherical.subtype_val](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/cospherical-subtype-val.md) | 210 | `result-track:9cdfd0f8726700323b90034bd2d75d925fafe5ebd0a589e338a822100da40adb` |
| 34 | `theorem` | [norm_vsub_center_eq_radius](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/norm-vsub-center-eq-radius.md) | 216 | `result-track:db9f78109e7397281b1463e4ad6edafa15feb200a6202534527e3e70763a8092` |
| 35 | `lemma` | [Sphere.nonempty_iff](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/sphere-nonempty-iff.md) | 220 | `result-track:8d1406e8d5f440dbc045ad1fcd04cb1c1d5728609b4ddc1f890133554ab5b3a5` |
| 36 | `theorem` | [cospherical_pair](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/cospherical-pair.md) | 228 | `result-track:544111e12f21d9ba385457f83b5f4bc976b258098f9e05777feed97f16236c76` |
| 37 | `structure` | [Concyclic](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/concyclic.md) | 236 | `declaration-track:4fe6a7452b6b3032a06b0f991922ab26292e8c2165b1b37db95de2f6137c6620` |
| 38 | `theorem` | [Concyclic.subset](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/concyclic-subset.md) | 241 | `result-track:39bc8c73c3ff3916533c0a2df831bbe36ee5d547f8c865c1434ce7f588282772` |
| 39 | `theorem` | [concyclic_empty](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/concyclic-empty.md) | 245 | `result-track:74b73472414098a2b147ccddd52afbd102e5d4c485513d034c7a95bac24d4a1c` |
| 40 | `theorem` | [concyclic_singleton](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/concyclic-singleton.md) | 249 | `result-track:30327ced8b71ec7b8534a2100f5855b9298f34332c871a47024fafcc7a016ecf` |
| 41 | `theorem` | [concyclic_pair](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/concyclic-pair.md) | 253 | `result-track:dc73b7528614ba0e4945d9614c8ebcd4984f5107c9df6a3be16207454b1d1524` |
| 42 | `structure` | [IsDiameter](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/isdiameter.md) | 259 | `declaration-track:8b2a59e7f2c878b6358f4c91d112115cda514fdd861e0a1b5f945905a994ad1f` |
| 43 | `lemma` | [IsDiameter.right_mem](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/isdiameter-right-mem.md) | 265 | `result-track:b755c618cff5898e66bf87f63b993992747fb20dd7151c7b7e0200b779bf1f1e` |
| 44 | `lemma` | [IsDiameter.symm](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/isdiameter-symm.md) | 269 | `result-track:fb9fa36339a822744a9b732a9cde191c2c431c4cf4fe5093e27ddfdf02f88436` |
| 45 | `lemma` | [isDiameter_comm](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/isdiameter-comm.md) | 272 | `result-track:ded20dec6f3d9f7f7c85cf71907678f08581ca834d5da7ea796057aeda796ced` |
| 46 | `lemma` | [isDiameter_iff_left_mem_and_midpoint_eq_center](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/isdiameter-iff-left-mem-and-midpoint-eq-center.md) | 275 | `result-track:00459f53d993a2a39b5cd8fee856491e28c1f14cf558761c61eb2d7141b8c92f` |
| 47 | `lemma` | [isDiameter_iff_right_mem_and_midpoint_eq_center](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/isdiameter-iff-right-mem-and-midpoint-eq-center.md) | 279 | `result-track:f6a4308fa928375b0e9ba0d515bf9759714d78c6c03e0f9856ccb5f7db8235b1` |
| 48 | `lemma` | [IsDiameter.pointReflection_center_left](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/isdiameter-pointreflection-center-left.md) | 283 | `result-track:ce1902bc36d461eb1c8273b022985f4100b4ffc3d911233fcb88136ec165705a` |
| 49 | `lemma` | [IsDiameter.pointReflection_center_right](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/isdiameter-pointreflection-center-right.md) | 287 | `result-track:cb74d75c907226ee5c7a396e384a187d0fe468ca55e53efc4c68359dc0d94813` |
| 50 | `lemma` | [isDiameter_iff_left_mem_and_pointReflection_center_left](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/isdiameter-iff-left-mem-and-pointreflection-center-left.md) | 291 | `result-track:a658fbad9021d3b5f97bf918e3add5e6be2b6a6112d7a4b34f23dca491d45873` |
| 51 | `lemma` | [isDiameter_iff_right_mem_and_pointReflection_center_right](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/isdiameter-iff-right-mem-and-pointreflection-center-right.md) | 295 | `result-track:e649d07d302c9281adc29acfbd82a64194cefc7b1fe613c583b3536a30244223` |
| 52 | `lemma` | [IsDiameter.right_eq_of_isDiameter](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/isdiameter-right-eq-of-isdiameter.md) | 299 | `result-track:6ba8ea83130be73dc5416eba79188c687dbcaea36460b03a3cc123ac2e17028a` |
| 53 | `lemma` | [IsDiameter.left_eq_of_isDiameter](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/isdiameter-left-eq-of-isdiameter.md) | 303 | `result-track:70a1102218407e5ee4a3ba70535d0278904cfa60d673f5b82e8654817e2d0d7d` |
| 54 | `lemma` | [IsDiameter.dist_left_right](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/isdiameter-dist-left-right.md) | 307 | `result-track:846408aec9ff210e77caa4deb23fd79adf4c9a56c8f7c238a43cadc2f06d9103` |
| 55 | `lemma` | [IsDiameter.dist_left_right_div_two](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/isdiameter-dist-left-right-div-two.md) | 311 | `result-track:8cefab0c3bb5dfe51e9859f95ec1e11acfc61c0f2a4b26ed33bfc85c1f9ec7cb` |
| 56 | `lemma` | [IsDiameter.left_eq_right_iff](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/isdiameter-left-eq-right-iff.md) | 315 | `result-track:5b9a5d2ce8d0e11cd2b4e16238677bb18744059806b7e84a5749fff42fe2cd7f` |
| 57 | `lemma` | [IsDiameter.left_ne_right_iff_radius_ne_zero](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/isdiameter-left-ne-right-iff-radius-ne-zero.md) | 319 | `result-track:b184490d9e5c4cbb3afacb0b24884957e24fcc32166ce5a5108c8c3748263834` |
| 58 | `lemma` | [IsDiameter.left_ne_right_iff_radius_pos](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/isdiameter-left-ne-right-iff-radius-pos.md) | 323 | `result-track:42df2ab1e9681f4bd5ac0b48fc284a1cef85576be9df7c9583e07fbcab4c5b4e` |
| 59 | `lemma` | [IsDiameter.wbtw](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/isdiameter-wbtw.md) | 328 | `result-track:54a756984db28000cdb20f7e5e211dba81f165c1f4b8ff050d81c5b4d742b54d` |
| 60 | `lemma` | [IsDiameter.sbtw](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/isdiameter-sbtw.md) | 332 | `result-track:efa8dff10965d51c5131e45154980e2c066c9d9eb2cded2916eb54eb255d410d` |
| 61 | `def` | [ofDiameter](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/ofdiameter.md) | 338 | `declaration-track:6f5a4bf82044184727c930394b532abdd50e292d9d395c6c919e6c4c3aa1f416` |
| 62 | `lemma` | [isDiameter_ofDiameter](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/isdiameter-ofdiameter.md) | 341 | `result-track:5a503461f9597b36951bf75b8aa1f9c487a46118db8de9087052b7d33707f40f` |
| 63 | `lemma` | [IsDiameter.ofDiameter_eq](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/isdiameter-ofdiameter-eq.md) | 344 | `result-track:5dc751f23b64abd30524afeae9bd3890be954945f21d573239a48d4286c31723` |
| 64 | `lemma` | [isDiameter_iff_ofDiameter_eq](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/isdiameter-iff-ofdiameter-eq.md) | 349 | `result-track:e746e2f521b16468fc390fe3fbce83724cebffb1f09df5cb0f73a71ff4e7e64e` |
| 65 | `theorem` | [Cospherical.subtype_val_iff](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/cospherical-subtype-val-iff.md) | 363 | `result-track:508c4d4e5777e5ede1492cc52670d74714cad7a5d8f64338c70002d108509780` |
| 66 | `theorem` | [Cospherical.inclusion_iff](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/cospherical-inclusion-iff.md) | 379 | `result-track:040e7effaa52cec055d01b694de21ab00b992220b6de1dae0e0c53be02ab26cf` |
| 67 | `theorem` | [Cospherical.affineIndependent](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/cospherical-affineindependent.md) | 387 | `result-track:7ca335b4e1072d0a1a3629843b7b5e5339dbe659b483b6515bec01873949bbc7` |
| 68 | `theorem` | [Cospherical.affineIndependent_of_mem_of_ne](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/cospherical-affineindependent-of-mem-of-ne.md) | 424 | `result-track:87e321d7f38fba88f914210578899a54ef11b160355b00b04a88de4bae6d91fe` |
| 69 | `theorem` | [Cospherical.affineIndependent_of_ne](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/cospherical-affineindependent-of-ne.md) | 433 | `result-track:61eaa79a6236bbbe36af6feb45498d0d75489ef801ad4b0390186e7018d873c1` |
| 70 | `theorem` | [inner_vsub_vsub_of_mem_sphere_of_mem_sphere](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/inner-vsub-vsub-of-mem-sphere-of-mem-sphere.md) | 443 | `result-track:2dacb063962c5cc7cc09613b107492165f377cf5a722e25a74a386f35e43b48e` |
| 71 | `theorem` | [Sphere.inner_vsub_center_midpoint_vsub](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/sphere-inner-vsub-center-midpoint-vsub.md) | 451 | `result-track:7672f0df704b1537e70173cf7397597fcce7e51dfa50a4dfd23bf79fc233a649` |
| 72 | `theorem` | [Sphere.dist_center_lt_radius_of_sbtw](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/sphere-dist-center-lt-radius-of-sbtw.md) | 460 | `result-track:82db32b606fd729ff1e0a861bb93d3a688e748e11ae30956f55a66ea025aeb54` |
| 73 | `theorem` | [Sphere.dist_center_midpoint_lt_radius](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/sphere-dist-center-midpoint-lt-radius.md) | 489 | `result-track:6adb510695ac01ee7c7a31ba93cf63b59c70c91014dbe556adaf2ca435a8d601` |
| 74 | `theorem` | [eq_of_mem_sphere_of_mem_sphere_of_mem_of_finrank_eq_two](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/eq-of-mem-sphere-of-mem-sphere-of-mem-of-finrank-eq-two.md) | 497 | `result-track:9ee3b609217cde54ee22f179d43c998039d9dbf745170690c765c12cf380aca8` |
| 75 | `theorem` | [eq_of_mem_sphere_of_mem_sphere_of_finrank_eq_two](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/eq-of-mem-sphere-of-mem-sphere-of-finrank-eq-two.md) | 507 | `result-track:ef3918a69305dd80ec5ae826525eb2c022922e260fd7ad6ddaffe3174b96d7da` |
| 76 | `theorem` | [inner_pos_or_eq_of_dist_le_radius](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/inner-pos-or-eq-of-dist-le-radius.md) | 516 | `result-track:719604bec75e20dced591d232c99cf585dbff7a3f0b6b8e0bf35958a82db2dbe` |
| 77 | `theorem` | [inner_nonneg_of_dist_le_radius](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/inner-nonneg-of-dist-le-radius.md) | 545 | `result-track:dde325f1bda9e1c315eb339ed76d34f30c9e48fff6062391930252e254e1c9e2` |
| 78 | `theorem` | [inner_pos_of_dist_lt_radius](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/inner-pos-of-dist-lt-radius.md) | 553 | `result-track:25d36b6a4629e49463c2ec725cbcca0ddf0cbf7585fd47b0243ec6aa7aaee983` |
| 79 | `theorem` | [inner_vsub_center_vsub_pos](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/inner-vsub-center-vsub-pos.md) | 562 | `result-track:191e8cc62d9d82820cc7aa7a4dfe10923f02cb32d3cb8e28cdb25128140e46da` |
| 80 | `theorem` | [wbtw_of_collinear_of_dist_center_le_radius](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/wbtw-of-collinear-of-dist-center-le-radius.md) | 575 | `result-track:fb0fda899c0dd741149674a2bc696667e22e8428c13f939825b3653ebcba3b39` |
| 81 | `theorem` | [sbtw_of_collinear_of_dist_center_lt_radius](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/sbtw-of-collinear-of-dist-center-lt-radius.md) | 582 | `result-track:449b5a2a087d9355adaca2535be780a01c2045fbfe4a0a159ab65e61bbc8d5e7` |
| 82 | `lemma` | [isDiameter_iff_mem_and_mem_and_dist](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/isdiameter-iff-mem-and-mem-and-dist.md) | 591 | `result-track:b10004728ec3e6c01385f7d526d0a9ba6261a51ce6993d44d68df47ece1f230f` |
| 83 | `lemma` | [isDiameter_iff_mem_and_mem_and_wbtw](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/isdiameter-iff-mem-and-mem-and-wbtw.md) | 600 | `result-track:876a35c37de72c970ff1d1648f1ab8dd4c76a12457c2a64b42c36dbd47d13ed9` |
| 84 | `theorem` | [center_mem_affineSpan_pair_iff_isDiameter](../../../../../Geometry/RealAndComplexGeometry/SphereBasicPublic.lean/declarations/center-mem-affinespan-pair-iff-isdiameter.md) | 609 | `result-track:5bf43b2abd308e335a83a26c9911d7f8e58614f74b3d10b74efd0c93aa12da77` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bd498f8253ea1b116009e6c91b89abcbd9371786e41e855f4744505015361cc7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant80a583b0409b46a462932b8eec9ba960bc92bb6da6172aa392c2e30b7903e6f4.lean","GRWTSK/_verification/specifications/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant80a583b0409b46a462932b8eec9ba960bc92bb6da6172aa392c2e30b7903e6f4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
