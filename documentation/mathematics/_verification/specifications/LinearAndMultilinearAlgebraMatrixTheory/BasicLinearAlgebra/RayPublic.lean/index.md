# Verification target: Ray Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "257e065352ec69d77ab4f8d94ea59abe8a4e2960",
  "lexical_observation_count": 96,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Ray/Variant355911444e22767a90f33b6de36cdf389224f39ab7e515411fe5f8ad24017ea0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `257e065352ec69d77ab4f8d94ea59abe8a4e2960`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Ray/Variant355911444e22767a90f33b6de36cdf389224f39ab7e515411fe5f8ad24017ea0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Ray/Variant355911444e22767a90f33b6de36cdf389224f39ab7e515411fe5f8ad24017ea0.lean.json)

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
| 1 | `def` | [SameRay](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/sameray.md) | 43 | `declaration-track:9763b3337e5f33e5950fa5025b4f4a829befebfce600cf6fa1cc7774a8f45376` |
| 2 | `def` | [RayVector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/rayvector.md) | 51 | `declaration-track:52b88b5825df003b335c0cbbc566b5f0782a89b612dff3f75ccc5e5c439c0ca8` |
| 3 | `def` | [RayVector.equiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/rayvector-equiv.md) | 55 | `declaration-track:bb9553a2a29ea5953559a06f8570483865ad10858e9c70a2d158cb06a0dd2a79` |
| 4 | `instance` | [RayVector.coe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/rayvector-coe.md) | 58 | `declaration-track:6f2296e29250d10a87611ad5f4d83f9c089994ea21dee754e837c12304c27eb6` |
| 5 | `theorem` | [RayVector.coe_equiv_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/rayvector-coe-equiv-symm.md) | 62 | `result-track:4b1369f2af9acb2628225bf6e0652699ac149ef59dc9579314ec1a91d92eae0b` |
| 6 | `theorem` | [RayVector.ext](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/rayvector-ext.md) | 66 | `result-track:9c042850839d9ab0d1b36c87c289292ff34bf94adcf96262769b09422da1c8b3` |
| 7 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/instance.md) | 69 | `declaration-track:05adcfe569f987aed55ba49e840e5fb7ba7e6fdce7cdc012cc3a63a36f56778c` |
| 8 | `theorem` | [zero_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/zero-left.md) | 81 | `result-track:a2de4c632a792850a6dab086867961f18fb5d69b1a31737a6324489e46f16407` |
| 9 | `theorem` | [zero_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/zero-right.md) | 85 | `result-track:daf1958fa672828a34f72bd8492a29c462c0ab4124bc5fca0c645aa3f15e5e65` |
| 10 | `theorem` | [of_subsingleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/of-subsingleton-source-edition-2.md) | 89 | `result-track:bd60e32bc6b5a60675636ac6307500b8346f97f438b2dc0d5a92c3e5bf685113` |
| 11 | `theorem` | [of_subsingleton'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/of-subsingleton.md) | 94 | `result-track:4fa2afed8018d96fc98a85d35a7468634c4a34cd5040811c0c66a8f6f1f37dcf` |
| 12 | `theorem` | [refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/refl.md) | 100 | `result-track:f0651502ff70e4b76dfa173d5b4df554f5a3bb160450377f5db1843bb73735ba` |
| 13 | `theorem` | [rfl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/rfl.md) | 103 | `result-track:e7ccc07f8e5a42ed15d83ad520423b2c013d224a93eb19b3da6d2ab5339407a7` |
| 14 | `theorem` | [symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/symm.md) | 108 | `result-track:51fbe0e58b3b38c4c8a67b71adc342a5ee37c0f4b5e73bc9b4ffe097aeda4e70` |
| 15 | `theorem` | [exists_pos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/exists-pos.md) | 113 | `result-track:ede9d856f8245806a484919d176b4e0a06ebc53e75fdcf1d9827eeec2f9bce52` |
| 16 | `theorem` | [sameRay_comm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/sameray-comm.md) | 117 | `result-track:71bcfea160f77714211297b2ce900741457aef4967a4f6b416fccd224c0580d8` |
| 17 | `theorem` | [trans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/trans.md) | 122 | `result-track:16957acd11838b7eceea139e6287171d28e616ab527d13c518f4bcb9c9c14a9e` |
| 18 | `lemma` | [sameRay_nonneg_smul_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/sameray-nonneg-smul-right.md) | 138 | `result-track:d9487037360c522f40f27a0cec0a5ad9b8d79ac80360f04d77178e282a20214b` |
| 19 | `lemma` | [sameRay_nonneg_smul_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/sameray-nonneg-smul-left.md) | 146 | `result-track:94fd7b0c3e62799d6f194b6b5b6db132e2f872abca5b42178dd5af435705ff7d` |
| 20 | `lemma` | [sameRay_pos_smul_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/sameray-pos-smul-right.md) | 150 | `result-track:ffd05b9517e4750d19f32aa2b79a184d1dfc875768fed71a8fa7ed7a55bea637` |
| 21 | `lemma` | [sameRay_pos_smul_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/sameray-pos-smul-left.md) | 154 | `result-track:fe6f1dae77ade2d1e6feea692ebcdfedfdb041ffbf3d83dbacb3634502e64978` |
| 22 | `lemma` | [nonneg_smul_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/nonneg-smul-right.md) | 158 | `result-track:0d96886033757803f66ea1a9350c9e8a5d42e17e43db60152f6342b093e852df` |
| 23 | `lemma` | [nonneg_smul_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/nonneg-smul-left.md) | 162 | `result-track:fc93ab587ec0f8aaaf5d1122370c485dfe8dd5f73946f9b4e6e1a11789c4bbd0` |
| 24 | `theorem` | [pos_smul_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/pos-smul-right.md) | 166 | `result-track:df96ea08bc81edd408980bf99c90d47b9361f86ffb26d0768e5970233560cd15` |
| 25 | `theorem` | [pos_smul_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/pos-smul-left.md) | 170 | `result-track:856ade393dd9482a6ed1c5eedc580f0fa4c5c834cd7ede332488373d58044016` |
| 26 | `theorem` | [map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/map.md) | 174 | `result-track:b733f4af25497c68faaf2dc1964ee98aa6f1a34930e10cca6fd7e4e66506eb4b` |
| 27 | `theorem` | [_root_.Function.Injective.sameRay_map_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/root-function-injective-sameray-map-iff.md) | 181 | `result-track:faa5e73ca30ed21ef759f39722220e255f97775cab6786e64eac64208a19eb51` |
| 28 | `theorem` | [sameRay_map_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/sameray-map-iff.md) | 190 | `result-track:3c372f01e17ac10cfa793dd6178e74d8fe723a08230c6279fae63595c4a133c6` |
| 29 | `theorem` | [smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/smul.md) | 195 | `result-track:e9f0e95bebab0da41f343f112e4ce3d3acfb725bdf1837d21bcaf0c8c7badf05` |
| 30 | `theorem` | [add_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/add-left.md) | 200 | `result-track:460732f55f4afcec9c9496b5dcd4f7ba6da602a0feeff1cb87357dccf04a6766` |
| 31 | `theorem` | [add_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/add-right.md) | 213 | `result-track:62cd05cff8a509093b8aef65ce1bdc4ba99f675ab6650342a0d3d2f107958972` |
| 32 | `instance` | [RayVector.Setoid](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/rayvector-setoid.md) | 221 | `declaration-track:3bb9d6681118884ab515f12326b7ae6594bf6a993c5e45d79f5e5681a0653c2a` |
| 33 | `def` | [Module.Ray](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/module-ray.md) | 229 | `declaration-track:c66898ee53768be100cb9498f7e95dcb55190d6e175b535054abfc042afb700e` |
| 34 | `theorem` | [equiv_iff_sameRay](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/equiv-iff-sameray.md) | 235 | `result-track:e3e907c0772f9eb1598f7603a11b2df551b1258d9f21abc2cec81712d8c28d9b` |
| 35 | `def` | [rayOfNeZero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/rayofnezero.md) | 241 | `declaration-track:73fd30577ae13cddfe96282b6b924ab5d5f520db08d81b505eb61e6b9f514fc5` |
| 36 | `theorem` | [Module.Ray.ind](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/module-ray-ind.md) | 245 | `result-track:c25d5276bd8f9704476479d8aacad85deb314fbf14be8573fa07347c04d7a979` |
| 37 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/instance-source-edition-5.md) | 251 | `declaration-track:6d9f96f60b106100f8e5e94c92cb377cfd2dd94e02a3f79e78b0738bf9aba888` |
| 38 | `theorem` | [ray_eq_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/ray-eq-iff.md) | 256 | `result-track:87cfe6c60c5d77803893da0f21ddcf4d60bc1abf002bbe0a0db8404f702f7796` |
| 39 | `theorem` | [ray_pos_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/ray-pos-smul.md) | 262 | `result-track:0f08547c6441f7417e3446024bc0d3fd0a7824aa3bc89c392f7cc7ad3a37c170` |
| 40 | `def` | [RayVector.mapLinearEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/rayvector-maplinearequiv.md) | 267 | `declaration-track:341f8cf692eacfaa2e74ae130c08f20bf87965382e12bb893177ac9a4e2d71b6` |
| 41 | `def` | [Module.Ray.map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/module-ray-map.md) | 271 | `declaration-track:ef9c0eccb9d215981d4e4e2f4c20d256b7bf11583d80c8fc543b74ef87e06f5c` |
| 42 | `theorem` | [Module.Ray.map_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/module-ray-map-apply.md) | 275 | `result-track:aa8e768fa3f7816667f27b132766dfc7baf703d99c92c61f2905b34d8764093b` |
| 43 | `theorem` | [Module.Ray.map_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/module-ray-map-refl.md) | 280 | `result-track:e8d383bbf2fe913c4ffaac4ebb8601d8fb726004e2930c24a0ad5b66adbfadab` |
| 44 | `theorem` | [Module.Ray.map_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/module-ray-map-symm.md) | 284 | `result-track:fa9dbcfa8542a6a188f8d565cb8b42f4966af20f3c5b08560c6b99567477fe88` |
| 45 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/instance-source-edition-4.md) | 293 | `declaration-track:687ac0c24a3034935cafb807951b04346fa11716036334b0f2c75b41c9809fd6` |
| 46 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/instance-source-edition-8.md) | 302 | `declaration-track:d0d4efce87932842594d7fbb8d6f615afcae37017df2d3d84c6dbf6dc4b25d49` |
| 47 | `theorem` | [Module.Ray.linearEquiv_smul_eq_map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/module-ray-linearequiv-smul-eq-map.md) | 309 | `result-track:8f01cbef7a7ea12ad9d6158c4b0575f4f41202f8b20e0afb65c2af7f3153e6d7` |
| 48 | `theorem` | [smul_rayOfNeZero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/smul-rayofnezero.md) | 314 | `result-track:e9db1268c36a181bfc85bffdb4bbd49d8b1d0342573f42ffd2d4fca66313fb9a` |
| 49 | `theorem` | [units_smul_of_pos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/units-smul-of-pos.md) | 323 | `result-track:d63944546d9a7cbaa4177c96eaacb96e54af03491eb57d0bf76f93c268645652` |
| 50 | `def` | [someRayVector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/somerayvector.md) | 329 | `declaration-track:7d9d31f48d28aa357e8fd41d7c872ec4e26572f8ba4a48c1fd7bf12191db2aac` |
| 51 | `theorem` | [someRayVector_ray](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/somerayvector-ray.md) | 334 | `result-track:c81d7e2e4c82d8ceb35d5d65d9aeed8f3756e5b406a9f004ac75ea4ef6f8c9f6` |
| 52 | `def` | [someVector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/somevector.md) | 338 | `declaration-track:e1e951e70f1434070d2ee10980d3f2d6efdfa30b5051a561116ef78b91091025` |
| 53 | `theorem` | [someVector_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/somevector-ne-zero.md) | 343 | `result-track:bf5a56ffe7d49a069c03963c360bd160e74d2325844e3e2a1e4cc85d3060eba5` |
| 54 | `theorem` | [someVector_ray](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/somevector-ray.md) | 348 | `result-track:d48fd3f8cbc4b76b3cd678d66f51c4aeb7a7c197b1eb694ea55690c22fe73bc6` |
| 55 | `theorem` | [sameRay_neg_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/sameray-neg-iff.md) | 362 | `result-track:44c00ee519534596116d1014cd197231b3399c515811ac97da676598c35c338a` |
| 56 | `theorem` | [sameRay_neg_swap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/sameray-neg-swap.md) | 367 | `result-track:2fc90e814114e01db4383af380b501c9f592e5ee91d167c1782c29f6379df3d9` |
| 57 | `lemma` | [eq_zero_of_sameRay_neg_smul_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/eq-zero-of-sameray-neg-smul-right.md) | 369 | `result-track:1efebaf034fb13fa83d89d34368251eca5e9149f3dc04c52333c3ab2bbf5efab` |
| 58 | `theorem` | [eq_zero_of_sameRay_self_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/eq-zero-of-sameray-self-neg.md) | 379 | `result-track:6d02eb4371078db3e6be74a9537da621340b8d46960611409b8f17f852b2ddda` |
| 59 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/instance-source-edition-7.md) | 387 | `declaration-track:cbb043872d13b7382a8503cc78a526319d751f6fd6ecec2d80fc6b1ec1701b4d` |
| 60 | `theorem` | [coe_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/coe-neg.md) | 392 | `result-track:fdcf4521b66df270555a211a852448a328e6ed1f67a80fe1492bc6ed18e6a3ee` |
| 61 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/instance-source-edition-2.md) | 396 | `declaration-track:27bf87846f86d0e68ec75aef7dbbff58704abd4d3aa4f93264f0aac20aa86fa7` |
| 62 | `theorem` | [equiv_neg_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/equiv-neg-iff.md) | 401 | `result-track:dd9a1dc43cc9760e0d02b3113ac9b2f2346f36665b3df9a0b2a5a41e76678d41` |
| 63 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/instance-source-edition-6.md) | 409 | `declaration-track:a1bda5c07e1d8be267d34847e2820df1b484c1fae6a546426b72021aa39a27e5` |
| 64 | `theorem` | [neg_rayOfNeZero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/neg-rayofnezero.md) | 414 | `result-track:fc1af3d0b63e6279cc27b6487c61e8c421205abbe55a24560fc8ebdc8f3f786b` |
| 65 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/instance-source-edition-3.md) | 423 | `declaration-track:2afe6a017bf55e1c759362b33a738e90d812abdcc274f274d78af65aa7e50657` |
| 66 | `theorem` | [ne_neg_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/ne-neg-self.md) | 428 | `result-track:5a32059da9efddc3478684b5ff3720ded738b442baed39bba030fdd315da4bf7` |
| 67 | `theorem` | [neg_units_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/neg-units-smul.md) | 433 | `result-track:b4779acf716df10ab05de204cf288d3c950818dcb80029c3828a605de6c503c7` |
| 68 | `theorem` | [units_smul_of_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/units-smul-of-neg.md) | 438 | `result-track:df1352dcbb642114bd0401d4d63ba482ecde90ef204c63440ec1c15f6b4eae57` |
| 69 | `theorem` | [map_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/map-neg.md) | 443 | `result-track:2bedc740ca9a8c3ff24b2b7083fa460ebc2e8ec4b6c87562cde5ed3f827f9686` |
| 70 | `theorem` | [sameRay_of_mem_orbit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/sameray-of-mem-orbit.md) | 456 | `result-track:9a0fe9b240b249488722b032d9e07e575510ecdeaefe27e54c098239bf77f313` |
| 71 | `theorem` | [units_inv_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/units-inv-smul.md) | 463 | `result-track:4a442516e786882e76f62729e458e022dcd2672aaf72a48977411642e434dda4` |
| 72 | `theorem` | [sameRay_smul_smul_of_mul_nonneg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/sameray-smul-smul-of-mul-nonneg.md) | 471 | `result-track:167bba1ec3c07f93b82cd0a31a563bde86245a04d7464db23e25a52bf5187d74` |
| 73 | `theorem` | [sameRay_smul_right_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/sameray-smul-right-iff.md) | 487 | `result-track:cc50c0bc0603938b2c63c9766e06d3219752dcfa0e3ebcbf323b014e4229a9d0` |
| 74 | `theorem` | [sameRay_smul_right_iff_of_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/sameray-smul-right-iff-of-ne.md) | 493 | `result-track:332dbb3e8818fea6fad442f5e054c9304d1a86cebe02d5fe4985d428abda87fb` |
| 75 | `theorem` | [sameRay_smul_left_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/sameray-smul-left-iff.md) | 498 | `result-track:cce67fc15f70055da83f94a99b7e36251785a270dcfea431d91e73491c9d5021` |
| 76 | `theorem` | [sameRay_smul_left_iff_of_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/sameray-smul-left-iff-of-ne.md) | 503 | `result-track:590846eb2292da25c3bd7ca3e907f7d18e6bfbca49e564faf97b1f5822057034` |
| 77 | `theorem` | [sameRay_neg_smul_right_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/sameray-neg-smul-right-iff.md) | 508 | `result-track:ba9e88505bdcf86313c7a6dc4c18b6717c912078d7f5141eda742f7ceb95925b` |
| 78 | `theorem` | [sameRay_neg_smul_right_iff_of_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/sameray-neg-smul-right-iff-of-ne.md) | 511 | `result-track:67b5e9e75d1cc46ec21fe2fcde8584471db31ee524ccaf2c974dc18dccc871c5` |
| 79 | `theorem` | [sameRay_neg_smul_left_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/sameray-neg-smul-left-iff.md) | 516 | `result-track:886bec839f6641d9ebbd0af4fc110d37bd7a1b77dc092b3084832520fc18b9b9` |
| 80 | `theorem` | [sameRay_neg_smul_left_iff_of_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/sameray-neg-smul-left-iff-of-ne.md) | 519 | `result-track:f5b78d0c05f6c07b8f66744cc7cfa3ce2d83026b5cb2e353b83c20c78a1e2161` |
| 81 | `theorem` | [units_smul_eq_self_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/units-smul-eq-self-iff.md) | 524 | `result-track:e26abbfe047d43b4254da4b6b5dadbb02a7987678316ea090e83836045ff053d` |
| 82 | `theorem` | [units_smul_eq_neg_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/units-smul-eq-neg-iff.md) | 529 | `result-track:242079ea9323c95baa3a49fb6090232e3913fd9feea045805e54a3f0e85edff9` |
| 83 | `theorem` | [sameRay_or_sameRay_neg_iff_not_linearIndependent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/sameray-or-sameray-neg-iff-not-linearindependent.md) | 535 | `result-track:709766870716abb5522b5a6baf4fe278c45629d06c8a0b64056fd0d6ab267a51` |
| 84 | `theorem` | [sameRay_or_ne_zero_and_sameRay_neg_iff_not_linearIndependent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/sameray-or-ne-zero-and-sameray-neg-iff-not-linearindependent.md) | 579 | `result-track:fbeda26ec3c180f6b802c9f19c585a51df4b25d93a503436d23902c9b179a7d5` |
| 85 | `theorem` | [exists_pos_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/exists-pos-left.md) | 594 | `result-track:630a651172e5715016ba90c52d226ff0244bdb99971c616ba3ab8b4dd212c789` |
| 86 | `theorem` | [exists_pos_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/exists-pos-right.md) | 599 | `result-track:c82b5ba4124863d192904efe02a868a66aaa34cc11130da8e617c98c3a70a39b` |
| 87 | `theorem` | [exists_nonneg_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/exists-nonneg-left.md) | 605 | `result-track:59a6aaa39fb59f747227a22fff39b71d922569d9233461ead7a3e6ffe20f66ce` |
| 88 | `theorem` | [exists_nonneg_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/exists-nonneg-right.md) | 612 | `result-track:05a1cf19b15daf0b483c1ac8d5cddc0f445ebd9ae2d8d1bf0d59a4bfbf27936a` |
| 89 | `theorem` | [exists_eq_smul_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/exists-eq-smul-add.md) | 617 | `result-track:f91263e0d1266a485330efb90c73c5739ac748e2d0cc38421ce6075c382a76e1` |
| 90 | `theorem` | [exists_eq_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/exists-eq-smul.md) | 633 | `result-track:88c30fe5e7c368203455a69180b6cf8cb3b5fc2854d6ee9f95c5abf8ace7e0c0` |
| 91 | `theorem` | [exists_pos_left_iff_sameRay](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/exists-pos-left-iff-sameray.md) | 644 | `result-track:ccb603f89016e0aab9459c003b82df66d5b90651a70883fceef67b41250f46cb` |
| 92 | `theorem` | [exists_pos_left_iff_sameRay_and_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/exists-pos-left-iff-sameray-and-ne-zero.md) | 650 | `result-track:46bb5ec752d4679db945bf1627ed89e67935c3adca3dcc3dc3ec6a35554e3863` |
| 93 | `theorem` | [exists_nonneg_left_iff_sameRay](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/exists-nonneg-left-iff-sameray.md) | 658 | `result-track:cc0782a52cae84b48ec18dc5c60df7dbb382130e07560947ab513bb65b1a091d` |
| 94 | `theorem` | [exists_pos_right_iff_sameRay](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/exists-pos-right-iff-sameray.md) | 664 | `result-track:444cf9900b5b7230279892958e8b8a67855dc9b899e13b1cf9b6bfd0066893c9` |
| 95 | `theorem` | [exists_pos_right_iff_sameRay_and_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/exists-pos-right-iff-sameray-and-ne-zero.md) | 670 | `result-track:900cccd07a20a44212dc0af208079000f11f1af28c6fdfa1f6ebfebc3c961c0b` |
| 96 | `theorem` | [exists_nonneg_right_iff_sameRay](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayPublic.lean/declarations/exists-nonneg-right-iff-sameray.md) | 676 | `result-track:361340c4d4f7418448e37430453d581ee5a4e23b49947902586e70d700b2a425` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=12f100830dced20130aa6fe217136c9cdd743ac4e5c8741eb61403d3e3d54179 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Ray/Variant355911444e22767a90f33b6de36cdf389224f39ab7e515411fe5f8ad24017ea0.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Ray/Variant355911444e22767a90f33b6de36cdf389224f39ab7e515411fe5f8ad24017ea0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
