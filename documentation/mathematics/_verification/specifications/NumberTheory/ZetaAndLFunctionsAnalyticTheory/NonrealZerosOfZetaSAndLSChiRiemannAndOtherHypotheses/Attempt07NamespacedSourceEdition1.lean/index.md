# Verification target: Attempt07 Namespaced Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7328e4e86e7e82df575c36d477d2cb573b4eeb96",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Attempt07/Variant749deb3a5cc8fa05325f4b3ba5c5977a0e8f32016dde5391d6559022d095d577.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt07NamespacedSourceEdition1.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt07NamespacedSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7328e4e86e7e82df575c36d477d2cb573b4eeb96`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Attempt07/Variant749deb3a5cc8fa05325f4b3ba5c5977a0e8f32016dde5391d6559022d095d577.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Attempt07/Variant749deb3a5cc8fa05325f4b3ba5c5977a0e8f32016dde5391d6559022d095d577.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualXiLaplaceMellin` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RemovableSingularity` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.ZetaAsymp` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualZetaPoleCleared](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt07NamespacedSourceEdition1.lean/declarations/actualzetapolecleared.md) | 29 | `declaration-track:8e90523c52232e25287b4d14f8ba68bbf1c4bc834fdc2e1f6ab5b0313d010425` |
| 2 | `def` | [actualContinuousSevenPoleNumerator](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt07NamespacedSourceEdition1.lean/declarations/actualcontinuoussevenpolenumerator.md) | 33 | `declaration-track:b30288ae470e6974a986147d230717ef725bffdd20b3241d7caecbe5fac396e1` |
| 3 | `def` | [actualContinuousSevenPoleRegularization](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt07NamespacedSourceEdition1.lean/declarations/actualcontinuoussevenpoleregularization.md) | 36 | `declaration-track:b3c1846c3e1d67d91e903e5ce3e1aa979d3836a58a74654ee9bd4e1c37d9fe5d` |
| 4 | `def` | [actualXiSevenReturn](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt07NamespacedSourceEdition1.lean/declarations/actualxisevenreturn.md) | 40 | `declaration-track:f759ece485cc7d293760a84a1c9fa8ae4f94f4a83451375aa6493b73672e7c56` |
| 5 | `def` | [actualXiSevenReturnRegularization](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt07NamespacedSourceEdition1.lean/declarations/actualxisevenreturnregularization.md) | 46 | `declaration-track:a8c6cb0b006aa0231481ea7aa35183ee8b6cb72e1b8d219de802e5a482bfc13d` |
| 6 | `theorem` | [actualZetaPoleCleared_at_one](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt07NamespacedSourceEdition1.lean/declarations/actualzetapolecleared-at-one.md) | 53 | `result-track:9827386c7b98a7b5c60bec91e98657123e3e375fe36505dbd00fb9976619fe3d` |
| 7 | `theorem` | [actualZetaPoleCleared_eq](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt07NamespacedSourceEdition1.lean/declarations/actualzetapolecleared-eq.md) | 57 | `result-track:38c9da609273d6f398a59978e67a566af2d8d0ac96049753f1232d6b74dbd8d9` |
| 8 | `theorem` | [actualZetaPoleCleared_analyticAt_one](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt07NamespacedSourceEdition1.lean/declarations/actualzetapolecleared-analyticat-one.md) | 70 | `result-track:ef014c1310f3403b942c3567074c586e048811cdde4520ee447d84c473dfcc7b` |
| 9 | `theorem` | [numerator_differentiable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt07NamespacedSourceEdition1.lean/declarations/numerator-differentiable.md) | 78 | `result-track:dda0fa735f352c30ba1c7c55d28f091db71bbea874c52a735cd0963872d8c4bb` |
| 10 | `theorem` | [actualContinuousSevenPoleNumerator_at_one](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt07NamespacedSourceEdition1.lean/declarations/actualcontinuoussevenpolenumerator-at-one.md) | 84 | `result-track:c9cd6b6da141e91ad3ccdda07f47c32f3eb8c1de9f2e35f30e0f5f44a6349a21` |
| 11 | `theorem` | [actualContinuousSevenPoleRegularization_analyticAt_one](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt07NamespacedSourceEdition1.lean/declarations/actualcontinuoussevenpoleregularization-analyticat-one.md) | 88 | `result-track:7eb320597571b939292eb0dd1783781f310734acb7a25106e433a0b59e2945cc` |
| 12 | `theorem` | [seven_power_hasDerivAt](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt07NamespacedSourceEdition1.lean/declarations/seven-power-hasderivat.md) | 94 | `result-track:809b9ccb53940cf7bce8ce454c3ea18b11ef11959afb91624cf2fabeb55e52ef` |
| 13 | `theorem` | [actualContinuousSevenPoleRegularization_at_one](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt07NamespacedSourceEdition1.lean/declarations/actualcontinuoussevenpoleregularization-at-one.md) | 102 | `result-track:cd7b1c64161d0e9dbfeacc1416919af3768d32de341dcfa869357e3beb497221` |
| 14 | `theorem` | [poleCleared_deriv](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt07NamespacedSourceEdition1.lean/declarations/polecleared-deriv.md) | 112 | `result-track:e5ca6aea6d2622544901e6aae91153ceaa1e0bc6d758ab8d5104259f0351e765` |
| 15 | `theorem` | [actualZeta_logDerivative_pole_identity](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt07NamespacedSourceEdition1.lean/declarations/actualzeta-logderivative-pole-identity.md) | 123 | `result-track:7135deddb5637b80a45fd80344c3c5495d396c67b686df352cde91f57b61a2e1` |
| 16 | `theorem` | [closedHead_analyticAt](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt07NamespacedSourceEdition1.lean/declarations/closedhead-analyticat.md) | 131 | `result-track:c74580e4aa7ff4eddce2916d405b096cae6fea2e20a9eb3bcff83f70489f4fa3` |
| 17 | `theorem` | [actualXiSevenReturnRegularization_analyticAt_one](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt07NamespacedSourceEdition1.lean/declarations/actualxisevenreturnregularization-analyticat-one.md) | 143 | `result-track:e95d61b72a4e89f660e47583e65bad89690f04fb7e4c34c12c58ebc5c51ac2d3` |
| 18 | `theorem` | [actualXiSevenReturn_eq_regularization](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt07NamespacedSourceEdition1.lean/declarations/actualxisevenreturn-eq-regularization.md) | 154 | `result-track:49cbc2746ff1104023ffec440d1fdc3bddaaaa4ffe95e380dc95eba4a04b6ba6` |
| 19 | `theorem` | [actualZetaPoleCleared_deriv_one](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt07NamespacedSourceEdition1.lean/declarations/actualzetapolecleared-deriv-one.md) | 166 | `result-track:6583789110b36e3091056aecaeb1257f8a2411dbd303fa609bb5271ebf12a6df` |
| 20 | `def` | [actualXiSevenPoleValue](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt07NamespacedSourceEdition1.lean/declarations/actualxisevenpolevalue.md) | 178 | `declaration-track:8500fec3ee06e8d6494d15ddd7bc942e981be027660ac417d9b6c32897ad0c3c` |
| 21 | `theorem` | [actualXiSevenReturnRegularization_at_one](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt07NamespacedSourceEdition1.lean/declarations/actualxisevenreturnregularization-at-one.md) | 184 | `result-track:902fc17367d72e2ee9be92695b508928a1f5a4be9afaec9080e9ed70c91831c1` |
| 22 | `theorem` | [actualXiSevenReturn_eventually_eq_regularization](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt07NamespacedSourceEdition1.lean/declarations/actualxisevenreturn-eventually-eq-regularization.md) | 191 | `result-track:9896a94b5968f0f209816458f8831b70290c10f8619dc0d603aec70baa1a5e06` |
| 23 | `theorem` | [actualXiSevenReturn_tendsto_pole_one](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt07NamespacedSourceEdition1.lean/declarations/actualxisevenreturn-tendsto-pole-one.md) | 204 | `result-track:3099710db18cfe119f6d21217983e57c5dab84066321fe84ba55d7deac35e2c9` |
| 24 | `theorem` | [actualXiSevenReturn_eventual_norm_bound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt07NamespacedSourceEdition1.lean/declarations/actualxisevenreturn-eventual-norm-bound.md) | 212 | `result-track:fe23bfa27da1daeb4e66a6cf23da4e076d7e711b4b22762f16bfa0c5e4205bb8` |
| 25 | `def` | [actualXiLaplacePoleOneRegularization](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt07NamespacedSourceEdition1.lean/declarations/actualxilaplacepoleoneregularization.md) | 219 | `declaration-track:4d030880b82160517862a675febff809d991afd5ecf1b53adb236dc27adc9a39` |
| 26 | `theorem` | [actualXiLaplacePoleOneRegularization_analyticAt_half](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt07NamespacedSourceEdition1.lean/declarations/actualxilaplacepoleoneregularization-analyticat-half.md) | 223 | `result-track:92024f628fa10708f22bc505a8cdc84ea35c14f79341f695c4aacbc8a7d4b679` |
| 27 | `theorem` | [actualXiLaplacePoleOneRegularization_at_half](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt07NamespacedSourceEdition1.lean/declarations/actualxilaplacepoleoneregularization-at-half.md) | 232 | `result-track:99229c8c929ae579ec6916771abc72ff8eced19a299717d3c1b5e4d763754bef` |
| 28 | `theorem` | [actualXiComplexLaplace_eq_poleOneRegularization](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt07NamespacedSourceEdition1.lean/declarations/actualxicomplexlaplace-eq-poleoneregularization.md) | 240 | `result-track:111eb2014f234e42dfc1312863ff6f3cf67843cffd0d0b8c4f176a17936ce5a3` |
| 29 | `theorem` | [actualXiComplexLaplace_tendsto_initial_boundary](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt07NamespacedSourceEdition1.lean/declarations/actualxicomplexlaplace-tendsto-initial-boundary.md) | 255 | `result-track:ce348ec3fc0620c4610c602e925ca4111bf0375b74ac9aa445a1bbf9fcb1556b` |
| 30 | `theorem` | [actualXiComplexLaplace_eventual_initial_norm_bound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt07NamespacedSourceEdition1.lean/declarations/actualxicomplexlaplace-eventual-initial-norm-bound.md) | 265 | `result-track:4ecd5aaa62552522edc11d66acb825aee934df7bd90694a6f134ae6e2317e862` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=40d86d1672649f0127e26e0473a22d585ad751256a67d8b2b28e1e63650f299c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ComplexAnalysis/Attempt07/Variant749deb3a5cc8fa05325f4b3ba5c5977a0e8f32016dde5391d6559022d095d577.lean","GRWTSK/_verification/specifications/Analysis/ComplexAnalysis/Attempt07/Variant749deb3a5cc8fa05325f4b3ba5c5977a0e8f32016dde5391d6559022d095d577.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
