# Verification target: Cubic Discriminant Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca94974c4b8bdd91082f4882047ec867a3130960",
  "lexical_observation_count": 97,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/CubicDiscriminant/Variant037faa4d935daa0d1d542a9fa0ad09fd3a43411e00c42adf01c809b2574eb847.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca94974c4b8bdd91082f4882047ec867a3130960`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/CubicDiscriminant/Variant037faa4d935daa0d1d542a9fa0ad09fd3a43411e00c42adf01c809b2574eb847.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/CubicDiscriminant/Variant037faa4d935daa0d1d542a9fa0ad09fd3a43411e00c42adf01c809b2574eb847.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Splits` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.IntervalCases` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Cubic](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/cubic.md) | 47 | `declaration-track:e3cc9d0bbc46955d591ba006826df1bdfb37a3b6b9d1d2a1838af314234f8269` |
| 2 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/instance-source-edition-2.md) | 63 | `declaration-track:a8f0a16dedf3a27bd45c8db4deb0f2ae569ceb13604df9d5b6eba04ff0d2ddd9` |
| 3 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/instance.md) | 66 | `declaration-track:34a60c1ba967b0fb4314e6296c9004475deef291e9b4c6d77f35f774ef41ad39` |
| 4 | `def` | [toPoly](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/topoly.md) | 74 | `declaration-track:d412d85f8ee1798724ce7180513b6bc58f8a91ce838f1093b615acf4ccf6bd93` |
| 5 | `theorem` | [C_mul_prod_X_sub_C_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/c-mul-prod-x-sub-c-eq.md) | 77 | `result-track:acb29b9778778bc1a63cfbe887613a4ff277651897ffe3e78324883408d29222` |
| 6 | `theorem` | [prod_X_sub_C_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/prod-x-sub-c-eq.md) | 83 | `result-track:d322f23e82f695cedb865e53ef4a2f3b4a6db4b84813a638c0dfa95a1e34df9c` |
| 7 | `theorem` | [coeffs](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/coeffs.md) | 93 | `result-track:5ed5725fd2d8af461178ce55114fd54b41c3b6ae0e016b49245bcc7a33365771` |
| 8 | `theorem` | [coeff_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/coeff-eq-zero.md) | 103 | `result-track:fc62ac3a63df5256df8740c9409c64c2c9c5446bf18560838a8d58f5d2d25147` |
| 9 | `theorem` | [coeff_eq_a](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/coeff-eq-a.md) | 107 | `result-track:dcc70b0e088eeadcd53fd8533cb51d206876f2c36115a3be47a4d50eca12478e` |
| 10 | `theorem` | [coeff_eq_b](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/coeff-eq-b.md) | 111 | `result-track:59a7bb2f90b36fef037d2d80c8ac5a698b460a9809e792f4eb199561af33a113` |
| 11 | `theorem` | [coeff_eq_c](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/coeff-eq-c.md) | 115 | `result-track:876d5678272b783b1250dca7821e9bd557362873f2b8360e094932005390755d` |
| 12 | `theorem` | [coeff_eq_d](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/coeff-eq-d.md) | 119 | `result-track:f9f3ed33ac78f3684f6a15292857a29c8da26f523d61c8402c054dd3294fea09` |
| 13 | `theorem` | [a_of_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/a-of-eq.md) | 122 | `result-track:85968c25d0d58a2f2e377b434f72ce1367a58a88f2795c49106b1f03286f3793` |
| 14 | `theorem` | [b_of_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/b-of-eq.md) | 124 | `result-track:9bdeab7eeece25880c7b1f322b32ca1a03b08c5762f09df3d9db3cfb3429c629` |
| 15 | `theorem` | [c_of_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/c-of-eq.md) | 126 | `result-track:fc251f7bf025841da40c778e19c659b38b8baf7bbab3e0c03a22ed1b1886d66f` |
| 16 | `theorem` | [d_of_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/d-of-eq.md) | 128 | `result-track:0ce4ec0f0c65a3a1ab7b55553c08e5a7774618afdc03e35487687b9f89186428` |
| 17 | `theorem` | [toPoly_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/topoly-injective.md) | 130 | `result-track:d5ddab35b1e72c1c765488f405c062ce26f941d68ee199daa058d56a77fb7a47` |
| 18 | `theorem` | [of_a_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/of-a-eq-zero.md) | 133 | `result-track:55d39cfc2c495f6fab93b7770206f5bd08c4cc12b090db6250b924a8cd0fcb06` |
| 19 | `theorem` | [of_a_eq_zero'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/of-a-eq-zero-source-edition-2.md) | 136 | `result-track:c817f7e33026fd799a032a304a6a967acdc5548ab8868a5a3906168e7a843a5b` |
| 20 | `theorem` | [of_b_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/of-b-eq-zero.md) | 139 | `result-track:9528d5b8f7df2b32aa48def7f590b3272ab7605801ed215f63b5eb166d7ebb59` |
| 21 | `theorem` | [of_b_eq_zero'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/of-b-eq-zero-source-edition-2.md) | 142 | `result-track:a53c9d6e2f952f70bf6b8a102364248ee97f6a4cface46b058851280337e2182` |
| 22 | `theorem` | [of_c_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/of-c-eq-zero-source-edition-2.md) | 145 | `result-track:847ac1492eeab8afc51fb1f1d4a85e982059d17498e996c08c11da0abeaa6753` |
| 23 | `theorem` | [of_c_eq_zero'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/of-c-eq-zero.md) | 148 | `result-track:407102702a2bebe1d58c51f9993d51f7105e6512682cf0b3ed697a27f0f26af2` |
| 24 | `theorem` | [of_d_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/of-d-eq-zero-source-edition-2.md) | 151 | `result-track:cf3bdf0e04ab971d4391fb505fe5e84c0a3e3f5d6edeeed3e442743fa84f6f5f` |
| 25 | `theorem` | [of_d_eq_zero'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/of-d-eq-zero.md) | 155 | `result-track:684938638c2ca19912f24a167abae711ecde590b454e9ccea42b8f665e020554` |
| 26 | `theorem` | [zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/zero.md) | 158 | `result-track:ab5e6da85505b5ebe0f354b61a37a9843135dafc27aa1939922e3ef1085a6334` |
| 27 | `theorem` | [toPoly_eq_zero_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/topoly-eq-zero-iff.md) | 161 | `result-track:9763aaae5dd21dcee680d2cecc743161f60ef673701a350f906f687093382ffc` |
| 28 | `theorem` | [ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/ne-zero.md) | 164 | `result-track:a160ff36ad681dbdf4c236e968da9f193c09a6d2b277afded41c128db2e839c0` |
| 29 | `theorem` | [ne_zero_of_a_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/ne-zero-of-a-ne-zero.md) | 169 | `result-track:01f6716cc71fb15d1e74758728b3b9fad1da8d0337698feaf026aebb9db0dd21` |
| 30 | `theorem` | [ne_zero_of_b_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/ne-zero-of-b-ne-zero.md) | 172 | `result-track:dc2c09282f9a081c3b80788a039122f451feb5541a6a8583d8b4bf34c5ae92ab` |
| 31 | `theorem` | [ne_zero_of_c_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/ne-zero-of-c-ne-zero.md) | 175 | `result-track:4658393c7c896e5a512d43ba13e894e89234cb6c096981ae3be7bf9ff921945d` |
| 32 | `theorem` | [ne_zero_of_d_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/ne-zero-of-d-ne-zero.md) | 178 | `result-track:9ca3b64779ff1a0f8359290540078c88a83488e514e94588bd9fa1ee27aa9898` |
| 33 | `theorem` | [leadingCoeff_of_a_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/leadingcoeff-of-a-ne-zero-source-edition-2.md) | 182 | `result-track:d65061cca5912bd72772c83651fe103b8ee7ec439a72d3ecfeea83ee879c313f` |
| 34 | `theorem` | [leadingCoeff_of_a_ne_zero'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/leadingcoeff-of-a-ne-zero.md) | 185 | `result-track:0bd1df52639dc7d7c61fdcc2fd023d7710587c2929cb6d33bb7e7215040c3142` |
| 35 | `theorem` | [leadingCoeff_of_b_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/leadingcoeff-of-b-ne-zero.md) | 189 | `result-track:d6928c0150dd84ad7ec36449e8dd64a5c2ce2c61fdfd7b47baae73e6f6467ab2` |
| 36 | `theorem` | [leadingCoeff_of_b_ne_zero'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/leadingcoeff-of-b-ne-zero-source-edition-2.md) | 192 | `result-track:d7bfd3b21b9a7125d801512207acabb13be244102af9614d0f520c9014b9d39d` |
| 37 | `theorem` | [leadingCoeff_of_c_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/leadingcoeff-of-c-ne-zero-source-edition-2.md) | 196 | `result-track:cd7f365f7ee746f3652c3f7af4262c9e6ff187c1d415f95b682d0f1677eb72f1` |
| 38 | `theorem` | [leadingCoeff_of_c_ne_zero'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/leadingcoeff-of-c-ne-zero.md) | 200 | `result-track:43aa7ad5b38b2a8d625cfa78759ead691bf86c30db0a8c1dfb17c4b6f467da76` |
| 39 | `theorem` | [leadingCoeff_of_c_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/leadingcoeff-of-c-eq-zero-source-edition-2.md) | 204 | `result-track:397640267f9c5ccf8f83ad088127f131b3f0c77885522b05a1b3d381a404c28f` |
| 40 | `theorem` | [leadingCoeff_of_c_eq_zero'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/leadingcoeff-of-c-eq-zero.md) | 208 | `result-track:1f6f98c0aaa1dbc766be7b32b1c2cc4304f2c2b9f70d9767d550f7e960a1f5a5` |
| 41 | `theorem` | [monic_of_a_eq_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/monic-of-a-eq-one-source-edition-2.md) | 211 | `result-track:4d9110a418df8dfe869a4c685c6a251623c5ceb3217859424885772eb6e844b5` |
| 42 | `theorem` | [monic_of_a_eq_one'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/monic-of-a-eq-one.md) | 215 | `result-track:2764196c6305e733e4796c3abba4a76f3b2e6ad40cf52baf1a27c1c3ecc18643` |
| 43 | `theorem` | [monic_of_b_eq_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/monic-of-b-eq-one.md) | 218 | `result-track:45c3d2049bb6197f68ad0a8078ff278b47528672cfab4a236e969920a2a44132` |
| 44 | `theorem` | [monic_of_b_eq_one'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/monic-of-b-eq-one-source-edition-2.md) | 222 | `result-track:6cf3b87aa2954662a4f1ac182c6899743245e4c95405261f498a4f8241f0de30` |
| 45 | `theorem` | [monic_of_c_eq_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/monic-of-c-eq-one.md) | 225 | `result-track:8f3ad5af9cd3ad1b7ccb62a14737e0c044c7b3913873202a0a4bf0f5f4e0c3c7` |
| 46 | `theorem` | [monic_of_c_eq_one'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/monic-of-c-eq-one-source-edition-2.md) | 229 | `result-track:f09d8cb1259c1a70ce3212d23caca8a61e7fe25f5924cb8a9f15abb5d5feeaf6` |
| 47 | `theorem` | [monic_of_d_eq_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/monic-of-d-eq-one-source-edition-2.md) | 232 | `result-track:8226ab708d3e8ce51356c9d3104e6f163931351371028cbb6f971b1925c6e000` |
| 48 | `theorem` | [monic_of_d_eq_one'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/monic-of-d-eq-one.md) | 236 | `result-track:366d0a68edc68dd1a9b2734a152c8d83b9790ff6d30b2aaf19621a441f44dae6` |
| 49 | `def` | [equiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/equiv.md) | 248 | `declaration-track:7695abc248479fe9bfd50155d44358b67eb6aae57dab44206eb1e171ecd5f769` |
| 50 | `theorem` | [degree_of_a_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/degree-of-a-ne-zero.md) | 260 | `result-track:1163a232f6c7671b908cb8320876b324bbd6aeb17b4bf296e5031b20b3e8cd3f` |
| 51 | `theorem` | [degree_of_a_ne_zero'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/degree-of-a-ne-zero-source-edition-2.md) | 263 | `result-track:4c04ba9d0820686d4b32be803e1a443a66efb7da04fda1db92971b9ac138affc` |
| 52 | `theorem` | [degree_of_a_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/degree-of-a-eq-zero-source-edition-2.md) | 266 | `result-track:d22f8168d87b6b7aab0400849a8da528f053cce524949ec103454a9cbea8b972` |
| 53 | `theorem` | [degree_of_a_eq_zero'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/degree-of-a-eq-zero.md) | 269 | `result-track:d09ec0234a016ab44805ca6c991dc207734351479e80ef552848d9346ea778a7` |
| 54 | `theorem` | [degree_of_b_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/degree-of-b-ne-zero-source-edition-2.md) | 273 | `result-track:e86400e24a679aac9395517f4a5df5ddab639d1b9609afb18cb6ad991b204e4d` |
| 55 | `theorem` | [degree_of_b_ne_zero'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/degree-of-b-ne-zero.md) | 276 | `result-track:749211564fc4aadcecdfab742b6b33e610db668cbe800476f368c7b112b4d345` |
| 56 | `theorem` | [degree_of_b_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/degree-of-b-eq-zero.md) | 279 | `result-track:11a85dfaf8a9acbb962843b2e5b23a3081f4e3b2a74e6ad569edddf0408a88ed` |
| 57 | `theorem` | [degree_of_b_eq_zero'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/degree-of-b-eq-zero-source-edition-2.md) | 282 | `result-track:d914f3a8d6205747e673c1368c1ff7442b54f906596a91750d03cd36d1a4fb9a` |
| 58 | `theorem` | [degree_of_c_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/degree-of-c-ne-zero.md) | 286 | `result-track:17e25d67ec97600297b220b78462a58ca7950d14d3553a435acd475e69c40686` |
| 59 | `theorem` | [degree_of_c_ne_zero'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/degree-of-c-ne-zero-source-edition-2.md) | 289 | `result-track:9af160893ddee206628ca65d3407030b392de19cfa078ca099cc29b4f367f806` |
| 60 | `theorem` | [degree_of_c_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/degree-of-c-eq-zero-source-edition-2.md) | 292 | `result-track:d4d847762a724641aa7c7ed24fe10922176f604a9c144af36b3dce30f4594d45` |
| 61 | `theorem` | [degree_of_c_eq_zero'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/degree-of-c-eq-zero.md) | 295 | `result-track:a61a68a1263eaea954d46c46c52d1b73b234e4a32dbaeb31fde4a7effff9270c` |
| 62 | `theorem` | [degree_of_d_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/degree-of-d-ne-zero.md) | 299 | `result-track:609686c8a604107e30ade8af6d74e8a702d7a7b877e5302c647b02d8632d8a84` |
| 63 | `theorem` | [degree_of_d_ne_zero'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/degree-of-d-ne-zero-source-edition-2.md) | 303 | `result-track:e5d94a9a9ce2b550c5c1194c6623a6aceb43c1d70ae47ed24bda7347098c78a4` |
| 64 | `theorem` | [degree_of_d_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/degree-of-d-eq-zero-source-edition-2.md) | 307 | `result-track:89d60aa05d3dd436423097223be8bdec6d3861e33a11b8cb085c33ceb1f42f8d` |
| 65 | `theorem` | [degree_of_d_eq_zero'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/degree-of-d-eq-zero.md) | 311 | `result-track:29c35d0338b34c6dea6df129475bbfc377e5c9824cc9f35f88c2c249c41bc0b9` |
| 66 | `theorem` | [degree_of_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/degree-of-zero.md) | 315 | `result-track:5d90ffc0cfd987d9b1d11878675a505fe536500025fab76c79eaa91d9abbcf0c` |
| 67 | `theorem` | [natDegree_of_a_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/natdegree-of-a-ne-zero-source-edition-2.md) | 319 | `result-track:62d01092edf96058b82b815d329b1cab6b2f34fee17e0dfb626c250ef81ff8b5` |
| 68 | `theorem` | [natDegree_of_a_ne_zero'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/natdegree-of-a-ne-zero.md) | 322 | `result-track:100238de03c86fb03bc376a69d1c6c5603bb582950b59a513b0171545a06067e` |
| 69 | `theorem` | [natDegree_of_a_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/natdegree-of-a-eq-zero-source-edition-2.md) | 325 | `result-track:65acd81751e30ee32517992c78d9d754dde6352234ddd782849c8b3cbf79554e` |
| 70 | `theorem` | [natDegree_of_a_eq_zero'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/natdegree-of-a-eq-zero.md) | 328 | `result-track:54106e697e75b62f641761dae47c8d35b7b077319c251dd1003ac842d551f787` |
| 71 | `theorem` | [natDegree_of_b_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/natdegree-of-b-ne-zero.md) | 332 | `result-track:9171b93e6fe16e93bbe92bb623e2e7b739ceea998d703e7dff29cd070086fc7a` |
| 72 | `theorem` | [natDegree_of_b_ne_zero'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/natdegree-of-b-ne-zero-source-edition-2.md) | 335 | `result-track:f97fcf13ce7d585b0b2b9cd721300073b5716083c99470f2d9f452fac0d1e71e` |
| 73 | `theorem` | [natDegree_of_b_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/natdegree-of-b-eq-zero.md) | 338 | `result-track:c26673424516eb65394b883530055c55bf78849fc11ca95956238af6e4169358` |
| 74 | `theorem` | [natDegree_of_b_eq_zero'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/natdegree-of-b-eq-zero-source-edition-2.md) | 341 | `result-track:d7492bb4d6684c5908716da016d43835621eef74667dcb09e150fd6a3a231daf` |
| 75 | `theorem` | [natDegree_of_c_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/natdegree-of-c-ne-zero.md) | 345 | `result-track:a10cae0d7f50d6a8787e0cd537db2175fccec9833a45116dc373ad2fa0ff3836` |
| 76 | `theorem` | [natDegree_of_c_ne_zero'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/natdegree-of-c-ne-zero-source-edition-2.md) | 349 | `result-track:bb1c8fe5e01da7e11435501b2eb2aa123cf2e73a8bc7e57cb6b3df3b6393f59e` |
| 77 | `theorem` | [natDegree_of_c_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/natdegree-of-c-eq-zero.md) | 353 | `result-track:8ba242c2f3df5869d63ccfbc3f7cfd3ef153eef96490849016efe56fd8505956` |
| 78 | `theorem` | [natDegree_of_c_eq_zero'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/natdegree-of-c-eq-zero-source-edition-2.md) | 357 | `result-track:f184455a901037fb8e68df8f99fbf8883917ff1946d1c957efd40e210f4de715` |
| 79 | `theorem` | [natDegree_of_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/natdegree-of-zero.md) | 361 | `result-track:54073bcf49ba6689ec1c9b5b188b2d33155bef070a01d96b5a7ee26903e93ff0` |
| 80 | `def` | [map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/map.md) | 374 | `declaration-track:a9395adea8caab4f627a431d07288c4ea6bf994c37a151479829882405314464` |
| 81 | `theorem` | [map_toPoly](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/map-topoly.md) | 377 | `result-track:56aa671839376057cf43cefaf42b34d9aeddff6d9306e1deb4e67d4f080cbf8e` |
| 82 | `def` | [roots](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/roots.md) | 396 | `declaration-track:93205fff89c43de85f0ab827d09c12ed8612c0590da2fc46a4315b80446a39e4` |
| 83 | `theorem` | [map_roots](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/map-roots.md) | 399 | `result-track:8299b812970c884081f407c1fcfeaef7687d42a2c57f60b6c773b4cf0a6dc933` |
| 84 | `theorem` | [mem_roots_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/mem-roots-iff.md) | 402 | `result-track:0fa0cca8c546bdd4a97fd4312ad6871a91a2e53743909567bf6731a726cdb3e5` |
| 85 | `theorem` | [card_roots_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/card-roots-le.md) | 407 | `result-track:e59babe84e8d315f08fe365bcf5a1ba2237bb21822b8c8cde813f28f5ea44291` |
| 86 | `theorem` | [splits_iff_card_roots](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/splits-iff-card-roots.md) | 422 | `result-track:bed4c809429121698a7e7ddbbe51e0d7e8ee6dcd6d98cc4132e9f23cda31c0af` |
| 87 | `theorem` | [splits_iff_roots_eq_three](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/splits-iff-roots-eq-three.md) | 429 | `result-track:7f402be377bd9fe715a32186e05ddac265793cfcb71ea5da004e90d6c27a0836` |
| 88 | `theorem` | [eq_prod_three_roots](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/eq-prod-three-roots.md) | 433 | `result-track:a17489631d18fc2ebe24852b3937d13ae2a6a891117a7b5ea29fee10ef4edc6e` |
| 89 | `theorem` | [eq_sum_three_roots](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/eq-sum-three-roots.md) | 442 | `result-track:174a9613e6abe71b94cbbd8760d97140703fe4331bf40bf69054e5698d681119` |
| 90 | `theorem` | [b_eq_three_roots](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/b-eq-three-roots.md) | 449 | `result-track:0ab38f929298eb2367f31557cf0d85e5b9b7f427de38675764ab0be9a599ca54` |
| 91 | `theorem` | [c_eq_three_roots](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/c-eq-three-roots.md) | 453 | `result-track:9abb1f18fcf1a256f5590e016436f851cf54b8d587d38e1344c0f64daac9beb4` |
| 92 | `theorem` | [d_eq_three_roots](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/d-eq-three-roots.md) | 457 | `result-track:024bc420bab9ff58f972649abddc953ac6040f1829a23d78ce0da898c75b0260` |
| 93 | `def` | [disc](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/disc.md) | 469 | `declaration-track:1f1c3e3bf68c410530cb396065479ac58d35eb1bdc539d27a83766d4f404854d` |
| 94 | `theorem` | [disc_eq_prod_three_roots](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/disc-eq-prod-three-roots.md) | 473 | `result-track:62c622a5da881d0796b473662959b445016c752b90972d4cfdbf75e4ab4c13b5` |
| 95 | `theorem` | [disc_ne_zero_iff_roots_ne](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/disc-ne-zero-iff-roots-ne.md) | 479 | `result-track:26693de79db54be66cfc43957fa69b5a24cb362f33431e0b9f154531bd87d351` |
| 96 | `theorem` | [disc_ne_zero_iff_roots_nodup](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/disc-ne-zero-iff-roots-nodup.md) | 485 | `result-track:4ab8665f8a9dbeb4a4373abf10329459d9b950168422c7e0435b682e463c0a07` |
| 97 | `theorem` | [card_roots_of_disc_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CubicDiscriminantNamespaced.lean/declarations/card-roots-of-disc-ne-zero.md) | 493 | `result-track:b87fbde4ce92b9517666adce696edbfa83910bcd8406c2cbcbefac081ba289ca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bd909321248d585faf474b0fec4933b56ea262486c5d4afaaf2b0164a6655154 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/CubicDiscriminant/Variant037faa4d935daa0d1d542a9fa0ad09fd3a43411e00c42adf01c809b2574eb847.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/CubicDiscriminant/Variant037faa4d935daa0d1d542a9fa0ad09fd3a43411e00c42adf01c809b2574eb847.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
