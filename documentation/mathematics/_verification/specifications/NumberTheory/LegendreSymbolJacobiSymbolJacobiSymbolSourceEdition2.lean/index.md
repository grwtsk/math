# Verification target: Legendre Symbol Jacobi Symbol Jacobi Symbol Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29e832b2e7e192e645e15bfaee4edd025fef522a",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/JacobiSymbol/Variantb0cba8e23b3ed59b32f9ea06b04db674c921f988d8eef46e07a3b2d75cb3cdad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolSourceEdition2.lean/index.md) · [Full source](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29e832b2e7e192e645e15bfaee4edd025fef522a`.

Source path: `GRWTSK/NumberTheory/JacobiSymbol/Variantb0cba8e23b3ed59b32f9ea06b04db674c921f988d8eef46e07a3b2d75cb3cdad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/JacobiSymbol/Variantb0cba8e23b3ed59b32f9ea06b04db674c921f988d8eef46e07a3b2d75cb3cdad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LegendreSymbol.QuadraticReciprocity` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [jacobiSym](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolSourceEdition2.lean/declarations/jacobisym.md) | 80 | `declaration-track:0a617254f4f0ec1cbb165fbeab0ae4479ca8b3180a1e5d5d7f9393c073e40117` |
| 2 | `theorem` | [zero_right](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolSourceEdition2.lean/declarations/zero-right.md) | 99 | `result-track:a9c1daddfea920668dc9f52ca15bb101fcca4b9fd76bb5f21674152708bd6350` |
| 3 | `theorem` | [one_right](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolSourceEdition2.lean/declarations/one-right.md) | 105 | `result-track:b5dc492c055bae734e8553eb74d7846d2f50172607c4571b2139406c7edc8d4c` |
| 4 | `theorem` | [legendreSym.to_jacobiSym](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolSourceEdition2.lean/declarations/legendresym-to-jacobisym.md) | 111 | `result-track:35072c782cc6e1afaea656b4e27ad5d5796c3ffaf38d99f79a74e245abe9b99a` |
| 5 | `theorem` | [mul_right'](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolSourceEdition2.lean/declarations/mul-right.md) | 116 | `result-track:1b2b153b594b7248989cfad1fcc994f0ba5c5d755476c4b3a42d6ceab1c9421c` |
| 6 | `theorem` | [mul_right](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolSourceEdition2.lean/declarations/mul-right-source-edition-2.md) | 124 | `result-track:1b44caf4da812fb11db902752d2d3857663b0b0df3cf942e0885535795d4b58b` |
| 7 | `theorem` | [trichotomy](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolSourceEdition2.lean/declarations/trichotomy.md) | 130 | `result-track:e7d7d55749fc8bb3e332802a4e4225f0649067684cdf72b69a5eb9a404fac6f1` |
| 8 | `theorem` | [one_left](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolSourceEdition2.lean/declarations/one-left.md) | 143 | `result-track:6f24e361c4a7a769511f9b1b41ccc9a65f6fc9b4613e8768c4ff84a5e6f3b35d` |
| 9 | `theorem` | [mul_left](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolSourceEdition2.lean/declarations/mul-left.md) | 153 | `result-track:25e71e0ec9b5db5723a95ddf26074548098289f10dee83696200677f3aa4e0d4` |
| 10 | `theorem` | [eq_zero_iff_not_coprime](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolSourceEdition2.lean/declarations/eq-zero-iff-not-coprime.md) | 161 | `result-track:680082b9f900a4d10b8f750afc7918308e9c98b345d30e1abb600d0d25067231` |
| 11 | `theorem` | [ne_zero](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolSourceEdition2.lean/declarations/ne-zero.md) | 173 | `result-track:29c03e64485ff2051fac9bcc08c113c6d0d89c09d005824bc83ba497c57961b8` |
| 12 | `theorem` | [eq_zero_iff](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolSourceEdition2.lean/declarations/eq-zero-iff.md) | 181 | `result-track:ddf4c253c835a8c8fe75a1dd39072069e3402a72ae3ec0fd14017b67d646d579` |
| 13 | `theorem` | [zero_left](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolSourceEdition2.lean/declarations/zero-left.md) | 190 | `result-track:0f23e1c80c4e597a1f3fddd49c0b057b3a4e221ce2f10e1e6bd72fef7ed4be40` |
| 14 | `theorem` | [eq_one_or_neg_one](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolSourceEdition2.lean/declarations/eq-one-or-neg-one.md) | 196 | `result-track:6a04ee615c56086424699bc00863a08fcaab82236d9b9ce78d82a3376dbe5aa0` |
| 15 | `theorem` | [pow_left](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolSourceEdition2.lean/declarations/pow-left.md) | 201 | `result-track:4fa0b42f1f4eacd1a4fcab74724ee963cf99e2369fd7f847675b10dc19b7dfa6` |
| 16 | `theorem` | [pow_right](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolSourceEdition2.lean/declarations/pow-right.md) | 207 | `result-track:9afd7144ed3c2aae2fe19b43aa92ae0c30d136af05af39e211b5f0ebc1762ba3` |
| 17 | `theorem` | [sq_one](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolSourceEdition2.lean/declarations/sq-one.md) | 216 | `result-track:2781a140392bab558389d5fdb28188d6a756f3437216ac2da90690f7d471d3ec` |
| 18 | `theorem` | [sq_one'](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolSourceEdition2.lean/declarations/sq-one-source-edition-2.md) | 221 | `result-track:4d97524cad3f2afbce9be301bd3a3afc214fdd0b32a6a18536538c63a771e177` |
| 19 | `theorem` | [mod_left](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolSourceEdition2.lean/declarations/mod-left.md) | 225 | `result-track:48b67cbd95ab88d7f96d797b419c01e1780225021cb65d8b08ac2babbab7d942` |
| 20 | `theorem` | [mod_left'](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolSourceEdition2.lean/declarations/mod-left-source-edition-2.md) | 240 | `result-track:743d1246710931e2584a202048d3174e33cd1489b147fabbd1ad452fb7bc368b` |
| 21 | `theorem` | [prime_dvd_of_eq_neg_one](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolSourceEdition2.lean/declarations/prime-dvd-of-eq-neg-one.md) | 246 | `result-track:730932b956dc7b40fa446da1ec38aca185415f2dd81c1fb903fee2cbd5e4b095` |
| 22 | `theorem` | [list_prod_left](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolSourceEdition2.lean/declarations/list-prod-left.md) | 253 | `result-track:d20dafb2c6886286d872fd0ac4463a8552523c14eac56e3b31fa4373772e7db6` |
| 23 | `theorem` | [list_prod_right](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolSourceEdition2.lean/declarations/list-prod-right.md) | 260 | `result-track:8393e5952f424b57085e256ae86d910dabd4dad4b0bc4546b7eff83c62390db5` |
| 24 | `theorem` | [eq_neg_one_at_prime_divisor_of_eq_neg_one](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolSourceEdition2.lean/declarations/eq-neg-one-at-prime-divisor-of-eq-neg-one.md) | 274 | `result-track:76bff35a8db8691254cc00b04b24e9528f967605a2dc5e2ee43a118ac761b459` |
| 25 | `theorem` | [nonsquare_of_jacobiSym_eq_neg_one](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolSourceEdition2.lean/declarations/nonsquare-of-jacobisym-eq-neg-one.md) | 293 | `result-track:7aad7847716539b32b16a7e7b86ac792ddaca86ab87c4532d7c1f7ea6f41e904` |
| 26 | `theorem` | [nonsquare_iff_jacobiSym_eq_neg_one](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolSourceEdition2.lean/declarations/nonsquare-iff-jacobisym-eq-neg-one.md) | 302 | `result-track:ca2a3249fde0108d2ce4bd71788ecc39a49d5bbb57b68fbb2fcc6940e68b8bae` |
| 27 | `theorem` | [isSquare_of_jacobiSym_eq_one](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolSourceEdition2.lean/declarations/issquare-of-jacobisym-eq-one.md) | 309 | `result-track:49457d4d716771d2494d32b5cf5c3d6e57a92c3e9977376985eb06143b27aef4` |
| 28 | `theorem` | [value_at](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolSourceEdition2.lean/declarations/value-at.md) | 325 | `result-track:68b701f0d3dd67e25c7ff60d44845f0839db56ede4ba89bbdc8b026348b515fe` |
| 29 | `theorem` | [at_neg_one](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolSourceEdition2.lean/declarations/at-neg-one.md) | 335 | `result-track:4ab7324ddf56d9f3f92ade0ab1a244743550f4066731f5aed054b082b0e11f76` |
| 30 | `theorem` | [neg](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolSourceEdition2.lean/declarations/neg.md) | 342 | `result-track:d54bab7165d622d9e154f0ed935e47d5d0ea251392dcf2759d0531b819fe109d` |
| 31 | `theorem` | [at_two](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolSourceEdition2.lean/declarations/at-two.md) | 347 | `result-track:5d4b0ae3ccd6a3f72201b496523174e63bc1f1f4a42326ea0e4a97d3640c4686` |
| 32 | `theorem` | [at_neg_two](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolSourceEdition2.lean/declarations/at-neg-two.md) | 352 | `result-track:d640bce79c1898b1e0fcff5d5981daaf4d04f239190cb888befd1a34b075611b` |
| 33 | `def` | [qrSign](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolSourceEdition2.lean/declarations/qrsign.md) | 364 | `declaration-track:4e1b1c4ca601b0ea3b67917e7d14b02b51b8ec6c0e916a93f053a0cefee347d9` |
| 34 | `theorem` | [neg_one_pow](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolSourceEdition2.lean/declarations/neg-one-pow.md) | 371 | `result-track:4d11628ab4762266f26b104cd3204ece75030441222e7d7c34569b70cc344c47` |
| 35 | `theorem` | [sq_eq_one](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolSourceEdition2.lean/declarations/sq-eq-one.md) | 380 | `result-track:7b8b53c16b6c7d70c8ff303b50a7f53daf230b54efa21c297f7239054fe69b3a` |
| 36 | `theorem` | [mul_left](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolSourceEdition2.lean/declarations/mul-left-source-edition-2.md) | 385 | `result-track:506ddbb4c58696d5c4a547a520d05c6a45f675f52686343e469a781000febd63` |
| 37 | `theorem` | [mul_right](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolSourceEdition2.lean/declarations/mul-right-source-edition-3.md) | 390 | `result-track:3561446a80bf4e0d09e668146610bb83bf094f8891bc90005ca479221263b40a` |
| 38 | `theorem` | [symm](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolSourceEdition2.lean/declarations/symm.md) | 396 | `result-track:2292821a9495d3ce58218a7296d200bdf146468c6c776d345fffbbec722a5550` |
| 39 | `theorem` | [eq_iff_eq](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolSourceEdition2.lean/declarations/eq-iff-eq.md) | 401 | `result-track:1e1f6013eb8faa19d6d4846a64d386b1b5b1bc1c92b72151d528ef508e4a79f2` |
| 40 | `theorem` | [quadratic_reciprocity'](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolSourceEdition2.lean/declarations/quadratic-reciprocity-source-edition-2.md) | 416 | `result-track:f9a15293ae247fbe0b3da1c9408ff8142144d600e30345978e503903f568da91` |
| 41 | `theorem` | [quadratic_reciprocity](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolSourceEdition2.lean/declarations/quadratic-reciprocity.md) | 438 | `result-track:00c55d0e3ea3ae7a36fea8977a95007e857a28ea648771ed72c55350b1f187d7` |
| 42 | `theorem` | [quadratic_reciprocity_one_mod_four](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolSourceEdition2.lean/declarations/quadratic-reciprocity-one-mod-four.md) | 445 | `result-track:083e9ff56bf8b0c73f6cc6b8821abc4efde70db5a12a6ffb18b9d64aadee9ff9` |
| 43 | `theorem` | [quadratic_reciprocity_one_mod_four'](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolSourceEdition2.lean/declarations/quadratic-reciprocity-one-mod-four-source-edition-2.md) | 453 | `result-track:c2aafeb854c0d35c93ccdcbdd62e945831887ebe67a9f654423a94c9402c4e82` |
| 44 | `theorem` | [quadratic_reciprocity_three_mod_four](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolSourceEdition2.lean/declarations/quadratic-reciprocity-three-mod-four.md) | 460 | `result-track:f51b4f7a10cc9baf4a2732f4ff9f39feb545a43871e589548ac6217f0c3c849d` |
| 45 | `theorem` | [mod_right'](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolSourceEdition2.lean/declarations/mod-right.md) | 468 | `result-track:a6a4c604a55d0e8283d6c28b75bfad5732a514ca3b7dc38d1d0bd89ff21a4682` |
| 46 | `theorem` | [mod_right](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolSourceEdition2.lean/declarations/mod-right-source-edition-2.md) | 493 | `result-track:dfd26310017c2a9ab0fba5e9babe71dbc86276e3768311089f2c5d1e40f54651` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c5e5289623361e921e3c040dfa06eff842ef3257794f3fe90eb8f626387a7736 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/JacobiSymbol/Variantb0cba8e23b3ed59b32f9ea06b04db674c921f988d8eef46e07a3b2d75cb3cdad.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/QuadraticResidues/JacobiSymbol/Variantb0cba8e23b3ed59b32f9ea06b04db674c921f988d8eef46e07a3b2d75cb3cdad.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
