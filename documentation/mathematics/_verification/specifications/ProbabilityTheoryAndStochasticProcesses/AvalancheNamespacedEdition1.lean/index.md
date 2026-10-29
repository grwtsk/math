# Verification target: Avalanche Namespaced Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d00ee9c03cd9f493f70e5c4d08c5ded99110181",
  "lexical_observation_count": 99,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Avalanche/Variant2daf0a291e93848b59aba38d1e0a57d241ab03debf127cfd1940f157c39952fa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d00ee9c03cd9f493f70e5c4d08c5ded99110181`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Avalanche/Variant2daf0a291e93848b59aba38d1e0a57d241ab03debf127cfd1940f157c39952fa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Avalanche/Variant2daf0a291e93848b59aba38d1e0a57d241ab03debf127cfd1940f157c39952fa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BinaryMatrix.Quantization` — import line 6; external provider; requires a separately pinned dependency.
- `BinaryMatrix.SATReduction` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring.Nat` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Field` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Powerset` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Sum` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zeroBits](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/zerobits.md) | 62 | `declaration-track:728b2a83dd6b04fe763c794c85e36ae707fe5b4d1167255ca62765f6f8262a14` |
| 2 | `def` | [xorBits](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/xorbits.md) | 66 | `declaration-track:a9fe63bccf18a832ebeb18d70d3773d89771949c7cd5a853ea361637f1fcf0d3` |
| 3 | `def` | [basisBit](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/basisbit.md) | 70 | `declaration-track:9faa7048f0316eba4c074da4aee1958dab789bfdd29d3f32388cf0571b6e8bd6` |
| 4 | `def` | [flipBit](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/flipbit.md) | 74 | `declaration-track:3b568df37a9bf9c978dbcee32a8e1046a0d0715871de30c6e14e478d6f237cc7` |
| 5 | `theorem` | [xorBits_zero_right](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/xorbits-zero-right.md) | 78 | `result-track:8812f26756860afbcee72064a2fa1f46d1adae9e36942f37de216190be3937b2` |
| 6 | `theorem` | [xorBits_zero_left](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/xorbits-zero-left.md) | 84 | `result-track:6277ca9ffba0a5240efcbb1a4f29c7f02e609bd1d34f6417a33cae18ef2a3c6f` |
| 7 | `theorem` | [xorBits_self](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/xorbits-self.md) | 90 | `result-track:e8fd1d876b3374d9a8a7ad6e13ee3396c466a1fb4f0cf5af482ba28a6607a81b` |
| 8 | `theorem` | [xorBits_comm](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/xorbits-comm.md) | 95 | `result-track:ec8c4a00482a54cb950b403c8c695fd7596cc5966d3d69429c46919c986d193c` |
| 9 | `theorem` | [xorBits_assoc](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/xorbits-assoc.md) | 100 | `result-track:3b525935d8adb8dda3ff9f010b8350d86b66cfc1cfb61e305d737e6d218dfb5e` |
| 10 | `theorem` | [xorBits_cancel_right](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/xorbits-cancel-right.md) | 106 | `result-track:9764f284e9864f7e6005a779dc3738a4214a6acf0436cca14de4ee75b1342239` |
| 11 | `theorem` | [xorBits_eq_zero_iff](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/xorbits-eq-zero-iff.md) | 114 | `result-track:9b5f8e324a8d8715a93e30a21c982a186ed2750a33b3855dd4a15a22b89831e9` |
| 12 | `theorem` | [xorBits_cancel_self_right](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/xorbits-cancel-self-right.md) | 119 | `result-track:f64675fa3f4819829bba0f324c08bbb649c250ce4a8af17f3f94afd7d7611334` |
| 13 | `theorem` | [flipBit_apply_same](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/flipbit-apply-same.md) | 124 | `result-track:667cf5cb5f0e3191b641d0edd38fad9b8789ad1190e8ef62656a4ede6757b2e2` |
| 14 | `theorem` | [flipBit_apply_ne](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/flipbit-apply-ne.md) | 128 | `result-track:03ed39f1626e951d5c892a61b5ce510b6a38a3618c4f5d4abc76f9e20e690afa` |
| 15 | `theorem` | [flipBit_involutive](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/flipbit-involutive.md) | 134 | `result-track:cccbf723521f8e2c355c0ba21bf3ef416806e22764a76749a986597e1d50f2a7` |
| 16 | `theorem` | [basisBit_ne_zero](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/basisbit-ne-zero.md) | 138 | `result-track:49c8f97cee939d1ebec23a1648480cb39fdcf1339958206f95b8ebbd9bd4ebdd` |
| 17 | `theorem` | [xorBits_ne_self_of_ne_zero](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/xorbits-ne-self-of-ne-zero.md) | 144 | `result-track:aa567728b4cd2cfb953bfca15d98e6e0619242859e0e26861b6ad189767651e4` |
| 18 | `theorem` | [flipBit_ne](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/flipbit-ne.md) | 152 | `result-track:4f3d96d45efc99ba9fc71388ba7917848eb485168e59625e269d811e8cbfb728` |
| 19 | `def` | [derivative](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/derivative.md) | 159 | `declaration-track:67525cf6896b86f94e385489234023fb7e7578c14ecbb8468a8d5d232a89f7e0` |
| 20 | `def` | [bitDerivative](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/bitderivative.md) | 163 | `declaration-track:987a8b230160fdeef1d4571431c2ffb5310eec88b0f56960bc686e7df3585513` |
| 21 | `def` | [derivativeBit](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/derivativebit.md) | 168 | `declaration-track:3df5cbec62ea96adaafb419ccb38306b22146a8f3ac7678db41c16386ef24456` |
| 22 | `def` | [localJacobian](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/localjacobian.md) | 176 | `declaration-track:cf5f4a7e6e2e49f90b148f77641f9e9ac4ce8dd10de7b77c1cdfb768c3c2b62a` |
| 23 | `theorem` | [derivative_shift](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/derivative-shift.md) | 180 | `result-track:5a9669b2f028d00ffd6ec0a92b636ced63c77ee697e19461b608318d1db59511` |
| 24 | `theorem` | [bitDerivative_flipBit](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/bitderivative-flipbit.md) | 187 | `result-track:8d37ba7272a741a69a54a22f0648cd3cd2f5f035b9c1936232a4e0f8849e8d53` |
| 25 | `def` | [jacobianQuantizer](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/jacobianquantizer.md) | 193 | `declaration-track:654f060fc08ba6bd9054e36109036c5aa6c8bc41f010cb821faad49c77f2bed7` |
| 26 | `theorem` | [jacobianQuantizer_encode](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/jacobianquantizer-encode.md) | 198 | `result-track:713d3bf9204f32cca8eaae0d99cd941edfef05c23866c5c59c583efcf72468ab` |
| 27 | `def` | [differentialCount](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/differentialcount.md) | 206 | `declaration-track:422d07f9b1bedfb8dc55302307e0f397e0ea8b5f0cef6de64c2ceb48444e506e` |
| 28 | `def` | [differentialProbability](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/differentialprobability.md) | 211 | `declaration-track:c72083a98687d1ee3dbf24fb967cdf5afbe4c8a0ec8f6714b08d0fbdc1b86263` |
| 29 | `def` | [sacCount](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/saccount.md) | 216 | `declaration-track:3a7a93e05381148510686f05896f02f6b424707cd6091e9ecb2e4539e7c65199` |
| 30 | `def` | [sacEntry](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/sacentry.md) | 220 | `declaration-track:5a1ef252129a6f2ba4d64f1020eeab56ce25170a9d0a02aa604bc562a867a3a1` |
| 31 | `def` | [StrictSAC](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/strictsac.md) | 224 | `declaration-track:ad5b3a0c6c1f72e1547d99716bcde50b7fc2385a0eee995658468725d04c1bd0` |
| 32 | `theorem` | [card_bits](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/card-bits.md) | 228 | `result-track:25acfa97bbdf3b98fecbb49cd7fefbe5165dd0f967434aa2455f82596c26193a` |
| 33 | `theorem` | [differentialCount_sum](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/differentialcount-sum.md) | 234 | `result-track:10855304f5b96a6e8c06ca86b071e80ebadacc40b8fee5e6b92fed79a72d79da` |
| 34 | `theorem` | [differentialCount_eq_full_iff](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/differentialcount-eq-full-iff.md) | 245 | `result-track:1fdd8ea73031557f84474a75b5ac2fde263e2ba444a32cf67cccf81a87b0b541` |
| 35 | `theorem` | [differentialProbability_eq_one_iff](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/differentialprobability-eq-one-iff.md) | 257 | `result-track:6a9ca644f55ea181b22a71d60dd0ace80423f4583bbc56d9ba312fd9967594f5` |
| 36 | `theorem` | [exists_true_of_ne_zero](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/exists-true-of-ne-zero.md) | 271 | `result-track:59a64e8a328b39cb10544aa9e1f72064771c6ffefc9ea5b3cfe31f138439541e` |
| 37 | `theorem` | [filter_card_even_of_xor_invariant](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/filter-card-even-of-xor-invariant.md) | 286 | `result-track:56972518d57e2d51b3eab0695767f98036b6b25ac84bafec226fd200f1cd51be` |
| 38 | `theorem` | [differentialCount_even](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/differentialcount-even.md) | 337 | `result-track:6b8d4efac8b5a75085421cf2496971edd94dde942fec3a2620a4f74fd8886d86` |
| 39 | `theorem` | [derivative_ne_zero_of_injective](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/derivative-ne-zero-of-injective.md) | 346 | `result-track:f6c84a87716c9368cd2bba998f418b78444e6b3ddc2af351f61ead979cd91a89` |
| 40 | `theorem` | [differentialCount_zero_of_injective](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/differentialcount-zero-of-injective.md) | 356 | `result-track:6a0e61a2403c27a4e7741876e73b4903b0b5459d83fc201626e0d68409a004ee` |
| 41 | `theorem` | [sacCount_even](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/saccount-even.md) | 364 | `result-track:2d458ecacae2f3926d0848aaa2415785002fbc72d6c5bf500664b347d2b477f2` |
| 42 | `theorem` | [not_strictSAC_one](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/not-strictsac-one.md) | 375 | `result-track:be06e1ea8a2c5da5e9832bca03b14a4fb7e6f09cf52c876a2e713202fe1f8c0b` |
| 43 | `theorem` | [sacCount_le](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/saccount-le.md) | 386 | `result-track:ba201367f602decf45111c4a5bfc743bd0fa089b78f24ec0b7407a94f4abf89f` |
| 44 | `theorem` | [sacEntry_nonneg](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/sacentry-nonneg.md) | 396 | `result-track:7af9edd7703b02f25d0c202554b4e029cac72879a8c5d60bfdd02c082452f23d` |
| 45 | `theorem` | [sacEntry_le_one](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/sacentry-le-one.md) | 401 | `result-track:be1c1bfc23ee6fa3d79d51a7c504fbcd4e1d72b9b64093b1129753cdc373ff31` |
| 46 | `theorem` | [strictSAC_iff_sacEntry_eq_half](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/strictsac-iff-sacentry-eq-half.md) | 408 | `result-track:f7c7c1d3d71a9f27affa6c19cc6175d885d086c05d0cd612693edd18f5930f3d` |
| 47 | `theorem` | [abs_two_mul_sub_one_le_one](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/abs-two-mul-sub-one-le-one.md) | 427 | `result-track:efc739616fb56690b199b8d43f833bad0a4f962e23be890b14ef7b4284a0cc05` |
| 48 | `theorem` | [four_mul_variance_nonneg](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/four-mul-variance-nonneg.md) | 432 | `result-track:f453877ff38d457e4b1741c6076852ab4b6b5ed786575c1bb51fbc0d09e05ddb` |
| 49 | `theorem` | [four_mul_variance_le_one](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/four-mul-variance-le-one.md) | 438 | `result-track:2a644872e70c1e5f187d53e42b612467963783f0bcc1e34c92ea6cfee68b6a13` |
| 50 | `theorem` | [four_mul_variance_eq_one_iff](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/four-mul-variance-eq-one-iff.md) | 442 | `result-track:57570a3e5897f7ac5c9deff82685b7b592460060138fcf57fef917435d7fde8e` |
| 51 | `def` | [sacScore](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/sacscore.md) | 456 | `declaration-track:f8ef31614be39fdcf242b0f82b705bf28d3f38ba5c9c2e993728ec7972a33b3f` |
| 52 | `def` | [varianceScore](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/variancescore.md) | 468 | `declaration-track:fa13ecde753e34e944ec5f8d411e92a9bbb4f7831688b30443bc780ea3f75142` |
| 53 | `theorem` | [bias_sum_nonneg](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/bias-sum-nonneg.md) | 476 | `result-track:e359e14f971779260189be1aea8a41383d08873f2288611021659d81c96e2bd6` |
| 54 | `theorem` | [bias_sum_le](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/bias-sum-le.md) | 481 | `result-track:43f27bdbb74a7d1993a527ce003d4a28e1663ea2f8df72cf7f506fc64f29485c` |
| 55 | `theorem` | [variance_sum_nonneg](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/variance-sum-nonneg.md) | 493 | `result-track:514dacdfcb54e9505e5e2b6f1a847f56846f71dd249acc8926998c65f432d1fd` |
| 56 | `theorem` | [variance_sum_le](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/variance-sum-le.md) | 499 | `result-track:7c60ea8b6ca35dade5526a8d6a7dbb4bf15cc45467d5a5985a40c73694d5feeb` |
| 57 | `theorem` | [sacScore_nonneg](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/sacscore-nonneg.md) | 514 | `result-track:b77b6794ddd8b2553e2d5660c52aa39bfdd30065c1a82f5a5cb802e28f101404` |
| 58 | `theorem` | [sacScore_le_one](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/sacscore-le-one.md) | 527 | `result-track:d83dff31f5c0b92ec6be10dea4aee36df32ee3cbc19728436c5d4eb826a1f926` |
| 59 | `theorem` | [sacScore_eq_one_iff](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/sacscore-eq-one-iff.md) | 540 | `result-track:e7a4b6d13f44102f6e142a2b2646ce6084b85b70e157b0380da16237e1a946e8` |
| 60 | `theorem` | [varianceScore_nonneg](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/variancescore-nonneg.md) | 573 | `result-track:c61c41e243fb2caaceb8b64b5636e2c357a120e2f2a60165af3bbb64c508ca45` |
| 61 | `theorem` | [varianceScore_le_one](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/variancescore-le-one.md) | 581 | `result-track:ede7eceb40d9c34e1d0b69cc5d5daaf3cafcb0661ef8906b3193708a3b6daff8` |
| 62 | `theorem` | [varianceScore_eq_one_iff](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/variancescore-eq-one-iff.md) | 589 | `result-track:15cfea714955fdbf3c4fc74b43c34155d08ea8e33cb6fd9e1ab660c24ad6b9c2` |
| 63 | `def` | [hammingWeight](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/hammingweight.md) | 649 | `declaration-track:671143a64fe799ccdbfd8d384bb60254cb18c08b50219cf55885d986f3de1270` |
| 64 | `theorem` | [hammingWeight_le](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/hammingweight-le.md) | 653 | `result-track:af4cd7a2392df0426704ea08d4257f9680c90ea4c732f6534800fd57b7c4a351` |
| 65 | `theorem` | [hammingWeight_eq_zero_iff](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/hammingweight-eq-zero-iff.md) | 660 | `result-track:facf1b1102c5ec6c254cf8aaa96899430c29e478f4a664f8c503a81d66b26b52` |
| 66 | `def` | [bitsSupportEquiv](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/bitssupportequiv.md) | 680 | `declaration-track:2608a479c97e874ff1997098e501e9d0ba9717e228a659ab31104b8a1cf68450` |
| 67 | `theorem` | [card_hammingWeight_eq](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/card-hammingweight-eq.md) | 692 | `result-track:b255701897902d5038d532e4b5e375f46e9698bca0b68659f48e1791b4992937` |
| 68 | `def` | [propagationWeight](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/propagationweight.md) | 707 | `declaration-track:703d061db141597c0fb26d98588b0259fbadea229cb13613cd93b277f80926d2` |
| 69 | `def` | [propagationCount](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/propagationcount.md) | 712 | `declaration-track:2d442218f5adedfc34c124d186cd955548c8f3737f6e8de78bdf697fb4a3dbba` |
| 70 | `def` | [propagationMass](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/propagationmass.md) | 717 | `declaration-track:340fa57da8e831f97dbd19a6c38f2152b6cd7694340837886169541660761617` |
| 71 | `theorem` | [propagationCount_eq_zero_of_gt](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/propagationcount-eq-zero-of-gt.md) | 722 | `result-track:c2385c8c41cb4beee4eb3f6882a01400252e7147e654e2ebf9702ddb6406c917` |
| 72 | `theorem` | [propagationCount_sum](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/propagationcount-sum.md) | 734 | `result-track:49184929ace462c633fb26d00e015081ec5afb983901d09173417e29ddf87409` |
| 73 | `theorem` | [propagationMass_sum](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/propagationmass-sum.md) | 745 | `result-track:c965b2fee06f1881646dc7bdf26d59d75abe6b978d3bd07f88fa5e4d8504fc5e` |
| 74 | `theorem` | [propagation_first_moment_count](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/propagation-first-moment-count.md) | 759 | `result-track:10961936fb14da0f9794eacd601f0a2ba089549a0787bac5eae5948a9306c31b` |
| 75 | `theorem` | [propagation_first_moment_mass](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/propagation-first-moment-mass.md) | 788 | `result-track:32035430644206a7077255af72eafa8078d8202325927ef3f0ee943dd426e999` |
| 76 | `theorem` | [propagationCount_zero_of_injective](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/propagationcount-zero-of-injective.md) | 799 | `result-track:eec159cabc409495e5e4a0df5913bdcdb588ba38297952b2cc0213846ab163bc` |
| 77 | `theorem` | [propagationMass_zero_of_injective](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/propagationmass-zero-of-injective.md) | 812 | `result-track:02996b0a146d27a0b590d1a588d0a846efd0a169ac91724f34ad9aace1ee2104` |
| 78 | `def` | [functionWeightMass](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/functionweightmass.md) | 820 | `declaration-track:cbe3a4fdb02a6732f15dc49d884829448936b9fb98f1baa2592259c08055ae8e` |
| 79 | `def` | [permutationWeightMass](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/permutationweightmass.md) | 827 | `declaration-track:638ed18ce8959e02758bc5162cc191f288f35548088962b529af316cb4a12390` |
| 80 | `theorem` | [functionWeightMass_sum](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/functionweightmass-sum.md) | 836 | `result-track:fd2c3912933ef75d625dd56ab8f80e08884b5ccedbfb81addf52002946f06118` |
| 81 | `theorem` | [permutationWeightMass_zero](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/permutationweightmass-zero.md) | 844 | `result-track:b3185eeeba55148f63e338866806aa3002386a2be7c13843d428a8a9fbf11aed` |
| 82 | `theorem` | [permutationWeightMass_sum](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/permutationweightmass-sum.md) | 849 | `result-track:7468a01a1e2d8bb1654c450175b355e4edb342e918eb1f66eb69dc3b8f0fe085` |
| 83 | `theorem` | [permutationWeightMass_eq_conditioned](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/permutationweightmass-eq-conditioned.md) | 875 | `result-track:91962ded1df2dab49f888756cb84b4636c4ddd772053220df2fa0cf2f3a3d142` |
| 84 | `def` | [permutationMarginal](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/permutationmarginal.md) | 890 | `declaration-track:56b6f7c8520ff8b6e15802d9041447a99c01d70971964e404e5e65c141b6e1a9` |
| 85 | `theorem` | [permutationMarginal_sub_half](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/permutationmarginal-sub-half.md) | 894 | `result-track:df6169d01bb5f3ce17d37624d1f399f305b96153e15f4f9779f5dddc1859d205` |
| 86 | `theorem` | [identity_bijective](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/identity-bijective.md) | 913 | `result-track:9be5f8c94feb4610889fcd1c37c7cf8d1a2ab5f964d8e6e2a54e76ae7318fb15` |
| 87 | `theorem` | [identity_bitDerivative](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/identity-bitderivative.md) | 918 | `result-track:54b25656cf7e8dab9114a9a78618e7365bcb1e94c806f4fb43daa7088b405af6` |
| 88 | `theorem` | [identity_sacCount](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/identity-saccount.md) | 924 | `result-track:a14a573970ef4fcd225e3b41a689dea4139d8a47198a288b9c5159d8fc3d0eec` |
| 89 | `theorem` | [identity_sacEntry](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/identity-sacentry.md) | 936 | `result-track:2e07d2b42c69c2fb09528b086645b63155f4c900bdbe0fab94a5d29595b3ff61` |
| 90 | `theorem` | [identity_sacScore](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/identity-sacscore.md) | 945 | `result-track:d380607a0eb536ec9a89ec9b1abe98ac33438f35798420c8f328dde66a579725` |
| 91 | `theorem` | [identity_varianceScore](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/identity-variancescore.md) | 959 | `result-track:628eb3afb05ef0dfefb6d28fb2d52b4ff0c5b8bc3f15e401677fa70dd178795a` |
| 92 | `theorem` | [exists_bijective_with_zero_avalanche_scores](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/exists-bijective-with-zero-avalanche-scores.md) | 968 | `result-track:bca54347b86d36acbe3ad54db30d2c5863172650501f4f6d905e7f7976c82858` |
| 93 | `theorem` | [identity_localJacobian](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/identity-localjacobian.md) | 975 | `result-track:f89783b72f4f4c45d65c961a358434344ee446248c28fcdd3937a0dfb183b6d7` |
| 94 | `theorem` | [identity_localJacobian_const](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/identity-localjacobian-const.md) | 983 | `result-track:fcd2adf4bbe4406d62ffa12a9a0f17553fc4db91301b405e8e765371479912e7` |
| 95 | `theorem` | [identity_jacobian_effectiveStates_eq_singleton](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/identity-jacobian-effectivestates-eq-singleton.md) | 988 | `result-track:e1ff473339bdbbc38212832f2f565c80d98b11a984684c067e201febf806d8c6` |
| 96 | `theorem` | [identity_jacobian_effectiveStates_card](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/identity-jacobian-effectivestates-card.md) | 1006 | `result-track:45f2f5c239ff5f55b001c7f15890d196ad382cd67afae6a9d6ed6fe1f22fc9c2` |
| 97 | `def` | [signBit](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/signbit.md) | 1014 | `declaration-track:24a56b14ce24af609914db4ecaf9c2da63f02d667067c8f03a3b467d83c1fa08` |
| 98 | `def` | [correlationNumerator](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/correlationnumerator.md) | 1018 | `declaration-track:6ac7e3bf3d5b61ce262071beb896fcd992d827fa19d640ca11935fdafe45cc14` |
| 99 | `def` | [signCorrelation](../../../../ProbabilityTheoryAndStochasticProcesses/AvalancheNamespacedEdition1.lean/declarations/signcorrelation.md) | 1028 | `declaration-track:238944f9f83064eb7e495ab9f6c9b00995b2f182c0c9ba9a6cc6e3e63a3c1dbb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=de98d404f64b4c5ac48c1e2c92755d99765e2785e53b2806c3672f74e417c2bc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Avalanche/Variant2daf0a291e93848b59aba38d1e0a57d241ab03debf127cfd1940f157c39952fa.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Avalanche/Variant2daf0a291e93848b59aba38d1e0a57d241ab03debf127cfd1940f157c39952fa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
