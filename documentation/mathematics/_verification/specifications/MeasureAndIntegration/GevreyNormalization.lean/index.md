# Verification target: Gevrey Normalization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e501350caf156b468233ad7ec8bed00798e7f437",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/GevreyNormalization/Variant7ee63634170775f5bc28c8835a0d65a81af080cfd4511be74ce63c4707994d82.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/GevreyNormalization.lean/index.md) · [Full source](../../../../MeasureAndIntegration/GevreyNormalization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e501350caf156b468233ad7ec8bed00798e7f437`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/GevreyNormalization/Variant7ee63634170775f5bc28c8835a0d65a81af080cfd4511be74ce63c4707994d82.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/GevreyNormalization/Variant7ee63634170775f5bc28c8835a0d65a81af080cfd4511be74ce63c4707994d82.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.GevreyProfile` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.Deriv` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Support` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.NormedSpace` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [scaledProfile](../../../../MeasureAndIntegration/GevreyNormalization.lean/declarations/scaledprofile.md) | 24 | `declaration-track:d159cf6406d6e2763df51d25553e6fee841a669fe87d9e8045940b2d076efc8a` |
| 2 | `def` | [dilationOperator](../../../../MeasureAndIntegration/GevreyNormalization.lean/declarations/dilationoperator.md) | 28 | `declaration-track:687a0bcd3d333d95b5ff4dd470b6d9a4e2a818fe8a923d3e4238178eba8d7de2` |
| 3 | `def` | [normalization](../../../../MeasureAndIntegration/GevreyNormalization.lean/declarations/normalization.md) | 32 | `declaration-track:920e1cb78a0f20175aff91e6c1e709fc522b40768b30923944b45d538b5a6a14` |
| 4 | `theorem` | [integrable_square](../../../../MeasureAndIntegration/GevreyNormalization.lean/declarations/integrable-square.md) | 35 | `result-track:b3104578164ae8a678a63c7eca5fdb60aa3d0fb01da9899ca7e5ca6905c3b6d4` |
| 5 | `theorem` | [continuous_second](../../../../MeasureAndIntegration/GevreyNormalization.lean/declarations/continuous-second.md) | 40 | `result-track:d74c124081aa7b3b9d43501e18301e2c89252fee327d35f1f8f0bce3e65140a8` |
| 6 | `theorem` | [integral_second_mul_profile](../../../../MeasureAndIntegration/GevreyNormalization.lean/declarations/integral-second-mul-profile.md) | 46 | `result-track:cdb94e8589bc30e2d2e55fca21efadc00837cf6ed7b12bd9c7d1e12b1bfcc1aa` |
| 7 | `theorem` | [deriv_scaledProfile](../../../../MeasureAndIntegration/GevreyNormalization.lean/declarations/deriv-scaledprofile.md) | 65 | `result-track:0ad5f70da386eae13758ce4ebdfa156ce425a59129f54a33c80e5db91539181a` |
| 8 | `theorem` | [second_scaledProfile](../../../../MeasureAndIntegration/GevreyNormalization.lean/declarations/second-scaledprofile.md) | 76 | `result-track:c06a33fbc84b77f1cf7dba97e64054c44395eedaf1ea3f08b74c171382c4e6a2` |
| 9 | `theorem` | [dilationOperator_eq](../../../../MeasureAndIntegration/GevreyNormalization.lean/declarations/dilationoperator-eq.md) | 93 | `result-track:db4a7a864187051a0866a2636335abfc4f66899ee35ddf189d87459cece1c369` |
| 10 | `theorem` | [scaledProfile_eq_rpow](../../../../MeasureAndIntegration/GevreyNormalization.lean/declarations/scaledprofile-eq-rpow.md) | 101 | `result-track:7976456dc527f3758e32786763bd56be4808448f39f317a010fb8fc2515b095d` |
| 11 | `theorem` | [deriv_scaledProfile_eq_rpow](../../../../MeasureAndIntegration/GevreyNormalization.lean/declarations/deriv-scaledprofile-eq-rpow.md) | 107 | `result-track:3db2c1e9cc99488a0a2feece5de8eeacaf426ad8377b4186c7a408daf112117e` |
| 12 | `theorem` | [second_scaledProfile_eq_rpow](../../../../MeasureAndIntegration/GevreyNormalization.lean/declarations/second-scaledprofile-eq-rpow.md) | 117 | `result-track:b1ee62651e7435ef855044da68cc3b44b524ff18bdceca7868f711ea6c9d4be4` |
| 13 | `theorem` | [dilationOperator_eq_rpow](../../../../MeasureAndIntegration/GevreyNormalization.lean/declarations/dilationoperator-eq-rpow.md) | 128 | `result-track:51359e2b7e0cf0d0da9510c079c089379671ec37c5f252c261440efe0fcfa8fa` |
| 14 | `theorem` | [profile_square_integrable](../../../../MeasureAndIntegration/GevreyNormalization.lean/declarations/profile-square-integrable.md) | 138 | `result-track:e424cac614594aa85d529d931e751d2c3c7116f2731a8a73dc19069d51d1f055` |
| 15 | `theorem` | [base_square_integrable](../../../../MeasureAndIntegration/GevreyNormalization.lean/declarations/base-square-integrable.md) | 147 | `result-track:f1becf4123a34c95cc1f4982ea7f98f2b25e163bcb8548a7a7241541b6df0cfd` |
| 16 | `theorem` | [dilationOperator_square_integrable](../../../../MeasureAndIntegration/GevreyNormalization.lean/declarations/dilationoperator-square-integrable.md) | 159 | `result-track:ed941b9f3327c99e9ce72b1c8aecc2158525a12b1365e414610001b342bca5dc` |
| 17 | `theorem` | [dilationOperator_integrable](../../../../MeasureAndIntegration/GevreyNormalization.lean/declarations/dilationoperator-integrable.md) | 171 | `result-track:f20eba4aaf0118a346d739b9c6d10f8184a8af88ef41d4f320c543ae177f54e6` |
| 18 | `theorem` | [normalization_expanded](../../../../MeasureAndIntegration/GevreyNormalization.lean/declarations/normalization-expanded.md) | 184 | `result-track:339d9b28062f670a16e5372d7ddb0f69f4bf1984cc4c6b87191d4ba02f48644f` |
| 19 | `theorem` | [normalization_eq](../../../../MeasureAndIntegration/GevreyNormalization.lean/declarations/normalization-eq.md) | 220 | `result-track:c7a382ab0d88e09cb51dd622476cdafd9371f13a934c7fb303c2e603f1e373d5` |
| 20 | `theorem` | [tendsto_normalization](../../../../MeasureAndIntegration/GevreyNormalization.lean/declarations/tendsto-normalization.md) | 230 | `result-track:14418b687752963980c0edea6c1a1dbe2c4308496f8093006aa9b92b7d7c8b8a` |
| 21 | `theorem` | [normalization_uniform_lower_bound](../../../../MeasureAndIntegration/GevreyNormalization.lean/declarations/normalization-uniform-lower-bound.md) | 252 | `result-track:74ab92fa24c8b98b3aa726553c5ecb77ca1b0168185c60e4909960827e2304ef` |
| 22 | `theorem` | [normalization_pos](../../../../MeasureAndIntegration/GevreyNormalization.lean/declarations/normalization-pos.md) | 263 | `result-track:41e9eb4fd86c396dfc99fab9f95cdd8ca665a66f2750634e9d197e0910cdacb2` |
| 23 | `theorem` | [normalization_uniform_positive_lower_bound](../../../../MeasureAndIntegration/GevreyNormalization.lean/declarations/normalization-uniform-positive-lower-bound.md) | 277 | `result-track:2d614f724326f5adc6d8fc6828b94ca6dbd3f3d8d5385eefcf966341420cee27` |
| 24 | `def` | [normalizedOperator](../../../../MeasureAndIntegration/GevreyNormalization.lean/declarations/normalizedoperator.md) | 290 | `declaration-track:f7869f9dcfa3930774b57af4623825584cd17d82d82f365c6501f4ea32875c6a` |
| 25 | `theorem` | [normalizedOperator_square_integral](../../../../MeasureAndIntegration/GevreyNormalization.lean/declarations/normalizedoperator-square-integral.md) | 294 | `result-track:782634cc2cff4a98243286c759f47846379acad3eb436fc28d0deb15b4563f50` |
| 26 | `theorem` | [normalizedOperator_integrable](../../../../MeasureAndIntegration/GevreyNormalization.lean/declarations/normalizedoperator-integrable.md) | 303 | `result-track:ef73c89940c49c4896d580dca4150a70ea5cba4736e5fc27a96d8f310cacdef6` |
| 27 | `theorem` | [profile_normalization](../../../../MeasureAndIntegration/GevreyNormalization.lean/declarations/profile-normalization.md) | 312 | `result-track:19593079386ee35a529fb66f8fab237517636e2b0efe8f05abe276a12152501c` |
| 28 | `theorem` | [profile_normalization_lower_bound](../../../../MeasureAndIntegration/GevreyNormalization.lean/declarations/profile-normalization-lower-bound.md) | 320 | `result-track:7304362d5927bafe863b6797f9732a415e8ffdf74dab2bede787c4a49e75ac60` |
| 29 | `theorem` | [profile_normalization_pos](../../../../MeasureAndIntegration/GevreyNormalization.lean/declarations/profile-normalization-pos.md) | 327 | `result-track:3fc85fdf3aa831a439a346129070b058568abe9daef287f894daaed92bc8345f` |
| 30 | `theorem` | [profile_normalization_uniform_positive_lower_bound](../../../../MeasureAndIntegration/GevreyNormalization.lean/declarations/profile-normalization-uniform-positive-lower-bound.md) | 333 | `result-track:c9a8fd9ca63e2346787867e0e5fd50d3a9b2cceef9e9ec2bcadd1622fe50fde3` |
| 31 | `theorem` | [profile_normalizedOperator_square_integral](../../../../MeasureAndIntegration/GevreyNormalization.lean/declarations/profile-normalizedoperator-square-integral.md) | 339 | `result-track:7cf492c8636c5e0b90c1398596640a55d9ff9fe6368d76550dc308d3c81c17ab` |
| 32 | `theorem` | [profile_normalization_expanded](../../../../MeasureAndIntegration/GevreyNormalization.lean/declarations/profile-normalization-expanded.md) | 345 | `result-track:019c511f6fe9d853f3e3f043194de856c49c3196449f6f6fb35053acd3a2707e` |
| 33 | `theorem` | [tendsto_profile_normalization](../../../../MeasureAndIntegration/GevreyNormalization.lean/declarations/tendsto-profile-normalization.md) | 355 | `result-track:3f6ad6d49ef2387f6286cc0373b43dfd806fe8cd7036f8c58758ebb5fe8e9851` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=954f5aaa9d91030e7fe37329a047961a4e97988ae3b6958f9c8b114f32d893bb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/GevreyNormalization/Variant7ee63634170775f5bc28c8835a0d65a81af080cfd4511be74ce63c4707994d82.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/GevreyNormalization/Variant7ee63634170775f5bc28c8835a0d65a81af080cfd4511be74ce63c4707994d82.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
