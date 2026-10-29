# Verification target: Permutation Network

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15e69c19cc6fc5ac33d59fcbfa154ba4a659158b",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/PermutationNetwork/Variantf80166be745fca59df8ab98ac278c30804e4793eac98a3af1314e6cacf252d70.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15e69c19cc6fc5ac33d59fcbfa154ba4a659158b`.

Source path: `GRWTSK/Algebra/PermutationNetwork/Variantf80166be745fca59df8ab98ac278c30804e4793eac98a3af1314e6cacf252d70.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/PermutationNetwork/Variantf80166be745fca59df8ab98ac278c30804e4793eac98a3af1314e6cacf252d70.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BinaryMatrix.Avalanche` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [xorTranslation](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/xortranslation.md) | 42 | `declaration-track:13e1ce34238f3940b20712fbc7b61c832babdeaefee149db14bb1944643ffc3b` |
| 2 | `theorem` | [xorTranslation_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/xortranslation-apply.md) | 49 | `result-track:82511bfaee2fb5c7186343f52b7d79e09375229da96b53d4735c2a0ac0fee3c6` |
| 3 | `theorem` | [xorTranslation_symm_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/xortranslation-symm-apply.md) | 54 | `result-track:5905b1a008f69979a426ea4137e7cb8c405eb5fc93f2c55bc1a8654d1be9e1bc` |
| 4 | `structure` | [Round](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/round.md) | 59 | `declaration-track:6527025adb6fe4a3f82139677cd437f0684b1fefee962f63af8cd88ff9f81de1` |
| 5 | `def` | [Round.toEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/round-toequiv.md) | 66 | `declaration-track:057c2f5886676813bdac9896bf3684c9c7f34bf4da0a1dcb672245074bce0041` |
| 6 | `def` | [Round.run](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/round-run.md) | 71 | `declaration-track:6f38a7f736265f3e0857e5a1cfd68075d45da30642f92665bf085cb501cf8673` |
| 7 | `theorem` | [Round.run_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/round-run-apply.md) | 75 | `result-track:5fdf9c7cd027e9b6514c6dc7b8b6c8b7cb8d93ec73bfe5c1c861cd3a301d109f` |
| 8 | `theorem` | [Round.run_bijective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/round-run-bijective.md) | 81 | `result-track:72d9ab7000cf2ee06ffce592f1bbeb009b44c574d5ae5c1b374417fdc35354c4` |
| 9 | `def` | [Round.inverse](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/round-inverse.md) | 86 | `declaration-track:596479cdb4b9873befefeffaba7b6e365c30f712597fe7c191fc30b127d379f8` |
| 10 | `theorem` | [Round.inverse_run](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/round-inverse-run.md) | 90 | `result-track:f5866b7408f03eaf2e63eea4b4c57d45d21d53f125e0c74c76104767cc253904` |
| 11 | `theorem` | [Round.run_inverse](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/round-run-inverse.md) | 95 | `result-track:8d07a964013371f1a95a8b0ce1578206de6a4da633b6907c914f74d40f26bc59` |
| 12 | `def` | [composeRounds](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/composerounds.md) | 102 | `declaration-track:f3bd94e28abea9791e8594eea41ce6b369bd2933a6bba5ef15506566dbca6e61` |
| 13 | `def` | [runRounds](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/runrounds.md) | 107 | `declaration-track:56965f0a4443c7c8f99a5eef2eec1574324c710294b89b486bca77809cba62ac` |
| 14 | `theorem` | [composeRounds_nil](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/composerounds-nil.md) | 111 | `result-track:601e7a712b9b671f5b0f844da08430fb805a5e0682aaf9a584b2baf537b3783a` |
| 15 | `theorem` | [composeRounds_cons](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/composerounds-cons.md) | 116 | `result-track:567026095476677388d6caf314afab6b34a75130ff8c4719dcf1776b147e2ea3` |
| 16 | `theorem` | [runRounds_nil](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/runrounds-nil.md) | 121 | `result-track:30afe85ed4e11f67f13603a32746eaf63c75177881be67dc2a0486a8652bcc8b` |
| 17 | `theorem` | [runRounds_cons](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/runrounds-cons.md) | 126 | `result-track:7955056b9224bf410eb2b20b28b75e41b135bd83567130fea13d2ce8268bb6ef` |
| 18 | `theorem` | [runRounds_bijective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/runrounds-bijective.md) | 132 | `result-track:a3150d7c964c365eeb970b1e808bedb5a3b0a5accfbee0cb96cea93413449807` |
| 19 | `def` | [identityRound](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/identityround.md) | 139 | `declaration-track:9bbb6ce404897b95f57abb8c954937ad674bef1bad955180a84d428e6a124392` |
| 20 | `theorem` | [identityRound_run](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/identityround-run.md) | 146 | `result-track:b8964c27a1723b5f15ed36dde61e2a89a6beee561765a79157e69e2ab90b4804` |
| 21 | `theorem` | [identityRound_sacScore](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/identityround-sacscore.md) | 150 | `result-track:d85955906abd02ce3a9d7e16f4fe967fc12a18317c4916cc3db3a4bdcff0d145` |
| 22 | `theorem` | [identityRound_varianceScore](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/identityround-variancescore.md) | 158 | `result-track:12a08173a95eb5271738583b0ce940302f272eecc2a19cfd996b713aeca3a21a` |
| 23 | `theorem` | [exists_bijective_round_with_zero_avalanche](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/exists-bijective-round-with-zero-avalanche.md) | 170 | `result-track:ef4862c8ed6ea17927073f699cf4a595067017cef67965e46a14add0b0afd667` |
| 24 | `def` | [coordinatePermutation](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/coordinatepermutation.md) | 184 | `declaration-track:d22640b6040c0f4065be7569fdfb8ff8fea1fc6020063bdfac2e93c0ac648842` |
| 25 | `theorem` | [coordinatePermutation_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/coordinatepermutation-apply.md) | 196 | `result-track:792f36507356473d3613ebf9710af7856bedd722325ac06bd1aa9376db65d522` |
| 26 | `theorem` | [coordinatePermutation_xor](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/coordinatepermutation-xor.md) | 202 | `result-track:2d6e8907503568769d8c5285f858f11f265f0375047034325250885185dccbc5` |
| 27 | `theorem` | [hammingWeight_coordinatePermutation](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/hammingweight-coordinatepermutation.md) | 209 | `result-track:cf24e8f863ef516adc645ac46aec45a24c96b2360888764e9266c79a8e4fd439` |
| 28 | `theorem` | [coordinatePermutation_derivative](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/coordinatepermutation-derivative.md) | 219 | `result-track:20d641d5a3f2535dde707ddef88857af1b90c3406697fef5403967bddcede33a` |
| 29 | `theorem` | [coordinatePermutation_basisBit](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/coordinatepermutation-basisbit.md) | 226 | `result-track:fc693983a63793ca38f5c7f013a23848b8813c94f088d7f21c2e5803b5fd72ba` |
| 30 | `theorem` | [coordinatePermutation_bitDerivative](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/coordinatepermutation-bitderivative.md) | 235 | `result-track:210f63bd2dce2b334efc61d313610907f6ae3900d7d0f77d9ceae36031a4fdda` |
| 31 | `theorem` | [coordinatePermutation_sacCount](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/coordinatepermutation-saccount.md) | 242 | `result-track:f02dac87f47266c663e695f89f9a022452386d38c50e54fde211a96f9d2af4c2` |
| 32 | `theorem` | [coordinatePermutation_sacEntry](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/coordinatepermutation-sacentry.md) | 254 | `result-track:9f53486a8aacb858035d00459ebff18c203f9548cab80bf2f7dca6ba0eb895d8` |
| 33 | `theorem` | [coordinatePermutation_sacScore](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/coordinatepermutation-sacscore.md) | 264 | `result-track:b9f4c3e77cf2560b3032dcef6d6c9826c7c4c660cd932cbaf06e887bb409abbe` |
| 34 | `theorem` | [coordinatePermutation_varianceScore](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/coordinatepermutation-variancescore.md) | 279 | `result-track:5644d83378804330dd05605792be0a24f5f66c45865e689fd870b17e394f3c96` |
| 35 | `structure` | [XorLinearEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/xorlinearequiv.md) | 288 | `declaration-track:4b0ef9b76666cad6a4bcbd0d05c8efbea92a9558753d65e60afc80aea029e091` |
| 36 | `def` | [XorLinearEquiv.ofCoordinatePermutation](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/xorlinearequiv-ofcoordinatepermutation.md) | 293 | `declaration-track:472a7e0a90cf9e6405dbb24da403691d19c4e8d5e26a4795061b1707a6cd9743` |
| 37 | `theorem` | [XorLinearEquiv.map_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/xorlinearequiv-map-zero.md) | 300 | `result-track:18963e50a5577fcdfb6233eb6de01541a228d4975d7baf8ebca4ea71194fb4f1` |
| 38 | `def` | [activities](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/activities.md) | 305 | `declaration-track:cd86066b60ff1813da268d0bd983ca4fb3fa7b0c4618c969ecfa2fe6b7fe353a` |
| 39 | `theorem` | [activities_nonempty](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/activities-nonempty.md) | 309 | `result-track:35f559832506590d90953bf081cc8dfb74f08d4fc1992465c514e0ede15c3db7` |
| 40 | `def` | [branchNumber](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/branchnumber.md) | 322 | `declaration-track:6690a9b21b6ccff25bcd11630cb04c3f3747a65d0bc3fe81cd16f690153e8450` |
| 41 | `theorem` | [branchNumber_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/branchnumber-zero.md) | 330 | `result-track:6614ee6d1021585b925f10c7e15cfdb0013271e09f2ec2c1d63a795cf31359b9` |
| 42 | `theorem` | [branchNumber_le_activity](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/branchnumber-le-activity.md) | 334 | `result-track:9a5498c94852a7092cc31eda153be61a7c96eed98d6c9b99196a85854421f95f` |
| 43 | `theorem` | [hammingWeight_basisBit](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/hammingweight-basisbit.md) | 342 | `result-track:94e5cc3de78040a2a3cf2069b56c8146646d3ce5b6c864b201ba4e4a77968598` |
| 44 | `theorem` | [two_le_branchNumber](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/two-le-branchnumber.md) | 351 | `result-track:db3061fb1d0c42586bb662840594aa246dee9e9944660e53e59ab170e853fcdb` |
| 45 | `theorem` | [branchNumber_coordinatePermutation](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/branchnumber-coordinatepermutation.md) | 375 | `result-track:a5a07caa559e68e218331080c2d4c8313ecc69cc55599aab1c0b2b0b4bdcf323` |
| 46 | `def` | [addCorrection](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/addcorrection.md) | 397 | `declaration-track:3c7d301004360b8dc1f178ff774bdacaba1169dad06a64e3278368d098135790` |
| 47 | `theorem` | [identity_add_identity_correction](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/identity-add-identity-correction.md) | 401 | `result-track:5b091acaccceb2aee0f557501d3aecda8bd639f8a52c07b2c07ea9587497debe` |
| 48 | `theorem` | [identity_add_identity_not_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/identity-add-identity-not-injective.md) | 410 | `result-track:3ee219199ff6baf7171204e0124186a7b2719d37e21e14467d16573e245369bc` |
| 49 | `theorem` | [state_dependent_correction_can_destroy_bijectivity](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/state-dependent-correction-can-destroy-bijectivity.md) | 423 | `result-track:e8b33eb27a05508d52c0acc3af14fd19d0624b39b4c415bfd46714d1780d0433` |
| 50 | `theorem` | [constant_translation_preserves_bijectivity](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/constant-translation-preserves-bijectivity.md) | 432 | `result-track:987994f5feec388921ca7f6ca63061338b60b58135d6dd28d9005bf12fbb95c4` |
| 51 | `structure` | [TwoStepComplex](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/twostepcomplex.md) | 441 | `declaration-track:4a1b2793f47aed5aa24d99d1a1b68cb2b4bac12798c1c352c338e8d965013d63` |
| 52 | `def` | [TwoStepComplex.Closed₁](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/twostepcomplex-closed.md) | 448 | `declaration-track:f4c98167d3370bc1ee9a86003e1dbdc446bd985c123f5919cee279dabdf65f2d` |
| 53 | `def` | [TwoStepComplex.Exact₁](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/twostepcomplex-exact.md) | 452 | `declaration-track:e5f54130dac32be12a772fe1e44a010b29b77a2f090fcdd4ba976e990e4955af` |
| 54 | `def` | [TwoStepComplex.H1Trivial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/twostepcomplex-h1trivial.md) | 456 | `declaration-track:4bf1b798faa830fe03722da69ae73bcf8d560264efd432842de5b34d43177871` |
| 55 | `def` | [identityZeroComplex](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/identityzerocomplex.md) | 460 | `declaration-track:ddc87cec411f8492dc1644dbe6388c21e6a90b7eda223559aeba02982b4559c1` |
| 56 | `theorem` | [identityZeroComplex_h1Trivial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/identityzerocomplex-h1trivial.md) | 469 | `result-track:e6374b8b09cb6eb7bd64902494861d536d6b955036e62c868bb8482fb04ef8cd` |
| 57 | `abbrev` | [EndMap](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/endmap.md) | 475 | `declaration-track:b08559f142b7b89d575d8f092612e8c881270be8e2556fa91778160b671678fe` |
| 58 | `def` | [zeroEndMap](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/zeroendmap.md) | 478 | `declaration-track:659b98f6ca15be759d30498ce8dcafcc1e1e42671801b2560d5b78a750431329` |
| 59 | `def` | [endMapComplex](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/endmapcomplex.md) | 482 | `declaration-track:2e5b01074a1de7851d6ce096bc31b5a35cc94bf02b7b8ca91d42f2e2874a949b` |
| 60 | `theorem` | [identityCorrection_closed](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/identitycorrection-closed.md) | 485 | `result-track:f1f1cf1a07b6b27d05805ccb94e1bb00ace92a064b57423e575f40dff08338f3` |
| 61 | `theorem` | [identityCorrection_exact](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/identitycorrection-exact.md) | 489 | `result-track:d05931f73cc415413d3022610d44948ed0243fec2c2fcc23b00b0f0f45e95e94` |
| 62 | `theorem` | [trivial_H1_does_not_preserve_bijectivity](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/trivial-h1-does-not-preserve-bijectivity.md) | 497 | `result-track:8f73c9b7da8ea4a1edcb242b7f10f4558c22dd814cb5376ae11f36cd1125517b` |
| 63 | `theorem` | [not_injective_of_square_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/not-injective-of-square-zero.md) | 515 | `result-track:ca9e1e077f4172e49cc13b391f1e8074135ab0e8bc85691c697850907e8b23dc` |
| 64 | `theorem` | [not_bijective_of_square_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/declarations/not-bijective-of-square-zero.md) | 532 | `result-track:558b072ea875f0b770ac44fb5c03ebbdbdda887cbaa1bf60f9ad96689021614b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d350e7709b9e8428c3ed2be1cbb856a8f5c90db61708fd48efa9ae93406b44fc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/PermutationNetwork/Variantf80166be745fca59df8ab98ac278c30804e4793eac98a3af1314e6cacf252d70.lean","GRWTSK/_verification/specifications/Algebra/PermutationNetwork/Variantf80166be745fca59df8ab98ac278c30804e4793eac98a3af1314e6cacf252d70.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
