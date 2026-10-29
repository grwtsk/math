# Verification target: Algebra Polynomial Erase Lead Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2add24ca4bb8c9b2a94c403b19f453bb4be4dda2",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/EraseLead/Variant90c4a369cab7a1c65a22b83c3cb6bc6eebcb38ea1893beaac763f66a6ff4f35b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialEraseLeadNamespaced.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialEraseLeadNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2add24ca4bb8c9b2a94c403b19f453bb4be4dda2`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/EraseLead/Variant90c4a369cab7a1c65a22b83c3cb6bc6eebcb38ea1893beaac763f66a6ff4f35b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/EraseLead/Variant90c4a369cab7a1c65a22b83c3cb6bc6eebcb38ea1893beaac763f66a6ff4f35b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Fin` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Degree.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Degree.Monomial` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [eraseLead](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialEraseLeadNamespaced.lean/declarations/eraselead.md) | 43 | `declaration-track:58789b1bce911dda8a105875b6c5c552a7faca350409a7319af9c8a76d82833a` |
| 2 | `theorem` | [eraseLead_support](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialEraseLeadNamespaced.lean/declarations/eraselead-support.md) | 48 | `result-track:03e5faae0aafbc5d8db94c6515ca02ced39a36aba0e0dffbae510a3b330e970e` |
| 3 | `theorem` | [eraseLead_coeff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialEraseLeadNamespaced.lean/declarations/eraselead-coeff.md) | 51 | `result-track:d0f6d0a3c54d60063cdecf410f64a4b1c768831b618eb0a4fc8823e8b175f41c` |
| 4 | `theorem` | [eraseLead_coeff_natDegree](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialEraseLeadNamespaced.lean/declarations/eraselead-coeff-natdegree.md) | 56 | `result-track:d09f309ff23d11f9830b077d05c30f8355344654f1205cac2f7aa4fcaef29d92` |
| 5 | `theorem` | [eraseLead_coeff_of_ne](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialEraseLeadNamespaced.lean/declarations/eraselead-coeff-of-ne.md) | 58 | `result-track:dbd07bea312e5de2fcda78331e32bbe20b2cb1f03c27a378800546998510a0b9` |
| 6 | `theorem` | [eraseLead_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialEraseLeadNamespaced.lean/declarations/eraselead-zero.md) | 62 | `result-track:c54b19350d258421a961cebe44c0a5dde7a59eb699ecc1bc136dcf088b6ea38a` |
| 7 | `theorem` | [eraseLead_add_monomial_natDegree_leadingCoeff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialEraseLeadNamespaced.lean/declarations/eraselead-add-monomial-natdegree-leadingcoeff.md) | 65 | `result-track:1f5ef11f16d939eddd428498758fcf8f74074c3fccfea2eda4c10e47ae5c5c81` |
| 8 | `theorem` | [eraseLead_add_C_mul_X_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialEraseLeadNamespaced.lean/declarations/eraselead-add-c-mul-x-pow.md) | 70 | `result-track:3cab6bca844e966194721bed2c6fcffb0ec5a2870ce4f1b2cf309e1d83e77970` |
| 9 | `theorem` | [self_sub_monomial_natDegree_leadingCoeff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialEraseLeadNamespaced.lean/declarations/self-sub-monomial-natdegree-leadingcoeff.md) | 75 | `result-track:14eee52940fde3a326ada4bdaaa7b0fe75c7ddd8f3edb497d6842df095d3ec39` |
| 10 | `theorem` | [self_sub_C_mul_X_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialEraseLeadNamespaced.lean/declarations/self-sub-c-mul-x-pow.md) | 80 | `result-track:e09624365f05bf3624210fd9dcca546d9a7cc057d869d4df6341f828ccd269d6` |
| 11 | `theorem` | [eraseLead_ne_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialEraseLeadNamespaced.lean/declarations/eraselead-ne-zero.md) | 84 | `result-track:640417bd1cb0dce00bc5a5cc7a775b486ba27ee55b2898f6ba149b7239c45c33` |
| 12 | `theorem` | [lt_natDegree_of_mem_eraseLead_support](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialEraseLeadNamespaced.lean/declarations/lt-natdegree-of-mem-eraselead-support.md) | 89 | `result-track:bd8c53c6d3c27fcffeb5fd0ead0bd5d03ddf751db13ec2d3b23576f76c1f3844` |
| 13 | `theorem` | [ne_natDegree_of_mem_eraseLead_support](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialEraseLeadNamespaced.lean/declarations/ne-natdegree-of-mem-eraselead-support.md) | 94 | `result-track:65e77e6dc9f13d92961561fa461c8ad9179861fbc82d49dcf713dd6ee8760b64` |
| 14 | `theorem` | [natDegree_notMem_eraseLead_support](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialEraseLeadNamespaced.lean/declarations/natdegree-notmem-eraselead-support.md) | 98 | `result-track:56ce3cadd9695f85c7a954e1c661dd0698359742cfd0b8783a81858a065641ba` |
| 15 | `theorem` | [eraseLead_support_card_lt](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialEraseLeadNamespaced.lean/declarations/eraselead-support-card-lt.md) | 104 | `result-track:4543ae6a3817035e9db8625aab10cecc79878e91aa6543d8daec85892c37ed38` |
| 16 | `theorem` | [card_support_eraseLead_add_one](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialEraseLeadNamespaced.lean/declarations/card-support-eraselead-add-one.md) | 108 | `result-track:f6974d73ff4e5bedd02ea856f15da8f5ca2c6b6d38d88c12c6a8557297ad9ae3` |
| 17 | `theorem` | [card_support_eraseLead](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialEraseLeadNamespaced.lean/declarations/card-support-eraselead-source-edition-2.md) | 119 | `result-track:39a8fe8ca286d9f6a5424b0ed1ffea642744184d5744816b86820cc283050e14` |
| 18 | `theorem` | [card_support_eraseLead'](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialEraseLeadNamespaced.lean/declarations/card-support-eraselead.md) | 124 | `result-track:2471f68789fb17477ab60fb7df047e53494d3a57e14f9f760c32b54626a8cc5d` |
| 19 | `theorem` | [card_support_eq_one_of_eraseLead_eq_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialEraseLeadNamespaced.lean/declarations/card-support-eq-one-of-eraselead-eq-zero.md) | 128 | `result-track:27416a5c566bc6935615d2ed689d506c74f69fce82490ac3326c2d2538638291` |
| 20 | `theorem` | [card_support_le_one_of_eraseLead_eq_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialEraseLeadNamespaced.lean/declarations/card-support-le-one-of-eraselead-eq-zero.md) | 132 | `result-track:96f7855f2351e86a08a20cd6bf55988758808d816dad84e600ccd8f0c2db5be2` |
| 21 | `theorem` | [eraseLead_monomial](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialEraseLeadNamespaced.lean/declarations/eraselead-monomial.md) | 138 | `result-track:754a3c38df12e88490468ea793bdd4e991c5c4ca8dd7af5b28dbde181737971c` |
| 22 | `theorem` | [eraseLead_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialEraseLeadNamespaced.lean/declarations/eraselead-c.md) | 146 | `result-track:5fba39455fbda524b32c64449e6d1388d5ec14fb1ff286a3bccc550eda5052cf` |
| 23 | `theorem` | [eraseLead_X](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialEraseLeadNamespaced.lean/declarations/eraselead-x.md) | 150 | `result-track:1047eddddd6922476a7e9d5a0d65202ca30ca81206e2d8a13d1229deea1fce97` |
| 24 | `theorem` | [eraseLead_X_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialEraseLeadNamespaced.lean/declarations/eraselead-x-pow.md) | 154 | `result-track:71ce470abdb6062aebe6d157406bc409ad35ab340c96543fa121c812b81dc1ed` |
| 25 | `theorem` | [eraseLead_C_mul_X_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialEraseLeadNamespaced.lean/declarations/eraselead-c-mul-x-pow.md) | 158 | `result-track:7f79c7dad301ddbdbb7c1e51ed569c1ba632a550ae8e45fd1c0bc0da032d9e93` |
| 26 | `lemma` | [eraseLead_C_mul_X](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialEraseLeadNamespaced.lean/declarations/eraselead-c-mul-x.md) | 161 | `result-track:df484c64f9a4c3176c7c5730582c0cac091261ec9625a6cd625aa499f7fe3f61` |
| 27 | `theorem` | [eraseLead_add_of_degree_lt_left](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialEraseLeadNamespaced.lean/declarations/eraselead-add-of-degree-lt-left.md) | 164 | `result-track:bcc71740b97dc71e3999c3a04545bca5db87ecbac7c9f1bef72b209b451bc556` |
| 28 | `theorem` | [eraseLead_add_of_natDegree_lt_left](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialEraseLeadNamespaced.lean/declarations/eraselead-add-of-natdegree-lt-left.md) | 174 | `result-track:a0529eb3d3b0b6ce05adb7173d7aee0f90bf531c639f3edb5d071dab2a1ab0aa` |
| 29 | `theorem` | [eraseLead_add_of_degree_lt_right](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialEraseLeadNamespaced.lean/declarations/eraselead-add-of-degree-lt-right.md) | 178 | `result-track:962febf941ede911a8879a13c4d0e17070e10531ed147f7cd754393984e03aea` |
| 30 | `theorem` | [eraseLead_add_of_natDegree_lt_right](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialEraseLeadNamespaced.lean/declarations/eraselead-add-of-natdegree-lt-right.md) | 188 | `result-track:767e2665dd6cdb0954dd1d92121b44726d2b1be61e7b3960836a4714cb68b6f2` |
| 31 | `theorem` | [eraseLead_degree_le](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialEraseLeadNamespaced.lean/declarations/eraselead-degree-le.md) | 192 | `result-track:338c2f2ebc0f763039a23144f033dd5cb2d8a4352e9e7b70b53c171138650729` |
| 32 | `theorem` | [degree_eraseLead_lt](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialEraseLeadNamespaced.lean/declarations/degree-eraselead-lt.md) | 195 | `result-track:67cd16c49c97b8abb8c2a95db057dddce1436018a2baf04e87853b94b78252b0` |
| 33 | `theorem` | [eraseLead_natDegree_le_aux](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialEraseLeadNamespaced.lean/declarations/eraselead-natdegree-le-aux.md) | 198 | `result-track:5a38aec81f752e40b68469aecf9c283bcf502f00a9ec520b4a11d3841d65e5d7` |
| 34 | `theorem` | [eraseLead_natDegree_lt](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialEraseLeadNamespaced.lean/declarations/eraselead-natdegree-lt.md) | 201 | `result-track:606821c04d59245db0105b95f61d6cd2eb42637677fac8ac221b1fccc4c6c46e` |
| 35 | `theorem` | [natDegree_pos_of_eraseLead_ne_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialEraseLeadNamespaced.lean/declarations/natdegree-pos-of-eraselead-ne-zero.md) | 206 | `result-track:5701aef67a48146c3868e02da737d299e63f1d510b5271e741eb3b1a6eb432bb` |
| 36 | `theorem` | [eraseLead_natDegree_lt_or_eraseLead_eq_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialEraseLeadNamespaced.lean/declarations/eraselead-natdegree-lt-or-eraselead-eq-zero.md) | 211 | `result-track:61a1293be832fbe4d3da711df3a0e4482a2c3065aa6321ff349b61bef0699c5e` |
| 37 | `theorem` | [eraseLead_natDegree_le](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialEraseLeadNamespaced.lean/declarations/eraselead-natdegree-le.md) | 220 | `result-track:a7549d1ae66ddd0af83398c7f7b472fb088326f44a75632ea0185fee8aef2abb` |
| 38 | `lemma` | [natDegree_eraseLead](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialEraseLeadNamespaced.lean/declarations/natdegree-eraselead.md) | 225 | `result-track:b1c69e0fbb2823b5cfbdc48bfeb6701cfe1c165fef69f1918643d654ea767b0c` |
| 39 | `lemma` | [natDegree_eraseLead_add_one](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialEraseLeadNamespaced.lean/declarations/natdegree-eraselead-add-one.md) | 231 | `result-track:45fef0d0cdb90785ecdfd852f98791fc928a7f8750a5a15d584ccf24e98eb9c4` |
| 40 | `theorem` | [natDegree_eraseLead_le_of_nextCoeff_eq_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialEraseLeadNamespaced.lean/declarations/natdegree-eraselead-le-of-nextcoeff-eq-zero.md) | 236 | `result-track:c18862c89f3999fb2d65f67931875fbe7a85b44446ac1399adcbed70ff00dd43` |
| 41 | `lemma` | [two_le_natDegree_of_nextCoeff_eraseLead](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialEraseLeadNamespaced.lean/declarations/two-le-natdegree-of-nextcoeff-eraselead.md) | 245 | `result-track:80ed42f956250dee10f507ea3b4e04700e4a85131c201719c79f4642de5eb79b` |
| 42 | `theorem` | [leadingCoeff_eraseLead_eq_nextCoeff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialEraseLeadNamespaced.lean/declarations/leadingcoeff-eraselead-eq-nextcoeff.md) | 256 | `result-track:8b827bd33b1648bda4e478e27efa8de5bded159a63a8d6722ed8d428b436262b` |
| 43 | `theorem` | [nextCoeff_eq_zero_of_eraseLead_eq_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialEraseLeadNamespaced.lean/declarations/nextcoeff-eq-zero-of-eraselead-eq-zero.md) | 263 | `result-track:51cfdad9a5c36301b378e8a9b4b757edfb9ee01822209a82f9e8a102b992d839` |
| 44 | `theorem` | [induction_with_natDegree_le](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialEraseLeadNamespaced.lean/declarations/induction-with-natdegree-le.md) | 273 | `result-track:2f4e8bde486a1debe71ac8293306cbabdf3d764a9feceb3875bc4987a5196499` |
| 45 | `theorem` | [mono_map_natDegree_eq](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialEraseLeadNamespaced.lean/declarations/mono-map-natdegree-eq.md) | 309 | `result-track:b3e98b83f27169e4899f1e0d6db6ab9c83da68f204fd0eb61f02ccbab3eb348d` |
| 46 | `theorem` | [map_natDegree_eq_sub](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialEraseLeadNamespaced.lean/declarations/map-natdegree-eq-sub.md) | 329 | `result-track:69ed016ee1f3b6ff891e80dc205ad2319f636b26af2e5cc19e65d7a9db37c489` |
| 47 | `theorem` | [map_natDegree_eq_natDegree](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialEraseLeadNamespaced.lean/declarations/map-natdegree-eq-natdegree.md) | 338 | `result-track:79c4e511c5f36b311845ac74e557b50f981a65b86d04b630a65b52cfa264bd11` |
| 48 | `theorem` | [card_support_eq'](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialEraseLeadNamespaced.lean/declarations/card-support-eq.md) | 345 | `result-track:69292a66b28ec2f01688752f83cb3b8bccf48164b2e07f9da4a5c41ae8ffa798` |
| 49 | `theorem` | [card_support_eq](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialEraseLeadNamespaced.lean/declarations/card-support-eq-source-edition-2.md) | 359 | `result-track:b64042b44e8fca17f265bddafaa58da03197a9afeb8e6d33bbb578bb37fea713` |
| 50 | `theorem` | [card_support_eq_one](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialEraseLeadNamespaced.lean/declarations/card-support-eq-one.md) | 405 | `result-track:5b1cf55a9cda79fb9982967ba0dd4278959bfe20751c198290222fc1811f15b0` |
| 51 | `theorem` | [card_support_eq_two](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialEraseLeadNamespaced.lean/declarations/card-support-eq-two.md) | 413 | `result-track:ae06422a7099b1d16aa7ac3d478625b8eda1f78fcef8a6bb8abdc1e87eb525ff` |
| 52 | `theorem` | [card_support_eq_three](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialEraseLeadNamespaced.lean/declarations/card-support-eq-three.md) | 425 | `result-track:725211a65080963880d6e4f62c15ab8cd5246ae84235cf96b916c430b29f65f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dc6ef8531df5fdb4064635b57815df06eda1f7de2012c66df42361042ffb172e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/EraseLead/Variant90c4a369cab7a1c65a22b83c3cb6bc6eebcb38ea1893beaac763f66a6ff4f35b.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/EraseLead/Variant90c4a369cab7a1c65a22b83c3cb6bc6eebcb38ea1893beaac763f66a6ff4f35b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
