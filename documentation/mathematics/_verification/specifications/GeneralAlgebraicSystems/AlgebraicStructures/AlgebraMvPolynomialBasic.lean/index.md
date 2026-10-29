# Verification target: Algebra Mv Polynomial Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b7178d84d5d72120af9e5fa24a7ec65eb19c6c00",
  "lexical_observation_count": 179,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantafe6759516934e2098b5a458493d20fb4ffd46d25e950552dc6bbd6cc2bcb7e4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b7178d84d5d72120af9e5fa24a7ec65eb19c6c00`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantafe6759516934e2098b5a458493d20fb4ffd46d25e950552dc6bbd6cc2bcb7e4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Basic/Variantafe6759516934e2098b5a458493d20fb4ffd46d25e950552dc6bbd6cc2bcb7e4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Subalgebra.Lattice` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Tower` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Divisibility` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MonoidAlgebra.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MonoidAlgebra.Support` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Regular.Pow` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Antidiagonal` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SymmDiff` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [MvPolynomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/mvpolynomial.md) | 75 | `declaration-track:7c2e7ca75b698e097a82269c7473bbd921b0645a999964320d88ae87282f38bc` |
| 2 | `instance` | [decidableEqMvPolynomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/decidableeqmvpolynomial.md) | 89 | `declaration-track:168d8a92bdff1dccde50232586d8177a9f73c09031e4d6fd9f449859c47d2e20` |
| 3 | `instance` | [commSemiring](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/commsemiring.md) | 93 | `declaration-track:1dc5ec09daef283affd7342b5173448a8e8834413fd4111365ae25f2308daab4` |
| 4 | `instance` | [inhabited](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/inhabited.md) | 96 | `declaration-track:e49da2d28668e25e4842843537618e3c26c1fa3db18288b25fe2128d9430cb3b` |
| 5 | `instance` | [distribuMulAction](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/distribumulaction.md) | 99 | `declaration-track:80818a5607ab9b58b04c2bf6b6700f05861125273cda6f87c9993ac130e334b8` |
| 6 | `instance` | [smulZeroClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/smulzeroclass.md) | 103 | `declaration-track:6b597165b4393b1e5c9f8f5f983b55ab823deb1923211264d105e402aaca529e` |
| 7 | `instance` | [faithfulSMul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/faithfulsmul.md) | 107 | `declaration-track:bbd598525467577f469bf02345e6405b3ab15d89178271efebf2ee1f84bf6e84` |
| 8 | `instance` | [module](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/module.md) | 111 | `declaration-track:7bffc6711289cd8d48436a34b2543657e3c8df03e17d6c13ca4cb6e3ed3734d6` |
| 9 | `instance` | [isScalarTower](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/isscalartower.md) | 114 | `declaration-track:19b1d274f93c540ca767185fddb73ef837d410c3c7ccadc59bc8ed1de2aec5e6` |
| 10 | `instance` | [smulCommClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/smulcommclass.md) | 118 | `declaration-track:d49ad97de33e072ddaf328c9aef50354234f1d7ad07366a3de74edd19543dd4f` |
| 11 | `instance` | [isCentralScalar](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/iscentralscalar.md) | 122 | `declaration-track:dab64cdc027d3be366da067a024ba56c6122a0a68040ae5219df6f579b748769` |
| 12 | `instance` | [algebra](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/algebra.md) | 126 | `declaration-track:7387864fac15a6fae35d9b5a9e6f338528e901c0e18f549f6cc5b9494d854be6` |
| 13 | `instance` | [isScalarTower_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/isscalartower-right.md) | 130 | `declaration-track:b7bb8aadc023051bb29748891c7ab9ae01f5ab4d6f09455e0df9f6a6705861aa` |
| 14 | `instance` | [smulCommClass_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/smulcommclass-right.md) | 134 | `declaration-track:2f7be9e706282f61cf90b83826e05692b26b8dd402c0aa95005d4a1d3cdf233e` |
| 15 | `instance` | [unique](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/unique.md) | 139 | `declaration-track:3037c37a4338ab6afaf5aa0d7eb3e0b0344f3d1d6af27bef96598d8b3431f4cc` |
| 16 | `def` | [monomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/monomial.md) | 147 | `declaration-track:48b61dd5e6945fa4a05687bb9cdb3f4f624199467a6dac4cfa951f383b117c21` |
| 17 | `theorem` | [one_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/one-def.md) | 150 | `result-track:e026d62e3e69ce661ebd4a9956148fc9d43cca78d9615b0634eee35c6c774445` |
| 18 | `theorem` | [single_eq_monomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/single-eq-monomial.md) | 152 | `result-track:78f1a9458e7cc7bf3777e1aef236991fe8ca89de7e74c2fa30922948464f9fb1` |
| 19 | `theorem` | [mul_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/mul-def.md) | 155 | `result-track:d955392687047d21ad4ced7804c91c29cf4417d5323b3eb13c8aa43d79459d2b` |
| 20 | `def` | [C](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/c.md) | 159 | `declaration-track:7d115b85ec9c2acc48757035c53878369b38ad007b11444885e28e3b3d99dfe5` |
| 21 | `theorem` | [algebraMap_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/algebramap-eq.md) | 165 | `result-track:1033ecc6c35b794a9f16edfd8c7be6b088b55db9788c0fd9f3fa1fe0908da51d` |
| 22 | `def` | [X](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/x.md) | 171 | `declaration-track:da7db7eca9e9e3ab4ac474ef183e9a3f17bd2966fd512ab4ff669dde89341c9e` |
| 23 | `theorem` | [monomial_left_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/monomial-left-injective.md) | 174 | `result-track:cacfe02e3e12003f20d6fdf2b9671adbc658a89ec8f1915136738900f4ac962a` |
| 24 | `theorem` | [monomial_left_inj](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/monomial-left-inj.md) | 179 | `result-track:89dec954ba1d7d069c7fddcee43327c114cd9ab59d3c19a24e9bbe16ed1ff7a0` |
| 25 | `theorem` | [C_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/c-apply.md) | 183 | `result-track:894bfcf25ebdba165c8d828d9cb8943bd26737fc41a211b98a1091718e4c418c` |
| 26 | `theorem` | [C_0](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/c-0.md) | 187 | `result-track:2b8798ed29a8528c3baa3389b10dba22a76a99465d26a901dde3e54f0fdce253` |
| 27 | `theorem` | [C_1](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/c-1.md) | 190 | `result-track:e2fe4e47724f00fd2b3a97c83d80d22256b5e9e763d7398404a1217578722994` |
| 28 | `theorem` | [C_mul_monomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/c-mul-monomial.md) | 193 | `result-track:e651e3713480734a921555577a595ab070aafc615f4039bade60f6437006bab4` |
| 29 | `theorem` | [C_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/c-add.md) | 199 | `result-track:63688b2201616b6eb32acba1a751019280c66410b649511201fefc2dc25a821c` |
| 30 | `theorem` | [C_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/c-mul-source-edition-2.md) | 203 | `result-track:e0f796d3c1c9daa995459d09bcc7eeaa1aea328a16497a0ae6363c3e9dbeb820` |
| 31 | `theorem` | [C_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/c-pow.md) | 207 | `result-track:ecbfd0633b49353cf1663d67c297c8cd202d3759f8a06170410f2d9bd8b57d2c` |
| 32 | `theorem` | [C_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/c-injective.md) | 210 | `result-track:d8dd49defd77d50a40761e13e41454f27c4cc4dcc23f1dee0a52d90e0e4c14bb` |
| 33 | `theorem` | [C_surjective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/c-surjective.md) | 214 | `result-track:680c4ebc4460c81744c047b34b874ffcfa1ae404c12aaafc11d807d22b936baa` |
| 34 | `theorem` | [C_inj](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/c-inj.md) | 222 | `result-track:fd34df9845c18fe5518a723a8541eb5a9b851b824fa8bdfcc904cf2d744d765b` |
| 35 | `lemma` | [C_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/c-eq-zero.md) | 226 | `result-track:ac0a41768a4a126aeaa7aa15ae51c91b278c3b8706cf661114738607b5ebfdbd` |
| 36 | `lemma` | [C_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/c-ne-zero.md) | 228 | `result-track:23ffda47c5c9a6f12dd4618f8f383065a8c275dd4cc6deed251f4f2eb67e792c` |
| 37 | `instance` | [nontrivial_of_nontrivial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/nontrivial-of-nontrivial.md) | 231 | `declaration-track:71e70fd7354848eb93ecd6f6780ef0dde909645589d8dcf04c29c85352b7bb4e` |
| 38 | `instance` | [infinite_of_infinite](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/infinite-of-infinite.md) | 235 | `declaration-track:fd1ade4dfb52fbecd6d96514897901923f5b18f120c9f245ab7a504b1f76960d` |
| 39 | `instance` | [infinite_of_nonempty](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/infinite-of-nonempty.md) | 239 | `declaration-track:27f43439bdfe1cd66a05c3e1d10da08ff32d37f9326b98979740ead7f36d7dd5` |
| 40 | `theorem` | [C_eq_coe_nat](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/c-eq-coe-nat.md) | 244 | `result-track:e7286a52bd16a2fc1f4ef330244a4a7498e27b80e483105991a1aca7ab6fedb7` |
| 41 | `theorem` | [C_mul'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/c-mul.md) | 247 | `result-track:bf4a3e506184cd34dff2590342f9ad2245c21fc0b2c5a14b584e1acea742beb6` |
| 42 | `theorem` | [smul_eq_C_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/smul-eq-c-mul.md) | 250 | `result-track:d5de86ea2ac43477f432040d7e34f6396c70eb83fc78860fa4330dac25e57b95` |
| 43 | `theorem` | [C_eq_smul_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/c-eq-smul-one.md) | 253 | `result-track:36464b20a5a0455711de0c0a779d3c3b96edaafd8c53320eb1744501c01b219a` |
| 44 | `theorem` | [smul_monomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/smul-monomial.md) | 256 | `result-track:5f6560e973370332a66d7dacb44d91aeef3425593b09beaa60e27621c6c8fd09` |
| 45 | `theorem` | [X_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/x-injective.md) | 260 | `result-track:e044e0bf5c0d2dff1dc6254b148857e1fb51e91c58284ba82c445e426e02435a` |
| 46 | `theorem` | [X_inj](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/x-inj.md) | 264 | `result-track:95710e6677f557b50719e7a491bf00ba3d2e9c4bac8e4768d854eb14f2d6d573` |
| 47 | `theorem` | [monomial_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/monomial-pow.md) | 267 | `result-track:7286b88cba1743e65130e4f6babc8d3af9335c7b0b43876b1ef5fe584a7b6f1a` |
| 48 | `theorem` | [monomial_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/monomial-mul.md) | 271 | `result-track:0a824d6d420ec842fb8a62908be80c5534ab8cc351f90ba9b5895935c9c502a1` |
| 49 | `def` | [monomialOneHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/monomialonehom.md) | 278 | `declaration-track:3251897383ec02f635390e0b2e67dc213b07cc931f4b8522206cd4b697e7df85` |
| 50 | `theorem` | [monomialOneHom_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/monomialonehom-apply.md) | 284 | `result-track:b0f4ca2f5abdfd31f6d57d5d25e4e2e232741e59039d46a30c97068be6842437` |
| 51 | `theorem` | [X_pow_eq_monomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/x-pow-eq-monomial.md) | 287 | `result-track:c7d06688a0367e979addcaf3e610ef2316ca266508270920beb707b98e872d34` |
| 52 | `theorem` | [monomial_add_single](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/monomial-add-single.md) | 290 | `result-track:d95f7236f12605652013ea035874339b210545d3c79395ca8012b41d2a2133c9` |
| 53 | `theorem` | [monomial_single_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/monomial-single-add.md) | 293 | `result-track:2fab6fa5d341b7b1908719574fa0976cf0a78bf6458ebe61045fceab7feb4fd5` |
| 54 | `theorem` | [C_mul_X_pow_eq_monomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/c-mul-x-pow-eq-monomial.md) | 296 | `result-track:ac78011bd0eae6e0ac3223cc0f1b55c74a81eff06580edf9e9ca0d9860ab28d9` |
| 55 | `theorem` | [C_mul_X_eq_monomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/c-mul-x-eq-monomial.md) | 300 | `result-track:1bd433c425ed45307b57642f1294e84d012e72ad0c4a561eff121524584a45f4` |
| 56 | `theorem` | [monomial_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/monomial-zero-source-edition-2.md) | 304 | `result-track:c190e71379940d989db65349055892ad88435f147e5fa046b00b385de8e8fe18` |
| 57 | `theorem` | [monomial_zero'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/monomial-zero.md) | 308 | `result-track:684096d4e1d18772ed83f2aeb0461213c2fcb49d0b524797ccfc0813e611b6b6` |
| 58 | `theorem` | [monomial_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/monomial-eq-zero.md) | 312 | `result-track:a80bf8deba7a726f9dece5b307fe15ca7158161d49becbc7ac1e41860465f5b3` |
| 59 | `theorem` | [sum_monomial_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/sum-monomial-eq.md) | 316 | `result-track:13065223cdf45dc2135ef29a1c8d111df3f48859e4032373c4d682882282e774` |
| 60 | `theorem` | [sum_C](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/sum-c.md) | 321 | `result-track:bf5664bd355988f4ff9b6b40541ffb90981edf62b0b8b2ddc60587b78add6e59` |
| 61 | `theorem` | [monomial_sum_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/monomial-sum-one.md) | 325 | `result-track:1237f0e6c76e8b9182718b2fdc7764daccb5a5083f7e550306b911e58de33788` |
| 62 | `theorem` | [monomial_sum_index](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/monomial-sum-index.md) | 329 | `result-track:06d51237189e889e7cf5e8279f5290cbf799c3517ee68cbecab6fa1b63fe4b54` |
| 63 | `theorem` | [monomial_finsupp_sum_index](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/monomial-finsupp-sum-index.md) | 333 | `result-track:f7b04f120f2293b504b7a7accd9d48d10cd76c344cec563a5065b885ca291fba` |
| 64 | `theorem` | [monomial_eq_monomial_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/monomial-eq-monomial-iff.md) | 337 | `result-track:1608143ded5fd97bc636d65529ee840ccb7675071e9ad571e6b02f15ab60e20d` |
| 65 | `theorem` | [monomial_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/monomial-eq.md) | 341 | `result-track:ff179685cb57d4cc6055c1b42197997b80ff8f4138489368b24304a0a2b015e5` |
| 66 | `lemma` | [prod_X_pow_eq_monomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/prod-x-pow-eq-monomial.md) | 345 | `result-track:f8e6b67f7624a2b5fc075c36811e19c2e904d6023049fb6cb3019d22fe0d26c2` |
| 67 | `theorem` | [induction_on_monomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/induction-on-monomial.md) | 349 | `result-track:33901d0732d03e71d8e6e274c710a09c374869c449f6d2aa2385825065552000` |
| 68 | `theorem` | [induction_on'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/induction-on-source-edition-2.md) | 369 | `result-track:77afe450bb61cec9a591bb8f92d9f5f6d8f44b23250fd61539b80d51d6fee731` |
| 69 | `theorem` | [monomial_add_induction_on](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/monomial-add-induction-on.md) | 383 | `result-track:ea6cb2aa6bdd5d6312714b6a8f4bb190d07c73ab7349264ea0f903d2a4f3ab6d` |
| 70 | `theorem` | [induction_on''](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/induction-on-source-edition-3.md) | 400 | `result-track:d774dda13d343bd9dc4f42d6a61fbd5d2319e6fd25dc0ff8cf3a718ee2db2201` |
| 71 | `theorem` | [induction_on](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/induction-on.md) | 418 | `result-track:5855d90f98821e629eede1a3486331e057bb95ff93a29e9e6df7aad69ed1c569` |
| 72 | `theorem` | [ringHom_ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/ringhom-ext-source-edition-2.md) | 424 | `result-track:b8ac82af5941ad723fc74da2aa2f204636886e3d2d9e8a8749a9eba4bdb1aeaf` |
| 73 | `theorem` | [ringHom_ext'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/ringhom-ext.md) | 438 | `result-track:6df42c55dd28ecc0e828e648a294797d8af4e92c80361d83f9a113cbfeac6f3f` |
| 74 | `theorem` | [hom_eq_hom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/hom-eq-hom.md) | 442 | `result-track:cf3e83e4b661ebf0f77dd3de96864fdb14c7ff30552d953fa0aa3f46d327cf91` |
| 75 | `theorem` | [is_id](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/is-id.md) | 446 | `result-track:7af26cde2ed83aa5c9f950b4ffe92ecf9a9322817d9da9232b740a595e4bac11` |
| 76 | `theorem` | [algHom_ext'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/alghom-ext.md) | 451 | `result-track:441831412c5a28916c66ca9e2d1021b3df5976627327235f840ad1277e6ab009` |
| 77 | `theorem` | [algHom_ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/alghom-ext-source-edition-2.md) | 460 | `result-track:d55fb126fb92677964fed9497704aed1aca933f0b344c4f1fc1fc4f886031243` |
| 78 | `theorem` | [algHom_C](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/alghom-c.md) | 465 | `result-track:5d2bc5612325f5d761616d8a3abfeb93b7811e3d2f125ac021f8396dc0afadc1` |
| 79 | `theorem` | [adjoin_range_X](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/adjoin-range-x.md) | 470 | `result-track:a2c47850f01aaa4fe16f22472ddcbf830ad7900d961b9d16772a4135df5f40df` |
| 80 | `theorem` | [linearMap_ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/linearmap-ext.md) | 479 | `result-track:0d77043fa8ec60d1c0b62b29b5943d2ca981ca9a82c95d049ea69cb08c22dbd9` |
| 81 | `def` | [support](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/support.md) | 486 | `declaration-track:7d71917d7539e5d7979e7ad1496a4113bc6a8b5e9a0c3829a5c7fce09ffc28de` |
| 82 | `theorem` | [finsupp_support_eq_support](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/finsupp-support-eq-support.md) | 489 | `result-track:da0de7b0711c88e4ed95bac0484d67599e71a1b2bd0953c910a19317a24d879d` |
| 83 | `theorem` | [support_monomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/support-monomial.md) | 492 | `result-track:81cd4874994f1d96e006ece6b5753802c6a24ce53491c166ebdd26fd6d9c4bd8` |
| 84 | `theorem` | [support_monomial_subset](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/support-monomial-subset.md) | 497 | `result-track:a61a29e67dd36870d86f2d156abdb812e9f8320832f023d6c27dbf537b5ae0bd` |
| 85 | `theorem` | [support_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/support-add.md) | 500 | `result-track:529bf8073836bbc698c4ee4bf7417a0b45cabc68acba210ed063d6907ef7e8b7` |
| 86 | `theorem` | [support_X](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/support-x.md) | 503 | `result-track:409748c7a6e95b702b51b1bba206a90658b9f69ee112a1b7d08767124db3a931` |
| 87 | `theorem` | [support_X_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/support-x-pow.md) | 506 | `result-track:870971c0a78856032ebb8ae89878d8dff00fc097aee0382be4887f0df4cc0a98` |
| 88 | `theorem` | [support_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/support-zero.md) | 512 | `result-track:4bcd0b37bae05fa869bf551423ac235395860fb18b3a34405f1a5760f4ee5f89` |
| 89 | `theorem` | [support_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/support-smul.md) | 515 | `result-track:3a7849791ef455fde71c2139f902dca0fcfa97f4f07748dc10840032f4a9957e` |
| 90 | `theorem` | [support_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/support-sum.md) | 519 | `result-track:5ee8659dae633e88e61ec2db35404290b7491edf3229823ced6d76ff7fc7c00f` |
| 91 | `def` | [coeff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/coeff.md) | 528 | `declaration-track:f568a25b580a643fc6e062254a5873da53a1426931b97a908817792b94d60df2` |
| 92 | `theorem` | [mem_support_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/mem-support-iff.md) | 532 | `result-track:2a4f578314c764654c36380cdeb0790f0ed92724de98ff3b4d93a85110c64453` |
| 93 | `theorem` | [notMem_support_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/notmem-support-iff.md) | 535 | `result-track:6d7038262447ed60a64b71a64da3095258d761c6e2747503459a3edbe6def42f` |
| 94 | `theorem` | [sum_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/sum-def.md) | 540 | `result-track:61403cdee5eb72ec42ab48cde59d550e5cc480aa3fafed707495798f6351281d` |
| 95 | `theorem` | [support_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/support-mul.md) | 543 | `result-track:094f9e558af3f5b0af106f21e6bebbf33d29424eea12706ce6d9be35eabc1da1` |
| 96 | `lemma` | [disjoint_support_monomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/disjoint-support-monomial.md) | 547 | `result-track:6590b6fd071821ed2070f9b2c50d7ea0cb29bab07d3c73b426dc9f88d3f5f4fd` |
| 97 | `theorem` | [ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/ext.md) | 553 | `result-track:763d8184b36572ce958f88ea2a75ce29a80b4ee861d3a3fd51f599b13f27ec60` |
| 98 | `theorem` | [coeff_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/coeff-add.md) | 557 | `result-track:4f141350d76c0ddc10f867741deff21f6db82269d5d620d4c8b5a7b9ff6255f3` |
| 99 | `theorem` | [coeff_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/coeff-smul.md) | 561 | `result-track:94bf46eb4c61b153fad41ce278eaa1bc3082b17f012529b1432f8ed25e2bae2a` |
| 100 | `theorem` | [coeff_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/coeff-zero.md) | 566 | `result-track:9b603dba059443be14fd1c054122955dfd6d99c95dee16229fd1784bfc962abd` |
| 101 | `theorem` | [coeff_zero_X](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/coeff-zero-x.md) | 570 | `result-track:3a352a7719f902cd376450a0009234f98573d38b9743da7857f4497ff19b5969` |
| 102 | `def` | [coeffAddMonoidHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/coeffaddmonoidhom.md) | 575 | `declaration-track:48e277c9c947fa31e48561297950c92d29055926e0652eb2d6a0e4b5758cdfcf` |
| 103 | `def` | [lcoeff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/lcoeff.md) | 583 | `declaration-track:bf3f0aefbdcc5676b61c4a46dc299617bdcc658974e65a8b011211831f7e1b85` |
| 104 | `theorem` | [coeff_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/coeff-sum.md) | 588 | `result-track:46683caffe06145ad566de202b6e4c39041899a1dcb24f092115586e7df13cc2` |
| 105 | `theorem` | [monic_monomial_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/monic-monomial-eq.md) | 592 | `result-track:30868f31ebffb205750750bfd4f2afdbcd19c996246ead5b44b4af262979d826` |
| 106 | `theorem` | [coeff_monomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/coeff-monomial.md) | 596 | `result-track:62b07801112f4a6dde154e4670975d25ad23d1692e8efa70625106c35caf013a` |
| 107 | `theorem` | [coeff_C](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/coeff-c.md) | 601 | `result-track:409d8de86b56348cb55a4bc059dc5c6d11d6fccc0bd4bebcf2f9041a82b49edb` |
| 108 | `lemma` | [eq_C_of_isEmpty](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/eq-c-of-isempty.md) | 605 | `result-track:427ad70a953970388b26205475b7e57a08f6e2bc70bf3e1f266dc19ff50c8e92` |
| 109 | `theorem` | [coeff_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/coeff-one.md) | 610 | `result-track:f2606e63a50b31768676887c20418ee40ba2b211cbb5d5f37c8d310f0f442bf3` |
| 110 | `theorem` | [coeff_zero_C](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/coeff-zero-c.md) | 614 | `result-track:fc5d81ef55838d53c070a7f5861914bf9c438d61ab079c5e685614157e112c25` |
| 111 | `theorem` | [coeff_zero_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/coeff-zero-one.md) | 618 | `result-track:7bd1386031671b45680469c23709836e325b24db44efd1bd5b4941aeb2e91389` |
| 112 | `theorem` | [coeff_X_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/coeff-x-pow.md) | 621 | `result-track:01dc2f325e5d9e557dca86fb07823f924497416e4381885aa133b7bd525763e8` |
| 113 | `theorem` | [coeff_X'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/coeff-x-source-edition-2.md) | 628 | `result-track:d9c8e65a22b77c58362d9773ae9e82404fe89c7282518f1cc0d45a6300bfd36a` |
| 114 | `theorem` | [coeff_X](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/coeff-x.md) | 633 | `result-track:98179269bafd55caa7c00a9c9e43786e5b6e09f29dd2897835918650d7393833` |
| 115 | `theorem` | [coeff_C_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/coeff-c-mul.md) | 637 | `result-track:5490b31fd61d5978a39bd27e80c9baab15e6cf1e7edce679ec609e6368cd9e26` |
| 116 | `theorem` | [coeff_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/coeff-mul.md) | 643 | `result-track:b99a4433862b4b7f961b3362af49f14074b2e2308694b618d09cb06ed04ad1de` |
| 117 | `theorem` | [coeff_mul_monomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/coeff-mul-monomial.md) | 648 | `result-track:5d631e11d5c63c1ac07fb203a1fad3fd4523f501c9108a33232b9b6c49a1859f` |
| 118 | `theorem` | [coeff_monomial_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/coeff-monomial-mul-source-edition-2.md) | 653 | `result-track:724fd1eccb74d095a1c4ee945a20d0c2969f4516420de66f683f5ef4b6da4cea` |
| 119 | `theorem` | [coeff_mul_X](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/coeff-mul-x-source-edition-2.md) | 658 | `result-track:f1be46da0f5c8625e0c4219af08d680b21534b41f710ec53eef1d03642678aba` |
| 120 | `theorem` | [coeff_X_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/coeff-x-mul-source-edition-2.md) | 663 | `result-track:b8ef771696d3ff021ead4d8b01624b45cb757afbab4fcf896dca5d8cecb3518a` |
| 121 | `lemma` | [coeff_single_X_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/coeff-single-x-pow.md) | 667 | `result-track:2b031bde8dbb3dcf43ec912f2fd8d71366a831dc317feb8588b56e3d7acc6948` |
| 122 | `lemma` | [coeff_single_X](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/coeff-single-x.md) | 673 | `result-track:9785f3f6f75bcd0721313855ebacd196a5fd57c4512d05b9e090cdaff232f44f` |
| 123 | `theorem` | [support_mul_X](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/support-mul-x.md) | 678 | `result-track:d4d6d98bc32592a90526d242d4f32aa29e21b9f15f5945f88b7155520727b394` |
| 124 | `theorem` | [support_X_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/support-x-mul.md) | 683 | `result-track:33b4f5ae06c7166a8633e2f71f66296103b4a1944ba60009af4323de718eb240` |
| 125 | `theorem` | [support_smul_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/support-smul-eq.md) | 688 | `result-track:29b7fc941bb68d825834ccbc8e21390e9bf00f8cb9351cdd18451e52733c3c77` |
| 126 | `theorem` | [support_sdiff_support_subset_support_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/support-sdiff-support-subset-support-add.md) | 692 | `result-track:886d9b1b20a8d1153fc5881412613eac33b6c750932b4c2ffe1720d6b3d5a49a` |
| 127 | `theorem` | [support_symmDiff_support_subset_support_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/support-symmdiff-support-subset-support-add.md) | 699 | `result-track:3a624ff9791483fcaacdae87065709642c7017d2c24f1aed4351fbccf7b741e7` |
| 128 | `theorem` | [coeff_mul_monomial'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/coeff-mul-monomial-source-edition-2.md) | 707 | `result-track:63ed3f1204671dc633fc50f72498b68d1feff1f10584176945c3bb9c2b625928` |
| 129 | `theorem` | [coeff_monomial_mul'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/coeff-monomial-mul.md) | 721 | `result-track:6a8eded4eb8a60cd9c3ff044ecd0ea9538bedb96e2d19999502293bf905b4ec2` |
| 130 | `theorem` | [coeff_mul_X'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/coeff-mul-x.md) | 727 | `result-track:17eeab78652ed8ff677702c356f760e059a0972e35e18f1c2e2cdaeefba8c1d7` |
| 131 | `theorem` | [coeff_X_mul'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/coeff-x-mul.md) | 733 | `result-track:87e0c040afc50b044ec9511eb3c3545d4c4e53dab3ee969df901c88c9d583e03` |
| 132 | `theorem` | [eq_zero_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/eq-zero-iff.md) | 739 | `result-track:7736cf62ed334a59974a01726beae0c49d0794303378b6778891d1a52149d315` |
| 133 | `theorem` | [ne_zero_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/ne-zero-iff.md) | 743 | `result-track:dbef7529998c0891845054f52c6050e9360086e76866f4d9ac19c40a54759af0` |
| 134 | `theorem` | [X_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/x-ne-zero.md) | 749 | `result-track:69185567092bf53229ed959b90e882f22ec3e3a5593c772896d25b1d7b56ded0` |
| 135 | `theorem` | [support_eq_empty](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/support-eq-empty.md) | 756 | `result-track:a6a0bb29949ccc2633b07575a70cfe868a8c4f8ca0b43cf2fcaa7aa018c1273d` |
| 136 | `lemma` | [support_nonempty](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/support-nonempty.md) | 760 | `result-track:7bec53b6e2a71aae41fbaf4c7c215a34d46c586fcb40b58bff442ca63f759441` |
| 137 | `theorem` | [exists_coeff_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/exists-coeff-ne-zero.md) | 763 | `result-track:a1fd644fa2dcd8213d7858e7715eae737012a523af650689fe7031eb23bda74c` |
| 138 | `theorem` | [C_dvd_iff_dvd_coeff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/c-dvd-iff-dvd-coeff.md) | 766 | `result-track:9a52109f60121f4cf323c5240e2da6702e3ecd8a4ab5675577cacf990516b8b4` |
| 139 | `lemma` | [isRegular_X](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/isregular-x.md) | 785 | `result-track:6b038651ab9f80aa2ad0ca871b73678cddace95791eca2bef9a304126885b485` |
| 140 | `lemma` | [isRegular_X_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/isregular-x-pow.md) | 792 | `result-track:c87a5d36209e443fb97e698a23deb21bd6f79212fb269f9f2b64774b2a037035` |
| 141 | `lemma` | [isRegular_prod_X](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/isregular-prod-x.md) | 794 | `result-track:73c53b56704b519aeac7c412028e6799054fb5485650107bc692790c611892a7` |
| 142 | `def` | [coeffs](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/coeffs.md) | 799 | `declaration-track:9500ec19eab3c32324feaf40e19632dad95881d6ba43b845ddf1a2777c757478` |
| 143 | `lemma` | [coeffs_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/coeffs-zero.md) | 804 | `result-track:2e5ffc1275fd0f349ab8ac20ff26ec0e1902655584c1220e91cef4d293fe2d1e` |
| 144 | `lemma` | [coeffs_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/coeffs-one.md) | 807 | `result-track:cb508730ff9796423ab2060a5023be8d82834b65a01ad99f30d64a01dc08bdb6` |
| 145 | `lemma` | [coeffs_eq_empty_of_subsingleton](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/coeffs-eq-empty-of-subsingleton.md) | 813 | `result-track:d692cba907a75899b1d6f0c52602f129e4311aca623c71754a1f2d83bcde539c` |
| 146 | `lemma` | [coeffs_one_of_nontrivial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/coeffs-one-of-nontrivial.md) | 817 | `result-track:9ab5453d31d435333c8e81e9fb79d059b68b779abb83d30cfaa18485f97db1c1` |
| 147 | `lemma` | [mem_coeffs_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/mem-coeffs-iff.md) | 822 | `result-track:c2b51374220481567fef9b29d0bc4e1e9932609f6ed132d1ed5fe4b38bd8ee26` |
| 148 | `lemma` | [coeff_mem_coeffs](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/coeff-mem-coeffs.md) | 826 | `result-track:507f753f0fc4478064ae9dc654a853bbe96025876c05dd46dd4b8b0ebdcee2f7` |
| 149 | `lemma` | [zero_notMem_coeffs](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/zero-notmem-coeffs.md) | 831 | `result-track:fd9f55d494785f932ac70a9baeec1baf554b40bb075b703158e29be7656f1f5f` |
| 150 | `lemma` | [coeffs_C](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/coeffs-c.md) | 838 | `result-track:fe970365d2a017afcbe4c2869cc8f78fda0bea18c21528fb865aa8a34f0e6b85` |
| 151 | `lemma` | [coeffs_C_subset](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/coeffs-c-subset.md) | 842 | `result-track:50993ac354c32595778d1da50787790c2933c577314f2330296522689b0c3b47` |
| 152 | `lemma` | [coeffs_mul_X](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/coeffs-mul-x.md) | 848 | `result-track:3cd99ae70ad30dd8cd6ed3725d36ac9f595813da2649c8a218dd794f5dc23c2a` |
| 153 | `lemma` | [coeffs_X_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/coeffs-x-mul.md) | 853 | `result-track:b2c6a303f4d575bca53246b4057f6a2aed96d3a28f4da9fdcd4d0cab1689b043` |
| 154 | `lemma` | [coeffs_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/coeffs-add.md) | 857 | `result-track:a2a0387545331ad0e30a0dd71055cb8255d89bbd095b391dd31da7656454ae30` |
| 155 | `def` | [constantCoeff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/constantcoeff.md) | 882 | `declaration-track:630b7861a197095051f728946935f2ef302238ff5a8e7e9a4832019a635f119b` |
| 156 | `theorem` | [constantCoeff_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/constantcoeff-eq.md) | 889 | `result-track:cec62c06e1482b4865dbf068384ba3a1052d502ad57b176385e17dcf675e7c27` |
| 157 | `theorem` | [constantCoeff_C](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/constantcoeff-c.md) | 894 | `result-track:c31f626e6b3d02d35e6e12479f8a11c8dd535e84d33aea7530541b7139b5bc4e` |
| 158 | `theorem` | [constantCoeff_X](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/constantcoeff-x.md) | 899 | `result-track:90981e0a0489b6136038d08cad436e7b1fadc4cfabcd05310802f27fb0344e53` |
| 159 | `theorem` | [constantCoeff_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/constantcoeff-smul.md) | 903 | `result-track:854670ab44d283d00809b3f8bf05f8ad2ea2389b7cd2e7741d7696c438a2df75` |
| 160 | `theorem` | [constantCoeff_monomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/constantcoeff-monomial.md) | 907 | `result-track:7a88599448e1f32ac9883c47ef44f5e3fc625d5b84542e97f360c6427fdb22a9` |
| 161 | `theorem` | [constantCoeff_comp_C](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/constantcoeff-comp-c.md) | 914 | `result-track:f718012aa1b49052812c28b0070dd77e3c05f2c5b18b14bc96469dd6294b5d4d` |
| 162 | `theorem` | [constantCoeff_comp_algebraMap](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/constantcoeff-comp-algebramap.md) | 918 | `result-track:b21c012fa4f2384ecd2fb76aae5bdeabefddc9402b132e33b309a5ac311d5f65` |
| 163 | `theorem` | [support_sum_monomial_coeff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/support-sum-monomial-coeff.md) | 927 | `result-track:d6da6056ed26e0fac0973ebdf76915e1238a46b4e4fec904bf05dc43a96e70c9` |
| 164 | `theorem` | [as_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/as-sum.md) | 931 | `result-track:d6d979f6b14f32fb503ddf7c592024d5b7fe9ce33923d7c4ecc0ae163ab690e4` |
| 165 | `def` | [coeffsIn](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/coeffsin.md) | 946 | `declaration-track:33067de3407fefc05ca9738d018517b8ea226438577ffe7ab5e8aea453308e51` |
| 166 | `lemma` | [mem_coeffsIn](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/mem-coeffsin.md) | 952 | `result-track:32bcf3d8f1086ecbd557836d397d96ca804507065152e830c0a39c8b5008ae52` |
| 167 | `lemma` | [monomial_mem_coeffsIn](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/monomial-mem-coeffsin.md) | 955 | `result-track:523428c201e8ef873064a4d271e614da9411bbdbc6e76bd134e7ec3b8eefeb69` |
| 168 | `lemma` | [C_mem_coeffsIn](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/c-mem-coeffsin.md) | 961 | `result-track:9d808891c41c9085cb4594bb2fc727c9e99fa4977b10235e3a74081fc88add5d` |
| 169 | `lemma` | [one_coeffsIn](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/one-coeffsin.md) | 964 | `result-track:98f2b79decc33c3210b6a15ff80aa07da8d25bd8b61d53123ecf1baf134dd6b7` |
| 170 | `lemma` | [mul_monomial_mem_coeffsIn](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/mul-monomial-mem-coeffsin.md) | 967 | `result-track:b6d2333c7ca1789c17bd0586b48876f7b09a834a2ea8ae6a04dd6092777c8c99` |
| 171 | `lemma` | [monomial_mul_mem_coeffsIn](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/monomial-mul-mem-coeffsin.md) | 977 | `result-track:918417b7c3ce41a8dc3dc03c0a02d52548bd451d29f2bc84d5ab2922b000901a` |
| 172 | `lemma` | [mul_X_mem_coeffsIn](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/mul-x-mem-coeffsin.md) | 981 | `result-track:05924e7f4b0f0894d1f47b3282f437a2ec5f8940adca5d57389ce5d924cd4ac1` |
| 173 | `lemma` | [X_mul_mem_coeffsIn](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/x-mul-mem-coeffsin.md) | 985 | `result-track:3cb5e4af160cc495477048fac8c35b933446e76e647156a0b098ce341951d0cd` |
| 174 | `lemma` | [coeffsIn_eq_span_monomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/coeffsin-eq-span-monomial.md) | 988 | `result-track:18259f2c3f5988bce1dd86fa4747dd988139ecaab28af453502dfc7d8d005a56` |
| 175 | `lemma` | [coeffsIn_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/coeffsin-le.md) | 998 | `result-track:32d90e0906edddde8b928dddcd84aa917a1d0607e4ba0b94d84aa2c8348722ab` |
| 176 | `lemma` | [mem_coeffsIn_iff_coeffs_subset](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/mem-coeffsin-iff-coeffs-subset.md) | 1003 | `result-track:50a9c9c7e238510906a45eb1db8754ba97925e6a955572516f4b6e9675a7092f` |
| 177 | `lemma` | [coeffsIn_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/coeffsin-mul.md) | 1016 | `result-track:13b3fd0fca3b511fe14385bf4dcd0f9eed97a9c56d4c9568733e126e22e86aea` |
| 178 | `lemma` | [coeffsIn_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/coeffsin-pow.md) | 1031 | `result-track:c12c9dded4f8e11bf843d504265f9022e58345f08ea5ff99fb01e608786e4a95` |
| 179 | `lemma` | [le_coeffsIn_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/declarations/le-coeffsin-pow.md) | 1035 | `result-track:aee35202122c5142828becda3cf96aef9bffbae17de9f66f2b4b3d32f9fe1cb8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=397fe8b162709781a0e6713e07f487a25cf788ba83c2851dfb148d1d9329872f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantafe6759516934e2098b5a458493d20fb4ffd46d25e950552dc6bbd6cc2bcb7e4.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Basic/Variantafe6759516934e2098b5a458493d20fb4ffd46d25e950552dc6bbd6cc2bcb7e4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
