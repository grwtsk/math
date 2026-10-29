# Verification target: Real Theta Class Variation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d740d1f1eef9515fee65bab4f201cff40db1876c",
  "lexical_observation_count": 66,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RealThetaClassVariation/Variant35bc762284f2b50981a8d8fd2d7b7319939b8e000e695632321e114d679d7bed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d740d1f1eef9515fee65bab4f201cff40db1876c`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RealThetaClassVariation/Variant35bc762284f2b50981a8d8fd2d7b7319939b8e000e695632321e114d679d7bed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/RealThetaClassVariation/Variant35bc762284f2b50981a8d8fd2d7b7319939b8e000e695632321e114d679d7bed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.RatioClassVariation` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.MeanValue` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Inv` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Pow` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Sqrt` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Intervals` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 10; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.CorrelationThirdDerivative` — import line 11; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.SamplingSecondDerivative` — import line 12; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.ThetaKernelEstimate` — import line 13; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.CorrelationPrimitiveMoments` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [realThetaKernel](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/realthetakernel.md) | 35 | `declaration-track:44875dff5a2779a0761c9caabedc52b50e98dee8e634e38c78045a03acc24ee3` |
| 2 | `def` | [differenceSamplingKernel](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/differencesamplingkernel.md) | 38 | `declaration-track:9327c0f5244c871bdcec4a117fb6d410442d68d5aa2869064912620abc3d063b` |
| 3 | `def` | [realThetaDifferenceKernel](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/realthetadifferencekernel.md) | 42 | `declaration-track:93fe6cf72a9304de3de49b27e4a152646982b3531991cd8fcde226aafd2364d2` |
| 4 | `def` | [realThetaRemainder](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/realthetaremainder.md) | 45 | `declaration-track:6dec002739d70c45487cafefdbbd00ca02b1b04ac482265ac97f96c10b4fe5a2` |
| 5 | `theorem` | [samplingIndices_eq_fixed_filter](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/samplingindices-eq-fixed-filter.md) | 48 | `result-track:8cd86a6014564c53826fb02f788d59e213cb1e14d20968184a85e9223a7648be` |
| 6 | `theorem` | [realThetaKernel_eq_strict_sum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/realthetakernel-eq-strict-sum.md) | 64 | `result-track:1fc37ad73976bddb9648d6625484a259d9e567baaac8620a91bd008fba146b19` |
| 7 | `theorem` | [realThetaKernel_eq_nat](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/realthetakernel-eq-nat.md) | 79 | `result-track:6627fde53903098261f7092a0d19b9190deb1669d2840e167df0ed35bd423af6` |
| 8 | `theorem` | [realThetaRemainder_eq_nat](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/realthetaremainder-eq-nat.md) | 84 | `result-track:2d99cf75f3cfbc1992fbed016546815040e5ec5e08cb5584e23d547393dda81c` |
| 9 | `theorem` | [differenceSamplingKernel_eq_mul_deriv](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/differencesamplingkernel-eq-mul-deriv.md) | 89 | `result-track:759f1340acc1a135c8309215f5ed5606e72cf30be6cbc1b70ae80cac058cc435` |
| 10 | `theorem` | [realThetaKernel_hasDerivAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/realthetakernel-hasderivat.md) | 95 | `result-track:ea9cecc9382732cbbaad5f78340d4d0d7619de4b6406cdb423554a62a40ebd2d` |
| 11 | `theorem` | [realThetaKernel_deriv](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/realthetakernel-deriv.md) | 111 | `result-track:4cd80518973118b40808417f808d9f2716a9a4554d3282e6d5da647a4d4a7269` |
| 12 | `theorem` | [realThetaRemainder_hasDerivAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/realthetaremainder-hasderivat.md) | 115 | `result-track:7b0538f8c1ffdf23898e280fd052c39e327548d4b27c6d29943af4ea8a485bf9` |
| 13 | `theorem` | [realThetaRemainder_differentiableOn](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/realthetaremainder-differentiableon.md) | 125 | `result-track:f49bb3848543e2573a3a8b3b928d4ce871055425ff36f6f9c5dab80c2bcc7ed8` |
| 14 | `theorem` | [difference_primitive_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/difference-primitive-eq.md) | 130 | `result-track:960ba979c1d0b572af5ce62aad6300224026e7365a1a5653f7df0e3c312d0dfa` |
| 15 | `def` | [differencePrimitiveSamplingKernel](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/differenceprimitivesamplingkernel.md) | 148 | `declaration-track:bb6969f58e2685345a23ef05a60fd498b847cf931c4bf151591698f44a194c96` |
| 16 | `theorem` | [differencePrimitiveSamplingKernel_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/differenceprimitivesamplingkernel-eq.md) | 153 | `result-track:2ad7f42f06f1739a4da154722d6f22cb050f45edc8a1869b864735b3dc115c86` |
| 17 | `theorem` | [differencePrimitiveSamplingKernel_add_rankOne_abs_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/differenceprimitivesamplingkernel-add-rankone-abs-le.md) | 160 | `result-track:711ee79b1ee12be8e1f8945f8f652927a381ebe366fbe3f5c3a6c1054921b3be` |
| 18 | `theorem` | [differencePrimitiveSamplingKernel_eq_fixed_sum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/differenceprimitivesamplingkernel-eq-fixed-sum.md) | 183 | `result-track:5f9cd04263a8b7dcab7c441caffafdae1d2ef7f72aa9924b2209f2107fa21936` |
| 19 | `theorem` | [difference_tail_eq_primitive](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/difference-tail-eq-primitive.md) | 203 | `result-track:208e6ac4dce0a3b116b6df73954aa22ad1ba32a6ba60a05ea38d729f814a66fd` |
| 20 | `theorem` | [rootWeight_difference_integral](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/rootweight-difference-integral.md) | 241 | `result-track:75cbffb1fd3a5b44113a369f82d3a0cffd2533357bd4fe4d83758d544769c631` |
| 21 | `def` | [differenceInnerTerm](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/differenceinnerterm.md) | 251 | `declaration-track:62627af6c4f25c60eca1702eb49df742218703533064793b81e15ba12d0bff91` |
| 22 | `theorem` | [differenceInnerTerm_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/differenceinnerterm-eq.md) | 255 | `result-track:794a9dde533882f62c114f1cec68740469b7be171c367d530f917496ee6fa60f` |
| 23 | `theorem` | [differenceInnerTerm_integrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/differenceinnerterm-integrable.md) | 264 | `result-track:e3af660edff91622ef7476b596c65de41187b371ef3f32e99263d41318c56636` |
| 24 | `theorem` | [differenceInnerTerm_integral](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/differenceinnerterm-integral.md) | 277 | `result-track:1229db9b4b0768532dc7dafc0f54789e0ee0edf3b443095eebacbe6e4220fb8e` |
| 25 | `theorem` | [differenceKernel_eq_inner_sum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/differencekernel-eq-inner-sum.md) | 294 | `result-track:0d7da12d8cb5cc34122289ac81b1477387ffaab7e9c5970cf0b82d1389e8b1c6` |
| 26 | `theorem` | [differenceKernel_rescaled_integrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/differencekernel-rescaled-integrable.md) | 306 | `result-track:5c76a5c59081fe0835ca84215fbc1193f69d50758fec367d930f1c03effaff4b` |
| 27 | `theorem` | [differenceKernel_integral_eq_primitive](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/differencekernel-integral-eq-primitive.md) | 316 | `result-track:41d6f065d8c10fbcc9a721c217fa7ff73034bf77e9981726156c816ca9434063` |
| 28 | `theorem` | [differenceKernel_integral_add_rankOne_abs_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/differencekernel-integral-add-rankone-abs-le.md) | 335 | `result-track:d7b3e99bb1572bb67f47a0310538a802b9c82b2283e4a9e4f8d78f407a42cfe2` |
| 29 | `def` | [iteratedDifference](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/iterateddifference.md) | 347 | `declaration-track:bddddec2feff70c52396c43e94d3230ee27b2db2c4e107036a5836d739234e2b` |
| 30 | `theorem` | [iteratedDifference_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/iterateddifference-eq.md) | 350 | `result-track:b383c652c82156b46a50da7ecd9d6b9e2604878b7b37d15681c383eeb2bdb762` |
| 31 | `theorem` | [iteratedDifference_contDiff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/iterateddifference-contdiff.md) | 358 | `result-track:482efa21a16e0553a0234187166e28bad7cbc0b2a1c70642e9ff8da4185ef091` |
| 32 | `theorem` | [iteratedDifference_hasCompactSupport](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/iterateddifference-hascompactsupport.md) | 370 | `result-track:79ac51b9bded414de34bb00a755b7e96be530eac9ead5df8e4ede49cb4735f3c` |
| 33 | `theorem` | [iteratedDifference_abs_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/iterateddifference-abs-le.md) | 379 | `result-track:4f79ff3fda690cbf4df15a0e209e0978d5bd1fa0a0112da71ea5c68f5e549ca5` |
| 34 | `theorem` | [iteratedDifference_derivative_abs_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/iterateddifference-derivative-abs-le.md) | 395 | `result-track:bbde84a1f81011cf9e80f7b956ad13072192bbb329282b9360c27faf9a01db9d` |
| 35 | `theorem` | [compact_derivative_two_moments_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/compact-derivative-two-moments-zero.md) | 429 | `result-track:e658b897d202bd99c9a5ab3753af9cc53d2d5afbaebb6475b20f3896d33a399b` |
| 36 | `theorem` | [iteratedDifference_two_moments_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/iterateddifference-two-moments-zero.md) | 464 | `result-track:ef0404589791e21bc2c0cb7d3edac36ebd33a695afc2bd1a5de131929d29723c` |
| 37 | `theorem` | [iteratedDifference_zero_right](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/iterateddifference-zero-right.md) | 489 | `result-track:fe2c7d3745d8c1f606350ce00b745f737111abf500a14c65bd866d60ff7b0136` |
| 38 | `theorem` | [differenceSamplingKernel_hasDerivAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/differencesamplingkernel-hasderivat.md) | 500 | `result-track:dd092d48aff96e4839b5f7b1cf36d728bae94acfc4b5469fb7fdac2f38a686c6` |
| 39 | `theorem` | [iteratedDifference_sampling_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/iterateddifference-sampling-zero.md) | 520 | `result-track:fbad044e5cdf08e30dda46667818434cb68925af9c1a9394f115c5676f7d8ff7` |
| 40 | `theorem` | [iteratedDifference_sampling_sum_abs_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/iterateddifference-sampling-sum-abs-le.md) | 528 | `result-track:6cd563119578629a340a993e6ef1dec21883aad4d497add5f33dce7ec2874ca5` |
| 41 | `theorem` | [differenceSamplingKernel_derivative_abs_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/differencesamplingkernel-derivative-abs-le.md) | 572 | `result-track:9f533ca9b3e0e7a921e0f35e7751025c7cbb8a67d1c4d22530fb5539b446faab` |
| 42 | `theorem` | [inverse_root_majorant_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/inverse-root-majorant-eq.md) | 586 | `result-track:bf8131910339379300615d36f81de6b863075ae4d46dd4fb3cff3103ffbc47af` |
| 43 | `theorem` | [inverse_root_majorant_integrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/inverse-root-majorant-integrable.md) | 595 | `result-track:54ecbc8ab01b4498a7b05dfdb6a921e251fd047e45802360e74373006f57e5fd` |
| 44 | `theorem` | [inverse_root_majorant_integral](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/inverse-root-majorant-integral.md) | 604 | `result-track:4caf130d17997a2095f0c7b408c5f338216ab11643e25a4938d4d58c7b21d4d6` |
| 45 | `theorem` | [scaledDifference_hasDerivAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/scaleddifference-hasderivat.md) | 616 | `result-track:4c2d3f020b82f4076ea69a86005cda1f72d9231fc47f8ebf47199022f8d1321b` |
| 46 | `theorem` | [scaledDifference_derivative_integrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/scaleddifference-derivative-integrable.md) | 623 | `result-track:2408681fbb69898af52ce9d7c0475992630ea6264ec06745213580074d9238a9` |
| 47 | `theorem` | [scaledDifference_variation_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/scaleddifference-variation-le.md) | 635 | `result-track:9a539a78db1d4a1426ac388f9c02ebc923493a900b415ce630ad4365052595bd` |
| 48 | `theorem` | [differenceSamplingKernel_zero_of_exp_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/differencesamplingkernel-zero-of-exp-le.md) | 653 | `result-track:2141702b475433c2bf237e82b5efcd780e07692024e46ac0ed56d99b3ae39155` |
| 49 | `theorem` | [realThetaDifferenceKernel_eq_padded_sum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/realthetadifferencekernel-eq-padded-sum.md) | 663 | `result-track:b0051d102071b701c58d8c73d185c76b3bdcd2e326dcc07609e7c58f518fdd76` |
| 50 | `theorem` | [realThetaDifferenceKernel_sub_integral_abs_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/realthetadifferencekernel-sub-integral-abs-le.md) | 683 | `result-track:12a6b20f61a9a108da5683c0a20901908a35b3a5f08481192535cbea7a711eb7` |
| 51 | `theorem` | [realThetaDifferenceKernel_add_rankOne_abs_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/realthetadifferencekernel-add-rankone-abs-le.md) | 706 | `result-track:e5cee05adcc862cb6f156b7ae904073e789e6a4fe9384febf695bed4bf0264aa` |
| 52 | `theorem` | [realThetaRemainder_derivative_abs_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/realthetaremainder-derivative-abs-le.md) | 726 | `result-track:504352ed0905e47e08c19ebe4d1fd1d1507eef072e1918695ba7be4a5f381b7d` |
| 53 | `theorem` | [abs_sub_le_reciprocal](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/abs-sub-le-reciprocal.md) | 752 | `result-track:91e931874ab8e7455432137d2579b19025ae9ff007db920d19e6a0234f2eee1e` |
| 54 | `theorem` | [sqrt_reciprocal_step_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/sqrt-reciprocal-step-le.md) | 792 | `result-track:d79e198df1b9da3f3042c7506de445e745cb89657d434b11b4dbfaec2ff20c9c` |
| 55 | `theorem` | [sqrt_reciprocal_variation_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/sqrt-reciprocal-variation-le.md) | 820 | `result-track:830d5e58044b36f03f923fbc6e010e9a65380f2b44284e9c49902d80c9af9f1b` |
| 56 | `theorem` | [composed_abs_sub_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/composed-abs-sub-le.md) | 847 | `result-track:5e5b8d03fa28fb6ebb54d04b7120dfdf2b2e9143b4a172cb5179929c54bb0ad3` |
| 57 | `def` | [composedVariation](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/composedvariation.md) | 880 | `declaration-track:c8b0df9cc9f34114b9197995fbfc1360aecb948358a250e60fe8c00480a75972` |
| 58 | `theorem` | [composedVariation_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/composedvariation-zero.md) | 885 | `result-track:d27d52a151cb6189bb72b4ffe033df1dde3d8fe8531f159c5d962204e9a39989` |
| 59 | `theorem` | [composedVariation_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/composedvariation-le.md) | 888 | `result-track:26e097b4b6c8e6e803f9d860f45938f42d2b278d51776fdb7b4cff428a3129a0` |
| 60 | `theorem` | [composedVariation_nat_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/composedvariation-nat-le.md) | 952 | `result-track:6a08f30571120355588f85fa196f49fc07175bdc5e0ec264e3fa6e5a8bed9e90` |
| 61 | `theorem` | [rpow_three_halves](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/rpow-three-halves.md) | 964 | `result-track:baad65a22ddc7ee82c6a0e950076798c50623061ea50fb067d747999d90e609c` |
| 62 | `theorem` | [composedVariation_nat_le_rpow](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/composedvariation-nat-le-rpow.md) | 969 | `result-track:7932255cd3f7900f0235520816f0879951ec7157e05975278cb65672e057b3f9` |
| 63 | `theorem` | [composedVariation_endpoint_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/composedvariation-endpoint-le.md) | 986 | `result-track:d1871140bf2efeb593a74999174ace20be30e26d3945d03f97ebce2b23c08f74` |
| 64 | `theorem` | [source_composedVariation_abs_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/source-composedvariation-abs-le.md) | 1054 | `result-track:61431f7a8bc4cee990d968166218deed0435fc1f8986c7acb197455dcb090e1a` |
| 65 | `theorem` | [classVariation_abs_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/classvariation-abs-le.md) | 1101 | `result-track:3aa82d6be4385ec9f92a79c31bba1106200aff21cda998401a05bbfa99db5fb6` |
| 66 | `theorem` | [ratioClass_sub_mean_abs_le_explicit](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RealThetaClassVariation.lean/declarations/ratioclass-sub-mean-abs-le-explicit.md) | 1109 | `result-track:da490f45247921d75da898fc931a129075717a6cf39386c6272358ffacf3bbab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d20fab509c408f529db15826ddfaad67b49729ebd52c11913558fdd7e5856c19 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RealThetaClassVariation/Variant35bc762284f2b50981a8d8fd2d7b7319939b8e000e695632321e114d679d7bed.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/RealThetaClassVariation/Variant35bc762284f2b50981a8d8fd2d7b7319939b8e000e695632321e114d679d7bed.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
