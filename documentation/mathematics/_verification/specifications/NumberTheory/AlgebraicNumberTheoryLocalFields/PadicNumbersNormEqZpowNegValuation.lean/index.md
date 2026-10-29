# Verification target: Padic Numbers Norm Eq Zpow Neg Valuation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69260dc47ccc1474018e7f79593145a8bb6a2a7a",
  "lexical_observation_count": 128,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variantfe784e65c8cd44335ca49ff99e34b2f9faabc3d1d493fc22557a668d1242b2ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/index.md) · [Full source](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69260dc47ccc1474018e7f79593145a8bb6a2a7a`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variantfe784e65c8cd44335ca49ff99e34b2f9faabc3d1d493fc22557a668d1242b2ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variantfe784e65c8cd44335ca49ff99e34b2f9faabc3d1d493fc22557a668d1242b2ca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Valuation.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Padics.PadicNorm` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Field.Lemmas` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Peel` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Ultra.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [PadicSeq](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/padicseq.md) | 66 | `declaration-track:3bf9bbba81d1886fa13a65f895711d8d4476695165114681c9f53c8942ce7e22` |
| 2 | `theorem` | [stationary](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/stationary.md) | 77 | `result-track:dbf1bce0d0accbd993a95301dc487938504218929154606e2c43ef0c571e0cf8` |
| 3 | `def` | [stationaryPoint](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/stationarypoint.md) | 97 | `declaration-track:81579dd4a04bf306a0307999cd1b84979c8442740a12258e4981fe1abd12388e` |
| 4 | `theorem` | [stationaryPoint_spec](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/stationarypoint-spec.md) | 100 | `result-track:2a88b0eb4e68ccb8dc58813916cbe154709e9e1411b9a1288a17122cc5d93484` |
| 5 | `def` | [norm](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/norm.md) | 108 | `declaration-track:bf4fb6ceafa2c814c93d5f1a14815f4c264dc746422945e492010c9ef5524a1e` |
| 6 | `theorem` | [norm_zero_iff](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/norm-zero-iff.md) | 111 | `result-track:fa3364f6d357a5a458592a12ea4e6e72318c8f95fe1cb36e266b930b386ab76c` |
| 7 | `theorem` | [equiv_zero_of_val_eq_of_equiv_zero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/equiv-zero-of-val-eq-of-equiv-zero.md) | 134 | `result-track:c358e70965109181ca05cbbb5c43bbc9c71a78aa578419b6b7c193091a463587` |
| 8 | `theorem` | [norm_nonzero_of_not_equiv_zero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/norm-nonzero-of-not-equiv-zero.md) | 139 | `result-track:bd11d2e4e38fdddbaacc573becdad6cef0a2493f729d9c175583d11324e0b566` |
| 9 | `theorem` | [norm_eq_norm_app_of_nonzero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/norm-eq-norm-app-of-nonzero.md) | 142 | `result-track:b9a28ca954e38673fed5a7e90a36e9cba3d56c8a92ed3cfad8854dbf043d202a` |
| 10 | `theorem` | [not_limZero_const_of_nonzero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/not-limzero-const-of-nonzero.md) | 148 | `result-track:be686c6beced30bb0528106b0682e7ab7d52cff19d42cb42e6a656bf0454a068` |
| 11 | `theorem` | [not_equiv_zero_const_of_nonzero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/not-equiv-zero-const-of-nonzero.md) | 151 | `result-track:4fe7227f96b67d99e81d571a19acd2bd4c83cf54d44ca72d60095dbd12fd3110` |
| 12 | `theorem` | [norm_nonneg](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/norm-nonneg.md) | 155 | `result-track:23d59f6e2b5dccb5e04e1256c2744d740254e1019c5573c2e8a525171ca9a253` |
| 13 | `theorem` | [lift_index_left_left](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/lift-index-left-left.md) | 159 | `result-track:bb1d2b8df2fc1656c38f2b6c8fb306d0cb947fc5206ad408f7679418bd354ea4` |
| 14 | `theorem` | [lift_index_left](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/lift-index-left.md) | 167 | `result-track:93339533a2816c50ee1014fc108b061b399ab47205c3f6cc92f1c7ba412616ba` |
| 15 | `theorem` | [lift_index_right](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/lift-index-right.md) | 177 | `result-track:6187b89626063c8b9f708f584116ad2928ba8b1353a182718be850819a2b08d9` |
| 16 | `def` | [valuation](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/valuation.md) | 199 | `declaration-track:2c65dddd81d54679501161a041d0cb0dc7ab3f5795cc1f6fa523b7898874edb0` |
| 17 | `theorem` | [norm_eq_zpow_neg_valuation](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/norm-eq-zpow-neg-valuation-source-edition-2.md) | 202 | `result-track:e728d9b2909b6333800d8f7b880b37bc0001dc246b633a929b1f9e8beeca9d46` |
| 18 | `theorem` | [val_eq_iff_norm_eq](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/val-eq-iff-norm-eq.md) | 215 | `result-track:b21825187844b3842eb5533f90591b4693618e44ae81c7ed01aa11646f1525fa` |
| 19 | `theorem` | [norm_mul](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/norm-mul.md) | 260 | `result-track:eea9771b9c96b1786b116cebd7cec41f20928328c6b12c1776b84dd56ae2391f` |
| 20 | `theorem` | [eq_zero_iff_equiv_zero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/eq-zero-iff-equiv-zero.md) | 277 | `result-track:6460a4039e60eaf1ad5b0358151574daec1931974518fef875ea9fd40ec67495` |
| 21 | `theorem` | [ne_zero_iff_nequiv_zero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/ne-zero-iff-nequiv-zero.md) | 280 | `result-track:4c3c9ac4e74cedca19ab98e75ab8ad172fb9b82ff8925ecdeb13e290b5c61acf` |
| 22 | `theorem` | [norm_const](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/norm-const.md) | 283 | `result-track:e9ab3a080fe7f64a59923bc9f866a833c306eb1cfa74b2934804674684685279` |
| 23 | `theorem` | [norm_values_discrete](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/norm-values-discrete.md) | 288 | `result-track:e874d67ddddb43e65a686c263c954b46367e1726dc16d5de97f4d049a7e4f900` |
| 24 | `theorem` | [norm_one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/norm-one.md) | 292 | `result-track:24d37ef7fe97c87524b615037b8e40a30fdfc1db6d54a773890785ed95413503` |
| 25 | `theorem` | [norm_eq_of_equiv_aux](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/norm-eq-of-equiv-aux.md) | 296 | `result-track:8ffdecc10049358d6c600a09aabc04c0a5f06a9534569088af8830fd8e8cb665` |
| 26 | `theorem` | [norm_eq_of_equiv](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/norm-eq-of-equiv.md) | 318 | `result-track:d6684697482d5b0890713c9ca517a63e25c73cbdb25af700fd0859cc13647c6e` |
| 27 | `theorem` | [norm_equiv](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/norm-equiv.md) | 328 | `result-track:9ebb8b8e4f6bf1fedd5a6d706350bfab91b5a1bc0a1f30765033305893a6b987` |
| 28 | `theorem` | [norm_nonarchimedean_aux](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/norm-nonarchimedean-aux.md) | 337 | `result-track:678a0d69b8bf1fb2872e3c82f00bf487928db77ab8b382a4567ebc487b9fb9a8` |
| 29 | `theorem` | [norm_nonarchimedean](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/norm-nonarchimedean.md) | 344 | `result-track:ea77421f5a1e14d1f75d74cb9fbd3060e798b6e3dfc960f4875b6cf37e9c7c69` |
| 30 | `theorem` | [norm_eq](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/norm-eq.md) | 369 | `result-track:1499865620c92c29a910fed312c1fcd7f7355731c9ca557f28c682ea48fb0405` |
| 31 | `theorem` | [norm_neg](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/norm-neg.md) | 390 | `result-track:d2108d765b51c5e08506b7398fc81157eb39c2b557c32bb07c46b57d5a749753` |
| 32 | `theorem` | [norm_eq_of_add_equiv_zero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/norm-eq-of-add-equiv-zero.md) | 393 | `result-track:8262106dfe1caa940337b7cf3367581835824d0bd59f558867bebf8ca8c4d918` |
| 33 | `theorem` | [add_eq_max_of_ne](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/add-eq-max-of-ne.md) | 399 | `result-track:7d8ec0b091588da57187a8e8e14138d11274857351aaacc4df64be10bf7c5b06` |
| 34 | `def` | [Padic](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/padic.md) | 429 | `declaration-track:cc1ab9c68a9540c63112393ea93222baa2a4166b9a67db4230c156f8d4b34f0d` |
| 35 | `instance` | [field](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/field.md) | 441 | `declaration-track:0a4ae678077042dc934f9ca9ff3d6bd19cc89f3415e924ae5dc69c1cc9bede4c` |
| 36 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/instance-source-edition-12.md) | 444 | `declaration-track:9c90f65f434d2559adb412a4afeb77b0fc6a322f76333c9be3757d875777b3d3` |
| 37 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/instance-source-edition-14.md) | 448 | `declaration-track:ad6dd1acc316a25cbef8197a37123a07f20998bc975621afcf57fbe9b813df28` |
| 38 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/instance-source-edition-15.md) | 451 | `declaration-track:ad6f5215ba577e5d2a94e1b406e1465c9cf8323590b29154ff30adf3b6d92965` |
| 39 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/instance-source-edition-4.md) | 454 | `declaration-track:408cec98c2979e9215daeea656feb06afcae43d0af948b0145719f9c8eabca10` |
| 40 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/instance-source-edition-17.md) | 456 | `declaration-track:c847b740db8413fe6ffdf7825e63e178b4f1004decd8dedf4bf1643825aae9c9` |
| 41 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/instance-source-edition-8.md) | 458 | `declaration-track:5b501a172e427543a774291ca501283c16d793fa1d3838170fe9a06f8388faf0` |
| 42 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/instance-source-edition-3.md) | 460 | `declaration-track:28c944ff88c1e4a0ae851da0003189351fad0e002f7e52edb2248f0fbc1353c8` |
| 43 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/instance-source-edition-10.md) | 462 | `declaration-track:80335eaf244172f3ed844c2ff1ce4cf4e40042c3c0605beb62da0a0249d44915` |
| 44 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/instance-source-edition-11.md) | 464 | `declaration-track:8c8ce362d621f34b28072e5f4854b9c852da2c5be2002921ad5094fd3354c59a` |
| 45 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/instance-source-edition-2.md) | 466 | `declaration-track:0d79c38f8fb61d2ed44f21fe86bfa2696406ce5e34a101f4ef482af4f7e8d250` |
| 46 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/instance.md) | 468 | `declaration-track:01aeaa308a55da081f9f983d48acf43fa0fae50eb81a38c43648e653475320a5` |
| 47 | `def` | [mk](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/mk.md) | 471 | `declaration-track:3ca97484e82a33a9ff81a7d0203b35495e7b8d50be644f8312f32645e9057b8c` |
| 48 | `theorem` | [zero_def](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/zero-def.md) | 476 | `result-track:c2703868b238c586fa0e28d6c37a88cb33a7840fc2b91a13b3a2bb115dc658e6` |
| 49 | `theorem` | [mk_eq](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/mk-eq.md) | 478 | `result-track:e6c8e868f0033e479c5c0abd17bd7bae9ad4c90d27b9179bc6359242083fb222` |
| 50 | `theorem` | [const_equiv](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/const-equiv.md) | 481 | `result-track:8db71c283eb3c5570b3a13a22eb11cf317e21ac8a7fcbf164fcf7db27a3899f6` |
| 51 | `theorem` | [coe_inj](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/coe-inj.md) | 486 | `result-track:6a33bc977f921a77346223b0916a21222249d3c22f9f27fc38b677e8a37397d0` |
| 52 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/instance-source-edition-13.md) | 489 | `declaration-track:a1cb19a27af33bb03fd6ba5df674e575b4ac59a35cc337bbe7e720a398b32d0a` |
| 53 | `theorem` | [coe_add](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/coe-add.md) | 496 | `result-track:df79e793509693a988b05f841e69c9dc3503d2a22add0e996d82ec226f4b6aee` |
| 54 | `theorem` | [coe_neg](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/coe-neg.md) | 500 | `result-track:4702f7bee89a794b6d2d126c738ff53b74104fc51b864673180166335943d36c` |
| 55 | `theorem` | [coe_mul](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/coe-mul.md) | 504 | `result-track:f13ef05de5ab01b95d4083e0f106f665eccc0e68ba1698b5a9951c0bd3f7a29a` |
| 56 | `theorem` | [coe_sub](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/coe-sub.md) | 508 | `result-track:d41b22dfb2d6d64acd4aaba342aab848305c7ed426c4cded71585b2550ce8cce` |
| 57 | `theorem` | [coe_div](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/coe-div.md) | 512 | `result-track:367ba2a324b1b9790a871ae4133f178fdf1feca1aac7a57893693b3a0d52eb3f` |
| 58 | `theorem` | [coe_one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/coe-one.md) | 516 | `result-track:5b83829ccfba103c1241f8daf265bd8ff73f8dcb962c66e985bf51463ce24857` |
| 59 | `theorem` | [coe_zero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/coe-zero.md) | 519 | `result-track:7e90d3a8ab1e6f04572f411f80dbae7e69d2aba67739547ab9af99de11182cd8` |
| 60 | `def` | [padicNormE](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/padicnorme.md) | 527 | `declaration-track:04d89b34c8f95abee4594fc9a9d4e830b2d76d7bece19084bcdc7f84e6697c9d` |
| 61 | `theorem` | [defn](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/defn.md) | 550 | `result-track:b61c972629cea5e574eacbc97b29e3a8eac304f2d53b50434e72ef084d77ace3` |
| 62 | `theorem` | [nonarchimedean'](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/nonarchimedean-source-edition-2.md) | 573 | `result-track:fcb66ccec4c8ed3da610c296e62d7b0313e942233eb9d36ac342c74fbcd752b4` |
| 63 | `theorem` | [add_eq_max_of_ne'](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/add-eq-max-of-ne-source-edition-3.md) | 579 | `result-track:ccce5aa9607cd37628861bce4b96d6d81eebd2b6f3ad7a67f3c7c75aaa1218ba` |
| 64 | `theorem` | [eq_padic_norm'](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/eq-padic-norm.md) | 584 | `result-track:216c790044851e758dabdd4423e0f533af5e44add450386ccc647a8a72987293` |
| 65 | `theorem` | [image'](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/image.md) | 587 | `result-track:5aa872262e5846788aba3943cf8eb72c102ec4efc70271f5f5885cc65f670b23` |
| 66 | `theorem` | [rat_dense'](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/rat-dense.md) | 604 | `result-track:9bab303167067272be0162e6e33c13dff010e9cdbd923137f5402692e1bc572c` |
| 67 | `theorem` | [div_nat_pos](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/div-nat-pos.md) | 623 | `result-track:53ab24a58baa402477d99a5fbf2e38f4dddb9b6e623af68d73bdf5129b89e038` |
| 68 | `def` | [limSeq](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/limseq.md) | 628 | `declaration-track:8f5eeb213da1d5353707afbddf7efa6c62b3c3efe77397cf0fc9fea1de77eb7e` |
| 69 | `theorem` | [exi_rat_seq_conv](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/exi-rat-seq-conv.md) | 631 | `result-track:2ecdfdc275360726f83649ff91a39f91da52b07a0d9d75568193ee8be0f335dd` |
| 70 | `theorem` | [exi_rat_seq_conv_cauchy](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/exi-rat-seq-conv-cauchy.md) | 642 | `result-track:f28bc35bd6fb486c350bb31620e8017e5864a0db03907ceb54a71e9bc8fd91ab` |
| 71 | `def` | [lim'](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/lim.md) | 669 | `declaration-track:64a2791724d1ba488aeffe1eac9be6567b9dd13c23cc27595aecaf121fe02301` |
| 72 | `def` | [lim](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/lim-source-edition-2.md) | 672 | `declaration-track:9f1f902e9d6a00b1836c2575466573c73f3a832afefc501c181521eb554b5603` |
| 73 | `theorem` | [complete'](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/complete-source-edition-3.md) | 675 | `result-track:e2edd7b590e7a715668da5d025f845063cf64a030740a85f5ff349f599c27f69` |
| 74 | `theorem` | [complete''](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/complete-source-edition-2.md) | 688 | `result-track:978d0bec5eb161933eda25965a42a4557b5ef2242d2e1ef9dd823ac415d4a48f` |
| 75 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/instance-source-edition-16.md) | 701 | `declaration-track:baa27485cfe949f68d5db814055b8f3948205b7509f86af02fbae2031742f461` |
| 76 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/instance-source-edition-6.md) | 704 | `declaration-track:5173d53fc580926b34c4f50970aa336eeaa9b83f75248ae0be9c734d5e89bc9c` |
| 77 | `instance` | [metricSpace](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/metricspace.md) | 707 | `declaration-track:e4d0f126117bdf9ced1d3fb07e93998d3ea872248ec62c15592ff8129a75e32a` |
| 78 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/instance-source-edition-9.md) | 720 | `declaration-track:74adbce0771c72934627492fb1c4f3aaae29bf36568cf3636e5b4aa94207ee1c` |
| 79 | `instance` | [normedField](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/normedfield.md) | 723 | `declaration-track:ccf2d64f1c7854bcb441fc5f95d30d01305ee3bd000bd939b5f008d4dca04766` |
| 80 | `instance` | [isAbsoluteValue](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/isabsolutevalue.md) | 730 | `declaration-track:0d898b5a5e55440a75fc360b9d792f89d6879dbe3da8a52ed38b9b25031f26ee` |
| 81 | `theorem` | [rat_dense](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/rat-dense-source-edition-2.md) | 736 | `result-track:d3c97d2f4e15380c66a0ecce2ec4012430ac2848486bcac3b3b460098b8b55f0` |
| 82 | `theorem` | [mul](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/mul.md) | 752 | `result-track:e11addd51d471af92084f8dd7cc2a0a9a56f85d5a50259028df8ec54b66e5463` |
| 83 | `theorem` | [is_norm](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/is-norm.md) | 754 | `result-track:eaee74bbb5a7d94795306c401f828046332ef7831662c88565284efa500fe2e2` |
| 84 | `theorem` | [nonarchimedean](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/nonarchimedean.md) | 756 | `result-track:ad1099943843cbfe9a1c2f59255e1d1cdb70de95c21cb6b546b4c5d00068afe6` |
| 85 | `theorem` | [add_eq_max_of_ne](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/add-eq-max-of-ne-source-edition-2.md) | 760 | `result-track:8ab63be3299289e87fd5d5f12e6eeab65c4c6e95247cbcbb08a8ea92142d9422` |
| 86 | `theorem` | [eq_padicNorm](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/eq-padicnorm.md) | 766 | `result-track:ef9683b9762f941354fb949b693a40a3af9963fe92cce655a5e521598321abb8` |
| 87 | `theorem` | [norm_p](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/norm-p.md) | 771 | `result-track:67d6ddf5a23909493787224c0c73f948c9d546d0c6141e590c51511f68b08241` |
| 88 | `theorem` | [norm_p_lt_one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/norm-p-lt-one.md) | 777 | `result-track:c9c5bb59feba5ec576a1324c5fca756944ce54d9ce87f65f2e7ff2248b6d5ac2` |
| 89 | `theorem` | [norm_p_zpow](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/norm-p-zpow.md) | 783 | `result-track:14cce4f11aa1552c2fc8f55b0890d884ec10000240a54f941db5581cf8255ca7` |
| 90 | `theorem` | [norm_p_pow](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/norm-p-pow.md) | 788 | `result-track:7211c91a01ced7e34f359a788336781db2dc2f7df1344743b482389b6a2c845a` |
| 91 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/instance-source-edition-5.md) | 791 | `declaration-track:4b45cd3eab4a736f453ef1a7acf9e2791ccf9a103f81b291f1c95a35539cfc3b` |
| 92 | `theorem` | [image](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/image-source-edition-2.md) | 798 | `result-track:bc39e99e6d3feb60305317630842c9a247317542704cf4e18423126f86e0f27e` |
| 93 | `theorem` | [is_rat](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/is-rat.md) | 804 | `result-track:00dc587151135161c66cbe300af34c8768e1754bbe80fa8c92afd8b8b72303c5` |
| 94 | `def` | [ratNorm](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/ratnorm.md) | 814 | `declaration-track:c6a8c1e074186820ec498a58dfcb269e4a872a0360cb8cd7dd62ae4911f4d72e` |
| 95 | `theorem` | [eq_ratNorm](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/eq-ratnorm.md) | 817 | `result-track:1ca11213a0a264ee0501910666463ce11e2364b9604ba7cd662f12eaea19fd19` |
| 96 | `theorem` | [norm_rat_le_one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/norm-rat-le-one.md) | 820 | `result-track:cc7e6faaa1b19cf7df06e389b19fb5d0d090c2138ce5f039055bf9d494d9d491` |
| 97 | `theorem` | [norm_int_le_one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/norm-int-le-one.md) | 837 | `result-track:f513b708806e17b82b5b5bf6afa2ffecf3252fa698e065da6fce1ab145b97c88` |
| 98 | `theorem` | [norm_int_lt_one_iff_dvd](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/norm-int-lt-one-iff-dvd.md) | 841 | `result-track:0f629e5e52de1207676b206d465e16970110a079620ab1c1322446c3bc1c31bf` |
| 99 | `theorem` | [norm_int_le_pow_iff_dvd](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/norm-int-le-pow-iff-dvd.md) | 861 | `result-track:04fb32df18faa0d0806e8bb7d95f9edc93634694d57d0b077fbf89e26f4171ad` |
| 100 | `theorem` | [eq_of_norm_add_lt_right](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/eq-of-norm-add-lt-right.md) | 868 | `result-track:6348e0449b46c5b166e8f3c4e2f3cae2b07457e9e7b0047e05d9f0c843c1394d` |
| 101 | `theorem` | [eq_of_norm_add_lt_left](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/eq-of-norm-add-lt-left.md) | 872 | `result-track:5930ab94c3439f59f01aa8b54238ec3776fa07ab0a852bf7295cde2f5f04f7fd` |
| 102 | `instance` | [complete](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/complete.md) | 884 | `declaration-track:3eafc58b7148951f2c90cff8b5c989b52e7299f84319bcfac4e33f7a80d73643` |
| 103 | `theorem` | [padicNormE_lim_le](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/padicnorme-lim-le.md) | 906 | `result-track:e6022eae5905fe025beac65e9b73b694b211da0d07e05d21837e9e5a8f2b06a8` |
| 104 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/instance-source-edition-7.md) | 916 | `declaration-track:5454e0f80d14ec2030dc28ac1daf24278aa5ed3a42a52d10f221d2083458f4ba` |
| 105 | `def` | [valuation](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/valuation-source-edition-2.md) | 930 | `declaration-track:45d81f36b8b1df18b5cbb5ef264af3fb59ac7545c252e045e0511961426c71e3` |
| 106 | `theorem` | [valuation_zero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/valuation-zero.md) | 940 | `result-track:db86bef61a503b4fffbe8d38f8f7ae1429dccc4ea94eb1759f3d0d015241ae24` |
| 107 | `theorem` | [norm_eq_zpow_neg_valuation](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/norm-eq-zpow-neg-valuation.md) | 943 | `result-track:24ec95f96f70fe42c70c094e4be4ca3fafa40eba123abef9d4a7a29a40987274` |
| 108 | `lemma` | [valuation_ratCast](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/valuation-ratcast.md) | 956 | `result-track:fdd8a1a46171d9a7957cc5702b3801a85b4b7f4cfb4dab0d32d8b65a0aee3475` |
| 109 | `lemma` | [valuation_intCast](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/valuation-intcast.md) | 965 | `result-track:9f24d8208584b92c5cd1a3348bcbee9d715aa835d72fbd209d809079cf6b59e7` |
| 110 | `lemma` | [valuation_natCast](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/valuation-natcast.md) | 969 | `result-track:328ed7793dc2a39581e3a3424c6146d9bf5ef01018040fc0c90cdc43841a263b` |
| 111 | `lemma` | [valuation_ofNat](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/valuation-ofnat.md) | 973 | `result-track:dd1852b8f11068b2b86eab785b41403493ec48b39f30fab3947b83bf998bfe20` |
| 112 | `lemma` | [valuation_one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/valuation-one.md) | 978 | `result-track:88c87dec2f74d8d4319ae90ad227292f3bddc0aec83dcd197b122d201f24e126` |
| 113 | `lemma` | [valuation_p](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/valuation-p.md) | 982 | `result-track:f870d34a4efbfe2f3e56edfbe315ad6be11c70c49cf2277556bfca3e83aeaf63` |
| 114 | `theorem` | [le_valuation_add](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/le-valuation-add.md) | 985 | `result-track:ebadab8eeb1d3c3f96b10cf243c2af30eac1b28c211f65bb4cb6d0c052c5a4d2` |
| 115 | `lemma` | [valuation_mul](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/valuation-mul.md) | 997 | `result-track:8f0bdde8501357f52c4c78bf45630991b3a7dd2b49a81a82be78ff3eca564a70` |
| 116 | `lemma` | [valuation_inv](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/valuation-inv.md) | 1007 | `result-track:04ecca38f90f58685d97e877b856f1676dee771b2f56d0b97da559de9a321a62` |
| 117 | `lemma` | [valuation_pow](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/valuation-pow.md) | 1017 | `result-track:110c60d52fdd0ada907e1dc034b012908e25a85108e7eb3e07dcd4c8edd2306e` |
| 118 | `lemma` | [valuation_zpow](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/valuation-zpow.md) | 1025 | `result-track:f7b51272601a6120f3c192918360f1e6ddb39ab54910c353ba099fcd394ca923` |
| 119 | `def` | [addValuationDef](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/addvaluationdef.md) | 1034 | `declaration-track:f2673f451c1543724ffb244ca518e2a15685c583f0f401773b63166089586668` |
| 120 | `theorem` | [AddValuation.map_zero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/addvaluation-map-zero.md) | 1038 | `result-track:c385b4c42a74adf656bf39a3c1c973551e8cb5ae81e27d6a6e485ca64030ec1c` |
| 121 | `theorem` | [AddValuation.map_one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/addvaluation-map-one.md) | 1042 | `result-track:ccf9fe787ef62df4292776a85318a89dc4fdafb60982ec5958ea5aed75ec7702` |
| 122 | `theorem` | [AddValuation.map_mul](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/addvaluation-map-mul.md) | 1045 | `result-track:de8a6d23c459cf9be823e9f3f1c45b8022e357aad465bf2d6769bb673650ce63` |
| 123 | `theorem` | [AddValuation.map_add](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/addvaluation-map-add.md) | 1055 | `result-track:78bdf47ffcba4cc65e97674b998ae0850d106f7bb3fde3c36a4d8884af0a8ab7` |
| 124 | `def` | [addValuation](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/addvaluation.md) | 1071 | `declaration-track:65e99bd22ee749461cf8d6a34c9658045d6ee63c09e4fc1536358b735c0bea04` |
| 125 | `theorem` | [addValuation.apply](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/addvaluation-apply.md) | 1076 | `result-track:426507521972726a33381493fb311b01979c007a77f0877b4bb4d827397aad2c` |
| 126 | `theorem` | [norm_le_pow_iff_norm_lt_pow_add_one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/norm-le-pow-iff-norm-lt-pow-add-one.md) | 1085 | `result-track:993b06549e8d7a6dff55591bd2e2efb5240b6e70351eebfff406a334bcf16dcd` |
| 127 | `theorem` | [norm_lt_pow_iff_norm_le_pow_sub_one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/norm-lt-pow-iff-norm-le-pow-sub-one.md) | 1095 | `result-track:dc11bd2b1ac51462807efc3537764fed6dd84849bff2c3ed328100fb7c3df061` |
| 128 | `theorem` | [norm_le_one_iff_val_nonneg](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNormEqZpowNegValuation.lean/declarations/norm-le-one-iff-val-nonneg.md) | 1099 | `result-track:c35ad030d946226609e151b1400f39c3ba89a11f46f24d1d153b0079c6b44e1d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=681a51c4f2018355b13c530b5c10f3c7d37100f0c867add15c62481872469c26 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variantfe784e65c8cd44335ca49ff99e34b2f9faabc3d1d493fc22557a668d1242b2ca.lean","GRWTSK/_verification/specifications/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variantfe784e65c8cd44335ca49ff99e34b2f9faabc3d1d493fc22557a668d1242b2ca.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
