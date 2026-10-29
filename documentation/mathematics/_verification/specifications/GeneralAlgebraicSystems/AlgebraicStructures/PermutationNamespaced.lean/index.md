# Verification target: Permutation Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a06f25b10cce3c8305f6bd655dc7457000874341",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Permutation/Variant509cbcf6f8727c8a14a8a2adbd9400541c3ed6a7872b07462e9438b99e8e3158.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a06f25b10cce3c8305f6bd655dc7457000874341`.

Source path: `GRWTSK/Algebra/Permutation/Variant509cbcf6f8727c8a14a8a2adbd9400541c3ed6a7872b07462e9438b99e8e3158.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Permutation/Variant509cbcf6f8727c8a14a8a2adbd9400541c3ed6a7872b07462e9438b99e8e3158.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Dynamics.Avalanche` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [xorTranslation](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/xortranslation.md) | 50 | `declaration-track:1c6923dfed804d6c653760006148b674841a72d023135ea749558a78c505ba73` |
| 2 | `theorem` | [xorTranslation_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/xortranslation-apply.md) | 57 | `result-track:2924f16b52187705a8a069d12130584e01a92ee0926ab0cee7fbebd5aec9ad77` |
| 3 | `theorem` | [xorTranslation_symm_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/xortranslation-symm-apply.md) | 62 | `result-track:8474f9b4b52741242d2cddf3aeaf8f34428730c412d4b8d2100b5800b20b9bf6` |
| 4 | `structure` | [Round](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/round.md) | 67 | `declaration-track:ab8db9af717848234307c891f04d10903700258b6e59a3d0d3333cde6d7f33c5` |
| 5 | `def` | [Round.toEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/round-toequiv.md) | 74 | `declaration-track:58c467a1637c09b22c65314610e4864f848bef006ddfe65633d394c1127846ef` |
| 6 | `def` | [Round.run](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/round-run.md) | 79 | `declaration-track:68cf6dca90ece689ea0b8147193ca7b63041b77234c12c68a6cb9e0558ff757c` |
| 7 | `theorem` | [Round.run_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/round-run-apply.md) | 83 | `result-track:e82df5f302efc34af80dd93a9f5bb4abadcbd537da3d82acec285e7c55be6012` |
| 8 | `theorem` | [Round.run_bijective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/round-run-bijective.md) | 89 | `result-track:e561d23e019d9e8989617decfe2d7cc93530c92c0c0bf2cbaf7dc9c6e912080e` |
| 9 | `def` | [Round.inverse](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/round-inverse.md) | 94 | `declaration-track:aabb354a83111b34e7acd4e025c7773e0fea3e0c24af7b436937e15a14978b1e` |
| 10 | `theorem` | [Round.inverse_run](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/round-inverse-run.md) | 98 | `result-track:13b6cb2a8297031987c15d5723b6b0f29adcdd19eb34594a6129cfbd07b62cf1` |
| 11 | `theorem` | [Round.run_inverse](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/round-run-inverse.md) | 103 | `result-track:8ba13d462e58702abb017e45f5234356e1ca369e27f830136e26ec60704ea8d2` |
| 12 | `def` | [composeRounds](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/composerounds.md) | 110 | `declaration-track:a3c6874506ea95d7d3bd801da629be16904f42a89474b3570ef856a6e831589a` |
| 13 | `def` | [runRounds](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/runrounds.md) | 115 | `declaration-track:b7f71299b092cd4eca6970c9d958ced11c1c81215be4c7b3405bf16b1c9e335e` |
| 14 | `theorem` | [composeRounds_nil](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/composerounds-nil.md) | 119 | `result-track:f2cd192a18c3bdf33c1f9f75192cb16050d2aadac9908725ae37ba90514286ae` |
| 15 | `theorem` | [composeRounds_cons](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/composerounds-cons.md) | 124 | `result-track:f7e69463f93a5cf2d0af89562812b3adc294ca9aa15ae868fed27c80bc24c262` |
| 16 | `theorem` | [runRounds_nil](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/runrounds-nil.md) | 129 | `result-track:cfb4a31bd39bb4c70656deec6d6b9d6601ac009b77da4f10574996afec2df77d` |
| 17 | `theorem` | [runRounds_cons](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/runrounds-cons.md) | 134 | `result-track:f3dc60da0214835810d51014593a52f735f56ebfdadc0d5c9396afe17bbe639c` |
| 18 | `theorem` | [runRounds_bijective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/runrounds-bijective.md) | 140 | `result-track:960829178aef1df0dcdf1458e0b8e11fd11b035d70d154355f7f6fa8a360d748` |
| 19 | `def` | [identityRound](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/identityround.md) | 147 | `declaration-track:98c7be7c0b024273b72640aef5c01370b4c87318cce7b987150991de0df5f88b` |
| 20 | `theorem` | [identityRound_run](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/identityround-run.md) | 154 | `result-track:c2e0bd31d7f6191e2d9595df3684251ba763ae9b2ab64da32e50b2cf794bbd3f` |
| 21 | `theorem` | [identityRound_sacScore](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/identityround-sacscore.md) | 158 | `result-track:01155a35ba7a033fd984cb3415723988b738c62349caea9fc6849941968d9cbc` |
| 22 | `theorem` | [identityRound_varianceScore](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/identityround-variancescore.md) | 166 | `result-track:0978032fb4e366bd5a1147a7ea00ce0e15b3e938668a0b68ade1f97ebe16630f` |
| 23 | `theorem` | [exists_bijective_round_with_zero_avalanche](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/exists-bijective-round-with-zero-avalanche.md) | 178 | `result-track:3ffe1167ac5c06dd004c78e71401f634fcd66dc7b6e1bc92e4277faa8ee3eefc` |
| 24 | `def` | [coordinatePermutation](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/coordinatepermutation.md) | 192 | `declaration-track:52eddcad3bbdbdca557d31e921877f6115fe9e812b060414ee6682a91329fc89` |
| 25 | `theorem` | [coordinatePermutation_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/coordinatepermutation-apply.md) | 204 | `result-track:4bcac1eff5f25415d7479e1e90ac26d3fcd27eadc776ad76950578b4f8d17c2b` |
| 26 | `theorem` | [coordinatePermutation_xor](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/coordinatepermutation-xor.md) | 210 | `result-track:f4f3f99a6fb2fa4e0c59077281ffd1149da5c324f140737202b0694a5f59e213` |
| 27 | `theorem` | [hammingWeight_coordinatePermutation](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/hammingweight-coordinatepermutation.md) | 217 | `result-track:0e63f282b44af2bd52b8ce4918e0d4b595694b662578b51ccb4b7a4bf5471cc1` |
| 28 | `theorem` | [coordinatePermutation_derivative](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/coordinatepermutation-derivative.md) | 227 | `result-track:7f207f0c2a5bc44cf0f6161bda8b85d1b8020b19645ae228fc4f903acb8231d5` |
| 29 | `theorem` | [coordinatePermutation_basisBit](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/coordinatepermutation-basisbit.md) | 234 | `result-track:f71089f948631a08ed0032b6fdb594c9edac32afbdfb31b39c68f7ffbd5f5ec3` |
| 30 | `theorem` | [coordinatePermutation_bitDerivative](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/coordinatepermutation-bitderivative.md) | 243 | `result-track:26c0866392f7c0d08da799845ee5c95c3c4f6a96736e4167a161418bdeadfbca` |
| 31 | `theorem` | [coordinatePermutation_sacCount](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/coordinatepermutation-saccount.md) | 250 | `result-track:e7082a67865568675de0411f5fd18bd01bbc6e0c371e7a949f2b0867c6039500` |
| 32 | `theorem` | [coordinatePermutation_sacEntry](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/coordinatepermutation-sacentry.md) | 262 | `result-track:66151c8c61821e0056d8c9fa77cfa44a2daf66dc3f73625cfdba77f49b851288` |
| 33 | `theorem` | [coordinatePermutation_sacScore](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/coordinatepermutation-sacscore.md) | 272 | `result-track:19aed63b3e3fc7c2ce23459b7b83533a36a1d063731a69ebb0501bd610da5cae` |
| 34 | `theorem` | [coordinatePermutation_varianceScore](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/coordinatepermutation-variancescore.md) | 287 | `result-track:f197979521af5139bb6a7bb7ed26a7d399e87f70ad4b6bdb2827408723f8e719` |
| 35 | `structure` | [XorLinearEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/xorlinearequiv.md) | 296 | `declaration-track:4d75e2bb9c51d2c4f1003b763dd79c99a53e13cf0c7855dd90e17c4de848f02e` |
| 36 | `def` | [XorLinearEquiv.ofCoordinatePermutation](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/xorlinearequiv-ofcoordinatepermutation.md) | 301 | `declaration-track:13c0349ff2ce108e0379ff7f0b79db4c9d261e4baf7aa9a9a3a59e61afeb66d9` |
| 37 | `theorem` | [XorLinearEquiv.map_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/xorlinearequiv-map-zero.md) | 308 | `result-track:946e2dc3a81287e094bff07e4f5d72fad83017abeb67319fa011e60e276a7784` |
| 38 | `def` | [activities](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/activities.md) | 313 | `declaration-track:2b0e96dcfab8c39cae2745021a651d39a7199d1f13713ba021b4184237c76133` |
| 39 | `theorem` | [activities_nonempty](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/activities-nonempty.md) | 317 | `result-track:e5b4d47b3d2c0f80584010775a51081673cb1e5663b0e2ff6f88e81df48ac010` |
| 40 | `def` | [branchNumber](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/branchnumber.md) | 330 | `declaration-track:e5afa2f00c10844d2ef6b6c2548844fc96c2ecb687c51525c33a500825318bbd` |
| 41 | `theorem` | [branchNumber_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/branchnumber-zero.md) | 338 | `result-track:721cf475e86772822f0c888cd684a85cc5a257ee440109be188c78ad6a12c672` |
| 42 | `theorem` | [branchNumber_le_activity](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/branchnumber-le-activity.md) | 342 | `result-track:09271da675552b3ddedad8852b09671e1b233b8b5b43cee3c89caa6083975890` |
| 43 | `theorem` | [hammingWeight_basisBit](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/hammingweight-basisbit.md) | 350 | `result-track:d4962f8ef37fef4b1725d6760cc43d8105272d41125029453d7ef08fe33f7a04` |
| 44 | `theorem` | [two_le_branchNumber](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/two-le-branchnumber.md) | 359 | `result-track:2be2c5133c7e7dbd030ce014196d9e8e75662cf8a5b36c8d9ffef381aacc948a` |
| 45 | `theorem` | [branchNumber_coordinatePermutation](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/branchnumber-coordinatepermutation.md) | 383 | `result-track:ac4d7579238a6161ebd84807bb2f024ae324eb2ebdad0555eb6005bda2c178cb` |
| 46 | `def` | [addCorrection](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/addcorrection.md) | 405 | `declaration-track:5bf15c7be5a5fb428f7aec78eb4e99881aebb9f55aa5b84118dc1c6f9f1b6fa8` |
| 47 | `theorem` | [identity_add_identity_correction](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/identity-add-identity-correction.md) | 409 | `result-track:20f369121f5a46c698f555121f9eb389c69dd86972929c87792a94b9039f27ed` |
| 48 | `theorem` | [identity_add_identity_not_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/identity-add-identity-not-injective.md) | 418 | `result-track:149d30b017cf733f1db9858a86abba9fc25278e25d73aebec79b891d4ce2acc1` |
| 49 | `theorem` | [state_dependent_correction_can_destroy_bijectivity](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/state-dependent-correction-can-destroy-bijectivity.md) | 431 | `result-track:59495a918eb1aac7e276532f4b46bfb02ca4c14a2609994183da08c9b374c3bf` |
| 50 | `theorem` | [constant_translation_preserves_bijectivity](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/constant-translation-preserves-bijectivity.md) | 440 | `result-track:ba4b879dde807a5b178d30a947dcbf3f9c450139187f0c7b280eeea2e51e2019` |
| 51 | `structure` | [TwoStepComplex](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/twostepcomplex.md) | 449 | `declaration-track:f370481398396e06c6829882124483a01f6d0271e5ea3fd2d049c43230680305` |
| 52 | `def` | [TwoStepComplex.Closed₁](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/twostepcomplex-closed.md) | 456 | `declaration-track:88261255d3d460fe77a21406521523ce958ee74807c3fff64f06129043ae7041` |
| 53 | `def` | [TwoStepComplex.Exact₁](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/twostepcomplex-exact.md) | 460 | `declaration-track:56b0db3cc7085515c6cf6abfaa109e697a9bde6c41d87961774cf19492cf30e4` |
| 54 | `def` | [TwoStepComplex.H1Trivial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/twostepcomplex-h1trivial.md) | 464 | `declaration-track:746102f7c6e1fe0e48dd8bdc01c9f0ef5332564d381c2cf73a31837b71c3efae` |
| 55 | `def` | [identityZeroComplex](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/identityzerocomplex.md) | 468 | `declaration-track:b0c38214efd702308f6d94bc15f3765ef1e5316f0523be78b92910abc96f1b8b` |
| 56 | `theorem` | [identityZeroComplex_h1Trivial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/identityzerocomplex-h1trivial.md) | 477 | `result-track:4d973a9f03383f618ae17e0b247762a14042a84e13051be34c97726f611d0d4c` |
| 57 | `abbrev` | [EndMap](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/endmap.md) | 483 | `declaration-track:78b7cd50b9008afb28236c2c2d2eac8141cc757afc2e155d965f66ec08be2c32` |
| 58 | `def` | [zeroEndMap](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/zeroendmap.md) | 486 | `declaration-track:cd76e06f94c595170d4f9b1155c8282536eaad3f3785566bcb618a277d4f02e8` |
| 59 | `def` | [endMapComplex](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/endmapcomplex.md) | 490 | `declaration-track:edc89a4fdfddbb42f0180c7cdd2d1e6e78a3f32c2c76bb22c9fd668b660f896a` |
| 60 | `theorem` | [identityCorrection_closed](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/identitycorrection-closed.md) | 493 | `result-track:e6919a929c5b1af8280679f3590175110cf81389fe3b5efd71b42b53ff8b37a6` |
| 61 | `theorem` | [identityCorrection_exact](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/identitycorrection-exact.md) | 497 | `result-track:4da8f38eeb40801d55e046860621e1d89aa9bcadf53a9aa026308cacd05358e8` |
| 62 | `theorem` | [trivial_H1_does_not_preserve_bijectivity](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/trivial-h1-does-not-preserve-bijectivity.md) | 505 | `result-track:44fdb607b0a80a79d5d6c40e55f5d300a2efea86bfd99705cc9cde6fdfa132de` |
| 63 | `theorem` | [not_injective_of_square_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/not-injective-of-square-zero.md) | 523 | `result-track:3b8693fe02727d5e4679153d4f3a5942316a6cd99c9d73da8d0477189170198d` |
| 64 | `theorem` | [not_bijective_of_square_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/declarations/not-bijective-of-square-zero.md) | 540 | `result-track:668a33c19c333a25261a7453787a2425c36a8c6af7bdaeab75798207bd4768dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4ac2acc58d8f264bf4cc89d51c71a08e9c03f9a4658aca2f8177bc958035cdf6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Permutation/Variant509cbcf6f8727c8a14a8a2adbd9400541c3ed6a7872b07462e9438b99e8e3158.lean","GRWTSK/_verification/specifications/Algebra/Permutation/Variant509cbcf6f8727c8a14a8a2adbd9400541c3ed6a7872b07462e9438b99e8e3158.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
