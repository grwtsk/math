# Verification target: Topology Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51283a0c387734d1c7798d121795287ba19867c4",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Topology/Variant5b71aa0b36ed1dc76a7a946c4d1c6eebcfbb98ec441acf957df3ded4699a8d14.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TopologyNamespacedPublic.lean/index.md) · [Full source](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TopologyNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51283a0c387734d1c7798d121795287ba19867c4`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Topology/Variant5b71aa0b36ed1dc76a7a946c4d1c6eebcfbb98ec441acf957df3ded4699a8d14.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Topology/Variant5b71aa0b36ed1dc76a7a946c4d1c6eebcfbb98ec441acf957df3ded4699a8d14.lean.json)

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
| 1 | `lemma` | [closedBall_eq_segment](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TopologyNamespacedPublic.lean/declarations/closedball-eq-segment.md) | 46 | `result-track:654ec7ca90eb574a0e339c691f5d74c16c67cf19b20fc33e18c1caaa20ce3d90` |
| 2 | `lemma` | [ball_eq_openSegment](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TopologyNamespacedPublic.lean/declarations/ball-eq-opensegment.md) | 49 | `result-track:8af93c3518565ad795a7dab7e2fd829f29d19b539eb6002101622f3ac0d4f32e` |
| 3 | `theorem` | [convex_iff_isPreconnected](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TopologyNamespacedPublic.lean/declarations/convex-iff-ispreconnected.md) | 52 | `result-track:48d3385fe4c2b165a30ba5180ca8f5c61325b65f7da72a27076550a6c3c19b75` |
| 4 | `theorem` | [segment_subset_closure_openSegment](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TopologyNamespacedPublic.lean/declarations/segment-subset-closure-opensegment.md) | 67 | `result-track:366b2877cc8f3da60e13d628253a8443068b3a0f481ca8e55b98ccac0ac74693` |
| 5 | `theorem` | [closure_openSegment](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TopologyNamespacedPublic.lean/declarations/closure-opensegment.md) | 81 | `result-track:443db42321146dc6fbbcb2ef39397edb2ef905009a4e0157d64fa3648617a7ca` |
| 6 | `theorem` | [Convex.combo_interior_closure_subset_interior](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TopologyNamespacedPublic.lean/declarations/convex-combo-interior-closure-subset-interior.md) | 96 | `result-track:b9d1d3442872fb27c80ab62d2d5d8fcf5733bb1ca6d3550499a9b484d422958b` |
| 7 | `theorem` | [Convex.combo_interior_self_subset_interior](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TopologyNamespacedPublic.lean/declarations/convex-combo-interior-self-subset-interior.md) | 108 | `result-track:2a20bddd270de4a70fe4c4d1c060fef6a0d7ba03eb772558294f314988a61da8` |
| 8 | `theorem` | [Convex.combo_closure_interior_subset_interior](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TopologyNamespacedPublic.lean/declarations/convex-combo-closure-interior-subset-interior.md) | 117 | `result-track:f19e5cf85d37d496df56d51f75008e927b5f83559a42f42c76024e35dfbb3d4d` |
| 9 | `theorem` | [Convex.combo_self_interior_subset_interior](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TopologyNamespacedPublic.lean/declarations/convex-combo-self-interior-subset-interior.md) | 124 | `result-track:aae0e3b198440e7754b6aa6485d8ead55b0c5f80806ed5ed580ff37e30af82f0` |
| 10 | `theorem` | [Convex.combo_interior_closure_mem_interior](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TopologyNamespacedPublic.lean/declarations/convex-combo-interior-closure-mem-interior.md) | 129 | `result-track:334ddfa19045e8797c935254aea9400d89fe18402e8ade014228ec1521a327e0` |
| 11 | `theorem` | [Convex.combo_interior_self_mem_interior](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TopologyNamespacedPublic.lean/declarations/convex-combo-interior-self-mem-interior.md) | 135 | `result-track:33578facc10b99e083245af4f92c61144b55c5d8a778c34bb6a6cafb18571e55` |
| 12 | `theorem` | [Convex.combo_closure_interior_mem_interior](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TopologyNamespacedPublic.lean/declarations/convex-combo-closure-interior-mem-interior.md) | 140 | `result-track:5eb0e8d324e9c16819bf6aaac8c0595a59357676434e37a98b23a93d0695265e` |
| 13 | `theorem` | [Convex.combo_self_interior_mem_interior](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TopologyNamespacedPublic.lean/declarations/convex-combo-self-interior-mem-interior.md) | 146 | `result-track:5f54dc201f0fa1bf54255d42ffcbb1682446adb99dd8d4cd90a9a2c472549cf4` |
| 14 | `theorem` | [Convex.openSegment_interior_closure_subset_interior](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TopologyNamespacedPublic.lean/declarations/convex-opensegment-interior-closure-subset-interior.md) | 151 | `result-track:fced2b484a0f73315c78ab08d1465e3bfc4ce1af340d08aef9d4ae761416131c` |
| 15 | `theorem` | [Convex.openSegment_interior_self_subset_interior](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TopologyNamespacedPublic.lean/declarations/convex-opensegment-interior-self-subset-interior.md) | 156 | `result-track:2811e8032e0bae7f966b20e87f6b00bf144fa595875920f9e0f1c6364e487db5` |
| 16 | `theorem` | [Convex.openSegment_closure_interior_subset_interior](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TopologyNamespacedPublic.lean/declarations/convex-opensegment-closure-interior-subset-interior.md) | 160 | `result-track:b46f1cfd3a388f7adb951d4b5427ed612cd7fa5a7a9917434e658159bb72b6ea` |
| 17 | `theorem` | [Convex.openSegment_self_interior_subset_interior](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TopologyNamespacedPublic.lean/declarations/convex-opensegment-self-interior-subset-interior.md) | 165 | `result-track:8137dc8e67a729a6acf2d863c15fab3a8909541a2aacb145f2834170b515d374` |
| 18 | `theorem` | [Convex.add_smul_sub_mem_interior'](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TopologyNamespacedPublic.lean/declarations/convex-add-smul-sub-mem-interior.md) | 175 | `result-track:882dc33a5b506136fd5b4ebaab2049ea9979f31060d11b4c0d0bbb74b2bf4a9d` |
| 19 | `theorem` | [Convex.add_smul_sub_mem_interior](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TopologyNamespacedPublic.lean/declarations/convex-add-smul-sub-mem-interior-source-edition-2.md) | 183 | `result-track:957c54e6fff61a19c67030d71eec4f3e92925fb1b077ffad8259071cf05a38bd` |
| 20 | `theorem` | [Convex.add_smul_mem_interior'](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TopologyNamespacedPublic.lean/declarations/convex-add-smul-mem-interior.md) | 188 | `result-track:9aa47be3164600854c2a2c1ffc61d9a92137b62cc5f136c694398c0054f5356b` |
| 21 | `theorem` | [Convex.add_smul_mem_interior](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TopologyNamespacedPublic.lean/declarations/convex-add-smul-mem-interior-source-edition-2.md) | 193 | `result-track:9f6f7a8d1948d4b57ef03a5aa1a007c862929f3c48fc97c70c9fe6bd57bcfd73` |
| 22 | `theorem` | [Convex.interior](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TopologyNamespacedPublic.lean/declarations/convex-interior.md) | 200 | `result-track:21ed4afcf4420d4aecd9a1e895050af211e6a3bc855dd2a3b495f5580464d123` |
| 23 | `theorem` | [Convex.closure](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TopologyNamespacedPublic.lean/declarations/convex-closure.md) | 206 | `result-track:f16fb569ac1a4104fa73a1f186cbafc60d8b49ff67458a7f2b600b16efea0ebb` |
| 24 | `lemma` | [convexHull_interior_subset](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TopologyNamespacedPublic.lean/declarations/convexhull-interior-subset.md) | 213 | `result-track:d21552a373138417156d58f84db068504582771aef5c57fbdc4740818bc33213` |
| 25 | `theorem` | [IsOpen.convexHull](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TopologyNamespacedPublic.lean/declarations/isopen-convexhull.md) | 217 | `result-track:f8dd64ceded3ada44f8775805a13376df2b9d180a64c7185e648ae31abce03ea` |
| 26 | `theorem` | [Convex.strictConvex'](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TopologyNamespacedPublic.lean/declarations/convex-strictconvex-source-edition-2.md) | 234 | `result-track:d38cc9e3071e545787e01a1937fe83b39df59dce63ae020985ec269073f658a1` |
| 27 | `theorem` | [Convex.strictConvex](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TopologyNamespacedPublic.lean/declarations/convex-strictconvex.md) | 252 | `result-track:1729148078568201110974e46d4ce0b32804392ad413a332b37f6bcc94e53cfc` |
| 28 | `theorem` | [Convex.closure_interior_eq_closure_of_nonempty_interior](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TopologyNamespacedPublic.lean/declarations/convex-closure-interior-eq-closure-of-nonempty-interior.md) | 269 | `result-track:a17dcba088f7ad3c0635a5e93b259a191f0637c5db52c0acb96010016581924a` |
| 29 | `theorem` | [Convex.interior_closure_eq_interior_of_nonempty_interior](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TopologyNamespacedPublic.lean/declarations/convex-interior-closure-eq-interior-of-nonempty-interior.md) | 275 | `result-track:023230a12cc02a0b641410d5e2eb498edf6c7f54b273d41b3428671627b7215c` |
| 30 | `theorem` | [convex_closed_sInter](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TopologyNamespacedPublic.lean/declarations/convex-closed-sinter.md) | 294 | `result-track:1d88ae20845331a7cf57bd39f548d950384c0947fd5522e27509e7bbdda2d1dc` |
| 31 | `def` | [closedConvexHull](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TopologyNamespacedPublic.lean/declarations/closedconvexhull.md) | 302 | `declaration-track:10d00f753a3d267850f63655a4807f4747987b50c93591e10593741e861d0bcb` |
| 32 | `theorem` | [convex_closedConvexHull](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TopologyNamespacedPublic.lean/declarations/convex-closedconvexhull.md) | 305 | `result-track:e6a682f48da4e3f16b9d335349c5c1e3c1fe851e4b5f660357832d01c7318289` |
| 33 | `theorem` | [isClosed_closedConvexHull](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TopologyNamespacedPublic.lean/declarations/isclosed-closedconvexhull.md) | 308 | `result-track:7cf073b9a1ebcf2a6ca4e0b037dd57646ac7c50d6e64dbeba9e948170b17ebe2` |
| 34 | `theorem` | [subset_closedConvexHull](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TopologyNamespacedPublic.lean/declarations/subset-closedconvexhull.md) | 311 | `result-track:03048052ea02c64f665e0b64e08a7ff275836e7436579c503a032db30416c6a3` |
| 35 | `theorem` | [closure_subset_closedConvexHull](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TopologyNamespacedPublic.lean/declarations/closure-subset-closedconvexhull.md) | 314 | `result-track:a50c58a493a7909c014c81090a38ebc76cf0c313bdf180b3b913fb8e965b21f2` |
| 36 | `theorem` | [closedConvexHull_min](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TopologyNamespacedPublic.lean/declarations/closedconvexhull-min.md) | 317 | `result-track:cbdb361b3c685853d31a8353f6d8d2f838d3cc5353718964db48dec9b5fac8b7` |
| 37 | `theorem` | [convexHull_subset_closedConvexHull](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TopologyNamespacedPublic.lean/declarations/convexhull-subset-closedconvexhull.md) | 321 | `result-track:f6c69cf49baa6ac064fbcecbba6a98479f80a2226672fe055760fe44fd4b4a22` |
| 38 | `theorem` | [closedConvexHull_closure_eq_closedConvexHull](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TopologyNamespacedPublic.lean/declarations/closedconvexhull-closure-eq-closedconvexhull.md) | 326 | `result-track:526fc870e4805403adcbcfa73effd19ea7ede1a2a418ea0265b0dc072ee4d1b4` |
| 39 | `theorem` | [closedConvexHull_eq_closure_convexHull](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TopologyNamespacedPublic.lean/declarations/closedconvexhull-eq-closure-convexhull.md) | 340 | `result-track:9d831544232f31753b56836ec41e9a21e06376c255c51d168f02b672cbd63932` |
| 40 | `theorem` | [Set.Finite.isCompact_convexHull](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TopologyNamespacedPublic.lean/declarations/set-finite-iscompact-convexhull.md) | 357 | `result-track:74ccd7e7d6181650ad80f4de6976d4326006136151b8a6c58ed84d73859d9d0c` |
| 41 | `theorem` | [Set.Finite.isClosed_convexHull](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TopologyNamespacedPublic.lean/declarations/set-finite-isclosed-convexhull.md) | 364 | `result-track:a98cf0c1ec987bb2c3ca410a473144c462eabd2497945e0550ce2567be160663` |
| 42 | `theorem` | [Convex.closure_subset_image_homothety_interior_of_one_lt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TopologyNamespacedPublic.lean/declarations/convex-closure-subset-image-homothety-interior-of-one-lt.md) | 380 | `result-track:97dd68f853c00ffa7387e547d28ad05ce414c2982b7f3c07456ec9c69e7e80c5` |
| 43 | `theorem` | [Convex.closure_subset_interior_image_homothety_of_one_lt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TopologyNamespacedPublic.lean/declarations/convex-closure-subset-interior-image-homothety-of-one-lt.md) | 396 | `result-track:7e4dff9361e0c645a6d7be5e3776017c2be63f788403cb432f5e7339b8bfc2b3` |
| 44 | `theorem` | [Convex.subset_interior_image_homothety_of_one_lt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TopologyNamespacedPublic.lean/declarations/convex-subset-interior-image-homothety-of-one-lt.md) | 406 | `result-track:c476423b34e87cebea7b4bffae77ef3daa3dede04b1c9a59c977531ec8c1fd14` |
| 45 | `theorem` | [Convex.nontrivial_iff_nonempty_interior](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TopologyNamespacedPublic.lean/declarations/convex-nontrivial-iff-nonempty-interior.md) | 420 | `result-track:af3ffc0b9ae8476c836ac4fe35e5c42b60a99f0f476b403e442d9b768bffc2ce` |
| 46 | `lemma` | [Convex.Ioo_subset_of_mem_closure](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TopologyNamespacedPublic.lean/declarations/convex-ioo-subset-of-mem-closure.md) | 433 | `result-track:9c3db347cd1287fc7e3c78b199149f2f56e189e02754db27c373ba0c680816f4` |
| 47 | `lemma` | [Convex.nhdsWithin_inter_Iio_eq_nhdsLT](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TopologyNamespacedPublic.lean/declarations/convex-nhdswithin-inter-iio-eq-nhdslt.md) | 450 | `result-track:8eed2702a784c3cf2433ebdc67f2d4b86cc41cc3c8c6ec874b8add4c55f5bd8d` |
| 48 | `lemma` | [Convex.nhdsWithin_inter_Ioi_eq_nhdsGT](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TopologyNamespacedPublic.lean/declarations/convex-nhdswithin-inter-ioi-eq-nhdsgt.md) | 457 | `result-track:30d9ec36038deae804940be6b21c3b1195156cff6a6d4b52a03d1932e07e50eb` |
| 49 | `lemma` | [Convex.nhdsWithin_sdiff_eq_nhdsNE](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TopologyNamespacedPublic.lean/declarations/convex-nhdswithin-sdiff-eq-nhdsne.md) | 464 | `result-track:81fadda57b9dec15f94d9f1a1115cee044280bba25d6b824e8d482de7496d073` |
| 50 | `lemma` | [Convex.nhdsWithin_sdiff_eq_nhdsLT](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TopologyNamespacedPublic.lean/declarations/convex-nhdswithin-sdiff-eq-nhdslt.md) | 473 | `result-track:3b50b159fb98149a89b55041c4e0fd2f844752224bcd556ad2bb6a0f3629fe19` |
| 51 | `lemma` | [Convex.nhdsWithin_sdiff_eq_nhdsGT](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TopologyNamespacedPublic.lean/declarations/convex-nhdswithin-sdiff-eq-nhdsgt.md) | 482 | `result-track:e42efea4111f29b0ccc026390de8bf587568461423fbaeefb29e9ce507ba1414` |
| 52 | `lemma` | [sdiff_singleton_eventually_mem_nhds_left](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TopologyNamespacedPublic.lean/declarations/sdiff-singleton-eventually-mem-nhds-left.md) | 492 | `result-track:6fb5afbd14129167c7ae85b88e8b553bcd0d14603ecb353a48e61d762f78e83d` |
| 53 | `theorem` | [Convex.sdiff_singleton_eventually_mem_nhds](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TopologyNamespacedPublic.lean/declarations/convex-sdiff-singleton-eventually-mem-nhds.md) | 501 | `result-track:106b2dc2151b6ff398411daad44a01548415de450c18d1f28a5a651d8f0407ca` |
| 54 | `theorem` | [isCompact_closedInterior](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TopologyNamespacedPublic.lean/declarations/iscompact-closedinterior.md) | 529 | `result-track:354225f526062a915de4f075b1646ac31c9b48121012d40ed767dc209cbc1238` |
| 55 | `theorem` | [isClosed_closedInterior](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/TopologyNamespacedPublic.lean/declarations/isclosed-closedinterior.md) | 538 | `result-track:1205cfbe22e50c45b84ab671a933380768e4ab569daf206f8497f9bad30833b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=65f49900b98e91ff9ebbf2c42fa5db542c9c0adc2e762a88128dee667426071f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Topology/Variant5b71aa0b36ed1dc76a7a946c4d1c6eebcfbb98ec441acf957df3ded4699a8d14.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/Topology/Variant5b71aa0b36ed1dc76a7a946c4d1c6eebcfbb98ec441acf957df3ded4699a8d14.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
