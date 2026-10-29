# Verification target: Between Mem Segment Iff Wbtw

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0930d846d75149db0982c06820eee86c52d59ace",
  "lexical_observation_count": 118,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ConvexGeometry/Between/Variant49104925f6425f3f09e1203da599b2dd0595f697d6ee9e9daf54f27283f44e2b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/index.md) · [Full source](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0930d846d75149db0982c06820eee86c52d59ace`.

Source path: `GRWTSK/Geometry/ConvexGeometry/Between/Variant49104925f6425f3f09e1203da599b2dd0595f697d6ee9e9daf54f27283f44e2b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ConvexGeometry/Between/Variant49104925f6425f3f09e1203da599b2dd0595f697d6ee9e9daf54f27283f44e2b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Invertible` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Interval.Set.Group` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Segment` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.FiniteDimensional` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [affineSegment](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/affinesegment.md) | 37 | `declaration-track:557b480704f0f4fdd902b1f2a4fb9021d080c2b571e5c820874ca8c2901bfdbf` |
| 2 | `theorem` | [affineSegment_image](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/affinesegment-image.md) | 46 | `result-track:44013e044cbcb9d153ecbd939b66d84d998075e13832f23f2bfeef386491fa86` |
| 3 | `theorem` | [affineSegment_const_vadd_image](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/affinesegment-const-vadd-image.md) | 52 | `result-track:6d6449ab0811db902db55f720ba967d7e6965184846b3c9dc2cf91d85914fa2e` |
| 4 | `theorem` | [affineSegment_vadd_const_image](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/affinesegment-vadd-const-image.md) | 57 | `result-track:04c87cd0e94497b69abbb796c6ada6270667a7e7fef63863c7d201f186cb03fc` |
| 5 | `theorem` | [affineSegment_const_vsub_image](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/affinesegment-const-vsub-image.md) | 62 | `result-track:50eafec4acf2a952b4a57cbf06efd64b8cd4cc3c6cfb417ff71586e2366fd5bb` |
| 6 | `theorem` | [affineSegment_vsub_const_image](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/affinesegment-vsub-const-image.md) | 67 | `result-track:1c033d651f85ffbc318bc0c7944698e6e175994171962d6d9fc85dc56cfc23f7` |
| 7 | `theorem` | [mem_const_vadd_affineSegment](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/mem-const-vadd-affinesegment.md) | 74 | `result-track:14b201cb9ddc28abfec15892897c21ad21e0a68adffbb5caab4ade88cf83d891` |
| 8 | `theorem` | [mem_vadd_const_affineSegment](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/mem-vadd-const-affinesegment.md) | 79 | `result-track:c9fa8cf85e97a1c2d1bc980db3e8f9063e96f9e3bd6d9754c1bc8ad4c617fd4b` |
| 9 | `theorem` | [mem_const_vsub_affineSegment](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/mem-const-vsub-affinesegment.md) | 84 | `result-track:5d83a03192379b9d6179e0ea4f91bae4643a8f889a90cb659eef78253ca40ccb` |
| 10 | `theorem` | [mem_vsub_const_affineSegment](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/mem-vsub-const-affinesegment.md) | 89 | `result-track:08fad2f22f035cd732f6bd4e9eb8501029c15b936e29b710852242589c27c5b0` |
| 11 | `theorem` | [affineSegment_eq_segment](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/affinesegment-eq-segment.md) | 98 | `result-track:a3f3a41208588588086e445fe868bc3494dc72ac4ea0492e9731dec2954363fd` |
| 12 | `theorem` | [affineSegment_comm](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/affinesegment-comm.md) | 101 | `result-track:53fb5c47b84ac12aad78afbdc643071bae9b3b719232371bb276b2e1ac0b3285` |
| 13 | `theorem` | [left_mem_affineSegment](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/left-mem-affinesegment.md) | 109 | `result-track:4ea32dda2f4bc4ff26eb92d30f9b37c7c6f48f4ae54089df899fe8b2584f7e3a` |
| 14 | `theorem` | [right_mem_affineSegment](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/right-mem-affinesegment.md) | 112 | `result-track:db3986015dc898296e1af4f407a9a01f44b75e29b46ba60a7270127082cedd1a` |
| 15 | `theorem` | [affineSegment_same](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/affinesegment-same.md) | 116 | `result-track:cad74d0163744c52e2d008128faff382e2f0ed192219f965e2a17b6015f18f09` |
| 16 | `def` | [Wbtw](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/wbtw.md) | 123 | `declaration-track:3f82eaac217dc65801a28432c2025d3ec6e33a794eea7e0da9ab628beb5a2c46` |
| 17 | `def` | [Sbtw](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/sbtw.md) | 127 | `declaration-track:b90d02ce01c7e32ae089c01b38bc17bbca9608947d2ba6650b632bab2bed154c` |
| 18 | `lemma` | [mem_segment_iff_wbtw](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/mem-segment-iff-wbtw.md) | 136 | `result-track:79b1c0c5960c2a9b4d22cebc1a19cc0afa9750df51ec93f59ace44286872b34a` |
| 19 | `lemma` | [Convex.mem_of_wbtw](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/convex-mem-of-wbtw.md) | 141 | `result-track:82ecf650f17f825455c212126eb02ab327c8bda691511029488f741399f729fd` |
| 20 | `theorem` | [wbtw_comm](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/wbtw-comm.md) | 144 | `result-track:4667ced4f875a00f07a852280b574cff93fe1a7b3f9fced3ab961553cc30ccec` |
| 21 | `theorem` | [sbtw_comm](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/sbtw-comm.md) | 149 | `result-track:2fc8e917b3d9c7bd82d32042d364bc2d895405b53afa67d117ac4e6b9e4cb1c6` |
| 22 | `lemma` | [AffineSubspace.mem_of_wbtw](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/affinesubspace-mem-of-wbtw.md) | 156 | `result-track:2b8f55fa1764e8720f670b2dafa40ae5d134a5fcb5dc83c6fba9fcc07863baef` |
| 23 | `theorem` | [Wbtw.map](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/wbtw-map.md) | 159 | `result-track:9f35bf9913674e2b16f7d34793fedf60f03bad3c3d72098eb98c6dda95c088e9` |
| 24 | `theorem` | [Function.Injective.wbtw_map_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/function-injective-wbtw-map-iff.md) | 163 | `result-track:3bb34926e488ce765e147076fc9fe9d1716ed9bdd3e8b1fe3792ede12cdd9291` |
| 25 | `theorem` | [Function.Injective.sbtw_map_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/function-injective-sbtw-map-iff.md) | 168 | `result-track:9bebd4535526ba2805bdb3062246d588c3e3008743749b4bebd5b3731ff5339c` |
| 26 | `theorem` | [AffineEquiv.wbtw_map_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/affineequiv-wbtw-map-iff.md) | 173 | `result-track:72083f44b9d38d962fc68b2a7112f17204b0adc0a602a2369f32ec97dcc08dea` |
| 27 | `theorem` | [AffineEquiv.sbtw_map_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/affineequiv-sbtw-map-iff.md) | 180 | `result-track:064b163eb13a3355a7ad900e059a142d1ac06da297aca6b8d958a7fd92d40463` |
| 28 | `theorem` | [wbtw_const_vadd_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/wbtw-const-vadd-iff.md) | 187 | `result-track:b4011a8665703225832383f9e9cdec9a3358f2bfd6d554c43b53a3e05bfe5314` |
| 29 | `theorem` | [wbtw_vadd_const_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/wbtw-vadd-const-iff.md) | 192 | `result-track:53948d29790ea2ced9ebf1ef8dd70353587e03b5474afe7efd7dfca015713fd3` |
| 30 | `theorem` | [wbtw_const_vsub_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/wbtw-const-vsub-iff.md) | 197 | `result-track:dda6a83d3edb6b260265e90c3862256aa2a86e9a46258b5e7c5a11f490ec0afc` |
| 31 | `theorem` | [wbtw_vsub_const_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/wbtw-vsub-const-iff.md) | 202 | `result-track:f3266927ae11347b7be5b755372c421b95ab90658871a010eb2cd0fae7d8e99a` |
| 32 | `theorem` | [sbtw_const_vadd_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/sbtw-const-vadd-iff.md) | 207 | `result-track:35c67a3c0344c4ff9c8d9acbe466e9b44eabf883599e9a4f8400babf949ff467` |
| 33 | `theorem` | [sbtw_vadd_const_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/sbtw-vadd-const-iff.md) | 213 | `result-track:2dc3b89a00c48011823a03902e50373c83423656e1e335d229e74b9f4322faa7` |
| 34 | `theorem` | [sbtw_const_vsub_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/sbtw-const-vsub-iff.md) | 219 | `result-track:4763bfc1882b60101b9444a8286fb7d8157c478e22c0d7815fa84148b6b72ffa` |
| 35 | `theorem` | [sbtw_vsub_const_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/sbtw-vsub-const-iff.md) | 225 | `result-track:59a8a4ce156f02c6e24942306c90ffe0e32de904a032a35d9486b8324031bb85` |
| 36 | `theorem` | [Sbtw.wbtw](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/sbtw-wbtw.md) | 230 | `result-track:432f90c0f00f94de7278788e017fa78dfa76a05069055759d90cfa8ad84fd855` |
| 37 | `theorem` | [Sbtw.ne_left](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/sbtw-ne-left.md) | 233 | `result-track:d96063b025437b0d64f8d0c9e8ff0e3cc4c139836575e1949083b6ca5346d74b` |
| 38 | `theorem` | [Sbtw.left_ne](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/sbtw-left-ne.md) | 236 | `result-track:174ce3c007a527774e2acb8fa33ebed4316de0033f6c9dad14002dd7f7cb84f6` |
| 39 | `theorem` | [Sbtw.ne_right](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/sbtw-ne-right.md) | 239 | `result-track:8ddbe974edde6102a1ffe1a15b51c16f93e7880582cfa7c4fcccf80d6080479b` |
| 40 | `theorem` | [Sbtw.right_ne](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/sbtw-right-ne.md) | 242 | `result-track:9c9e1967e3f50aaeb0f4b375a8936f0da4a5d01e00616865c1c4b17bf905b736` |
| 41 | `theorem` | [Sbtw.mem_image_Ioo](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/sbtw-mem-image-ioo.md) | 245 | `result-track:39a49881581c2ce7fcc1f93ad64e9e8456e5ec615744d539c1ea06c4f96deebd` |
| 42 | `theorem` | [Wbtw.mem_affineSpan](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/wbtw-mem-affinespan.md) | 255 | `result-track:b56687848509a0588d070157a5a91273581c377b0e81c7517042001adc8b45bd` |
| 43 | `theorem` | [wbtw_self_left](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/wbtw-self-left.md) | 266 | `result-track:7ce487852ff1e32cf3e35794002ad81f5324417028852395d2cbec56bc76a5e9` |
| 44 | `theorem` | [wbtw_self_right](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/wbtw-self-right.md) | 270 | `result-track:68b2f527d230d6c22fbf3b32a185bb46cbcb22b99a7147592f56a7664830efed` |
| 45 | `theorem` | [wbtw_self_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/wbtw-self-iff.md) | 274 | `result-track:2ba84b041286d1e4f8322989342541e56ff671aefd51949f451fe984a986b091` |
| 46 | `theorem` | [not_sbtw_self_left](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/not-sbtw-self-left.md) | 283 | `result-track:0504b6cd34a997caf3083e12f861a1c9f046e84bc8df56522d9d365dac1f09fe` |
| 47 | `theorem` | [not_sbtw_self_right](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/not-sbtw-self-right.md) | 287 | `result-track:38939dcbe7fa80951d17b5675933bce9c827df295aa13e892aa5d98b147649b3` |
| 48 | `theorem` | [Wbtw.left_ne_right_of_ne_left](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/wbtw-left-ne-right-of-ne-left.md) | 293 | `result-track:d5c8c5ca05b2b9ca9a48269756de759bd20b3b2c8c027e453ff0f85a9c83c986` |
| 49 | `theorem` | [Wbtw.left_ne_right_of_ne_right](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/wbtw-left-ne-right-of-ne-right.md) | 298 | `result-track:7ccb57ac20b116908c662e221ba40fdb23f296eb3dce537e4b6aebf50d04f4e1` |
| 50 | `theorem` | [Sbtw.left_ne_right](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/sbtw-left-ne-right.md) | 303 | `result-track:04d3c30fc07c74f40db2cfacf22a27f71d3990b0ac6a95539a203c0a9a5a373b` |
| 51 | `theorem` | [sbtw_iff_mem_image_Ioo_and_ne](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/sbtw-iff-mem-image-ioo-and-ne.md) | 306 | `result-track:5c5a597499980ab6738148f84a65485d185c267050d0f5ee027b27f8cf7a8c7d` |
| 52 | `theorem` | [not_sbtw_self](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/not-sbtw-self.md) | 318 | `result-track:8352d2e3cd3a7616084b22475dd0ca3df8cdb718858be30c5ced13c938484d6b` |
| 53 | `theorem` | [wbtw_swap_left_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/wbtw-swap-left-iff.md) | 321 | `result-track:0fd5d6d11cbd64cfc3a611b8a39c8af5d4e4dbca144df74afd949aaa6738c8b1` |
| 54 | `theorem` | [wbtw_swap_right_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/wbtw-swap-right-iff.md) | 343 | `result-track:4efb131d077240d4c997b2af1ff2c48d76700cbb50f7db24daa92abfd4dab5c4` |
| 55 | `theorem` | [wbtw_rotate_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/wbtw-rotate-iff.md) | 348 | `result-track:55d846c3a4c944d341d396ce271e5f08a89fb3c97423d7f7601e2163e3c6731d` |
| 56 | `theorem` | [Wbtw.swap_left_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/wbtw-swap-left-iff-source-edition-2.md) | 353 | `result-track:8cc43656a441f623594dc9c1d50883668ddc3f366d522eaa41664fb370d102c2` |
| 57 | `theorem` | [Wbtw.swap_right_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/wbtw-swap-right-iff-source-edition-2.md) | 356 | `result-track:605b7a1178b0a42de100eeaf2fd8c04845b09dd1e8dca518ee0a8decbdadbd7b` |
| 58 | `theorem` | [Wbtw.rotate_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/wbtw-rotate-iff-source-edition-2.md) | 359 | `result-track:7ed33579e3c208204a0c533a8eb11aaa9aa824620ed62ebce3e9a8879afba931` |
| 59 | `theorem` | [Sbtw.not_swap_left](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/sbtw-not-swap-left.md) | 362 | `result-track:7d38646f7be357f450f7105559df132c0adc00f8efe02ce6c0ab8b6f2105efaf` |
| 60 | `theorem` | [Sbtw.not_swap_right](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/sbtw-not-swap-right.md) | 365 | `result-track:461ca9bd55e42be6e79b49d0283de7b902eb7f61c3f5e010ff5e2e6e79d8afb0` |
| 61 | `theorem` | [Sbtw.not_rotate](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/sbtw-not-rotate.md) | 368 | `result-track:7115e340173a0b32b1bb437de9330c6ed713a7ee32a10768f68ff57e086a9fd3` |
| 62 | `theorem` | [wbtw_lineMap_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/wbtw-linemap-iff.md) | 372 | `result-track:dc9788c812c40cea7b658fa10c3faa6cd7ac4af45f12d0addd5fb2e17225b778` |
| 63 | `theorem` | [sbtw_lineMap_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/sbtw-linemap-iff.md) | 380 | `result-track:6f2013b532621b7687904526593ed3ab6f6082f1db647df64010053c2b4572e4` |
| 64 | `theorem` | [wbtw_mul_sub_add_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/wbtw-mul-sub-add-iff.md) | 387 | `result-track:f4a0caeccd0b114a7ab86b4e9061d04630f7d3dd21374e40f81a9e5db6c5037e` |
| 65 | `theorem` | [sbtw_mul_sub_add_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/sbtw-mul-sub-add-iff.md) | 392 | `result-track:5aa4b0bc9d158a632be1b0bf24c63886e9ef46c4e33c57365cac38fc0f08bcb2` |
| 66 | `theorem` | [wbtw_zero_one_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/wbtw-zero-one-iff.md) | 398 | `result-track:cc1d77cadcc42ef64b83e57e466dfca0df225dd3f237968e2f3a62ed589e10f9` |
| 67 | `theorem` | [wbtw_one_zero_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/wbtw-one-zero-iff.md) | 404 | `result-track:dba1f9ef3cd86c0361ca114aa04aa7e12600c3d00e140dbc166439c7e65444d6` |
| 68 | `theorem` | [sbtw_zero_one_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/sbtw-zero-one-iff.md) | 409 | `result-track:b771544558a2fd411da05740d80d51fd8acb1212ae2427ce0f1d6d5e12227991` |
| 69 | `theorem` | [sbtw_one_zero_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/sbtw-one-zero-iff.md) | 416 | `result-track:989438146852b54dc70542841e6b6e4f34e2b5e7dcb455b8f559bcad344cabc5` |
| 70 | `theorem` | [Wbtw.trans_left](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/wbtw-trans-left.md) | 419 | `result-track:c21f0780896b9b530a62b3d5e6e83f88de1cb7d118df68ff35bc3eaa42459b68` |
| 71 | `theorem` | [Wbtw.trans_right](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/wbtw-trans-right.md) | 425 | `result-track:18ceb45b5dc8568eec586086765bb701770ef2f77d59b001da44a1ce8e81d41d` |
| 72 | `theorem` | [Wbtw.trans_sbtw_left](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/wbtw-trans-sbtw-left.md) | 429 | `result-track:c724db9225018c8a266900f14862be9211119e8d453e5fb6915bfc1ae3c2c701` |
| 73 | `theorem` | [Wbtw.trans_sbtw_right](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/wbtw-trans-sbtw-right.md) | 435 | `result-track:4f9910c2bde229af268db0dd1d8078fc39b4d163470e24a95ac5ad42616a73f0` |
| 74 | `theorem` | [Sbtw.trans_left](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/sbtw-trans-left.md) | 441 | `result-track:4532d6de24ead9c9ec600f078376913256c53a1c9ff52fc54a71430f71ed56ef` |
| 75 | `theorem` | [Sbtw.trans_right](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/sbtw-trans-right.md) | 445 | `result-track:737699cb7cb8182d98c0995c43f352b70d51f1cbff1c6b68df189a0f05304d4a` |
| 76 | `theorem` | [Wbtw.trans_left_ne](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/wbtw-trans-left-ne.md) | 449 | `result-track:cb6527854e3f6a720f484981b71df10ecf5138bf92ea161ac491bd116806e6ed` |
| 77 | `theorem` | [Wbtw.trans_right_ne](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/wbtw-trans-right-ne.md) | 454 | `result-track:6b5901db39f40aa817b0c8f934399b0791576994022900d05ebf2dd27df86bd3` |
| 78 | `theorem` | [Sbtw.trans_wbtw_left_ne](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/sbtw-trans-wbtw-left-ne.md) | 459 | `result-track:b32667941051ace14239a3dc10a0f62bd15052037a2c488821f7c6b9ecb5bdaa` |
| 79 | `theorem` | [Sbtw.trans_wbtw_right_ne](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/sbtw-trans-wbtw-right-ne.md) | 463 | `result-track:95af50f27cc3e8c02cc61e5393ef44e4c59ceaaec9676099143783f666fcf644` |
| 80 | `theorem` | [Sbtw.affineCombination_of_mem_affineSpan_pair](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/sbtw-affinecombination-of-mem-affinespan-pair.md) | 467 | `result-track:c9ccd41820345e2fdd10cb55ae1c3619da43fb6237ff058689693e8a2830a555` |
| 81 | `theorem` | [Wbtw.sameRay_vsub](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/wbtw-sameray-vsub.md) | 498 | `result-track:0c5d4e85a72825c36aef3bf1be0a268dd716c0356a43325ccb6677858c2ff330` |
| 82 | `theorem` | [Wbtw.sameRay_vsub_left](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/wbtw-sameray-vsub-left.md) | 507 | `result-track:e537c66acea16dae218040f49f4aa78778edc6b494845361debfc2dfd253f8cb` |
| 83 | `theorem` | [Wbtw.sameRay_vsub_right](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/wbtw-sameray-vsub-right.md) | 511 | `result-track:0cb3f3b3553583a3b939811b873137407c9084ef943072d15d2e66d504a7f894` |
| 84 | `theorem` | [sbtw_of_sbtw_of_sbtw_of_mem_affineSpan_pair](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/sbtw-of-sbtw-of-sbtw-of-mem-affinespan-pair.md) | 527 | `result-track:a0365db99c080083054176d63ee2d79d91dd1481d095869d7dc5d4ea9f85184a` |
| 85 | `lemma` | [wbtw_iff_of_le](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/wbtw-iff-of-le.md) | 602 | `result-track:f75754791f61fc3f04bbdf3d530924fc3de7f4dc69cebd7fc84fde2d8ab9ba15` |
| 86 | `lemma` | [Wbtw.of_le_of_le](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/wbtw-of-le-of-le.md) | 614 | `result-track:1e3d547869ee8df2c6648c0706183d16bafd03e5d3ce49b93bf1ea39e14342eb` |
| 87 | `lemma` | [Sbtw.of_lt_of_lt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/sbtw-of-lt-of-lt.md) | 617 | `result-track:6dba07206993f726ab8c4fbdc8346dae4b71386a2f5c8040d5d8333a34584132` |
| 88 | `theorem` | [wbtw_iff_left_eq_or_right_mem_image_Ici](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/wbtw-iff-left-eq-or-right-mem-image-ici.md) | 620 | `result-track:34915c96905bf2e7a70358d8fb686f35b947a820c1740d4537677b01b29b3ea0` |
| 89 | `theorem` | [Wbtw.right_mem_image_Ici_of_left_ne](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/wbtw-right-mem-image-ici-of-left-ne.md) | 637 | `result-track:1083dc327b975f28a599a3dc15104c727b378743b06541468d4806f06b0bbf59` |
| 90 | `theorem` | [Wbtw.right_mem_affineSpan_of_left_ne](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/wbtw-right-mem-affinespan-of-left-ne.md) | 641 | `result-track:c71e84d91d705bc832d35f3a5af2951dad729fde6e0c912e1fe724da0096b5a9` |
| 91 | `theorem` | [sbtw_iff_left_ne_and_right_mem_image_Ioi](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/sbtw-iff-left-ne-and-right-mem-image-ioi.md) | 646 | `result-track:086d655ffcf28fce8d5743df3a18214f5712829139a280a1cb325a915edc21ac` |
| 92 | `theorem` | [Sbtw.right_mem_image_Ioi](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/sbtw-right-mem-image-ioi.md) | 666 | `result-track:5f4e829d1474f628afb05536ae33a7a4953589e121d14949618a7615607a6106` |
| 93 | `theorem` | [Sbtw.right_mem_affineSpan](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/sbtw-right-mem-affinespan.md) | 670 | `result-track:2cffb9d71b4f4cf3ec2fc9db01cc04e6b64dcb037b8ff31d8e11df11d7ab1c37` |
| 94 | `theorem` | [wbtw_iff_right_eq_or_left_mem_image_Ici](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/wbtw-iff-right-eq-or-left-mem-image-ici.md) | 673 | `result-track:7f3455e39b016ae4acb72f135ca00fd064b2778367a9ad77098b8db36edab124` |
| 95 | `theorem` | [Wbtw.left_mem_image_Ici_of_right_ne](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/wbtw-left-mem-image-ici-of-right-ne.md) | 677 | `result-track:a36518dc09e1950a93f7d0da3145497958a45fb3f0d66eb81af186793ecb5b5e` |
| 96 | `theorem` | [Wbtw.left_mem_affineSpan_of_right_ne](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/wbtw-left-mem-affinespan-of-right-ne.md) | 681 | `result-track:8b3675d5ac9998adab455b46885e1b3c297be984a90fba9fb362faef2fdabbc4` |
| 97 | `theorem` | [sbtw_iff_right_ne_and_left_mem_image_Ioi](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/sbtw-iff-right-ne-and-left-mem-image-ioi.md) | 685 | `result-track:d6ac555fbf565ef1ede9dfc00dadc9d099e7d32fc2891176d5aa9672b3caca9a` |
| 98 | `theorem` | [Sbtw.left_mem_image_Ioi](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/sbtw-left-mem-image-ioi.md) | 689 | `result-track:3785c38d7646941b170c50ce991bffebe4cb6e158fe95dd57b5b8c939c6379d4` |
| 99 | `theorem` | [Sbtw.left_mem_affineSpan](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/sbtw-left-mem-affinespan.md) | 693 | `result-track:0c907b06a65ca07348e86c21962571808ece3417976b16e9bdca1959ff3a25b0` |
| 100 | `lemma` | [AffineSubspace.right_mem_of_wbtw](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/affinesubspace-right-mem-of-wbtw.md) | 697 | `result-track:a4e1346370b5061c159fdb84f9762cb3de96b8b1b0e25020e8cda1af1c32ce39` |
| 101 | `theorem` | [wbtw_smul_vadd_smul_vadd_of_nonneg_of_le](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/wbtw-smul-vadd-smul-vadd-of-nonneg-of-le.md) | 703 | `result-track:c36086cf2f8e635b772ce599fda26acceab6a0564a4930f60e530bfc6e5eabad` |
| 102 | `theorem` | [wbtw_or_wbtw_smul_vadd_of_nonneg](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/wbtw-or-wbtw-smul-vadd-of-nonneg.md) | 709 | `result-track:85122a37793fe419bdbf5f15d3d13a23bf9d30d346a40181305cae64a3be2fcc` |
| 103 | `theorem` | [wbtw_smul_vadd_smul_vadd_of_nonpos_of_le](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/wbtw-smul-vadd-smul-vadd-of-nonpos-of-le.md) | 715 | `result-track:2878530e83376898dca44565e8c7812fd198792d4c9167daad936757b8ee80ff` |
| 104 | `theorem` | [wbtw_or_wbtw_smul_vadd_of_nonpos](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/wbtw-or-wbtw-smul-vadd-of-nonpos.md) | 721 | `result-track:34a4d806893b782ce02efde8d7eebc0706948d1ab62ab9131365e1d688b0504d` |
| 105 | `theorem` | [wbtw_smul_vadd_smul_vadd_of_nonpos_of_nonneg](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/wbtw-smul-vadd-smul-vadd-of-nonpos-of-nonneg.md) | 727 | `result-track:acad54cd712452cf959630ec3b5c0de9cfed367da3a2561c6c407ba24c79dec2` |
| 106 | `theorem` | [wbtw_smul_vadd_smul_vadd_of_nonneg_of_nonpos](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/wbtw-smul-vadd-smul-vadd-of-nonneg-of-nonpos.md) | 733 | `result-track:fd60d8c29e788012956615ff91f2bc1c3765e4637ea2c61126a96864ebec23a6` |
| 107 | `theorem` | [Wbtw.trans_left_right](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/wbtw-trans-left-right.md) | 738 | `result-track:f5cd26bfeb2e2a02d0f83ba91be588549537e34cafe200d6a943621c2efa11e7` |
| 108 | `theorem` | [Wbtw.trans_right_left](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/wbtw-trans-right-left.md) | 762 | `result-track:4fa6b504f540b4b71a4c7eddbc270b77a67688f48c0558971ddbcc6868f468db` |
| 109 | `theorem` | [Sbtw.trans_left_right](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/sbtw-trans-left-right.md) | 767 | `result-track:40c62933fc828fc346932caf22c0633969adcb82b7669a7dfc63362ea9b9f99d` |
| 110 | `theorem` | [Sbtw.trans_right_left](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/sbtw-trans-right-left.md) | 771 | `result-track:ec71dc20cdaacb07c9d1eb66712d70029b152f5ad3f5e7141cfd5e572cfbaada` |
| 111 | `theorem` | [Wbtw.collinear](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/wbtw-collinear.md) | 776 | `result-track:b5dda2967ba5659184e6e802face233370f2e93d8640bb905578d091bcb63063` |
| 112 | `theorem` | [Collinear.wbtw_or_wbtw_or_wbtw](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/collinear-wbtw-or-wbtw-or-wbtw.md) | 789 | `result-track:b6aea0327f58b88d62db02a7f86a63668867860a293302eb6eea57ec00759ab8` |
| 113 | `theorem` | [wbtw_iff_sameRay_vsub](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/wbtw-iff-sameray-vsub.md) | 813 | `result-track:2e51697351fc47a57f46bef748887a0c42614ca4bbfacd00fa8ed693c196f438` |
| 114 | `theorem` | [AffineIndependent.not_wbtw_of_injective](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/affineindependent-not-wbtw-of-injective.md) | 835 | `result-track:ad6174e91d017158b1ad3d5d2cc55ea3bc68fff902c0186e494426d826da4364` |
| 115 | `theorem` | [wbtw_pointReflection](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/wbtw-pointreflection.md) | 845 | `result-track:4d897bf57ab341d1338d81718f6c8896a5a33083c5593269c685735c63cce5b0` |
| 116 | `theorem` | [sbtw_pointReflection_of_ne](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/sbtw-pointreflection-of-ne.md) | 850 | `result-track:165a1966b0ec93ab1e742da520c7c79802194c174b8e361077482dbe851faa02` |
| 117 | `theorem` | [wbtw_midpoint](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/wbtw-midpoint.md) | 855 | `result-track:38519d9aa095d906df89bfa634ca49c4593f603f5ee1c4c2616bf86a512121f4` |
| 118 | `theorem` | [sbtw_midpoint_of_ne](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenMemSegmentIffWbtw.lean/declarations/sbtw-midpoint-of-ne.md) | 859 | `result-track:39db3856f672f7591307a67fbfa81388cf9ddf1c2c82820592ab01443bb3a756` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9641a47b2c0d2184c74e818c0504dd87e4051c6e00a99b7246836e5414972b2e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ConvexGeometry/Between/Variant49104925f6425f3f09e1203da599b2dd0595f697d6ee9e9daf54f27283f44e2b.lean","GRWTSK/_verification/specifications/Geometry/ConvexGeometry/Between/Variant49104925f6425f3f09e1203da599b2dd0595f697d6ee9e9daf54f27283f44e2b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
