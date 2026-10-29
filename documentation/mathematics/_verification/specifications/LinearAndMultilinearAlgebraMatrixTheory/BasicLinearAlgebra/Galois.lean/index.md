# Verification target: Galois

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a701412d46585d7a49855f4d8f36de6b32cfc0d3",
  "lexical_observation_count": 70,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Galois/Variantd9d307f9fc4eb0f70539d3fb84809fc24f00c8c80fb99fc4fd541f8037b44081.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a701412d46585d7a49855f4d8f36de6b32cfc0d3`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Galois/Variantd9d307f9fc4eb0f70539d3fb84809fc24f00c8c80fb99fc4fd541f8037b44081.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Galois/Variantd9d307f9fc4eb0f70539d3fb84809fc24f00c8c80fb99fc4fd541f8037b44081.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Dynamics.Avalanche` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLinearEquiv` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.IntervalCases` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [GF2](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/gf2.md) | 40 | `declaration-track:bfb6e4b264d188e88b718dd670f05147034f89c3af052f1fdb6767c281460bec` |
| 2 | `abbrev` | [GF2Matrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/gf2matrix.md) | 43 | `declaration-track:3ea9689149cb7a81ce255ef58beb49f60ea72b49d9a6d2249378a1d647edc7ad` |
| 3 | `def` | [boolGF2Equiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/boolgf2equiv.md) | 46 | `declaration-track:da8a44d1aa501f7d6546263c909073efc4c2840682cdb322c7b36ce996b8ab64` |
| 4 | `theorem` | [boolGF2Equiv_false](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/boolgf2equiv-false.md) | 64 | `result-track:3b99bd2d1fed333da916098d695f754074c31a5b98b7f251d4030613020f7f64` |
| 5 | `theorem` | [boolGF2Equiv_true](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/boolgf2equiv-true.md) | 67 | `result-track:1ea6d1252c65043b0b6ea822138f8434a13e54d68b6e235932c9c44f0033245b` |
| 6 | `theorem` | [boolGF2Equiv_xor](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/boolgf2equiv-xor.md) | 71 | `result-track:2e1b230a4a1355f1664bd64e067f21c02bcab1a6b472364d0d68d26d2fc7c4ee` |
| 7 | `theorem` | [boolGF2Equiv_and](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/boolgf2equiv-and.md) | 77 | `result-track:cc0193e5a501c5f2898fbf98342cbb6c775913996386ea602e0117f482a58a61` |
| 8 | `def` | [boolMatrixGF2Equiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/boolmatrixgf2equiv.md) | 84 | `declaration-track:253ac5d532d992274e4d9e1d01c84333909a569554dd9d41e2cb55f34c3b5582` |
| 9 | `theorem` | [boolMatrixGF2Equiv_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/boolmatrixgf2equiv-apply.md) | 95 | `result-track:6f8381d245680895d045c124536c5db85e76f83013cbe1b6f57ad76fd874d35c` |
| 10 | `theorem` | [boolMatrixGF2Equiv_symm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/boolmatrixgf2equiv-symm-apply.md) | 101 | `result-track:65ac4acefe463f9fd6ce877c63a1f087cc91c757d994b8d728ee1e1746319d9e` |
| 11 | `theorem` | [boolMatrixGF2Equiv_xor](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/boolmatrixgf2equiv-xor.md) | 107 | `result-track:b720ff178c16d42cc4af5d83ba2edc0ff76fe46f2e9b62f0e9d1c70af9952ec6` |
| 12 | `theorem` | [boolMatrixGF2Equiv_and](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/boolmatrixgf2equiv-and.md) | 119 | `result-track:b187df89825af64af38da93355c20ac9ff3231ab18f2ad66a3b644bb88a6e5a7` |
| 13 | `def` | [rowMajorIndexEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/rowmajorindexequiv.md) | 129 | `declaration-track:a5be40ca0605e3a0077f552415a850e1cd071df8143e15aaaa136d41bbf1c205` |
| 14 | `theorem` | [rowMajorIndexEquiv_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/rowmajorindexequiv-apply.md) | 133 | `result-track:9e5aaa8ef295be5142ff88e7f61c7fb6c87e18da789e1092e9a00f0436c00790` |
| 15 | `def` | [flattenEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/flattenequiv.md) | 140 | `declaration-track:c4d26c7a77bc433a4ef8d28cc3707488b79b528ad1e3dfc7b57ccb9be51ca67f` |
| 16 | `theorem` | [flattenEquiv_apply_flatIdx](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/flattenequiv-apply-flatidx.md) | 157 | `result-track:7ac853329d4aa02b079a20630b856c292e645f944fa2247d5ae43e73e7dafc34` |
| 17 | `theorem` | [flattenEquiv_xor](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/flattenequiv-xor.md) | 168 | `result-track:995085afb6fc70f07c76064c12b0f6052fcbcfba8653161c56aeb5f0f65b8f4e` |
| 18 | `def` | [zeroMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/zeromatrix.md) | 177 | `declaration-track:c6dda41121d3ba73a28f8b4542b98391f80c61ebfcefe38b6abe6eb0eb32f746` |
| 19 | `def` | [pointwiseOneMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/pointwiseonematrix.md) | 180 | `declaration-track:2eb6694f1b7632758ffca9c98aa0a6b079dd8f0fac474b9e48251f16fd682be6` |
| 20 | `theorem` | [xor_zero_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/xor-zero-right.md) | 183 | `result-track:39e60658823a3b7b339d9ea20631908cfe4c1435813559a6877f3059784c27e6` |
| 21 | `theorem` | [xor_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/xor-self.md) | 189 | `result-track:fa12bbc8eeceb55bf5b9787982e15a088f2a3fe2da59d13aed517280ab32e59a` |
| 22 | `theorem` | [and_zero_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/and-zero-right.md) | 195 | `result-track:ac5611529aff8be3f7ebeff54a72e5d8b0093089bb04429b0d404061814056be` |
| 23 | `theorem` | [and_one_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/and-one-right.md) | 201 | `result-track:9c5a491aa44abb928a0f5790a6a6a3ae9de27d43a7d631f41780e1d83ac45335` |
| 24 | `theorem` | [zeroMatrix_eq_pointwiseOneMatrix_of_mul_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/zeromatrix-eq-pointwiseonematrix-of-mul-eq-zero.md) | 207 | `result-track:069d1c06730e08f6d9adf433cc2e319d4bf70c8e78a689ba861fef4b7c6ee707` |
| 25 | `def` | [singletonMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/singletonmatrix.md) | 216 | `declaration-track:98424394cacf9e00db3584a9f4a6781477ec7a6b50a91e122a7698f5a944dc4a` |
| 26 | `theorem` | [singletonMatrix_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/singletonmatrix-ne-zero.md) | 220 | `result-track:7aa299159c71c1292accdd41cfb7bcd0e20c4a6025e9d2c9ef125b6d4aece39a` |
| 27 | `theorem` | [exists_pointwise_zero_divisors](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/exists-pointwise-zero-divisors.md) | 231 | `result-track:434841731e3984bae229bc1a5ff5ba551efc65791e9db64bee227312de52759f` |
| 28 | `def` | [oneEntryGF2Equiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/oneentrygf2equiv.md) | 258 | `declaration-track:1190546f26f304f74da73188c4168b288132f8ab9b5762915bee7117e9a8d1a2` |
| 29 | `theorem` | [oneEntryGF2Equiv_xor](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/oneentrygf2equiv-xor.md) | 267 | `result-track:a4ee46f9d26c055f09bb0e57fefd5c38974adb227f8c9e834e824566748f08c9` |
| 30 | `theorem` | [oneEntryGF2Equiv_and](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/oneentrygf2equiv-and.md) | 272 | `result-track:278861ae6a212f88aa2423c0531b9d4ce0d06a534b495d42aa53fb54e1cd2a94` |
| 31 | `structure` | [Encoding](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/encoding.md) | 284 | `declaration-track:4e07e4b40781f3fefeb71663714a0a19270ea8352b81d43cced21a766d59e3dc` |
| 32 | `def` | [code](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/code.md) | 295 | `declaration-track:3b83aaf12664b970d5b48b0937cedbdb71e2d1a931e4257e29165cc479bff7f7` |
| 33 | `def` | [decode](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/decode.md) | 299 | `declaration-track:c40a08e76761a2147552f6b6999e722c0d25992ebb5eed0fb9c5b3d65163d411` |
| 34 | `theorem` | [decode_code](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/decode-code.md) | 303 | `result-track:301c1996d37db9598e3ba464715c229fd7a81ebf65042111176cb1f0a83d51aa` |
| 35 | `theorem` | [code_decode](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/code-decode.md) | 308 | `result-track:7ab13badc3709363d97368315b3a95d94d6b81339547c76e3d00dc6b774525fc` |
| 36 | `theorem` | [code_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/code-zero.md) | 313 | `result-track:07b3448dd4e151a49dbeab1d67d4ec61336f0c1bad72f862295a712a98d103cf` |
| 37 | `theorem` | [code_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/code-add.md) | 320 | `result-track:c7829fb33921dd216061bdbd6ede8c880874bc111d7fd552028a461d660ad03c` |
| 38 | `theorem` | [decode_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/decode-zero.md) | 327 | `result-track:2219b8081fc86a8ae1e8da96298ffc3cb9cb449de9ae2865120df7c521f1a8cd` |
| 39 | `theorem` | [card_field](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/card-field.md) | 333 | `result-track:8c46f20810675126bfc581b895e88c4f505926f0171fd62c64ad19ed0cf724db` |
| 40 | `theorem` | [dimension_pos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/dimension-pos.md) | 339 | `result-track:32e5f908550424502d4b030ef567708c6c04c06c4164d443e3601c552e3895b8` |
| 41 | `def` | [gfZero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/gfzero.md) | 355 | `declaration-track:10e99ae23a15c987bd3673771675f14448f19c2fa78ed115926a8e33b810e33a` |
| 42 | `def` | [gfOne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/gfone.md) | 358 | `declaration-track:09dde165149d467e2eb04035e83da3153f2c34b0a79a44dc8d3907f16c519b96` |
| 43 | `def` | [gfAdd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/gfadd.md) | 361 | `declaration-track:f4d6ee0b2adc50d569640e69b052a007d6c65e0615527d8bf6d370bf66ad6062` |
| 44 | `def` | [gfMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/gfmul.md) | 365 | `declaration-track:87f35eb62cd39cbdf4529421baf83c5f1040274dc35c262f76f5ae45a0ea68b0` |
| 45 | `def` | [gfNeg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/gfneg.md) | 369 | `declaration-track:ca43cd149361765327e48b8e1f2111e4f83e61fc77b241f645d1b86e24440c58` |
| 46 | `def` | [gfInv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/gfinv.md) | 373 | `declaration-track:5af68308e97c1d930f0fb6af595199a1216bc1e41aa7bc3657c130b9568d2db3` |
| 47 | `theorem` | [decode_gfAdd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/decode-gfadd.md) | 377 | `result-track:3dfaa590d60caf572291ce04a9169c035233e8d2e5fa1278597d7cbd9b85d3dc` |
| 48 | `theorem` | [decode_gfMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/decode-gfmul.md) | 383 | `result-track:48f95468b0080c8e807641509c848726fb9654291e0674b9cd0ce9229d843c5a` |
| 49 | `theorem` | [decode_gfNeg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/decode-gfneg.md) | 389 | `result-track:29334f7557783695dd444c21ef3c5486586e8c78f022e358261e575963f7627b` |
| 50 | `theorem` | [decode_gfInv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/decode-gfinv.md) | 395 | `result-track:0e8662d19fc5e3f589d0797abefe434308a2c8110973191e14ae99defe9409c6` |
| 51 | `theorem` | [gfZero_eq_zeroMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/gfzero-eq-zeromatrix.md) | 401 | `result-track:50ef61eb73916c211f5bc35e4812b3ad7c1062fcee1efd3e93f324f9556b7be3` |
| 52 | `theorem` | [gfAdd_eq_xor](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/gfadd-eq-xor.md) | 409 | `result-track:6e77e0005b4147ad574a095e778efd8f08ba8c173a7b9a4745d905518bc60bac` |
| 53 | `theorem` | [gfAdd_assoc](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/gfadd-assoc.md) | 419 | `result-track:36d22f8919f06774320a9cd93b10d9a6a6bdc3a049148d68897a9312c72d194f` |
| 54 | `theorem` | [gfAdd_comm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/gfadd-comm.md) | 424 | `result-track:f2f0513cf721cff3c769e8e1c02d0319e2c57dd1249a52f5b2e06c60dec3f20c` |
| 55 | `theorem` | [gfAdd_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/gfadd-zero.md) | 429 | `result-track:4ff32bb12305ca65aa38cd5df6ac869cde0adc544c3f8b994a8d264b759f0cf1` |
| 56 | `theorem` | [gfAdd_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/gfadd-self.md) | 434 | `result-track:305503e0dde7a117cfdd8f5d5a1ae561c5282d067d78fee8feaecd202af85aa7` |
| 57 | `theorem` | [gfMul_assoc](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/gfmul-assoc.md) | 438 | `result-track:ed9fd859d3ba6d6f023d5445b3d34d55de64d32c360215b436b0414925849a32` |
| 58 | `theorem` | [gfMul_comm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/gfmul-comm.md) | 443 | `result-track:571e5e0494aadff88ade122612cc875bfb479d6b9026a3dab215d3190276a062` |
| 59 | `theorem` | [gfMul_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/gfmul-one.md) | 448 | `result-track:49c9f7d5a4769e585333ad3fb46e1e4028845e1221798a422478cf35cf7f5e42` |
| 60 | `theorem` | [gfMul_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/gfmul-zero.md) | 453 | `result-track:65d9eb95be4030bd2f9fd89d0494f3d92a58ac1fed723bcc973ba4bf6ad18be0` |
| 61 | `theorem` | [gfMul_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/gfmul-add.md) | 458 | `result-track:24173505a763d05719bd687744f151e88ca76b6195a0723106bffafc4c15e6bd` |
| 62 | `theorem` | [gfMul_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/gfmul-ne-zero.md) | 463 | `result-track:00f07ad74d3642de7f67b6fc1e650a84dff8436645176b7924bc476aca16aaf9` |
| 63 | `theorem` | [gfMul_inv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/gfmul-inv.md) | 481 | `result-track:b37326b1fa7cbd78e86375f4b21043de2d61a49a1d078753fb9dd7a5d038441a` |
| 64 | `theorem` | [gfInv_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/gfinv-mul.md) | 493 | `result-track:e95d0da3cc9b515d08f32b4871bc9b800797a6ef91a61bf21c7984a9856c5344` |
| 65 | `theorem` | [transported_mul_differs_from_pointwise_and](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/transported-mul-differs-from-pointwise-and.md) | 506 | `result-track:d19840c62aac7ea09f0f80dbd71f399c3ef64a4cbe5356c96517e0f6fdbec236` |
| 66 | `def` | [fieldQuantizer](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/fieldquantizer.md) | 522 | `declaration-track:4f83e73d966ccd77ce62f2a0f15d36b4001a76c35b20851ac74f269f61f5ccf0` |
| 67 | `theorem` | [fieldQuantizer_indistinguishable_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/fieldquantizer-indistinguishable-iff.md) | 525 | `result-track:20ad9eccf9edab905904ea46e7758107af448e14026968441d3c5699215bfe11` |
| 68 | `theorem` | [fieldQuantizer_effectiveStates_eq_univ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/fieldquantizer-effectivestates-eq-univ.md) | 531 | `result-track:df1804edc005369928d7802b1f10b9ea4a4d3430843f5ccded6f15334686085b` |
| 69 | `theorem` | [fieldQuantizer_effectiveStates_card](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/fieldquantizer-effectivestates-card.md) | 538 | `result-track:4dda444aa034fc1192eb3383ed530808e83ee94d53e5254df8363844cd1199ce` |
| 70 | `def` | [fieldQuantizer_quotientEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Galois.lean/declarations/fieldquantizer-quotientequiv.md) | 545 | `declaration-track:784d5d628fc2407a80150cea9334a0aaab668dc2abe8c500233832b6c9973b2b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6eed83d1dfe81fac2d4b9fcb4aec0d0fcb5cb16c6a392a962e0f739cefc12a26 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Galois/Variantd9d307f9fc4eb0f70539d3fb84809fc24f00c8c80fb99fc4fd541f8037b44081.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Galois/Variantd9d307f9fc4eb0f70539d3fb84809fc24f00c8c80fb99fc4fd541f8037b44081.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
