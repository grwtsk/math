# Verification target: Affine Map Ext Iff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69df7267565349a9cc9f9b5214762b9eb062479c",
  "lexical_observation_count": 123,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/AffineMap/Variantf32a9a69679c249e3f6d7dacfab1c61b481327fd81c42de54f742bcc9a01a86a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69df7267565349a9cc9f9b5214762b9eb062479c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/AffineMap/Variantf32a9a69679c249e3f6d7dacfab1c61b481327fd81c42de54f742bcc9a01a86a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/AffineMap/Variantf32a9a69679c249e3f6d7dacfab1c61b481327fd81c42de54f742bcc9a01a86a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Pointwise.Interval` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.BilinearMap` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Pi` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Prod` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AffineMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/affinemap.md) | 50 | `declaration-track:3281da035d4499af04f252cab27f5a154196d3efe8a8560eb84549660971d280` |
| 2 | `instance` | [AffineMap.funLike](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/affinemap-funlike.md) | 62 | `declaration-track:154ec7082405ca92226a83fa7b367cbda7dbc938925161812678c7b017d07369` |
| 3 | `instance` | [AffineMap.hasCoeToFun](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/affinemap-hascoetofun.md) | 74 | `declaration-track:bf929780fbffc228971ce0eca82658c09b61109ef92841139ca79b4cc49ce36f` |
| 4 | `def` | [toAffineMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/toaffinemap.md) | 86 | `declaration-track:dc334cf3d69161e5f1e1b90d7d7e6040445b5bc0b9ecca1599ef29726e2cdfb0` |
| 5 | `theorem` | [coe_toAffineMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/coe-toaffinemap.md) | 93 | `result-track:1d125c761740e7c26bd40a1338381b6956451149f64761f617ec3913fc6e63d6` |
| 6 | `theorem` | [toAffineMap_linear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/toaffinemap-linear.md) | 98 | `result-track:0fee590b04204d4ae9bf46add2116b6c14dc7af48526c7b1027d9e3cc6da2343` |
| 7 | `theorem` | [coe_mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/coe-mk-source-edition-2.md) | 114 | `result-track:f5ffd220d80ea94ba98c89143a930a29861ca44fe6b4c378e572bfc28dba27f9` |
| 8 | `theorem` | [toFun_eq_coe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/tofun-eq-coe.md) | 120 | `result-track:1cba7a07443218afc1fd6d4ed4d00cf9c6856dc6327b873f2b0624afee7117de` |
| 9 | `theorem` | [map_vadd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/map-vadd.md) | 128 | `result-track:a7a68c896477eb3a5b01e0c012d4ffbbb2260b9b2da8e38d907d155610464006` |
| 10 | `theorem` | [linearMap_vsub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/linearmap-vsub.md) | 136 | `result-track:eb138c4d1e521477548d36a0fe76eb68bb9461c1ee2fea7bf194f67028dab329` |
| 11 | `theorem` | [ext](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/ext.md) | 142 | `result-track:8ca852705f19734bd69621bf7fdebd960694da3261a2691f24973f965a031f89` |
| 12 | `theorem` | [ext_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/ext-iff.md) | 146 | `result-track:f97a51866fe68ecb8f583ffe371c745eb01f37e17c035975806d864bc044583f` |
| 13 | `theorem` | [coeFn_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/coefn-injective.md) | 150 | `result-track:8e9be5323c6adb6ee2f3401ed132b57a28ee5c6cd13463f849839c40eb36986e` |
| 14 | `theorem` | [congr_arg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/congr-arg.md) | 154 | `result-track:658d56d61f84f57929f143959d2d17a3da820f8917b34c4be72129b3e2442a2d` |
| 15 | `theorem` | [congr_fun](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/congr-fun.md) | 158 | `result-track:43d6d9aebb3e3c004197c5fedd2b3bf0ae03f96eb90a996c87ea1f962e3dd64b` |
| 16 | `def` | [const](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/const.md) | 165 | `declaration-track:bd9a4919be5019874257554fafdfeb327fb8b665bf537ea7f85d7ecc7a911c2a` |
| 17 | `theorem` | [coe_const](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/coe-const.md) | 174 | `result-track:5b53e4fc4e9d92d65a5dfadbacee6dc28ff5322df05adc14284701329015758c` |
| 18 | `theorem` | [const_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/const-apply.md) | 180 | `result-track:60fcbfc0ba3a4151492e1186afdf52c7826bba43e7bccf5b9b5d77a42df43da6` |
| 19 | `theorem` | [const_linear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/const-linear.md) | 183 | `result-track:512929b50d0f89b2f061b4c4ec2332c39de528f4003c56caa70dc9e94a1e85ce` |
| 20 | `theorem` | [linear_eq_zero_iff_exists_const](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/linear-eq-zero-iff-exists-const.md) | 189 | `result-track:fa5e8f37ef2fb69a2e00167f14053f1d5a7cfa4f0725e3337fc802488de292a7` |
| 21 | `instance` | [nonempty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/nonempty.md) | 200 | `declaration-track:e2c2b94854642502a75c6b5da88c17555f4d58e9751233a36ad9c526d978cf0b` |
| 22 | `def` | [mk'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/mk.md) | 207 | `declaration-track:9b82414be6dcd11ec2a66cd5f4e8f2c62b46e325acdf8550b7237645ae03db65` |
| 23 | `theorem` | [coe_mk'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/coe-mk.md) | 215 | `result-track:5974d7e8d16cf82d52cfe2441f83ee839715835ecc8de1524f39e14c490f56d6` |
| 24 | `theorem` | [mk'_linear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/mk-linear.md) | 220 | `result-track:402aa62cb6f4d092e69b81c31e23e4272c075225aa8a26d09c43c7d2fd067b57` |
| 25 | `instance` | [mulAction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/mulaction.md) | 228 | `declaration-track:017573864269886d99ccf650928792ded7bee5b69ccd1aa9866f12075b64365b` |
| 26 | `theorem` | [coe_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/coe-smul.md) | 235 | `result-track:b6a0175f29711091ba9627c7555245df1831b45eb9ec53b39aa2ad4217ded3bc` |
| 27 | `theorem` | [smul_linear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/smul-linear.md) | 240 | `result-track:9efcc4524d4bc38c8938d8f8c53a6657a64f002034a7e6029e6302732bdbeb46` |
| 28 | `instance` | [isCentralScalar](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/iscentralscalar.md) | 244 | `declaration-track:9fe47c4c967019c0ae0ff5faa1e67d61a84bdc8b356f90fc241967c245cf5080` |
| 29 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/instance-source-edition-9.md) | 250 | `declaration-track:f1c19c9ad745b34ac6a3be5c7828c9acb80c4a518eea4232da0a011042f55a0b` |
| 30 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/instance-source-edition-3.md) | 252 | `declaration-track:0dd22eb7e1ddc2aa8f7fc4af5b7be09efe423d224f3d753dd611000ffcb9623c` |
| 31 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/instance-source-edition-7.md) | 257 | `declaration-track:c380a5be905abdddb403b01f8bd4aa4986e8e217516af26342eef2b2a53c8fd0` |
| 32 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/instance-source-edition-2.md) | 262 | `declaration-track:09d08ab9bee2d30e9fd64fde9ca630d334b2394fcafea7806d284b2464e3442b` |
| 33 | `theorem` | [coe_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/coe-zero.md) | 266 | `result-track:50191b1e5af92e94b20231819051ec975abf74d183b69e638b357b9cb481cbf2` |
| 34 | `theorem` | [coe_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/coe-add.md) | 271 | `result-track:ce0e210fce60949bfa5671c49c1e115b71dd3efafb7d3e596fdf6a446e77a160` |
| 35 | `theorem` | [coe_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/coe-neg.md) | 276 | `result-track:efb78e4f5cff6f973b665e60367bed62403c5a7d1259716293f7b216ef754827` |
| 36 | `theorem` | [coe_sub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/coe-sub.md) | 281 | `result-track:d1b69d0738a8a56f8fcf4cec8bfaf9aaf51ae909f7812a15f237765080529261` |
| 37 | `theorem` | [zero_linear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/zero-linear.md) | 286 | `result-track:22d4db2124f6ed174eab73c284aa99c0f69ff92c8a98db7b0b3242c70acf3a8b` |
| 38 | `theorem` | [add_linear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/add-linear.md) | 291 | `result-track:8d3b28574c43312199d3273d4b61700b7d9f278ac85da3b672f9a6fe1dd53a42` |
| 39 | `theorem` | [sub_linear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/sub-linear.md) | 296 | `result-track:f9764a0f6840d199bb567dd39ddecd53635c6538057cabced3479194cac05a32` |
| 40 | `theorem` | [neg_linear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/neg-linear.md) | 301 | `result-track:3454b0a847fca71a4bc36198a98e0b18c9b96d7942ef078a4bd53a907722e614` |
| 41 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/instance.md) | 306 | `declaration-track:03ca65acc1ba3e22e8bc58efa79d4f9fa7401005a768e41b8dbbec9a8b79ef78` |
| 42 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/instance-source-edition-6.md) | 312 | `declaration-track:aed3328f9e3bc84b7df9c3770d34129e283776fcf904d32cfa2c72455926b5d4` |
| 43 | `theorem` | [vadd_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/vadd-apply.md) | 329 | `result-track:d26048e5c399b58e80d29195c6596e5af53e7980f26d02807d0ac22b1bf349a9` |
| 44 | `theorem` | [vsub_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/vsub-apply.md) | 334 | `result-track:92fdc44a81f8bf2cfd5e7d75d38696c60f8b953cb7d76dea666cd2ea8505dbfa` |
| 45 | `def` | [fst](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/fst.md) | 339 | `declaration-track:83bb48496e5c9b1d2d37e34fb722616cddfc33f24679092f1c8e35e135fce436` |
| 46 | `theorem` | [coe_fst](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/coe-fst.md) | 346 | `result-track:9a900b6cec1385e0710142bf2b3bb4d282544f8389103b76b877a8132c290121` |
| 47 | `theorem` | [fst_linear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/fst-linear.md) | 351 | `result-track:d1405616170b3356eff63fcedaf89465dc808e6ca8ce841c0e596a0f9fc28e0e` |
| 48 | `def` | [snd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/snd.md) | 356 | `declaration-track:ea6147ea9aa3a8c5c107789fa93a0249379157d77d58195540e1a8e56a42fda3` |
| 49 | `theorem` | [coe_snd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/coe-snd.md) | 363 | `result-track:6fc686d46b3ee584e1c077d7c187536c56b897a06b50717f825f092f76aa1fa3` |
| 50 | `theorem` | [snd_linear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/snd-linear.md) | 368 | `result-track:0da3019709777e99f6832b08f4e036b8fc71c040cbd5d4809f21a6c605422a19` |
| 51 | `def` | [id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/id.md) | 374 | `declaration-track:1c5e710bc90d8df239d4e185a643fe7fb542d8ac5b6a7112a4e186b78d9166c3` |
| 52 | `theorem` | [coe_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/coe-id.md) | 382 | `result-track:6b395ff850f807a5ca0158dac560371c44dfb81411c536090838a10e69b9824f` |
| 53 | `theorem` | [id_linear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/id-linear.md) | 387 | `result-track:2938def5182f2868c6dd2edb1893c613e7372bd23d9f2378c457f60eb76035b7` |
| 54 | `theorem` | [id_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/id-apply.md) | 394 | `result-track:6eff0a37658a88321f9e9700ac35d180f276f482062f699f8b6adcd080c0cdce` |
| 55 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/instance-source-edition-8.md) | 400 | `declaration-track:f0fe8ad17a33beffe7713d15a34fa89085265c14ec39644705ad7b24e40cca16` |
| 56 | `def` | [comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/comp.md) | 404 | `declaration-track:f6ebef4e498c66218a715d0b998c7b5becac93744dbffeb2fdbdb6422332e88b` |
| 57 | `theorem` | [coe_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/coe-comp.md) | 415 | `result-track:8c69f31692acfe43affd8da141c770f33cf73249d32da4d25d538020d69ef03f` |
| 58 | `theorem` | [comp_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/comp-apply.md) | 420 | `result-track:10c44d2ced14adb4685107f0201a41d440a5817424ed347785eaa72f73e26f86` |
| 59 | `theorem` | [comp_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/comp-id.md) | 425 | `result-track:115da0b24686649ffbf6e4e27fcb380a4b81676ec0ac4e5254ff014ada4602a0` |
| 60 | `theorem` | [id_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/id-comp.md) | 430 | `result-track:5fca1dcf013f762a342df0155311b460071ea56f8b9268fb0eccb7b010795f53` |
| 61 | `theorem` | [comp_assoc](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/comp-assoc.md) | 434 | `result-track:16a5fddb631aa0abc3014f48a0c72c3fa8e1af413f1000449b5b96725a7f5c12` |
| 62 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/instance-source-edition-5.md) | 439 | `declaration-track:3d5c35bf7b3a1e8afaa067536d9e9517a2b51368a803a17be74ea9a1179cd4cd` |
| 63 | `theorem` | [coe_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/coe-mul.md) | 447 | `result-track:829eed3fa21ed6c5af0aa1b7b07eb87b9933c4ec8b20759ed07b6620f4c568cf` |
| 64 | `theorem` | [coe_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/coe-one.md) | 452 | `result-track:3b9166e9992394328a90e2ec37a47a5a81a03c188d8b62c1deafa99e0c257f00` |
| 65 | `def` | [linearHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/linearhom.md) | 458 | `declaration-track:c1f43e6316abb58e587aa0549b8167d623b778aff68b8e2bfe29449b9cf83289` |
| 66 | `theorem` | [linear_injective_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/linear-injective-iff.md) | 465 | `result-track:ab627ace3d1a8e297f23395873d62981ea79530fb85105333084be5793cbb067` |
| 67 | `theorem` | [linear_surjective_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/linear-surjective-iff.md) | 475 | `result-track:93aad324527acf160ee7b25fde76cf85f0483cf7422c23ec2f38a4d1f5398c64` |
| 68 | `theorem` | [linear_bijective_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/linear-bijective-iff.md) | 485 | `result-track:bffcff030d346dab402adb48c3520a36d21cfa15337dd770956af58c26613a03` |
| 69 | `theorem` | [image_vsub_image](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/image-vsub-image.md) | 490 | `result-track:fe34e7042b4dc53541599ba26f94c9ed001a77e329bc10067ef2febd4b20d337` |
| 70 | `def` | [lineMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/linemap.md) | 506 | `declaration-track:6e2e6fc8cafed41e937eeaebec8f4e974e3d34342d504e72b4bb642bc3191ca8` |
| 71 | `theorem` | [coe_lineMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/coe-linemap.md) | 510 | `result-track:95f09759612213c441d7c1290882e32fad469d272496766ba336bbbd4355b6bd` |
| 72 | `theorem` | [lineMap_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/linemap-apply.md) | 514 | `result-track:d2f2f86e042f5a975bd72bd0f1013cd03dfac4ee2eeb08c314ddfb8508eb089f` |
| 73 | `theorem` | [lineMap_apply_module'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/linemap-apply-module-source-edition-2.md) | 518 | `result-track:ddc5f2cc7c55a865545d498aacb48b5eab89ac5841d005100554a2de545f9f07` |
| 74 | `theorem` | [lineMap_apply_module](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/linemap-apply-module.md) | 522 | `result-track:75e7a382febfedd307545e0b2a4328a8322ba782ff5e55da68380c9d2bed6359` |
| 75 | `theorem` | [lineMap_apply_ring'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/linemap-apply-ring.md) | 526 | `result-track:3f78f0f3133f05ea0a787e9b55e7b46e2d3d312346ad195eb7663bc5f8e25131` |
| 76 | `theorem` | [lineMap_apply_ring](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/linemap-apply-ring-source-edition-2.md) | 530 | `result-track:e9f2951debc161fdaecc8c19f045b815cbf24b5f7f1caddbae9dfeb57aef1f98` |
| 77 | `theorem` | [lineMap_vadd_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/linemap-vadd-apply.md) | 534 | `result-track:64c789e2e12e94b07691acd4ab4c834834efa12e8b84f56febb8df7e372db759` |
| 78 | `theorem` | [lineMap_linear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/linemap-linear.md) | 539 | `result-track:f18a576330380b1f87fff2a2971ad6d7f64d1da5bb51af0b3bd2c5b8284349a2` |
| 79 | `theorem` | [lineMap_same_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/linemap-same-apply.md) | 544 | `result-track:510c7300db5c91f910dab1e2228c4e8dd8d4651b2b8f50f706ade304d8d49f91` |
| 80 | `theorem` | [lineMap_same](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/linemap-same.md) | 551 | `result-track:c029020bacff4495928be78d3bb0d16e1083cfeaec68af551ae23be6f3095ca1` |
| 81 | `theorem` | [lineMap_apply_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/linemap-apply-zero.md) | 556 | `result-track:b2ccffb23cefff248ba0983c7800b557cba2aa1d73db51bf2e5dfbd75795cfdb` |
| 82 | `theorem` | [lineMap_apply_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/linemap-apply-one.md) | 563 | `result-track:df8e58de7fc93e86b869f1c772c35dc5d190b2c8db5fd8c790cdf453b4ea20d1` |
| 83 | `theorem` | [lineMap_eq_lineMap_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/linemap-eq-linemap-iff.md) | 569 | `result-track:4085cbf0755deb8dad166bbdf4f4d9f10b2ca231a4b2f65c2ae3b3c26a1ff135` |
| 84 | `theorem` | [lineMap_eq_left_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/linemap-eq-left-iff.md) | 576 | `result-track:52979af603a3d384b292f3f09d98b6dfc59c33acd070113bcd9a7df53ca23a30` |
| 85 | `theorem` | [lineMap_eq_right_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/linemap-eq-right-iff.md) | 582 | `result-track:98b0d149cf886c14110b8f39cb5e7b88024d320581a6bdc9a2dffdb6e93cc0ab` |
| 86 | `theorem` | [lineMap_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/linemap-injective.md) | 589 | `result-track:54a2b9061a2c161c9737fcd079f4462f2acbe549d854ef0a34d9cae2feff6cc1` |
| 87 | `theorem` | [apply_lineMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/apply-linemap.md) | 597 | `result-track:5d19992cb77ce58fa9a16ae323a35cf270981121825455b983b43e3b31108b12` |
| 88 | `theorem` | [comp_lineMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/comp-linemap.md) | 604 | `result-track:8f7d5c7df1386346971d1146d55e8c30df6a4fd7be84886e315c4cddf90a72c1` |
| 89 | `theorem` | [fst_lineMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/fst-linemap.md) | 610 | `result-track:3641483f19b406e6f8cc732eeec57201c2f4dd2ea26660a2b7e75bd904082844` |
| 90 | `theorem` | [snd_lineMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/snd-linemap.md) | 615 | `result-track:b370497ff4c9c276855485b47daec7744e5afa79be907bec83674c7518a15aa0` |
| 91 | `theorem` | [lineMap_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/linemap-symm.md) | 619 | `result-track:30c528326b2db340e1ce06f1c6fe1bd0921cd1d8ba587709ce191d392217d821` |
| 92 | `theorem` | [lineMap_apply_one_sub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/linemap-apply-one-sub.md) | 625 | `result-track:b469ecd24ab246c8ef2810b08a6dd66face890ba70cf3f7411121014b02532d0` |
| 93 | `theorem` | [lineMap_vsub_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/linemap-vsub-left.md) | 632 | `result-track:131084c27710609813d208e628f61d4d5c206090a291fa2f868eb5e98583d372` |
| 94 | `theorem` | [left_vsub_lineMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/left-vsub-linemap.md) | 637 | `result-track:8e6ec3bf628ec38e4120cf2a713260cf69f06c7e1fe28a488131c2a75a2fd4f3` |
| 95 | `theorem` | [lineMap_vsub_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/linemap-vsub-right.md) | 642 | `result-track:0dd0ce7fe57dcf1dba61bc4e5ef7711936372d96375a37549aebf56f3f603b38` |
| 96 | `theorem` | [right_vsub_lineMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/right-vsub-linemap.md) | 647 | `result-track:eb71b1311f953709bbcbe38788690a2feba8bfdd3f72675edc94152efd1f846d` |
| 97 | `theorem` | [lineMap_vadd_lineMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/linemap-vadd-linemap.md) | 651 | `result-track:3d630f13b6a103b192226a1f69c26a93e39ab58877151766c6cec055312eb6f2` |
| 98 | `theorem` | [lineMap_vsub_lineMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/linemap-vsub-linemap.md) | 656 | `result-track:71049e937e1e851f8290fe44ad5e3deaf98b3e2246f3f609cea772b4f9efdf92` |
| 99 | `theorem` | [decomp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/decomp-source-edition-2.md) | 663 | `result-track:8881d68787108cbe6353ed3c444f23868adaa585abe4c92f21e5de3da501de66` |
| 100 | `theorem` | [decomp'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/decomp.md) | 672 | `result-track:441543a4961a39f7b062f386f0ea81d85c9ff2c5580232456d67c87365d1c904` |
| 101 | `theorem` | [image_uIcc](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/image-uicc.md) | 677 | `result-track:fc9e2345b7dd1b6199712bfe0d0fcad00beb4a607c7be49a0ab8f669ec613532` |
| 102 | `def` | [proj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/proj.md) | 694 | `declaration-track:9dbb4cd9bdb8fefb0fb5c598375f94426bef93cc13e49567d84c6525800f4d89` |
| 103 | `theorem` | [proj_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/proj-apply.md) | 701 | `result-track:31d0a656e37acb86ac4eb1d7166e7a66b706a4e081df2d0feaac163d8147da00` |
| 104 | `theorem` | [proj_linear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/proj-linear.md) | 706 | `result-track:729439a626e43b6aed33d383e36da8a52bc51af286e2f77bb2263c3f54eea214` |
| 105 | `theorem` | [pi_lineMap_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/pi-linemap-apply.md) | 710 | `result-track:0c62bb3a415b6fa4c9e56767ca85c753262b5697aab3b6a1c818f1b6f4a6ec24` |
| 106 | `instance` | [distribMulAction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/distribmulaction.md) | 734 | `declaration-track:06da9087ff167086dff9bf57e4d7ac45db35f2def056e1d6038f5589965886fd` |
| 107 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/instance-source-edition-4.md) | 745 | `declaration-track:31c6d033425389ae4d138219c4c3f1ff5a10a5791caace8a17733d9f871b903d` |
| 108 | `def` | [toConstProdLinearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/toconstprodlinearmap.md) | 759 | `declaration-track:f8cf3dc5b5fac10d162187468a656447eb80f68fdfe2ba0e23b4e17a760b15af` |
| 109 | `def` | [homothety](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/homothety.md) | 784 | `declaration-track:067db9f362fb6f682c534a124b0bb707da54e2b806089889a40d66a979432c94` |
| 110 | `theorem` | [homothety_def](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/homothety-def.md) | 788 | `result-track:11a9e54f5388b579e1ee18e48bd54eed3fe9d5f92719297c834db17835702ab6` |
| 111 | `theorem` | [homothety_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/homothety-apply.md) | 793 | `result-track:7670b0de76daa653b31cca45a8f06abd0949caa2f3f85a26ab6aa212c518e57c` |
| 112 | `theorem` | [homothety_eq_lineMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/homothety-eq-linemap.md) | 797 | `result-track:b5141629638963b86baa646967c04ed8ce2cdfc7bec5041b200ce453594bf7ec` |
| 113 | `theorem` | [homothety_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/homothety-one.md) | 802 | `result-track:45e4770650b8dce3e20c29ca51e95e6a0410a533299a5e73d615aa50b5c68a0a` |
| 114 | `theorem` | [homothety_apply_same](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/homothety-apply-same.md) | 808 | `result-track:1ca850cec018aac6e418701b9a46ee6d2c49c43d0302b812e2105437d6dc9739` |
| 115 | `theorem` | [homothety_mul_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/homothety-mul-apply.md) | 812 | `result-track:7e5a95d9c6a075ad006251620be0988b21a311b964fe72917247a7aec6332a56` |
| 116 | `theorem` | [homothety_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/homothety-mul.md) | 817 | `result-track:6f4dcfbb23ec7070a0c42557516d5df0b7643220a3e6c103461897b8ac3eea54` |
| 117 | `theorem` | [homothety_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/homothety-zero.md) | 823 | `result-track:a99b95759e0ab839d3e5acd22ace53d01a4cd350c8847f1da6be85c0c6a03e09` |
| 118 | `theorem` | [homothety_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/homothety-add.md) | 829 | `result-track:37cd508cac1784077371ac3583902f6c7a1159f8ea2da73ff9ee511da9711b37` |
| 119 | `def` | [homothetyHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/homothetyhom.md) | 835 | `declaration-track:cf0899aa81ee394096e8e9c2787a2ed938c383684779b24acd92dca95b7b7130` |
| 120 | `theorem` | [coe_homothetyHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/coe-homothetyhom.md) | 842 | `result-track:461d6ad0ae24f6d6447de51a839d2180cb48eba7ea8e4d68150f90f9676ddb55` |
| 121 | `def` | [homothetyAffine](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/homothetyaffine.md) | 847 | `declaration-track:51e177cc30937ac625c667ebbc0eb383df07d3c4ee85aa899f4c886e2d0fb839` |
| 122 | `theorem` | [coe_homothetyAffine](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/coe-homothetyaffine.md) | 853 | `result-track:82fb4f64ee1ddfe431fb850a5f19c56db29b8e0590f9fca3428fefa5aea631bf` |
| 123 | `theorem` | [Convex.combo_affine_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/declarations/convex-combo-affine-apply.md) | 867 | `result-track:caa0dd46787f95c33d445770e1c78cbbe481864ac97f3b058abef7769ebc4e03` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=34d62ea26bef946c8b3f8e5290bd5e7fbe74ac621cd2096cf2df98fccd7b209f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/AffineMap/Variantf32a9a69679c249e3f6d7dacfab1c61b481327fd81c42de54f742bcc9a01a86a.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/AffineMap/Variantf32a9a69679c249e3f6d7dacfab1c61b481327fd81c42de54f742bcc9a01a86a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
