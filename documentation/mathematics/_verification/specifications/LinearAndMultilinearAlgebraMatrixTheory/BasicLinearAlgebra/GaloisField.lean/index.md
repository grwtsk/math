# Verification target: Galois Field

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5eb5184a986f4659bb9c15c5810f7a175fd3d45c",
  "lexical_observation_count": 70,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/GaloisField/Variant29b9c05cabd489629a5ba7fc229759eebc85c9cb15e93fc5dc27b669c6de45cf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5eb5184a986f4659bb9c15c5810f7a175fd3d45c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/GaloisField/Variant29b9c05cabd489629a5ba7fc229759eebc85c9cb15e93fc5dc27b669c6de45cf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/GaloisField/Variant29b9c05cabd489629a5ba7fc229759eebc85c9cb15e93fc5dc27b669c6de45cf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BinaryMatrix.Avalanche` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLinearEquiv` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.IntervalCases` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [GF2](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/gf2.md) | 40 | `declaration-track:77356f3bd41f2996ee67e2a7b3f5e0299112513cb94779c04c9bd8cd1b389cb9` |
| 2 | `abbrev` | [GF2Matrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/gf2matrix.md) | 43 | `declaration-track:76bc80efef9b5df758311ec0009b98ed21cb26eacac583c3d6113cf297e7035d` |
| 3 | `def` | [boolGF2Equiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/boolgf2equiv.md) | 46 | `declaration-track:b479e39f5c3ae818022f53de27ff7a1c9f30d3947c864db7993bbbe5abe01a90` |
| 4 | `theorem` | [boolGF2Equiv_false](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/boolgf2equiv-false.md) | 64 | `result-track:133de73e2bbc0e9f2cb3d20104007fcd0d82b80ea01830009e7861ac904bf1c5` |
| 5 | `theorem` | [boolGF2Equiv_true](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/boolgf2equiv-true.md) | 67 | `result-track:f525898ba2f494a21de7f9276d119d0be599dd7b9f5a4a691badc9a8a7281f41` |
| 6 | `theorem` | [boolGF2Equiv_xor](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/boolgf2equiv-xor.md) | 71 | `result-track:3cc1549f6802bb4c1cd6c173de06160846f4a16c66d7b3b43bd1f4d53f89727c` |
| 7 | `theorem` | [boolGF2Equiv_and](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/boolgf2equiv-and.md) | 77 | `result-track:0d9bc8545ae4203d091389145351c1d7cc597aceec9a0f7654cd1a24ff17a094` |
| 8 | `def` | [boolMatrixGF2Equiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/boolmatrixgf2equiv.md) | 84 | `declaration-track:0023e71ee79bfd54f3eae13bde9ce3a8e6767f1b4be5ed94e3b40b1c2af3091a` |
| 9 | `theorem` | [boolMatrixGF2Equiv_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/boolmatrixgf2equiv-apply.md) | 95 | `result-track:484b716da6df49f3ac759284980f2065643be3ea7a2b8ed1baa8efb2ebae6546` |
| 10 | `theorem` | [boolMatrixGF2Equiv_symm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/boolmatrixgf2equiv-symm-apply.md) | 101 | `result-track:42057df4c90bbdd3d72792dd304d0aed9d611375e45338e22168cdd3dedfe3f5` |
| 11 | `theorem` | [boolMatrixGF2Equiv_xor](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/boolmatrixgf2equiv-xor.md) | 107 | `result-track:e70f3eb218918b8fabeb26802d37fd9ab589a92ec0886808978300685062bb2c` |
| 12 | `theorem` | [boolMatrixGF2Equiv_and](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/boolmatrixgf2equiv-and.md) | 119 | `result-track:a45047b834281ff2fc1e08ba015457287d706ba40ab4a6cd9bc95448a61233ae` |
| 13 | `def` | [rowMajorIndexEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/rowmajorindexequiv.md) | 129 | `declaration-track:2156af030185993e0cce5370dc632029e8d8c3be46735adfd7b0b91968608fba` |
| 14 | `theorem` | [rowMajorIndexEquiv_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/rowmajorindexequiv-apply.md) | 133 | `result-track:f726136a3bc14b4b4fdd915d2375009fa2e6993716b1d0659270622d447d521e` |
| 15 | `def` | [flattenEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/flattenequiv.md) | 140 | `declaration-track:61b2eccadf91165eb5c573a94f1cbdeea84eb6dc29daac460d1816468b6fa0dc` |
| 16 | `theorem` | [flattenEquiv_apply_flatIdx](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/flattenequiv-apply-flatidx.md) | 157 | `result-track:7413173a4edab9f0b94930b7b2254296fba4b57be2d8168ba023ee9cbdf08393` |
| 17 | `theorem` | [flattenEquiv_xor](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/flattenequiv-xor.md) | 168 | `result-track:ac748cb787e2ad03f77f4eecc93365b8ae4a885c668f4cbcb566144ecfbd8f51` |
| 18 | `def` | [zeroMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/zeromatrix.md) | 177 | `declaration-track:ca6e503ac6ca10745be5b522c0f6066ad8afb5387ba9013669590ee32cfd8483` |
| 19 | `def` | [pointwiseOneMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/pointwiseonematrix.md) | 180 | `declaration-track:b7c54f784c6e41322f115b441601f7c3ecf1bc725e40cbe7c703a3a7aa43621f` |
| 20 | `theorem` | [xor_zero_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/xor-zero-right.md) | 183 | `result-track:1e2f22bd6070f8008d63e1d379ecb2b2a6c274f96299de902d9e9e4fe49d8042` |
| 21 | `theorem` | [xor_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/xor-self.md) | 189 | `result-track:e570e1690cb1bc15c47ce14915fb8b761ae6c2e65d64b0a944a788e24dd28000` |
| 22 | `theorem` | [and_zero_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/and-zero-right.md) | 195 | `result-track:dd451f269231557533db0677caf6f29d8a1e080cad0e5f2a4c52509149478a3a` |
| 23 | `theorem` | [and_one_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/and-one-right.md) | 201 | `result-track:12efd3ba9bd5c8db55e3c8579097bc8c8e8d30395584c9b72dffe837d8881ca0` |
| 24 | `theorem` | [zeroMatrix_eq_pointwiseOneMatrix_of_mul_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/zeromatrix-eq-pointwiseonematrix-of-mul-eq-zero.md) | 207 | `result-track:c8a85789e100a956346e626f66e61ae7d9a3b9f7c0557ade141e7c22616b360e` |
| 25 | `def` | [singletonMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/singletonmatrix.md) | 216 | `declaration-track:9d34049659048e8e1698a83a0b564d9ac2e326f7864d144b315f5ccc3a555cd2` |
| 26 | `theorem` | [singletonMatrix_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/singletonmatrix-ne-zero.md) | 220 | `result-track:f64be6527449a9b9bdc889ba0d9377daca6390dc7b8ba8ebd209ab7277a58d8f` |
| 27 | `theorem` | [exists_pointwise_zero_divisors](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/exists-pointwise-zero-divisors.md) | 231 | `result-track:75f920fb722dc3f44ac96a640511907453505941876015b59e27c00a011f73d8` |
| 28 | `def` | [oneEntryGF2Equiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/oneentrygf2equiv.md) | 258 | `declaration-track:b2d4ad053f7451da0d20bc82e7aea5338a3a664bec88c794ba622222abfb11bd` |
| 29 | `theorem` | [oneEntryGF2Equiv_xor](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/oneentrygf2equiv-xor.md) | 267 | `result-track:e70ced62d033360cb9d176cd623833df245b98a795e13c554275e35918f1d98b` |
| 30 | `theorem` | [oneEntryGF2Equiv_and](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/oneentrygf2equiv-and.md) | 272 | `result-track:459f760aa500325f276a7142399a050068d9326faf9ef4920177cdc92184f2ee` |
| 31 | `structure` | [BinMatFieldEncoding](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/binmatfieldencoding.md) | 284 | `declaration-track:79b6af036683dc27ba43802782d0a953bfcd5edf533b75bd1dc5c2d7a677cd98` |
| 32 | `def` | [code](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/code.md) | 295 | `declaration-track:851b8c255bb70073f301ecf7fdb0d02575201574c54d904272d54fc13a20f9ae` |
| 33 | `def` | [decode](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/decode.md) | 299 | `declaration-track:6fb64aad0d8eb04bd3ffe9a6e97ead895abd298f8662ec7ce9ff5c95d6d41578` |
| 34 | `theorem` | [decode_code](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/decode-code.md) | 303 | `result-track:2aea07fdea0bf3b7f2c1e1a66fe183e9071865692ec026862cc7e5f387a953da` |
| 35 | `theorem` | [code_decode](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/code-decode.md) | 308 | `result-track:acb569d9e65494754569d8b38f2bdde27dc65e1085a6c8d6e9da9dbcfe982a80` |
| 36 | `theorem` | [code_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/code-zero.md) | 313 | `result-track:b96710ebd347a232f4c519322288063adee4d87848d2df78b6d2b2b6a4e55bf8` |
| 37 | `theorem` | [code_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/code-add.md) | 320 | `result-track:c11f0cb70d7eba8aa553b8872c83409e86bd4deb7680378e6bf8b2b87fe700eb` |
| 38 | `theorem` | [decode_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/decode-zero.md) | 327 | `result-track:1ac58214e216cdb1c049d520f2e00d06aaf7dfc82227f990139dad9083ea763f` |
| 39 | `theorem` | [card_field](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/card-field.md) | 333 | `result-track:d3f1c7cd97be6ac79c0adada4029c7320111a9d19346858ac04016ea04a22198` |
| 40 | `theorem` | [dimension_pos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/dimension-pos.md) | 339 | `result-track:2775cff7f0becab662a178980bfa5420f071e43565e1b2aa9b1ce57044d6b9f1` |
| 41 | `def` | [gfZero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/gfzero.md) | 355 | `declaration-track:a15b47dfd6ca69222bd5b861847ee22f4920bd39ac9459617a220df4131d1ad2` |
| 42 | `def` | [gfOne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/gfone.md) | 358 | `declaration-track:42c7f8dc2aecdbdc8212e686dc12a5acec978a9744860a529268f58d23b790ad` |
| 43 | `def` | [gfAdd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/gfadd.md) | 361 | `declaration-track:932e5836895551a60d7e36515eaafd58e365e0c8ce8c778529d2b56d5728c4ed` |
| 44 | `def` | [gfMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/gfmul.md) | 365 | `declaration-track:d0ab68bf9bfc2c1dee9b8eb7afd58eb3a02dcc085113031f91e6dd541e7998a4` |
| 45 | `def` | [gfNeg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/gfneg.md) | 369 | `declaration-track:31db93f0ab2e29c854bb3c965a95e990912567948690da424a8635ca0c651bdc` |
| 46 | `def` | [gfInv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/gfinv.md) | 373 | `declaration-track:34f6fee184bf660e46f8715c3e3763e81345a4f56cf058897d96b2a7a8b8f85b` |
| 47 | `theorem` | [decode_gfAdd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/decode-gfadd.md) | 377 | `result-track:d9a84df926656dd0618f234608e9ce0284469fb2844d77bef2d82ce0b9cceec6` |
| 48 | `theorem` | [decode_gfMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/decode-gfmul.md) | 383 | `result-track:67dd705e67bbc3fd0b6079de3ec16cc52a6d7c9e97c9e458d70f61fbd908017f` |
| 49 | `theorem` | [decode_gfNeg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/decode-gfneg.md) | 389 | `result-track:57e4b221a1be35cf3d574c39017f2d550b1ada0879fb6bf25bc90a4e5ef116ba` |
| 50 | `theorem` | [decode_gfInv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/decode-gfinv.md) | 395 | `result-track:425df3c485dfb39cd8ca4ed60c61bcec4752555cb4f75a412f793903a6c3bbfc` |
| 51 | `theorem` | [gfZero_eq_zeroMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/gfzero-eq-zeromatrix.md) | 401 | `result-track:0cac97ccd48308a10ab39218085a709db26b4a8b848170cbe695acb683ae86cb` |
| 52 | `theorem` | [gfAdd_eq_xor](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/gfadd-eq-xor.md) | 409 | `result-track:6baa991a0600adcc329b98acb0b128834d2d1fa525108e522333e794d56a1d72` |
| 53 | `theorem` | [gfAdd_assoc](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/gfadd-assoc.md) | 419 | `result-track:929ad70d123e3f900e26d40abc42d3acf47cca39c541815152ca07f7668b007c` |
| 54 | `theorem` | [gfAdd_comm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/gfadd-comm.md) | 424 | `result-track:05e8ead26f98abda3bb0d995b1c1b8fd0046b31f3970dbd8ab0ac3c98fe87677` |
| 55 | `theorem` | [gfAdd_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/gfadd-zero.md) | 429 | `result-track:2434b22edd85a2e89a9c321e92b98daac5663335eb1d5f7ee75b978d603ebd67` |
| 56 | `theorem` | [gfAdd_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/gfadd-self.md) | 434 | `result-track:96c33448f37425f7c6d9ce87838349b6174291d9e9e17b32c45b83e2bb7847e9` |
| 57 | `theorem` | [gfMul_assoc](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/gfmul-assoc.md) | 438 | `result-track:95a6b71cc12ea3619278f7a36193ce56a9c8413c6ef0322281293dd48dd8ab7b` |
| 58 | `theorem` | [gfMul_comm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/gfmul-comm.md) | 443 | `result-track:04f72ef50a9cd5ef5c2ab93729ddfb37f667a62f06443e5b7acf5880f579d21f` |
| 59 | `theorem` | [gfMul_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/gfmul-one.md) | 448 | `result-track:3c0215434e42ce196d52e191736633cb787af62018e39f3f647396e017f90e37` |
| 60 | `theorem` | [gfMul_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/gfmul-zero.md) | 453 | `result-track:70334629dbd9fda9b4b9e0f5d839a610f796d700269c4e4a2a8aebfabb78001e` |
| 61 | `theorem` | [gfMul_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/gfmul-add.md) | 458 | `result-track:31e85a41a70f522c017fd57a8d80081e3ee4a4b7efa694227795fbdfe3c26aac` |
| 62 | `theorem` | [gfMul_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/gfmul-ne-zero.md) | 463 | `result-track:57f490f434e3badb2bc6bdbcbdaa85ff7b472f4949aa6db3a23c056a26621bf9` |
| 63 | `theorem` | [gfMul_inv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/gfmul-inv.md) | 481 | `result-track:cda5f42a1595d208db986331864fb60150f4449cfa076a4189a3f990658c8c91` |
| 64 | `theorem` | [gfInv_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/gfinv-mul.md) | 493 | `result-track:13946e3dc6f220fe75ce8fe7a1400356332342e187637655653ee594a9f4538b` |
| 65 | `theorem` | [transported_mul_differs_from_pointwise_and](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/transported-mul-differs-from-pointwise-and.md) | 506 | `result-track:1a8ec8324f0d9ebcb0b42e824859b41f3437462aa6333eb3f66ea9ea89597606` |
| 66 | `def` | [fieldQuantizer](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/fieldquantizer.md) | 522 | `declaration-track:22fbcaae28fc392eea4c3e27345fbc7e72b6d483e51383bc467ac09211c50379` |
| 67 | `theorem` | [fieldQuantizer_indistinguishable_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/fieldquantizer-indistinguishable-iff.md) | 525 | `result-track:cd9a0a1a3137661f47cba4d446c968337791a7c5da1031abae837395afd7494d` |
| 68 | `theorem` | [fieldQuantizer_effectiveStates_eq_univ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/fieldquantizer-effectivestates-eq-univ.md) | 531 | `result-track:43825622cbe3d2e948f6dfe36965761045f5d3406b88e94af16bae31ec136b13` |
| 69 | `theorem` | [fieldQuantizer_effectiveStates_card](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/fieldquantizer-effectivestates-card.md) | 538 | `result-track:a7a9ece833ff4e18bfe8bd438e91b849d3c2ffc2c09a2d42f90c5180783a3c8e` |
| 70 | `def` | [fieldQuantizer_quotientEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisField.lean/declarations/fieldquantizer-quotientequiv.md) | 545 | `declaration-track:9ff9275e6e5665b4e82267af1707a52afebfae54dfa54c3872adb7ad1df2e67f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cb3e9b219e2f5402ad89921a18e567f8c78266ff7d3e39a018fa164454ab3dfe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/GaloisField/Variant29b9c05cabd489629a5ba7fc229759eebc85c9cb15e93fc5dc27b669c6de45cf.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/GaloisField/Variant29b9c05cabd489629a5ba7fc229759eebc85c9cb15e93fc5dc27b669c6de45cf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
