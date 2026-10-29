# Verification target: Tangent Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ebb9a37c11a420956e1454d1ec57bcab4564a6ed",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Tangent/Variant524d141d9e21b780d11fbb193c860776b1e7fbc963afd7b1b4c5630ef772467c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/index.md) · [Full source](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ebb9a37c11a420956e1454d1ec57bcab4564a6ed`.

Source path: `GRWTSK/Topology/MetricTopology/Tangent/Variant524d141d9e21b780d11fbb193c860776b1e7fbc963afd7b1b4c5630ef772467c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Tangent/Variant524d141d9e21b780d11fbb193c860776b1e7fbc963afd7b1b4c5630ef772467c.lean.json)

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
| 1 | `structure` | [IsTangentAt](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/istangentat.md) | 64 | `declaration-track:ec9ca9ddd2985b180b505c17b569c7cf2723fd44cf418c0254dfb1d73bff95bb` |
| 2 | `lemma` | [isTangentAt_orthRadius_iff_mem](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/istangentat-orthradius-iff-mem.md) | 69 | `result-track:9af4088df19daa96ee19968a313c59a537100690dca66d0d7da2565418d1cac1` |
| 3 | `lemma` | [IsTangentAt.inner_left_eq_zero_of_mem](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/istangentat-inner-left-eq-zero-of-mem.md) | 73 | `result-track:1e8a8dfc8ce0dd874912e9d2d9dc166d75228d61e638c76b3592542895297ddb` |
| 4 | `lemma` | [IsTangentAt.inner_right_eq_zero_of_mem](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/istangentat-inner-right-eq-zero-of-mem.md) | 77 | `result-track:9dedfdaa0cdc15d60a9e1d55a811e5997497fb6c2dd6ec5a249b7ad50e2784cb` |
| 5 | `lemma` | [IsTangentAt.eq_of_isTangentAt](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/istangentat-eq-of-istangentat.md) | 81 | `result-track:08354096310e7910b5084ff1c3965266374f88920d8d57416b81029351be835b` |
| 6 | `lemma` | [isTangentAt_center_iff](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/istangentat-center-iff.md) | 89 | `result-track:b40b076d0193c64680baa70f8202f391e8620dbf28a7028ad4d174f89cb80fe9` |
| 7 | `lemma` | [IsTangentAt.dist_sq_eq_of_mem](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/istangentat-dist-sq-eq-of-mem.md) | 100 | `result-track:42d9cf8dc34062488cbc687827a926e4b1c4f464d59b8b5b9fa23a50d3f4a805` |
| 8 | `lemma` | [IsTangentAt.mem_and_mem_iff_eq](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/istangentat-mem-and-mem-iff-eq.md) | 106 | `result-track:845483354a080199ef3d60e7357384ccd5178d096577e30168793daff1d4ce6d` |
| 9 | `lemma` | [IsTangentAt.eq_of_mem_of_mem](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/istangentat-eq-of-mem-of-mem.md) | 115 | `result-track:ce5ee2e60ccdfa2a4cf57305b4139348576b6cf40e460e3971d139bbfedbd91d` |
| 10 | `lemma` | [IsTangentAt.dist_eq_of_mem_of_mem](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/istangentat-dist-eq-of-mem-of-mem.md) | 121 | `result-track:de6a39ccaa30713e669b1b910ef7fe4c0481a3b05fb0ffa62c35c4f6ddb3250c` |
| 11 | `lemma` | [IsTangentAt.radius_lt_dist_center](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/istangentat-radius-lt-dist-center.md) | 130 | `result-track:9deb631413674caa4a84b32a7906b27cee7cf533e652ec9ec3c56065fff08737` |
| 12 | `lemma` | [IsTangentAt.eq_orthRadius_of_finrank_add_one_eq](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/istangentat-eq-orthradius-of-finrank-add-one-eq.md) | 137 | `result-track:1e8f3dd429d138df3a007087388cc5188db1c63cfb2898b26d53e980bb43e240` |
| 13 | `lemma` | [IsTangentAt.mem_polar_of_mem](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/istangentat-mem-polar-of-mem.md) | 147 | `result-track:797d476a36cb4ad071344925034960c1757e293fc5abf6f53aad1ebca85a75e3` |
| 14 | `def` | [IsTangent](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/istangent.md) | 152 | `declaration-track:f71a6a7876d0f6824178a3f1a49ed28558c22ff95f9cbfe24330b01ce8e650dd` |
| 15 | `lemma` | [IsTangentAt.isTangent](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/istangentat-istangent.md) | 155 | `result-track:58908abaf7cedba0c8e87662ae4dfeb1d44793539df3a3a0015ed3338950f304` |
| 16 | `lemma` | [isTangent_orthRadius_iff_mem](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/istangent-orthradius-iff-mem.md) | 159 | `result-track:db40155bfcc30e928e2f41391bb5b8a3fd2527c8604bcc8e379b56a89b496832` |
| 17 | `lemma` | [IsTangent.radius_le_dist_center](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/istangent-radius-le-dist-center.md) | 169 | `result-track:a89e1753ccef50f6a264768ef9a4604cd7151d9468cfd382ed1e2343739ade11` |
| 18 | `lemma` | [IsTangent.notMem_of_dist_lt](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/istangent-notmem-of-dist-lt.md) | 176 | `result-track:e13228812c89886e64239db8d70d85fa48985546a4dc68f0fb9e77f6b6410b61` |
| 19 | `lemma` | [IsTangent.infDist_eq_radius](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/istangent-infdist-eq-radius.md) | 181 | `result-track:ebd85d0a29bfc014019f5cc2290aecb96b0a06a6baa1c4059697e7bbb48edbf8` |
| 20 | `lemma` | [dist_orthogonalProjection_eq_radius_iff_isTangentAt](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/dist-orthogonalprojection-eq-radius-iff-istangentat.md) | 193 | `result-track:d61d708aaf667c0915ec4c3753bdd8475ec0d627946fa3c21ba821e1358e7b4b` |
| 21 | `lemma` | [dist_orthogonalProjection_eq_radius_iff_isTangent](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/dist-orthogonalprojection-eq-radius-iff-istangent.md) | 205 | `result-track:72953ff461e2fba6e3518eab69d897ae7670b4e451dda31ff9c600213d28299a` |
| 22 | `lemma` | [infDist_eq_radius_iff_isTangent](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/infdist-eq-radius-iff-istangent.md) | 211 | `result-track:12ab00aa34c373669660c1ba144a1cb266ae0fbe86fa5f477ae4a7516d5d842b` |
| 23 | `lemma` | [isTangent_iff_isTangentAt_orthogonalProjection](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/istangent-iff-istangentat-orthogonalprojection.md) | 216 | `result-track:557d7d3557d22c4b108c33b9453686b11de2fac02570d3bba88ecd74cd1e4dae` |
| 24 | `lemma` | [IsTangent.eq_orthRadius_or_eq_orthRadius_pointReflection_of_parallel_orthRadius](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/istangent-eq-orthradius-or-eq-orthradius-pointreflection-of-parallel-ort.md) | 224 | `result-track:5ba75277cc6034f5c0484eb12de0588f9cf2cbf8211acf1d0cc8a9927e585225` |
| 25 | `lemma` | [IsTangentAt.eq_orthogonalProjection](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/istangentat-eq-orthogonalprojection.md) | 258 | `result-track:059313bb9648b44c1f7f730551458cde04f7f8081d81c4e1f8dd2fa450012bd4` |
| 26 | `def` | [tangentSet](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/tangentset.md) | 268 | `declaration-track:c0201d36d4210908d33170dc053e36ec53791e9c2742157e37ba630fe8d352ad` |
| 27 | `lemma` | [mem_tangentSet_iff](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/mem-tangentset-iff.md) | 271 | `result-track:5fffd40e596a35ce16d555ab2e6ac187900c2dafab0a7f46da8a1d342306d7ca` |
| 28 | `lemma` | [isTangent_of_mem_tangentSet](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/istangent-of-mem-tangentset.md) | 275 | `result-track:7b4e0bd3e7e9340e4b65893b7039198572da696edf8c1d2da7d1a2fafa0ae180` |
| 29 | `def` | [tangentsFrom](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/tangentsfrom.md) | 281 | `declaration-track:d5c968038e63ed1f93d3528308b2276a95804df14548d5425c9393cb119a1582` |
| 30 | `lemma` | [mem_tangentsFrom_iff](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/mem-tangentsfrom-iff.md) | 284 | `result-track:aa38af8dceeb90991a765df3b0673e09452204ea53467279e02de49840c42217` |
| 31 | `lemma` | [mem_tangentSet_of_mem_tangentsFrom](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/mem-tangentset-of-mem-tangentsfrom.md) | 288 | `result-track:e866774d30c29da22ca002084f5d14f0a7742eb3b4e31db59f2e18194e89f721` |
| 32 | `lemma` | [mem_of_mem_tangentsFrom](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/mem-of-mem-tangentsfrom.md) | 292 | `result-track:2365b63561b8dfc0b543f5373f6461b514a3ecbf82c58aaf7525a8c72db7e17f` |
| 33 | `lemma` | [isTangent_of_mem_tangentsFrom](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/istangent-of-mem-tangentsfrom.md) | 296 | `result-track:a389d64050d4301476b9397600a9653b2351ec2dce010f574b341c1e67686748` |
| 34 | `lemma` | [tangentsFrom_eq_image_orthRadius_inter_polar](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/tangentsfrom-eq-image-orthradius-inter-polar.md) | 300 | `result-track:57c3cd758514e739f8f88f5ea32b5e5f29c8b3ce84617b2bf67c14e11e323166` |
| 35 | `lemma` | [orthRadius_mem_tangentsFrom_iff_mem_and_mem_polar](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/orthradius-mem-tangentsfrom-iff-mem-and-mem-polar.md) | 309 | `result-track:5558d397d904fe5db3f5e0cda4aa22d01d9b0a2150c969843e1530471232a1d6` |
| 36 | `lemma` | [tangentsFrom_eq_empty_of_dist_lt_radius](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/tangentsfrom-eq-empty-of-dist-lt-radius.md) | 314 | `result-track:11f6fb1f0a96077547061cb4c28ab0414e080f8b4f2a0a4f5095eb07cf3e307c` |
| 37 | `lemma` | [tangentsFrom_eq_singleton_orthRadius_of_mem](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/tangentsfrom-eq-singleton-orthradius-of-mem.md) | 323 | `result-track:9cf2bf238ba6df16be8cae366e14913a054a8f852da529a23497d42a900793c9` |
| 38 | `lemma` | [ncard_tangentsFrom_eq_two_of_radius_lt_dist](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/ncard-tangentsfrom-eq-two-of-radius-lt-dist.md) | 342 | `result-track:55967e4a49a17a68f9f725e621b97832a3ffc618694fba4e97acd008f04bc986` |
| 39 | `def` | [commonTangents](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/commontangents.md) | 352 | `declaration-track:ba094bd17a820f3a49ed5492d088fa0a3cf395c26373c72013bba6ea36944e50` |
| 40 | `lemma` | [mem_commonTangents_iff](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/mem-commontangents-iff.md) | 355 | `result-track:72609694d0bf82c49e7ae99c0cbaa88618dcefda8a75082b8ee8cf4469056f05` |
| 41 | `lemma` | [commonTangents_comm](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/commontangents-comm.md) | 359 | `result-track:0ce46c11ac199009d19a9f852723d199f2c8a37e8bf7b0fdb7e28954492d89af` |
| 42 | `def` | [commonIntTangents](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/commoninttangents.md) | 364 | `declaration-track:b94f67f817f1a33bc84f01bf4f7115a09f2c7f69fde793982db8be75eefebced` |
| 43 | `def` | [commonExtTangents](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/commonexttangents.md) | 371 | `declaration-track:60935324a4a276d16019fac29250926d99dc876d865e9c415fb57c52504112ed` |
| 44 | `lemma` | [mem_commonIntTangents_iff](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/mem-commoninttangents-iff.md) | 374 | `result-track:2d10ce721485edb27005f9e310e6bb3f472495f9b76e81fae157eb0b3a41294d` |
| 45 | `lemma` | [mem_commonExtTangents_iff](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/mem-commonexttangents-iff.md) | 379 | `result-track:d80fe9ed2d6cdcf0a511e32b615505ca02903000cb397ddf89e620ea19c169fb` |
| 46 | `lemma` | [commonIntTangents_union_commonExtTangents](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/commoninttangents-union-commonexttangents.md) | 384 | `result-track:e5d46c5e7048917f54f7857ba71141f335d02f3c8bd08dda24dd96985f4dd1a1` |
| 47 | `structure` | [IsExtTangentAt](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/isexttangentat.md) | 397 | `declaration-track:8b797e5492021fb518023848053e78ef5474b7848795cee5ab4931ca5ae610c7` |
| 48 | `lemma` | [IsExtTangentAt.symm](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/isexttangentat-symm.md) | 402 | `result-track:137019d003ccf82ae4d003f5e2d7022e733e07ece978855dc9c7773a113e0d77` |
| 49 | `lemma` | [isExtTangentAt_comm](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/isexttangentat-comm.md) | 408 | `result-track:f617766a5b95670a2b192398d92b4dbf9e636afae1caf7e6356b59cfb1a72674` |
| 50 | `lemma` | [isExtTangentAt_center_iff](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/isexttangentat-center-iff.md) | 412 | `result-track:e8bc49ad986b101067746102d0528c3776891b2e63c60dbd9c94a54fdd869240` |
| 51 | `structure` | [IsIntTangentAt](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/isinttangentat.md) | 426 | `declaration-track:2a71409b9c788337a8f161735ee76ebedb3e4f668b75c7ff00274667be659b6d` |
| 52 | `lemma` | [isIntTangentAt_center_iff](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/isinttangentat-center-iff.md) | 431 | `result-track:84b556b863924e3f7f728114fb2dae569a97edc74153b54508ee16c41d7293c9` |
| 53 | `lemma` | [isIntTangentAt_self_iff_mem](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/isinttangentat-self-iff-mem.md) | 442 | `result-track:c12c11d6c248972fa4c6326e97cb8ebf4f58930c897cb5956ad2c59ccf6bb27f` |
| 54 | `def` | [IsExtTangent](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/isexttangent.md) | 447 | `declaration-track:96804d3610134238f1780979ac3e207f8c85a73e3f09330d540c3cd93e93c0b5` |
| 55 | `lemma` | [IsExtTangent.symm](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/isexttangent-symm.md) | 450 | `result-track:d4fa70e099dcfb57372b44ac7c031b371e0c6a13dfcfcdd6390d52b5c9922eb1` |
| 56 | `lemma` | [isExtTangent_comm](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/isexttangent-comm.md) | 454 | `result-track:c0f4607ac85f36c16947eacd9f08840faf9c75d0709bab042ebe6c6bd7f6b732` |
| 57 | `def` | [IsIntTangent](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/isinttangent.md) | 458 | `declaration-track:649ed167e65f9d5a53013022912b07d010eb6acd1ae3dbd32fc353fb1b17eac6` |
| 58 | `lemma` | [IsExtTangentAt.isExtTangent](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/isexttangentat-isexttangent.md) | 461 | `result-track:fb979bfb0bcfae93ff903644b68b3336343d1fa5e81e5740d40f4a31a4e854ae` |
| 59 | `lemma` | [IsIntTangentAt.isIntTangent](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/isinttangentat-isinttangent.md) | 465 | `result-track:842cb5fb72a82a7e3c6e3465bf0727a108b78a26d63b7681e9c240f4275ac9ed` |
| 60 | `lemma` | [isIntTangent_self_iff](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/isinttangent-self-iff.md) | 469 | `result-track:f39b532bd41c49f842ddeb21f8b113839562c1e401e86422e22bffefeba6fa26` |
| 61 | `lemma` | [IsExtTangent.dist_center](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/isexttangent-dist-center.md) | 475 | `result-track:10d8eacf95bb67e2380af6b2b08be1d903405b33c1ebd5834490d1228be94cd8` |
| 62 | `lemma` | [IsIntTangent.dist_center](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/isinttangent-dist-center.md) | 481 | `result-track:b5d22f4491b0e506374040376bb9ada628c4fafa169601bd3c51be8f85020d97` |
| 63 | `lemma` | [isExtTangent_iff_dist_center](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/isexttangent-iff-dist-center.md) | 487 | `result-track:47671f5512fb0d3949d29096633c6f289e533e8648737cb6c671aa8e195889e5` |
| 64 | `lemma` | [isIntTangent_iff_dist_center](../../../../../Geometry/RealAndComplexGeometry/TangentPublic.lean/declarations/isinttangent-iff-dist-center.md) | 511 | `result-track:c0ebb7cbe7a666bf20e9a6d7a2311056689d15b8677748a3c920ed5859a9b47d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5297fffe2edb19cfe366ce1b56845c438a3574bb94e429cb8d5f0944d2115930 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Tangent/Variant524d141d9e21b780d11fbb193c860776b1e7fbc963afd7b1b4c5630ef772467c.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Tangent/Variant524d141d9e21b780d11fbb193c860776b1e7fbc963afd7b1b4c5630ef772467c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
