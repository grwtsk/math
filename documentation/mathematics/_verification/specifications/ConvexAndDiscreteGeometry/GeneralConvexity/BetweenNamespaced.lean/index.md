# Verification target: Between Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "90cfcc91c41b613890812a3b0e00c15321c159a0",
  "lexical_observation_count": 110,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ConvexGeometry/Between/Variant9ee5101aeef5e4f98e737943a183df431c796b023288db731cfe27e3ce59e3d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/index.md) · [Full source](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `90cfcc91c41b613890812a3b0e00c15321c159a0`.

Source path: `GRWTSK/Geometry/ConvexGeometry/Between/Variant9ee5101aeef5e4f98e737943a183df431c796b023288db731cfe27e3ce59e3d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ConvexGeometry/Between/Variant9ee5101aeef5e4f98e737943a183df431c796b023288db731cfe27e3ce59e3d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Invertible` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Intervals.Group` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Segment` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.FiniteDimensional` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [affineSegment](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/affinesegment.md) | 52 | `declaration-track:3e67c5f11dc3ebfd6eaafd68f107d365b0a26fd460866acebd4677c33d890224` |
| 2 | `theorem` | [affineSegment_eq_segment](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/affinesegment-eq-segment.md) | 56 | `result-track:15d2e04d6f9534515bce977f99b9b7c1cae3cdaed3d4008e07ae11b27a93a099` |
| 3 | `theorem` | [affineSegment_comm](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/affinesegment-comm.md) | 60 | `result-track:8e387a08a38c7bebe6bda8841aef6d27a23813b43dc8492da63acc107d5ac137` |
| 4 | `theorem` | [left_mem_affineSegment](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/left-mem-affinesegment.md) | 69 | `result-track:517ffec5162d235194c724df969ea032620542214d0c53b9786f4b6c91426a64` |
| 5 | `theorem` | [right_mem_affineSegment](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/right-mem-affinesegment.md) | 73 | `result-track:9a89b525390ff0a944fed205d7429a9de75f5f8d52eb6c1a5ba261f0af688cd1` |
| 6 | `theorem` | [affineSegment_same](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/affinesegment-same.md) | 78 | `result-track:471629853985e83a463603984e041783c635df109fb7543b4e6fd8792efc1644` |
| 7 | `theorem` | [affineSegment_image](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/affinesegment-image.md) | 91 | `result-track:ffda2910fe03669ceb2d65fba16d20caa87014ce4603caf30e30244e7fd8f1c5` |
| 8 | `theorem` | [affineSegment_const_vadd_image](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/affinesegment-const-vadd-image.md) | 100 | `result-track:0fcd7205174d971157e9aa3af541beafad4ea7667f4e21fb29876b3363584aab` |
| 9 | `theorem` | [affineSegment_vadd_const_image](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/affinesegment-vadd-const-image.md) | 106 | `result-track:796f03d871a2a3a8d0b09506e92b87e0e6a638946386de2237863c41481f13b5` |
| 10 | `theorem` | [affineSegment_const_vsub_image](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/affinesegment-const-vsub-image.md) | 112 | `result-track:d4a07a236defbc8758e328a52cf5a4bd941042d1712f6b94661d04cc905f3490` |
| 11 | `theorem` | [affineSegment_vsub_const_image](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/affinesegment-vsub-const-image.md) | 118 | `result-track:c0a8334bc9df970f1d5d2d4a0511face9b862a5c525135dc34fed93a67a6478a` |
| 12 | `theorem` | [mem_const_vadd_affineSegment](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/mem-const-vadd-affinesegment.md) | 126 | `result-track:c6218f1eedf7cdb41dc826cc6091afa021832e5aa634339c39a378fa4670cb9c` |
| 13 | `theorem` | [mem_vadd_const_affineSegment](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/mem-vadd-const-affinesegment.md) | 132 | `result-track:e7142f59c617b373380f922295e613191362a4695cea54a124af3643556e25ef` |
| 14 | `theorem` | [mem_const_vsub_affineSegment](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/mem-const-vsub-affinesegment.md) | 138 | `result-track:dbb3bebcca126c5f70ac8b70bf126499b24663527203cc97f6474a5d0fafdc63` |
| 15 | `theorem` | [mem_vsub_const_affineSegment](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/mem-vsub-const-affinesegment.md) | 144 | `result-track:82f17c57196df7c10b494c35c410743d4dd91a0946f31149114ad412c9b3b159` |
| 16 | `def` | [Wbtw](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/wbtw.md) | 152 | `declaration-track:809acfa88eb10e0e6f02ce1b8f900baeaefa2a4b2e95900e4f1da5df8acf23c6` |
| 17 | `def` | [Sbtw](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/sbtw.md) | 157 | `declaration-track:94036887431f9eddc4f383fc102bb22116b4d86b1e7045ab8e9dfcb7db407ea4` |
| 18 | `theorem` | [Wbtw.map](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/wbtw-map.md) | 163 | `result-track:366d026ee38a8ac9f5310981270a2ea126318fea008d2b649a0614c11cb10187` |
| 19 | `theorem` | [Function.Injective.wbtw_map_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/function-injective-wbtw-map-iff.md) | 168 | `result-track:aa458b430e5cac9bdbde8690d145284ee18b291ad8efc79c06bf1a5df34e36eb` |
| 20 | `theorem` | [Function.Injective.sbtw_map_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/function-injective-sbtw-map-iff.md) | 174 | `result-track:d0056040888a89894cc3b1183951871149c9f58eda0873e1da6001cb9d0d2dff` |
| 21 | `theorem` | [AffineEquiv.wbtw_map_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/affineequiv-wbtw-map-iff.md) | 180 | `result-track:8248dc64fc1427d1c4621559fd2d70a3e865d5c9491632678390a0a9186361e0` |
| 22 | `theorem` | [AffineEquiv.sbtw_map_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/affineequiv-sbtw-map-iff.md) | 187 | `result-track:f06e2b627aa9d09e10ff8a62c3c107e14f3006eca4f35186f6d6510a79de93d4` |
| 23 | `theorem` | [wbtw_const_vadd_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/wbtw-const-vadd-iff.md) | 194 | `result-track:c9c586a7cae9e4e349e0e23630a6617190333a0b7c87cdaff8b697ecbca1df1a` |
| 24 | `theorem` | [wbtw_vadd_const_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/wbtw-vadd-const-iff.md) | 200 | `result-track:7660c9b7da540728fb426b9263e82523b906f6b21093c292b8de4ebef4120f78` |
| 25 | `theorem` | [wbtw_const_vsub_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/wbtw-const-vsub-iff.md) | 206 | `result-track:8ea91bfa4a23e44e924736209e2d6e8e6bd5063fb13b1d6be67512b0e20ffce0` |
| 26 | `theorem` | [wbtw_vsub_const_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/wbtw-vsub-const-iff.md) | 212 | `result-track:74665e91f07c15df08de5d10b6f2dd881995faf7af6984e85f7d573c10b672f0` |
| 27 | `theorem` | [sbtw_const_vadd_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/sbtw-const-vadd-iff.md) | 218 | `result-track:46663b182f872d169ee52175301e9911dfe27404ba5c3ec9096eab019cefaece` |
| 28 | `theorem` | [sbtw_vadd_const_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/sbtw-vadd-const-iff.md) | 225 | `result-track:6e6284e91fa6623a5323f3346219bc62ab1736c5399a210d50652807ea182707` |
| 29 | `theorem` | [sbtw_const_vsub_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/sbtw-const-vsub-iff.md) | 232 | `result-track:4d1645d8ed94f879b5d0c9bba8e32a92fd9d71ad63640eb7041978382ae126a8` |
| 30 | `theorem` | [sbtw_vsub_const_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/sbtw-vsub-const-iff.md) | 239 | `result-track:588bd83ff205434de4b67af4e4fdf48a1b7a04f4b922409595b33bc02cec9e8b` |
| 31 | `theorem` | [Sbtw.wbtw](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/sbtw-wbtw.md) | 245 | `result-track:ea9d2aa5ba97fa18ca2ace19eccc57605aa2bb07a2f5fd1949614efa00a0052e` |
| 32 | `theorem` | [Sbtw.ne_left](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/sbtw-ne-left.md) | 249 | `result-track:0187c1af74a036f86612fd246383887ba57912be114feab14ced734b7b05527b` |
| 33 | `theorem` | [Sbtw.left_ne](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/sbtw-left-ne.md) | 253 | `result-track:690fa06cc7a4f16d28846839a1ff08b37ea574c111c4ec409d6dbf63de3e0170` |
| 34 | `theorem` | [Sbtw.ne_right](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/sbtw-ne-right.md) | 257 | `result-track:457da053b9af0a288a1c821fb9cc5a2eeffb56545db822e983bad255618df7fe` |
| 35 | `theorem` | [Sbtw.right_ne](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/sbtw-right-ne.md) | 261 | `result-track:af02adaf400cc80d0756d756f8e2052ef5a4d91a1d577035df756b0d1004418f` |
| 36 | `theorem` | [Sbtw.mem_image_Ioo](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/sbtw-mem-image-ioo.md) | 265 | `result-track:09ef4b9520962e627286eef218236c29f7a85635e78f2db7167b84fccf61396a` |
| 37 | `theorem` | [Wbtw.mem_affineSpan](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/wbtw-mem-affinespan.md) | 276 | `result-track:72df7e83bfc54733a4fa865f710bac7c8e9b0c5164c6278f4072c06185d248dd` |
| 38 | `theorem` | [wbtw_comm](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/wbtw-comm.md) | 281 | `result-track:27f206096799f3a35d613c32ea2b93409d483b2bd64a18a2ba1c46ad446a7c89` |
| 39 | `theorem` | [sbtw_comm](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/sbtw-comm.md) | 288 | `result-track:4926464fabdf49ad8ed9abe7169a1127ba733778c3c61de27dc8f740e6c344f4` |
| 40 | `theorem` | [wbtw_self_left](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/wbtw-self-left.md) | 298 | `result-track:069ccff4af1f9f22e3b93ef64feb4a28f75f6eb83daa35017dfb2e733c23cb2e` |
| 41 | `theorem` | [wbtw_self_right](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/wbtw-self-right.md) | 303 | `result-track:26b17f97b2987f56b1d37dbed195408e82f3b2a544bb826f962a84a4a6cc91ac` |
| 42 | `theorem` | [wbtw_self_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/wbtw-self-iff.md) | 308 | `result-track:cb0c494b10833b7d7506b24fa0b9beff2a052c5da538804791716d8603506586` |
| 43 | `theorem` | [not_sbtw_self_left](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/not-sbtw-self-left.md) | 318 | `result-track:a1aee9ee9d7535015bfeaf8526a8ea3b7739c63c38862b81092e8abad6bf850b` |
| 44 | `theorem` | [not_sbtw_self_right](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/not-sbtw-self-right.md) | 323 | `result-track:3036f3ae7354e31b1031d01148961fc3400d341d15cd35058783db23510e09f4` |
| 45 | `theorem` | [Wbtw.left_ne_right_of_ne_left](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/wbtw-left-ne-right-of-ne-left.md) | 329 | `result-track:84d1640427da7237634de5b86380eaa59cf1af44fa13781265ef4c15cedc7f62` |
| 46 | `theorem` | [Wbtw.left_ne_right_of_ne_right](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/wbtw-left-ne-right-of-ne-right.md) | 335 | `result-track:92a4cc4396b3b98bb552d3f10ad652c8afc7d4bbb00ae1ad1a75f8f3705355c2` |
| 47 | `theorem` | [Sbtw.left_ne_right](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/sbtw-left-ne-right.md) | 341 | `result-track:e0bdba7d3cf2728c6e693691c0ebf139d125d20c102d9c23b01ad5b01f456a14` |
| 48 | `theorem` | [sbtw_iff_mem_image_Ioo_and_ne](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/sbtw-iff-mem-image-ioo-and-ne.md) | 345 | `result-track:88c5b052d50998cdc4fae831c3a01b3f4f3cf9ed701fd6559cc574a2573bbf92` |
| 49 | `theorem` | [not_sbtw_self](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/not-sbtw-self.md) | 358 | `result-track:b7eaf746d7c44237c5bd7fc2ebc68002f9a1e14ee2ebf905b48c4ab752a3c22e` |
| 50 | `theorem` | [wbtw_swap_left_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/wbtw-swap-left-iff-source-edition-2.md) | 362 | `result-track:ce3465923e2cdf5bbcf2e749eb3a1682e09992875f510a8efd45ffac5a9d0fd8` |
| 51 | `theorem` | [wbtw_swap_right_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/wbtw-swap-right-iff-source-edition-2.md) | 385 | `result-track:80cbf0f817d5bb13b8efcc31e1fc3ef08c107a0ff20a7f736d55b04dbc5c0913` |
| 52 | `theorem` | [wbtw_rotate_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/wbtw-rotate-iff.md) | 391 | `result-track:595eea0f59d618c2179094bf5b4a8952569ae7a0b8f92b52234f8d8c80e8a6f9` |
| 53 | `theorem` | [Wbtw.swap_left_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/wbtw-swap-left-iff.md) | 397 | `result-track:7a9ca6c43f145cc00b8d0fbf8915e3bf5de4d7a0f342fcb429f6b093dfaf8d31` |
| 54 | `theorem` | [Wbtw.swap_right_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/wbtw-swap-right-iff.md) | 401 | `result-track:748f49072052b252c11275a70c0faacae92b23ae657d846af381f0cc57306046` |
| 55 | `theorem` | [Wbtw.rotate_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/wbtw-rotate-iff-source-edition-2.md) | 405 | `result-track:6015ae8e7b07f4325811bef4bacf875e6dec8cbf05c872ea7a0adcd3931663cc` |
| 56 | `theorem` | [Sbtw.not_swap_left](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/sbtw-not-swap-left.md) | 409 | `result-track:d044d3c80097d28800d7811ad907e25f28c2873f7bef0096fd3c8e07e6e500da` |
| 57 | `theorem` | [Sbtw.not_swap_right](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/sbtw-not-swap-right.md) | 413 | `result-track:d1588a38f868f6557e7586453a63bc32d506fb5c53dfe0ea8a5175cd9843b8c4` |
| 58 | `theorem` | [Sbtw.not_rotate](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/sbtw-not-rotate.md) | 417 | `result-track:6793e8260555fb6cd1ac830193b723477a826d846ecb0c41edac3513ff15be2e` |
| 59 | `theorem` | [wbtw_lineMap_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/wbtw-linemap-iff.md) | 422 | `result-track:823aed14194911c3b5a8b3d3711c0583ab3a46775badbf55e3e3a99e854b332a` |
| 60 | `theorem` | [sbtw_lineMap_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/sbtw-linemap-iff.md) | 431 | `result-track:b78d53d69b76990de6d4723b01939522d274eb0673925b69657ac7f44ebd7186` |
| 61 | `theorem` | [wbtw_mul_sub_add_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/wbtw-mul-sub-add-iff.md) | 439 | `result-track:27255f75af314b6b0a692b98972f9604c3a749ee21b38cf8959b8f9f6303293f` |
| 62 | `theorem` | [sbtw_mul_sub_add_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/sbtw-mul-sub-add-iff.md) | 445 | `result-track:39e3c525ca7d03b1833a58238b6295f83473493cebb691d2d575bd8005bb5058` |
| 63 | `theorem` | [wbtw_zero_one_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/wbtw-zero-one-iff.md) | 451 | `result-track:103de8aeabbb6a06a8ba70a2357f89c83956928172332958355ea52dfc2ba453` |
| 64 | `theorem` | [wbtw_one_zero_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/wbtw-one-zero-iff.md) | 458 | `result-track:f70f35a5665f92b2080993462caaaa649f3596b30cc1de43564f0c6ad31e9847` |
| 65 | `theorem` | [sbtw_zero_one_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/sbtw-zero-one-iff.md) | 463 | `result-track:f7b98b3379ebb50a8505145ef48b0202a6bc8c338bfa7bea1e86a25b9ec2f386` |
| 66 | `theorem` | [sbtw_one_zero_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/sbtw-one-zero-iff.md) | 471 | `result-track:6f27f0ef0f02a06dfa631de7581c8aa01d346da09403169d817a7c7444413a4a` |
| 67 | `theorem` | [Wbtw.trans_left](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/wbtw-trans-left.md) | 475 | `result-track:dd9f7040f930e3fdcc92716d3bf22d29a34331950360d6b58877190c0338f44c` |
| 68 | `theorem` | [Wbtw.trans_right](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/wbtw-trans-right.md) | 482 | `result-track:eb0351c5985705c875d75f898121a6e026ef563d993c612a6cb4b309d5400eea` |
| 69 | `theorem` | [Wbtw.trans_sbtw_left](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/wbtw-trans-sbtw-left.md) | 487 | `result-track:a48831aef4008decbf4ee0ef853cda2db2e78f5be774e235f53623c04e6c7f33` |
| 70 | `theorem` | [Wbtw.trans_sbtw_right](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/wbtw-trans-sbtw-right.md) | 494 | `result-track:9b1e0e5176f0f9f63d584840a65135adbbc0f882df9ff495632a7adb4c5713bc` |
| 71 | `theorem` | [Sbtw.trans_left](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/sbtw-trans-left.md) | 501 | `result-track:73921c2a57536568bee7d5716529d29fa4a04aeb3ed07f2f85053e3491416455` |
| 72 | `theorem` | [Sbtw.trans_right](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/sbtw-trans-right.md) | 506 | `result-track:20411072eb4cca6faa4605cb2050d2567d3bf27498cc6c6cef6196bee1810111` |
| 73 | `theorem` | [Wbtw.trans_left_ne](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/wbtw-trans-left-ne.md) | 511 | `result-track:ae0cb6e05bb889c5c1a9e215f63b814a636e973f7f6e2224bab29aae65e02427` |
| 74 | `theorem` | [Wbtw.trans_right_ne](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/wbtw-trans-right-ne.md) | 517 | `result-track:cf2a2babfb1a3d6304731bf585c01d1856231b65952094f829782c660f40b61b` |
| 75 | `theorem` | [Sbtw.trans_wbtw_left_ne](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/sbtw-trans-wbtw-left-ne.md) | 523 | `result-track:20c850eab90763b38c40bffa313cde3de190b563535eed59571707ff0b1a7a31` |
| 76 | `theorem` | [Sbtw.trans_wbtw_right_ne](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/sbtw-trans-wbtw-right-ne.md) | 528 | `result-track:1b5ce6a1338e4ff2f0056371bc34e35692e970bfe5f4962b5e7b41e8dc577d5f` |
| 77 | `theorem` | [Sbtw.affineCombination_of_mem_affineSpan_pair](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/sbtw-affinecombination-of-mem-affinespan-pair.md) | 533 | `result-track:9ca82eb0f04423dad7186bf931364892b586ae9f9363b570e9369568d9497f7b` |
| 78 | `theorem` | [Wbtw.sameRay_vsub](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/wbtw-sameray-vsub.md) | 566 | `result-track:a64e89e611319bb5628d801307be7d0d730e3afc838aae4dfea7f0bb03ed8752` |
| 79 | `theorem` | [Wbtw.sameRay_vsub_left](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/wbtw-sameray-vsub-left.md) | 576 | `result-track:b96495d841ca95219ca0e70078b1b3f0bcec8dd80525faa7b3b9352248886840` |
| 80 | `theorem` | [Wbtw.sameRay_vsub_right](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/wbtw-sameray-vsub-right.md) | 581 | `result-track:39fc39033db37c9191f56d9056244ea2fd18e8347c8c801e0f517f363400a2f7` |
| 81 | `theorem` | [sbtw_of_sbtw_of_sbtw_of_mem_affineSpan_pair](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/sbtw-of-sbtw-of-sbtw-of-mem-affinespan-pair.md) | 598 | `result-track:1cbe264601b2039bb139987e8cb5bdbe3218ec38892ec3ae8d4c4db3a5bfdc76` |
| 82 | `theorem` | [wbtw_iff_left_eq_or_right_mem_image_Ici](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/wbtw-iff-left-eq-or-right-mem-image-ici.md) | 681 | `result-track:da187dda07678d51b8f99c067672e8a4036a83ef99effc52e229587181cef5c6` |
| 83 | `theorem` | [Wbtw.right_mem_image_Ici_of_left_ne](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/wbtw-right-mem-image-ici-of-left-ne.md) | 699 | `result-track:8a646131602c36cf6382e540d0a0400546f149d6be59f8c383579783f1848949` |
| 84 | `theorem` | [Wbtw.right_mem_affineSpan_of_left_ne](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/wbtw-right-mem-affinespan-of-left-ne.md) | 704 | `result-track:2aaaf2e6e1cfeb033a9070a835f35afb10fda4873cd59e3ad80ec38b89eb2d20` |
| 85 | `theorem` | [sbtw_iff_left_ne_and_right_mem_image_Ioi](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/sbtw-iff-left-ne-and-right-mem-image-ioi.md) | 710 | `result-track:97a4854ab7a1573180ae9bda4d16ff0532424b9374e78061f965286b7dae2515` |
| 86 | `theorem` | [Sbtw.right_mem_image_Ioi](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/sbtw-right-mem-image-ioi.md) | 732 | `result-track:1be482e18ced09ba520b2ce26765843811b25fc4582a1e5676d72123db6a50a7` |
| 87 | `theorem` | [Sbtw.right_mem_affineSpan](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/sbtw-right-mem-affinespan.md) | 737 | `result-track:132235333faa83f72a02c7718097602aeb48e1634b6c1cea0addb0fda3ed7da0` |
| 88 | `theorem` | [wbtw_iff_right_eq_or_left_mem_image_Ici](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/wbtw-iff-right-eq-or-left-mem-image-ici.md) | 741 | `result-track:8bc299841302d5f8b38b06e13d4ada386977aa32f8e59d8c68413771484de7f8` |
| 89 | `theorem` | [Wbtw.left_mem_image_Ici_of_right_ne](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/wbtw-left-mem-image-ici-of-right-ne.md) | 746 | `result-track:e2e638056b2cee5343a0accf55b2f0765977a956f32d09f71403914e1a258947` |
| 90 | `theorem` | [Wbtw.left_mem_affineSpan_of_right_ne](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/wbtw-left-mem-affinespan-of-right-ne.md) | 751 | `result-track:09ed188f67ff027d2b997612daca2d1caf99fa6424f9b5f56028ea95e4afd377` |
| 91 | `theorem` | [sbtw_iff_right_ne_and_left_mem_image_Ioi](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/sbtw-iff-right-ne-and-left-mem-image-ioi.md) | 756 | `result-track:e3a91bfadeeadf9410ae2c7348602e627f511be6b2111e417b4e7041fb3c051c` |
| 92 | `theorem` | [Sbtw.left_mem_image_Ioi](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/sbtw-left-mem-image-ioi.md) | 762 | `result-track:aafdd6d79096e8521cd9de8bc8781f989c2edf3f6108bf6636c9647c0e3ecb7d` |
| 93 | `theorem` | [Sbtw.left_mem_affineSpan](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/sbtw-left-mem-affinespan.md) | 767 | `result-track:aef19a40354840a38f4e5079cb52974e2043d6d9bdacf37cfd535e5693f263d1` |
| 94 | `theorem` | [wbtw_smul_vadd_smul_vadd_of_nonneg_of_le](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/wbtw-smul-vadd-smul-vadd-of-nonneg-of-le.md) | 771 | `result-track:3db81db6082607138319f0b4b60b224560fd69e86d2070f22f295117255a067c` |
| 95 | `theorem` | [wbtw_or_wbtw_smul_vadd_of_nonneg](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/wbtw-or-wbtw-smul-vadd-of-nonneg.md) | 778 | `result-track:256a3022c6e17aedcedd5b46b2f98138e73b2f92504bb3875be4907efbf22db0` |
| 96 | `theorem` | [wbtw_smul_vadd_smul_vadd_of_nonpos_of_le](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/wbtw-smul-vadd-smul-vadd-of-nonpos-of-le.md) | 785 | `result-track:a50b6df609daf3932481a2179601677a772230e942f9d02c59133549ca69a165` |
| 97 | `theorem` | [wbtw_or_wbtw_smul_vadd_of_nonpos](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/wbtw-or-wbtw-smul-vadd-of-nonpos.md) | 792 | `result-track:23f5ba3dfad6f8b7365aa587536267c87a689bcbd5aa4e5560f551e3c5d63ffc` |
| 98 | `theorem` | [wbtw_smul_vadd_smul_vadd_of_nonpos_of_nonneg](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/wbtw-smul-vadd-smul-vadd-of-nonpos-of-nonneg.md) | 799 | `result-track:b92d870e857f3b5c7ef87cab5ed076d4e021859727c3f031266d2fa6e22b9082` |
| 99 | `theorem` | [wbtw_smul_vadd_smul_vadd_of_nonneg_of_nonpos](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/wbtw-smul-vadd-smul-vadd-of-nonneg-of-nonpos.md) | 806 | `result-track:734ce0ea54835c738bb1bca2df4abd1f86c9d6972b1f15760c73113eb2fd6ff6` |
| 100 | `theorem` | [Wbtw.trans_left_right](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/wbtw-trans-left-right.md) | 812 | `result-track:d536b5b51db5dc15de55303b1d309055a56e2d2870fc28eb8b2133f10f1e5c67` |
| 101 | `theorem` | [Wbtw.trans_right_left](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/wbtw-trans-right-left.md) | 837 | `result-track:1016912aacc0ea90d90acfb0cda89f3aafeeee88c9c36775f47281ff94107f3a` |
| 102 | `theorem` | [Sbtw.trans_left_right](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/sbtw-trans-left-right.md) | 843 | `result-track:46564ac51863b67ce6d4e5a2e4d5c43cd649be4eae547305720d1d38b4f80300` |
| 103 | `theorem` | [Sbtw.trans_right_left](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/sbtw-trans-right-left.md) | 848 | `result-track:db2125159007018c44fd50da26c8d050937f62209096b49ccc9a79202fe45278` |
| 104 | `theorem` | [Wbtw.collinear](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/wbtw-collinear.md) | 853 | `result-track:e17677e42475a9246dfd8e79b291b56b9532dff1fcbce0658f39d602f52b2160` |
| 105 | `theorem` | [Collinear.wbtw_or_wbtw_or_wbtw](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/collinear-wbtw-or-wbtw-or-wbtw.md) | 867 | `result-track:8b3aa34f3f89ca5db2a61cf06454662bd1eaf2ab6f6b57ccaafcdd10dc64240b` |
| 106 | `theorem` | [wbtw_iff_sameRay_vsub](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/wbtw-iff-sameray-vsub.md) | 892 | `result-track:9e0ea11a8bd6098cb98860518e411b542cfc407b58a3f952f757c295c5587e9d` |
| 107 | `theorem` | [wbtw_pointReflection](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/wbtw-pointreflection.md) | 915 | `result-track:46e5b7d7d0191b4b19b4b0670872dd6cea26ad2e9fea59530b32119a7b714841` |
| 108 | `theorem` | [sbtw_pointReflection_of_ne](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/sbtw-pointreflection-of-ne.md) | 921 | `result-track:f7d4153ec4adad127cbb0002c0f8588f8d8a130f8e2073cee630a3560c3a04e1` |
| 109 | `theorem` | [wbtw_midpoint](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/wbtw-midpoint.md) | 927 | `result-track:23f3f1a7b1652ce8aee17681244220432d2b1ac9052f5df12576acedadffe8ac` |
| 110 | `theorem` | [sbtw_midpoint_of_ne](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/BetweenNamespaced.lean/declarations/sbtw-midpoint-of-ne.md) | 932 | `result-track:d3393a87f7f5778fa43a894136a0d29db55741ba216d85ada58568429856b04d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8a57cb22a0f30e1c3d994cf521faae9ad9ed023991fe6154796d84dd82db7c41 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ConvexGeometry/Between/Variant9ee5101aeef5e4f98e737943a183df431c796b023288db731cfe27e3ce59e3d5.lean","GRWTSK/_verification/specifications/Geometry/ConvexGeometry/Between/Variant9ee5101aeef5e4f98e737943a183df431c796b023288db731cfe27e3ce59e3d5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
