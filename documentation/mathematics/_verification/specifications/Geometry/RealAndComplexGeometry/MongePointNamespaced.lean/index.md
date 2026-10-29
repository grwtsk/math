# Verification target: Monge Point Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8a75383f74bce4a0176f0d5a0d927c00b5f87ef",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant0c08c4d71577776d0739678039e0b1722c202f7a20c5b5676d14b6637c1c2254.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespaced.lean/index.md) · [Full source](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8a75383f74bce4a0176f0d5a0d927c00b5f87ef`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant0c08c4d71577776d0739678039e0b1722c202f7a20c5b5676d14b6637c1c2254.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant0c08c4d71577776d0739678039e0b1722c202f7a20c5b5676d14b6637c1c2254.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Euclidean.Altitude` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Euclidean.Circumcenter` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mongePoint](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespaced.lean/declarations/mongepoint.md) | 79 | `declaration-track:7b5355211d68da7a2bbb66202041d3975b0b8cb62f3c2014f19f529a9d970074` |
| 2 | `theorem` | [mongePoint_eq_smul_vsub_vadd_circumcenter](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespaced.lean/declarations/mongepoint-eq-smul-vsub-vadd-circumcenter.md) | 86 | `result-track:cf997267ff5c97c435b6c18e8e1395fe15ec49694e059ff15c4236104e4bb1eb` |
| 3 | `theorem` | [mongePoint_mem_affineSpan](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespaced.lean/declarations/mongepoint-mem-affinespan.md) | 94 | `result-track:6a7bcb7acd1a6eba941985b8e679b7c9a7862870992cb66f50813342bf04aa50` |
| 4 | `theorem` | [mongePoint_eq_of_range_eq](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespaced.lean/declarations/mongepoint-eq-of-range-eq.md) | 100 | `result-track:0847bb7fa470d4ff87ed07dbf7c480688318d26591d2952ef19141e8e76c2035` |
| 5 | `def` | [mongePointWeightsWithCircumcenter](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespaced.lean/declarations/mongepointweightswithcircumcenter.md) | 107 | `declaration-track:c5e18bcc310dc38ae5520cc130d8439a74366c9c591e0e8e9f074ffe4e05e07b` |
| 6 | `theorem` | [sum_mongePointWeightsWithCircumcenter](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespaced.lean/declarations/sum-mongepointweightswithcircumcenter.md) | 113 | `result-track:0ae6939f65fb444a19f57577fbd480aae449d2b8d5a9a178c33a9b01822e612b` |
| 7 | `theorem` | [mongePoint_eq_affineCombination_of_pointsWithCircumcenter](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespaced.lean/declarations/mongepoint-eq-affinecombination-of-pointswithcircumcenter.md) | 122 | `result-track:a1385bfd73fa1a2dfe3ba67100edbc050e85be4257973c0d5a0df9530529a2e6` |
| 8 | `def` | [mongePointVSubFaceCentroidWeightsWithCircumcenter](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespaced.lean/declarations/mongepointvsubfacecentroidweightswithcircumcenter.md) | 151 | `declaration-track:10ea0e86f088dc6847c2f67e292b55d6f28c536d0bf2906461c4d360c2a877d5` |
| 9 | `theorem` | [mongePointVSubFaceCentroidWeightsWithCircumcenter_eq_sub](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespaced.lean/declarations/mongepointvsubfacecentroidweightswithcircumcenter-eq-sub.md) | 159 | `result-track:5383ba87139360a93c21f8840fae8c113db8e1146f4fe8f824ae0a05bb60ccb6` |
| 10 | `theorem` | [sum_mongePointVSubFaceCentroidWeightsWithCircumcenter](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespaced.lean/declarations/sum-mongepointvsubfacecentroidweightswithcircumcenter.md) | 176 | `result-track:c33415090e9afe4fc0f23ebbcbf79fdcc96fbf758e9a45bc08b36bd211b93b94` |
| 11 | `theorem` | [mongePoint_vsub_face_centroid_eq_weightedVSub_of_pointsWithCircumcenter](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespaced.lean/declarations/mongepoint-vsub-face-centroid-eq-weightedvsub-of-pointswithcircumcenter.md) | 185 | `result-track:31d83f5b3d097abd70775fe09cc8675dd7ee9e6b6f93159b86139bceb3ed50fc` |
| 12 | `theorem` | [inner_mongePoint_vsub_face_centroid_vsub](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespaced.lean/declarations/inner-mongepoint-vsub-face-centroid-vsub.md) | 197 | `result-track:2672c367b97f6e515fc529747081f03ca2d46da4a759c7dce4d29f4520970b05` |
| 13 | `def` | [mongePlane](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespaced.lean/declarations/mongeplane.md) | 234 | `declaration-track:77c1a9aec7588d8002238c39f88d005967d77db59287528cfe7b3893313d40b3` |
| 14 | `theorem` | [mongePlane_def](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespaced.lean/declarations/mongeplane-def.md) | 239 | `result-track:ad3fb3f107a3dcf2363f4e11c45df5004155ad9594e62def8fef9b6baed23c70` |
| 15 | `theorem` | [mongePlane_comm](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespaced.lean/declarations/mongeplane-comm.md) | 248 | `result-track:7e74b2d545e9de2ce46a3c426ba48768a13f72d1f302414322ad05fa6cf7bd2c` |
| 16 | `theorem` | [mongePoint_mem_mongePlane](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespaced.lean/declarations/mongepoint-mem-mongeplane.md) | 260 | `result-track:cef035293a1dc586002d7a010ea03ec1c20f7185c260339b7bb0754fbcb642b9` |
| 17 | `theorem` | [direction_mongePlane](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespaced.lean/declarations/direction-mongeplane.md) | 270 | `result-track:f4e6d04fab43ff95242f1a9e4da9ec6f4d7bc0d8b4ba10aa3743448bc692565c` |
| 18 | `theorem` | [eq_mongePoint_of_forall_mem_mongePlane](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespaced.lean/declarations/eq-mongepoint-of-forall-mem-mongeplane.md) | 278 | `result-track:4a6f3808d98c96dcf566ce35b6842246affc6c7081f5e71a6db33437104d67fc` |
| 19 | `def` | [orthocenter](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespaced.lean/declarations/orthocenter.md) | 321 | `declaration-track:1267cab1749d27bef57fda168e54f58ad791488f15cf6fd902fb3a4f1e99f412` |
| 20 | `theorem` | [orthocenter_eq_mongePoint](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespaced.lean/declarations/orthocenter-eq-mongepoint.md) | 325 | `result-track:ede4b888c3547545966f26115065c5e0d9eeee73e9e09a2fb77e7fe95a001c6f` |
| 21 | `theorem` | [orthocenter_eq_smul_vsub_vadd_circumcenter](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespaced.lean/declarations/orthocenter-eq-smul-vsub-vadd-circumcenter.md) | 330 | `result-track:8f58cb36c837fde31b1a3d129190784072f7e099630aca18e9b3e69352660ed0` |
| 22 | `theorem` | [orthocenter_mem_affineSpan](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespaced.lean/declarations/orthocenter-mem-affinespan.md) | 338 | `result-track:8c313c48039cb8e1863686347f2685486beea68a2e70b882d1380e2e4db085cb` |
| 23 | `theorem` | [orthocenter_eq_of_range_eq](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespaced.lean/declarations/orthocenter-eq-of-range-eq.md) | 343 | `result-track:c9a27a6701075e4b709ddc69aea392f5469f314d92f26bb60ce791ad426edc35` |
| 24 | `theorem` | [altitude_eq_mongePlane](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespaced.lean/declarations/altitude-eq-mongeplane.md) | 349 | `result-track:10cf8d36cc700d12684246c8190771a627e99f9a1b6efe48a8cc2396fa9c14a8` |
| 25 | `theorem` | [orthocenter_mem_altitude](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespaced.lean/declarations/orthocenter-mem-altitude.md) | 358 | `result-track:92895c3c8e30a9c2a5b1e40ec2eab8633ebbbd6d1d1c6317af9b97edb58bf9cd` |
| 26 | `theorem` | [eq_orthocenter_of_forall_mem_altitude](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespaced.lean/declarations/eq-orthocenter-of-forall-mem-altitude.md) | 367 | `result-track:a4eb524ddd2a9f546b3dfb4ea1346c34de1103370b6bf39b5a0fea6e9b33171c` |
| 27 | `theorem` | [dist_orthocenter_reflection_circumcenter](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespaced.lean/declarations/dist-orthocenter-reflection-circumcenter.md) | 383 | `result-track:53b9d65ad021181f0fdbf4f55518ab0949fe210384ca8c7aef85932934683837` |
| 28 | `theorem` | [dist_orthocenter_reflection_circumcenter_finset](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespaced.lean/declarations/dist-orthocenter-reflection-circumcenter-finset.md) | 403 | `result-track:8149e4eed5b72af9cfeb43bf290d4cf4529b31efdb55c714c5a7ec4f08e37648` |
| 29 | `theorem` | [affineSpan_orthocenter_point_le_altitude](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespaced.lean/declarations/affinespan-orthocenter-point-le-altitude.md) | 413 | `result-track:b5578c62b255a1983d4f95a6169dc456246eca4a86b2ab08769d71d99dfc922c` |
| 30 | `theorem` | [altitude_replace_orthocenter_eq_affineSpan](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespaced.lean/declarations/altitude-replace-orthocenter-eq-affinespan.md) | 423 | `result-track:127ea731c49168e2632db44d18418fa252b2e6677a131cf1a9654450a721bf7c` |
| 31 | `theorem` | [orthocenter_replace_orthocenter_eq_point](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespaced.lean/declarations/orthocenter-replace-orthocenter-eq-point.md) | 470 | `result-track:9a9fdb61a7ffc13f601b1c3819fc0788072a06a5b9bb2e06f706e68e89c16b5c` |
| 32 | `def` | [OrthocentricSystem](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespaced.lean/declarations/orthocentricsystem.md) | 493 | `declaration-track:ec9f9da19155cf1a42240b8ee7d9b8ee60074488fe05eb21907b8c3a75e26804` |
| 33 | `theorem` | [exists_of_range_subset_orthocentricSystem](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespaced.lean/declarations/exists-of-range-subset-orthocentricsystem.md) | 505 | `result-track:15a59e4010d4913f83fff21833ebb6c80e942f165962c33a74414362c8b02bdc` |
| 34 | `theorem` | [exists_dist_eq_circumradius_of_subset_insert_orthocenter](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespaced.lean/declarations/exists-dist-eq-circumradius-of-subset-insert-orthocenter.md) | 541 | `result-track:412d053d287c2aaafb09a48dd05dd85da561628be46fb776c8914d30e5cef338` |
| 35 | `theorem` | [OrthocentricSystem.affineIndependent](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespaced.lean/declarations/orthocentricsystem-affineindependent.md) | 570 | `result-track:06f6456cbf01d36a121b5ee64818907fd5c9647d999df8eca02a552434025339` |
| 36 | `theorem` | [affineSpan_of_orthocentricSystem](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespaced.lean/declarations/affinespan-of-orthocentricsystem.md) | 579 | `result-track:8dd11d64ab5593f9001abdcd0b5112a2a84503dbe99adf2e3bb11cdb6a0c8a9b` |
| 37 | `theorem` | [OrthocentricSystem.exists_circumradius_eq](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespaced.lean/declarations/orthocentricsystem-exists-circumradius-eq.md) | 595 | `result-track:ab4046812fb88b292faac07efa69a7b1638c1a3e513ee567b1bd99d7fcaef021` |
| 38 | `theorem` | [OrthocentricSystem.eq_insert_orthocenter](../../../../../Geometry/RealAndComplexGeometry/MongePointNamespaced.lean/declarations/orthocentricsystem-eq-insert-orthocenter.md) | 615 | `result-track:bc324e3db1ba1fca89645a2972e64a80984f8875fb4c2d252c3f6c0b21ea004e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2c81b9d2637c9d907d233665a19a297363f3fec7f098778b9a097a195d5dc194 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant0c08c4d71577776d0739678039e0b1722c202f7a20c5b5676d14b6637c1c2254.lean","GRWTSK/_verification/specifications/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant0c08c4d71577776d0739678039e0b1722c202f7a20c5b5676d14b6637c1c2254.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
