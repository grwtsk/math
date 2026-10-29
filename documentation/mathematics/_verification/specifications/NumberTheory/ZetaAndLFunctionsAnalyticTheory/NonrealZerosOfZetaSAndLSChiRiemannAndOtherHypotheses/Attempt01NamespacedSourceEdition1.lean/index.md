# Verification target: Attempt01 Namespaced Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c87fa27419f3168402ef5fd90f37a616c1cd2b9",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Attempt01/Variant2d889d8c5cdc7cbe8200cec676d3dac934ed79797ae03f56e82b979b753b3a22.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt01NamespacedSourceEdition1.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt01NamespacedSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c87fa27419f3168402ef5fd90f37a616c1cd2b9`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Attempt01/Variant2d889d8c5cdc7cbe8200cec676d3dac934ed79797ae03f56e82b979b753b3a22.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Attempt01/Variant2d889d8c5cdc7cbe8200cec676d3dac934ed79797ae03f56e82b979b753b3a22.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualXiLaplaceMellin` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RemovableSingularity` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualZetaPoleCleared](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt01NamespacedSourceEdition1.lean/declarations/actualzetapolecleared.md) | 28 | `declaration-track:f476c832a08508b6f770ec347041f67e54105bc0f0debb2a62c161cec20a39a3` |
| 2 | `def` | [actualContinuousSevenPoleNumerator](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt01NamespacedSourceEdition1.lean/declarations/actualcontinuoussevenpolenumerator.md) | 32 | `declaration-track:8bc7fe86f1997bc8765ea1786e036b9d2450ce30614d3e8aef40d40cdb6caaa7` |
| 3 | `def` | [actualContinuousSevenPoleRegularization](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt01NamespacedSourceEdition1.lean/declarations/actualcontinuoussevenpoleregularization.md) | 35 | `declaration-track:a09155890764b541fed05fd62cefe1094537223f33eeb3712322dc5a45f8061e` |
| 4 | `def` | [actualXiSevenReturn](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt01NamespacedSourceEdition1.lean/declarations/actualxisevenreturn.md) | 39 | `declaration-track:4f2aa4b81cc1cd8dc40a6f3257b579b88bef87c3fc3aa12e9d14b787d11f7031` |
| 5 | `def` | [actualXiSevenReturnRegularization](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt01NamespacedSourceEdition1.lean/declarations/actualxisevenreturnregularization.md) | 45 | `declaration-track:5803a587d1914b199130345037f874d9b71c7ef04e034d0195ac134b4b238533` |
| 6 | `theorem` | [actualZetaPoleCleared_at_one](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt01NamespacedSourceEdition1.lean/declarations/actualzetapolecleared-at-one.md) | 52 | `result-track:cf930c1fee72c47331b9cd9ad6ac07f5aeed10a5d62dfce33738d52675d95bfe` |
| 7 | `theorem` | [actualZetaPoleCleared_eq](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt01NamespacedSourceEdition1.lean/declarations/actualzetapolecleared-eq.md) | 56 | `result-track:2e2d9d029c685888808775321b7a9067f176884b0c4ba3b55c69a11049d0bb29` |
| 8 | `theorem` | [actualZetaPoleCleared_analyticAt_one](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt01NamespacedSourceEdition1.lean/declarations/actualzetapolecleared-analyticat-one.md) | 69 | `result-track:11e3edeb061328cf5df4b8a55cdc87c5022233e64d43211a94b224c2fcba0935` |
| 9 | `theorem` | [numerator_differentiable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt01NamespacedSourceEdition1.lean/declarations/numerator-differentiable.md) | 77 | `result-track:4ccacd2bcd7c52b6e41028440302242a7ac1987c93b8a804c5279be0f345af8c` |
| 10 | `theorem` | [actualContinuousSevenPoleNumerator_at_one](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt01NamespacedSourceEdition1.lean/declarations/actualcontinuoussevenpolenumerator-at-one.md) | 83 | `result-track:866ad603eb852684aa865c9b82cf0ed1d68bbdbbbca5919d8d0dc16fd630983e` |
| 11 | `theorem` | [actualContinuousSevenPoleRegularization_analyticAt_one](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt01NamespacedSourceEdition1.lean/declarations/actualcontinuoussevenpoleregularization-analyticat-one.md) | 87 | `result-track:601dd0b40bf23d5ba605be97fe085b4364cb4e9be487c0554c24a4e914a31745` |
| 12 | `theorem` | [seven_power_hasDerivAt](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt01NamespacedSourceEdition1.lean/declarations/seven-power-hasderivat.md) | 93 | `result-track:65fe3bb645b8708d2fd1b3725a5744231e8c61bf0c119a68464b265893042a80` |
| 13 | `theorem` | [actualContinuousSevenPoleRegularization_at_one](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt01NamespacedSourceEdition1.lean/declarations/actualcontinuoussevenpoleregularization-at-one.md) | 102 | `result-track:84ab941ba610ec4d7651b43ef88f10fcf40ea1688972e8d3a9e56688a48b31a5` |
| 14 | `theorem` | [poleCleared_deriv](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt01NamespacedSourceEdition1.lean/declarations/polecleared-deriv.md) | 113 | `result-track:21c9127a95f492d927693ccc26b007b71680fce32e1446f4bec878dde8685f03` |
| 15 | `theorem` | [actualZeta_logDerivative_pole_identity](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt01NamespacedSourceEdition1.lean/declarations/actualzeta-logderivative-pole-identity.md) | 124 | `result-track:539c7ea5afc40259c6cd8879211b0e5083a0d78f6fb8e1ba66e497efd346e740` |
| 16 | `theorem` | [closedHead_analyticAt](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt01NamespacedSourceEdition1.lean/declarations/closedhead-analyticat.md) | 132 | `result-track:d41e48a5cccfc8fa28bace7fe9b4c4500cad505e0d4a9e81e9b7cb2583e80bbf` |
| 17 | `theorem` | [actualXiSevenReturnRegularization_analyticAt_one](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt01NamespacedSourceEdition1.lean/declarations/actualxisevenreturnregularization-analyticat-one.md) | 143 | `result-track:866c340018cdb404fdca6f6867234933fd12fe0dc10af5072678d12078079dee` |
| 18 | `theorem` | [actualXiSevenReturn_eq_regularization](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt01NamespacedSourceEdition1.lean/declarations/actualxisevenreturn-eq-regularization.md) | 154 | `result-track:79f5d0d37901bd7e802b4026393a38405e21a8dd45a1a7635f5581deaf265e5d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cdf594c5ab012fa8591523d2e88feb4bdd799f1d00e0948e0680b4d56fd5e168 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ComplexAnalysis/Attempt01/Variant2d889d8c5cdc7cbe8200cec676d3dac934ed79797ae03f56e82b979b753b3a22.lean","GRWTSK/_verification/specifications/Analysis/ComplexAnalysis/Attempt01/Variant2d889d8c5cdc7cbe8200cec676d3dac934ed79797ae03f56e82b979b753b3a22.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
