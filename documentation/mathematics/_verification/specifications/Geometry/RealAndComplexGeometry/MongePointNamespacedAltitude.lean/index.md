# Verification target: Monge Point Namespaced Altitude

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1279a2e7b96731c6a97969d3d022508edc7025df",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant378a2a383df7a5d5ad1b64c8ea2d2a4bd5d0826eebe57027f4a51f56aabbcb8e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespacedAltitude.lean/index.md) · [Full source](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespacedAltitude.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1279a2e7b96731c6a97969d3d022508edc7025df`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant378a2a383df7a5d5ad1b64c8ea2d2a4bd5d0826eebe57027f4a51f56aabbcb8e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant378a2a383df7a5d5ad1b64c8ea2d2a4bd5d0826eebe57027f4a51f56aabbcb8e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Euclidean.Circumcenter` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mongePoint](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespacedAltitude.lean/declarations/mongepoint.md) | 89 | `declaration-track:3e1ccac8bfa85d6d011feec10a85988ee8f32ca403c65655bd9f79f0a3519c02` |
| 2 | `theorem` | [mongePoint_eq_smul_vsub_vadd_circumcenter](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespacedAltitude.lean/declarations/mongepoint-eq-smul-vsub-vadd-circumcenter.md) | 97 | `result-track:c5c6273db987b2c2c1853e0deddc96b2a7558ef6bec943ac817b43c68d5f5b91` |
| 3 | `theorem` | [mongePoint_mem_affineSpan](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespacedAltitude.lean/declarations/mongepoint-mem-affinespan.md) | 106 | `result-track:2ba59e8d1a60e70fc1bce02dfc64060e4f125150db4bc74c38b64b0f0501a1f0` |
| 4 | `theorem` | [mongePoint_eq_of_range_eq](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespacedAltitude.lean/declarations/mongepoint-eq-of-range-eq.md) | 113 | `result-track:ff366a8a3b4bb282954cf31c6dd57bdd1afe936ec5526964c0623995faf86701` |
| 5 | `def` | [mongePointWeightsWithCircumcenter](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespacedAltitude.lean/declarations/mongepointweightswithcircumcenter.md) | 121 | `declaration-track:a6dad327de0553d88c63541025fd832ca82e2f8e714344b2d555eaf527edcce2` |
| 6 | `theorem` | [sum_mongePointWeightsWithCircumcenter](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespacedAltitude.lean/declarations/sum-mongepointweightswithcircumcenter.md) | 128 | `result-track:f7e2a2d8294170a7bc174f04e16a301e86df2999abe4d320b8312169b9a09798` |
| 7 | `theorem` | [mongePoint_eq_affineCombination_of_pointsWithCircumcenter](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespacedAltitude.lean/declarations/mongepoint-eq-affinecombination-of-pointswithcircumcenter.md) | 140 | `result-track:8d3755dd8daec045ec3bd441425e914a595cd20955b1b0b4183848e41ac30312` |
| 8 | `def` | [mongePointVSubFaceCentroidWeightsWithCircumcenter](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespacedAltitude.lean/declarations/mongepointvsubfacecentroidweightswithcircumcenter.md) | 170 | `declaration-track:94b366c428b51e29eead273764c7a6fa7b270f2a9c06c3989c74c51f38c96105` |
| 9 | `theorem` | [mongePointVSubFaceCentroidWeightsWithCircumcenter_eq_sub](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespacedAltitude.lean/declarations/mongepointvsubfacecentroidweightswithcircumcenter-eq-sub.md) | 179 | `result-track:7356a9eeb143eeb1122772c59d0eeb113c96e29bee25c0bfeb51d1f3b6d6aa1b` |
| 10 | `theorem` | [sum_mongePointVSubFaceCentroidWeightsWithCircumcenter](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespacedAltitude.lean/declarations/sum-mongepointvsubfacecentroidweightswithcircumcenter.md) | 197 | `result-track:4fc762d3846e9d6ee2c37718eb880e224fc203dc386b6bfeaedcd24c888bdf02` |
| 11 | `theorem` | [mongePoint_vsub_face_centroid_eq_weightedVSub_of_pointsWithCircumcenter](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespacedAltitude.lean/declarations/mongepoint-vsub-face-centroid-eq-weightedvsub-of-pointswithcircumcenter.md) | 207 | `result-track:9aa9fb17e8688a00685630cfee15509d03f5ab79906fbc999d0e5c03c728e93b` |
| 12 | `theorem` | [inner_mongePoint_vsub_face_centroid_vsub](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespacedAltitude.lean/declarations/inner-mongepoint-vsub-face-centroid-vsub.md) | 220 | `result-track:ef9237e5c4c6a835b92279409f8e36656304a42c50be5b7715aaf529ebda08ec` |
| 13 | `def` | [mongePlane](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespacedAltitude.lean/declarations/mongeplane.md) | 258 | `declaration-track:0b0eb878df63f9c9c278b3ae8a40d3984c174417c811e0875c916392decb0c15` |
| 14 | `theorem` | [mongePlane_def](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespacedAltitude.lean/declarations/mongeplane-def.md) | 264 | `result-track:7ac0b8b35854194208fb5e6283f84e453cf7bca57ed2542b7fd6789773b0cd89` |
| 15 | `theorem` | [mongePlane_comm](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespacedAltitude.lean/declarations/mongeplane-comm.md) | 274 | `result-track:8deac3bf40ed25bf6a9216faefbcdb6776b8699c10917f786fcc2367aef09d73` |
| 16 | `theorem` | [mongePoint_mem_mongePlane](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespacedAltitude.lean/declarations/mongepoint-mem-mongeplane.md) | 287 | `result-track:51ddcb74bed930ea9fadc229888fbdd12cf4f585a725d5a74d1f340ad85fe6a4` |
| 17 | `theorem` | [direction_mongePlane](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespacedAltitude.lean/declarations/direction-mongeplane.md) | 298 | `result-track:cf5bb20909e4f04bbef009c6d7981bf22732e28a005b8914d477438144d7185f` |
| 18 | `theorem` | [eq_mongePoint_of_forall_mem_mongePlane](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespacedAltitude.lean/declarations/eq-mongepoint-of-forall-mem-mongeplane.md) | 307 | `result-track:9c01b5de40be3759b93490e40693f7ba65c0e4afd573794f4daa178397654bd6` |
| 19 | `def` | [altitude](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespacedAltitude.lean/declarations/altitude.md) | 342 | `declaration-track:e0054b7ab9d9342cddad5c485ffd9d1d079e48dc1e03463a156f3a6925046f56` |
| 20 | `theorem` | [altitude_def](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespacedAltitude.lean/declarations/altitude-def.md) | 348 | `result-track:6fcba7cbb95675c84f1470b53e29146e4de1f8897158919423fab515f7898357` |
| 21 | `theorem` | [mem_altitude](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespacedAltitude.lean/declarations/mem-altitude.md) | 356 | `result-track:33aa804951bd64b551808df3d64b71300b7739def6170492310d4f1ddb05bdb2` |
| 22 | `theorem` | [direction_altitude](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespacedAltitude.lean/declarations/direction-altitude.md) | 362 | `result-track:8582cb290c51e1c0ce822feaf6610ca91064e93d873d5ec3d5ad65364b1ee158` |
| 23 | `theorem` | [vectorSpan_isOrtho_altitude_direction](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespacedAltitude.lean/declarations/vectorspan-isortho-altitude-direction.md) | 372 | `result-track:f26e970156f4741087dfb25679fee07bb541459efad0ff662dd5f5b6fb2df20e` |
| 24 | `instance` | [finiteDimensional_direction_altitude](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespacedAltitude.lean/declarations/finitedimensional-direction-altitude.md) | 381 | `declaration-track:4c61764fae49dc0559b12c7fbfeb39691a9b6dcd6abfe6c356f5a2cfa0c52576` |
| 25 | `theorem` | [finrank_direction_altitude](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespacedAltitude.lean/declarations/finrank-direction-altitude.md) | 389 | `result-track:22652bf37f8c8faafa898b5715751ee3bdf3fb1798f7602be744cf282906e395` |
| 26 | `theorem` | [affineSpan_pair_eq_altitude_iff](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespacedAltitude.lean/declarations/affinespan-pair-eq-altitude-iff.md) | 402 | `result-track:6c52734be194acca3525bd998b0d8096a585a9f46234faad9b56625acd958280` |
| 27 | `def` | [orthocenter](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespacedAltitude.lean/declarations/orthocenter.md) | 448 | `declaration-track:32736da6d304cd6057fb095cd5cfa7036467fd75804826af429ad38013b91e26` |
| 28 | `theorem` | [orthocenter_eq_mongePoint](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespacedAltitude.lean/declarations/orthocenter-eq-mongepoint.md) | 453 | `result-track:0d4a105c204d917147c797309db21836adefd72933a8222ed58a8cd4af23459b` |
| 29 | `theorem` | [orthocenter_eq_smul_vsub_vadd_circumcenter](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespacedAltitude.lean/declarations/orthocenter-eq-smul-vsub-vadd-circumcenter.md) | 459 | `result-track:91d33d756d26e013390441087f5dd326ce0a2496b39ffa90ef3d23c7ff633d37` |
| 30 | `theorem` | [orthocenter_mem_affineSpan](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespacedAltitude.lean/declarations/orthocenter-mem-affinespan.md) | 468 | `result-track:e76c4441f8a6c3b2bc6ebd809aac835211139a8eca02acce4f36650c2414a390` |
| 31 | `theorem` | [orthocenter_eq_of_range_eq](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespacedAltitude.lean/declarations/orthocenter-eq-of-range-eq.md) | 474 | `result-track:455885afc379cc18fd2aad3c4117ed6c8859f39ad329eb371a16200824d55b28` |
| 32 | `theorem` | [altitude_eq_mongePlane](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespacedAltitude.lean/declarations/altitude-eq-mongeplane.md) | 481 | `result-track:feafa90c318ed0d52e7ea3677ae6de07e3b11c0e1cb172a31cba60864b62f0d3` |
| 33 | `theorem` | [orthocenter_mem_altitude](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespacedAltitude.lean/declarations/orthocenter-mem-altitude.md) | 498 | `result-track:22f422f7c5cb15bed118a371fd6e2b7e71a8c63795267fdd1f33d06c9ee6f6d2` |
| 34 | `theorem` | [eq_orthocenter_of_forall_mem_altitude](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespacedAltitude.lean/declarations/eq-orthocenter-of-forall-mem-altitude.md) | 509 | `result-track:73aa6c8326d828bc9abe1f4047b7a7059dc02919256be525a9435c4bb48fc2f6` |
| 35 | `theorem` | [dist_orthocenter_reflection_circumcenter](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespacedAltitude.lean/declarations/dist-orthocenter-reflection-circumcenter.md) | 532 | `result-track:9a54edd68489d9bafce4edc8d778d9cce7747dfc0ccf301bf56384d6e1c956f5` |
| 36 | `theorem` | [dist_orthocenter_reflection_circumcenter_finset](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespacedAltitude.lean/declarations/dist-orthocenter-reflection-circumcenter-finset.md) | 558 | `result-track:ef41c6a4663b60cffd0aa8eb325437ec7ef49948a3892ae422722f7a72c3ece8` |
| 37 | `theorem` | [affineSpan_orthocenter_point_le_altitude](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespacedAltitude.lean/declarations/affinespan-orthocenter-point-le-altitude.md) | 569 | `result-track:81fd09b3480fe8d4abca74bb90001f0b300869ca887c0a3cabb59d8bb58efc9d` |
| 38 | `theorem` | [altitude_replace_orthocenter_eq_affineSpan](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespacedAltitude.lean/declarations/altitude-replace-orthocenter-eq-affinespan.md) | 580 | `result-track:035338437fb2b189aca47dd6d3e8272ce48ea243cd4f033131d9584ea8e42b48` |
| 39 | `theorem` | [orthocenter_replace_orthocenter_eq_point](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespacedAltitude.lean/declarations/orthocenter-replace-orthocenter-eq-point.md) | 628 | `result-track:86f11b66f4e1ecf3350b4b830db90d76469ad8e8873ffe1c32e76a57144fb4fe` |
| 40 | `def` | [OrthocentricSystem](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespacedAltitude.lean/declarations/orthocentricsystem.md) | 652 | `declaration-track:7a6c81ad1652f6583bf7999d0f973c4398575836b9a4b7acd161d751ff9b15dd` |
| 41 | `theorem` | [exists_of_range_subset_orthocentricSystem](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespacedAltitude.lean/declarations/exists-of-range-subset-orthocentricsystem.md) | 665 | `result-track:e73f15ea45a0562a7c908db1adfaaf4e8d57367267809d520768ee294cb9147b` |
| 42 | `theorem` | [exists_dist_eq_circumradius_of_subset_insert_orthocenter](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespacedAltitude.lean/declarations/exists-dist-eq-circumradius-of-subset-insert-orthocenter.md) | 701 | `result-track:dfb24f22958475d4fcba8770333ea15a9673bc9960c1b778d2609b6c6768a31f` |
| 43 | `theorem` | [OrthocentricSystem.affineIndependent](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespacedAltitude.lean/declarations/orthocentricsystem-affineindependent.md) | 731 | `result-track:6dfc694ba805c3631536e0ca89f4e14387f8aceb2eb8abdac2a4432e619f32bf` |
| 44 | `theorem` | [affineSpan_of_orthocentricSystem](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespacedAltitude.lean/declarations/affinespan-of-orthocentricsystem.md) | 741 | `result-track:c24ab363ede458315518d36185e837e63518b79e364213389b6af6923d666749` |
| 45 | `theorem` | [OrthocentricSystem.exists_circumradius_eq](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespacedAltitude.lean/declarations/orthocentricsystem-exists-circumradius-eq.md) | 758 | `result-track:046312966cde978559f74afbc07ea870ecbb9ad5effa97ee762fc5fee82cc1d3` |
| 46 | `theorem` | [OrthocentricSystem.eq_insert_orthocenter](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespacedAltitude.lean/declarations/orthocentricsystem-eq-insert-orthocenter.md) | 779 | `result-track:893cdb91defd5270b847eccc548d117b2a85fe4107e524365d18ecb04d3e6876` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=08b3e0c3321e9f1e5b26319d3ca04a0071fce159358e80379bcdeef0d6551187 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant378a2a383df7a5d5ad1b64c8ea2d2a4bd5d0826eebe57027f4a51f56aabbcb8e.lean","GRWTSK/_verification/specifications/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant378a2a383df7a5d5ad1b64c8ea2d2a4bd5d0826eebe57027f4a51f56aabbcb8e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
