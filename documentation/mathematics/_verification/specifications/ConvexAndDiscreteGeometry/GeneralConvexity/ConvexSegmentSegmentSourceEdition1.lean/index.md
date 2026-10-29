# Verification target: Convex Segment Segment Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d26d802a490b557aed1c26d14a240135e024507",
  "lexical_observation_count": 71,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Segment/Variant4071626ee3a961bfb76a2fe6827248f901aea0ca548c53f9991bc3d7f4df2c57.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/index.md) · [Full source](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d26d802a490b557aed1c26d14a240135e024507`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Segment/Variant4071626ee3a961bfb76a2fe6827248f901aea0ca548c53f9991bc3d7f4df2c57.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Segment/Variant4071626ee3a961bfb76a2fe6827248f901aea0ca548c53f9991bc3d7f4df2c57.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Invertible` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Module.OrderedSMul` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.Midpoint` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.LinearIndependent.Lemmas` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Ray` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [segment](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/segment.md) | 48 | `declaration-track:fb0858d83ebe965e3e479fe553744dd4cda82430ee3a5126810fa1a9af13228f` |
| 2 | `def` | [openSegment](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/opensegment.md) | 54 | `declaration-track:1a219390030b96cec85512f8d0893df990e2102da3a62cba05376575e7a6b68e` |
| 3 | `theorem` | [segment_eq_image₂](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/segment-eq-image-source-edition-3.md) | 59 | `result-track:f0b20f81259bf6c714c077a60d4ce17b819504a33e65f6e471862617f5049610` |
| 4 | `theorem` | [openSegment_eq_image₂](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/opensegment-eq-image.md) | 64 | `result-track:324846a1ef7a374d856827d7c585bbd3e0a5e01cdb95e57c6095635dea61b1fc` |
| 5 | `theorem` | [segment_symm](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/segment-symm.md) | 69 | `result-track:2525ffa6ed13ebd2f17c9964d5e6a00b6498b61e2648e69e8e53060ef66b4c0d` |
| 6 | `theorem` | [openSegment_symm](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/opensegment-symm.md) | 75 | `result-track:3e957e8dd32e0304115bb2a759d24ed11df13ade33783a12ac46a1d7b1d18528` |
| 7 | `theorem` | [openSegment_subset_segment](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/opensegment-subset-segment.md) | 81 | `result-track:952628004b4b3f6fa29d2e680b5005b7ef66198ad360cedd16f16b2b36c5c1ae` |
| 8 | `theorem` | [segment_subset_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/segment-subset-iff.md) | 84 | `result-track:bdbb19f56ef51d263a52db083211872f6a9310454aa2f162f3dd24935110c40a` |
| 9 | `theorem` | [openSegment_subset_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/opensegment-subset-iff.md) | 89 | `result-track:47e20c44197db01d14adf3ffafecdef98fac9193c3206bc7b1bd1b0e8e6e9f3c` |
| 10 | `theorem` | [left_mem_segment](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/left-mem-segment.md) | 104 | `result-track:31c10c6296d725d530b5bccf1c4a4ff6c1651ded6be6f7c17141a9463457a54d` |
| 11 | `theorem` | [right_mem_segment](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/right-mem-segment.md) | 107 | `result-track:10023e973b19dfe95a160390ebd6d62df7b149e415d9b76c0472cca96ea8518f` |
| 12 | `theorem` | [segment_same](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/segment-same.md) | 118 | `result-track:ccfee127eb581f6b04aed1f5612165df467a8e16616fc4775c89f201fac0e50c` |
| 13 | `theorem` | [insert_endpoints_openSegment](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/insert-endpoints-opensegment.md) | 124 | `result-track:f7698ea1f0121bd2740ba58bc0197b500a13e0a0b009b0630fdf756a422342c2` |
| 14 | `theorem` | [mem_openSegment_of_ne_left_right](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/mem-opensegment-of-ne-left-right.md) | 138 | `result-track:e1ad07b9e5a739a4146e951f6aad84756e1babd87b3d366bab3ac88f6f64b5f9` |
| 15 | `theorem` | [openSegment_subset_iff_segment_subset](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/opensegment-subset-iff-segment-subset.md) | 143 | `result-track:cf1df4ce6a6c60b574ae8ee028ba0b0847da16586507625908b029896bba0686` |
| 16 | `theorem` | [openSegment_same](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/opensegment-same.md) | 163 | `result-track:23a8009276f34138cc1269ff23f5b6e23708586497d5dfe7e43e83bae5a487ae` |
| 17 | `theorem` | [segment_eq_image](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/segment-eq-image.md) | 174 | `result-track:3c0d124abde575011346bc07caaee9aee60153b44617cccf6590a8e99bb640cd` |
| 18 | `theorem` | [openSegment_eq_image](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/opensegment-eq-image-source-edition-3.md) | 181 | `result-track:f4a788ee45f56b3622598a586829a544fed76bcb2581545d0940aba7c769e0cb` |
| 19 | `theorem` | [segment_eq_image'](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/segment-eq-image-source-edition-2.md) | 188 | `result-track:6e63075e412d1fb474dc4af2e502114814e313c16487a172ce308ef31550f00a` |
| 20 | `theorem` | [openSegment_eq_image'](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/opensegment-eq-image-source-edition-2.md) | 194 | `result-track:cd9a7aa1edaf0f464dba2d3b1666957d8051811fdc185aa5bf1434dd7c61b2bd` |
| 21 | `theorem` | [segment_eq_image_lineMap](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/segment-eq-image-linemap.md) | 200 | `result-track:446885a077eee9a9efb3abc001d399453a2447af4887665601d3b5eb5ef83995` |
| 22 | `theorem` | [openSegment_eq_image_lineMap](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/opensegment-eq-image-linemap.md) | 205 | `result-track:23a8b2ae3f25d557096776c8924e007d8346020ded15a2562a0ffa434a60c87e` |
| 23 | `theorem` | [image_segment](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/image-segment.md) | 211 | `result-track:1ac5ec810e7c6bbf88a021edb9bbc238391b27a541dbd8216aba9c2d432952ac` |
| 24 | `theorem` | [image_openSegment](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/image-opensegment.md) | 216 | `result-track:8efeb12274a9124ec4f4d8ad40d8b300e598c043c36ef23c5ec0666688f84f5c` |
| 25 | `theorem` | [vadd_segment](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/vadd-segment.md) | 223 | `result-track:0cebdc52ef1c7b67df4905c38b6619c0eb0f1ea9b74c2128df31783274b275d1` |
| 26 | `theorem` | [vadd_openSegment](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/vadd-opensegment.md) | 228 | `result-track:62f097839a0f0923494535e5192fe701dda9041c4afd37396f3c05324b386b0a` |
| 27 | `theorem` | [mem_segment_translate](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/mem-segment-translate.md) | 233 | `result-track:bac12fdc953ba829c1c6e25db61f776823a79a257891eb35f182bf6f3c1b90e0` |
| 28 | `theorem` | [mem_openSegment_translate](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/mem-opensegment-translate.md) | 237 | `result-track:b5f0ae89ad2e94944b0f8a2b3c8c9afacf156b8fd6d3b3168425401921fc477b` |
| 29 | `theorem` | [segment_translate_preimage](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/segment-translate-preimage.md) | 241 | `result-track:d1c524f9b8bd799bd04cbcb54c97c802a717309f352962c84dda255846171f40` |
| 30 | `theorem` | [openSegment_translate_preimage](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/opensegment-translate-preimage.md) | 245 | `result-track:68eece90664fd14a2cbb8188c0b66940f6c7545e66a0523334f2525289ec0aec` |
| 31 | `theorem` | [segment_translate_image](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/segment-translate-image.md) | 249 | `result-track:30de3d472f1d561ec4c251e003f87fe43f1904377bd0ea8da7d36701e6677116` |
| 32 | `theorem` | [openSegment_translate_image](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/opensegment-translate-image.md) | 252 | `result-track:79a9850db2cdfbc36bdaf2020bca0f7cdb0f5964be1bcf698cb4a9834df7e6f9` |
| 33 | `lemma` | [segment_inter_subset_endpoint_of_linearIndependent_sub](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/segment-inter-subset-endpoint-of-linearindependent-sub.md) | 256 | `result-track:e31f08241ca23cb5691ba71c076eeb93b1b820b6d96ffe951cca6495cbeea19a` |
| 34 | `lemma` | [segment_inter_eq_endpoint_of_linearIndependent_sub](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/segment-inter-eq-endpoint-of-linearindependent-sub.md) | 271 | `result-track:398ecd2001a6f810fc300277cbc569f860a6c0383b6f8d1c6f0252a3fd0e397b` |
| 35 | `theorem` | [sameRay_of_mem_segment](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/sameray-of-mem-segment.md) | 279 | `result-track:afd5023f46898d5681a513d4409680249d56bcd8afd84fdd2dce98435b68e064` |
| 36 | `lemma` | [segment_inter_eq_endpoint_of_linearIndependent_of_ne](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/segment-inter-eq-endpoint-of-linearindependent-of-ne.md) | 287 | `result-track:5c550df2e366a26a4dbde1794391d4d7a89cc39764a4685368c3d6c9a3e50645` |
| 37 | `theorem` | [midpoint_mem_segment](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/midpoint-mem-segment.md) | 304 | `result-track:1368ba5d1b93350c2986d893460559c3c3f5c9df3c00c92dbf64330c0099d50d` |
| 38 | `theorem` | [mem_segment_sub_add](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/mem-segment-sub-add.md) | 308 | `result-track:be44574d3c832efd7783d88314d13bdbad8fee562f089e5ce0e1d5d5fbe706ad` |
| 39 | `theorem` | [mem_segment_add_sub](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/mem-segment-add-sub.md) | 312 | `result-track:237b510830cfe2dd806fbcd033a6ba8f65b51f732423671130f34c77b9424753` |
| 40 | `theorem` | [left_mem_openSegment_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/left-mem-opensegment-iff.md) | 317 | `result-track:d0db7f51595f6969efd89910666b2c5e2acdf4cf7faf99bfa78f8248d9e584d9` |
| 41 | `theorem` | [right_mem_openSegment_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/right-mem-opensegment-iff.md) | 328 | `result-track:ae452724c945192c3122de469bb112ce429d3f956ebff779ed5ca2f346529b60` |
| 42 | `theorem` | [mem_segment_iff_div](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/mem-segment-iff-div.md) | 338 | `result-track:aa255ceeff8a8362a8dc8e3a8ba5ecef7147937d7cb6036d1507e0e2cffae78d` |
| 43 | `theorem` | [mem_openSegment_iff_div](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/mem-opensegment-iff-div.md) | 349 | `result-track:56d1a4ed9c995984d3817adc5378997950afddf401b49f207db75720f9a6560c` |
| 44 | `theorem` | [mem_segment_iff_sameRay](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/mem-segment-iff-sameray.md) | 366 | `result-track:82994c031d61403ced396204a15ff412c897835455b7482fce77c8d3dc20b345` |
| 45 | `theorem` | [openSegment_subset_union](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/opensegment-subset-union.md) | 379 | `result-track:681b759c4db4f70648425395672615075795e86c5e4715b74621e9b28294ff9c` |
| 46 | `theorem` | [segment_subset_Icc](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/segment-subset-icc.md) | 420 | `result-track:2760caf8878b3b57b5374c0086746db30f04a3bd64be270bb67c4d2d7176635f` |
| 47 | `theorem` | [openSegment_subset_Ioo](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/opensegment-subset-ioo.md) | 437 | `result-track:c89c34f01bb077aa2aa180240c2d9d6d995634a739abbd5127a02c9c700c7539` |
| 48 | `theorem` | [segment_subset_uIcc](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/segment-subset-uicc.md) | 454 | `result-track:8d73de328bd1ba62856f113d0f437a28bf18c22656632c30a6b0a7603dec6359` |
| 49 | `theorem` | [Convex.min_le_combo](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/convex-min-le-combo.md) | 461 | `result-track:309f0db492666c0966adba811b71dd8d61936be1f3fab638559fa0b77104b765` |
| 50 | `theorem` | [Convex.combo_le_max](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/convex-combo-le-max.md) | 465 | `result-track:b5cc004d97304f87d02b2131c34754f254dd56969f41e8559056fdad364df65d` |
| 51 | `theorem` | [Icc_subset_segment](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/icc-subset-segment.md) | 477 | `result-track:6c64a0edc92967933221b01637646f8c0f2133490f1deb9671a95bf91c8a3245` |
| 52 | `theorem` | [segment_eq_Icc](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/segment-eq-icc.md) | 490 | `result-track:29a2f7d297c2dd4d243c3e78f33f30aa5cc2173dfbb2d881a1918a049c997d48` |
| 53 | `theorem` | [Ioo_subset_openSegment](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/ioo-subset-opensegment.md) | 493 | `result-track:a897dfe55d8420062646085a83c4d57a992cefe9f9fd961ad3992cfaec77cfad` |
| 54 | `theorem` | [openSegment_eq_Ioo](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/opensegment-eq-ioo-source-edition-2.md) | 497 | `result-track:faba11b77a43e7c60242d6e1a9c72d32fbba078d6f2f3e4368c5a882a538235d` |
| 55 | `theorem` | [segment_eq_Icc'](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/segment-eq-icc-source-edition-2.md) | 500 | `result-track:901d3893f941825c69bb5663b2c4a12db9068acafb8d6c2a0a72a671058197a7` |
| 56 | `theorem` | [openSegment_eq_Ioo'](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/opensegment-eq-ioo.md) | 505 | `result-track:3cf4070facac9f79c2725f15393b32dbd003ca6f3d567aefabe4a804c7b2f061` |
| 57 | `theorem` | [segment_eq_uIcc](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/segment-eq-uicc.md) | 510 | `result-track:4a27abd07c93ba24acf971855b125ec24479d2ab54fb87ff15e03369a1be7cf5` |
| 58 | `theorem` | [Convex.mem_Icc](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/convex-mem-icc.md) | 514 | `result-track:99018f7b6bcd6d2b3433477fdab85d81b85c451e7ed1a7c0e77780062aa624b2` |
| 59 | `theorem` | [Convex.mem_Ioo](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/convex-mem-ioo.md) | 520 | `result-track:f7d08e56ed68bf0074497f77f60777976abd571b67a885a7fab1fc82cd99d3d2` |
| 60 | `theorem` | [Convex.mem_Ioc](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/convex-mem-ioc.md) | 526 | `result-track:e0b62cdb40a9345366e7eb4bd83f223d1e103c116b5f533f8b4743abc2b5ce96` |
| 61 | `theorem` | [Convex.mem_Ico](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/convex-mem-ico.md) | 543 | `result-track:f8629723b5a89e9084fb77c2da039911472fdce800e5463b2f8f0ceb75badf76` |
| 62 | `theorem` | [segment_subset](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/segment-subset-source-edition-2.md) | 564 | `result-track:32267ad08c1fcc00910f9666b328db8cda7b6aabe9a0cd17c7a06e6829d8648a` |
| 63 | `theorem` | [openSegment_subset](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/opensegment-subset-source-edition-2.md) | 568 | `result-track:fb92298f860f2e04d68d87cfbdb9e5a02627b375182c8eec17120158fdacce87` |
| 64 | `theorem` | [image_mk_segment_left](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/image-mk-segment-left.md) | 573 | `result-track:d52a195b21ca10908f47bb9120bb38912b08f114536b5a45a1021475a4c825a9` |
| 65 | `theorem` | [image_mk_segment_right](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/image-mk-segment-right.md) | 579 | `result-track:0dfe9172f089ddd131ecccae8d879ef48a064939b7e436f1284d7e9e4e1907b7` |
| 66 | `theorem` | [image_mk_openSegment_left](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/image-mk-opensegment-left.md) | 585 | `result-track:afc8c7f2a52a32fd667b5ecb3c762147d08cd1dc193e002a9a08bb50ae28932e` |
| 67 | `theorem` | [image_mk_openSegment_right](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/image-mk-opensegment-right.md) | 592 | `result-track:0f7674449e1ee618e66f25778a506df69b5ced7bf8e6e4b5376f24ae6f55c997` |
| 68 | `theorem` | [segment_subset](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/segment-subset.md) | 604 | `result-track:2df7214faf896aa43a0bf7e85083cd603b04e490b4362ebc7686c56d305f3793` |
| 69 | `theorem` | [openSegment_subset](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/opensegment-subset.md) | 608 | `result-track:f96a8b752c346dfbf2fad5561aa63a945a94aebbe51b8c15e14b1b928b1792b5` |
| 70 | `theorem` | [image_update_segment](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/image-update-segment.md) | 615 | `result-track:86aff8c5399d029fda736edabc5760503109cac3f9bddeb6c49dfce254a99391` |
| 71 | `theorem` | [image_update_openSegment](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConvexSegmentSegmentSourceEdition1.lean/declarations/image-update-opensegment.md) | 621 | `result-track:bad7fcbe0df2e4e2cd7e7b9847cb616ccd2afeef56c693328547980caa439f6a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e1488599bf5cd3900e86f203ea79026bc228695e864a8a9d9ee914dc9fe9138b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Segment/Variant4071626ee3a961bfb76a2fe6827248f901aea0ca548c53f9991bc3d7f4df2c57.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Segment/Variant4071626ee3a961bfb76a2fe6827248f901aea0ca548c53f9991bc3d7f4df2c57.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
