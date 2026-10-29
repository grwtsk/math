# Verification target: Source F7 Tail Calibration Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a6da4017a502feca88588ba66ecc9438e6dbb895",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceF7TailCalibration/Variant776687ccf7d6752094c431f3df2a041acb428a50f86580007d19d2515cc79ddc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceF7TailCalibrationNamespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceF7TailCalibrationNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a6da4017a502feca88588ba66ecc9438e6dbb895`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceF7TailCalibration/Variant776687ccf7d6752094c431f3df2a041acb428a50f86580007d19d2515cc79ddc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceF7TailCalibration/Variant776687ccf7d6752094c431f3df2a041acb428a50f86580007d19d2515cc79ddc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceCompleteXiTailConsumer` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [physicalCurvatureCoefficient](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceF7TailCalibrationNamespaced.lean/declarations/physicalcurvaturecoefficient.md) | 32 | `declaration-track:d7890b632e429b4d89bae49a89db4541a76f83678ee85dadfc41aa7df7645ecc` |
| 2 | `def` | [meanTailBudget](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceF7TailCalibrationNamespaced.lean/declarations/meantailbudget.md) | 35 | `declaration-track:c9a6d6381e3908adc41a3f5cc2cd4341a1ba0ef879349544666cbb6ecec87a61` |
| 3 | `def` | [meanAtomBudget](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceF7TailCalibrationNamespaced.lean/declarations/meanatombudget.md) | 39 | `declaration-track:9f349acfa92bc75d466a850586f460dc8edc4bc1bf2622e50b339ea3a54ade53` |
| 4 | `def` | [meanResidualBudget](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceF7TailCalibrationNamespaced.lean/declarations/meanresidualbudget.md) | 42 | `declaration-track:7f734666682a109c00c502d11a11cba34029b0e49e4f4abddc73b6c343bda34b` |
| 5 | `theorem` | [calibratedRadius_pos](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceF7TailCalibrationNamespaced.lean/declarations/calibratedradius-pos.md) | 45 | `result-track:ee9ffacc87582ecf41ede863d03d4bb5efc3e36ffa2cf1417a9aff39f5584d64` |
| 6 | `theorem` | [calibratedRadius_idempotent](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceF7TailCalibrationNamespaced.lean/declarations/calibratedradius-idempotent.md) | 49 | `result-track:2e78df093560a48ca16ab97d5bcb13cd18d922d6b8e1fdf6b47e6ea55756b0c4` |
| 7 | `theorem` | [meanTailBudget_nonneg](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceF7TailCalibrationNamespaced.lean/declarations/meantailbudget-nonneg.md) | 53 | `result-track:0a2c537da552f3015ec6b1380bd66d2b8cce9419fe31bfb37370acddde9720bc` |
| 8 | `theorem` | [meanAtomBudget_eq](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceF7TailCalibrationNamespaced.lean/declarations/meanatombudget-eq.md) | 59 | `result-track:883990c25aefcebfedd5d384dc893c92515ee9aace05d03da27bf998b0fad77e` |
| 9 | `theorem` | [meanAtomBudget_nonneg](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceF7TailCalibrationNamespaced.lean/declarations/meanatombudget-nonneg.md) | 65 | `result-track:1d51ab37ed4a91a6bf2aa05f2cc4101f5ea9b5273e5572c7b3035c7b3975c931` |
| 10 | `theorem` | [dynamic_mean_budget_le](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceF7TailCalibrationNamespaced.lean/declarations/dynamic-mean-budget-le.md) | 69 | `result-track:35e5df76db55511f99780058084d83ae28c27b61c067c988a27b7e13f48360bb` |
| 11 | `theorem` | [complete_tail_lower_at_calibrated_radius](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceF7TailCalibrationNamespaced.lean/declarations/complete-tail-lower-at-calibrated-radius.md) | 81 | `result-track:0d14c97e4b181b95e1ef2c2c1a62bdf84d4aebc7a841408857aa9252cef5b8bc` |
| 12 | `theorem` | [calibratedRadius_forty](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceF7TailCalibrationNamespaced.lean/declarations/calibratedradius-forty.md) | 90 | `result-track:d3ac8b7f0e4702bbbd1550f2c440274e0256179d5ce2384e795d0335cbc3b5d5` |
| 13 | `theorem` | [meanTailBudget_forty](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceF7TailCalibrationNamespaced.lean/declarations/meantailbudget-forty.md) | 93 | `result-track:10c79bc88df67f1a65b1a04b4d96027e588abf99bdea49593cd8c6c4a629c798` |
| 14 | `theorem` | [meanTailBudget_ninety_one](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceF7TailCalibrationNamespaced.lean/declarations/meantailbudget-ninety-one.md) | 98 | `result-track:b1d8e2b2d623b5d22960b9bf98226cea6c864a2b92cd2127f2d2bf49b1489445` |
| 15 | `theorem` | [remaining_lower_of_dynamic_mean](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceF7TailCalibrationNamespaced.lean/declarations/remaining-lower-of-dynamic-mean.md) | 103 | `result-track:004b49cfe6ea839c9402c49d4dbf2dbe4dd4456d213dfcdbec789c072bee3af9` |
| 16 | `theorem` | [atom_witness_of_dynamic_mean](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceF7TailCalibrationNamespaced.lean/declarations/atom-witness-of-dynamic-mean.md) | 115 | `result-track:9cd795440888e6aebf3058f096fb3515f352c4cafccf50c1c77593eeacce7455` |
| 17 | `theorem` | [all_real_lower_of_dynamic_mean](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceF7TailCalibrationNamespaced.lean/declarations/all-real-lower-of-dynamic-mean.md) | 127 | `result-track:c52116778562946b95e7e856dad71bd6a0e846e6aa115c1abc3078f5d4330347` |
| 18 | `theorem` | [estimate_of_dynamic_mean](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceF7TailCalibrationNamespaced.lean/declarations/estimate-of-dynamic-mean.md) | 138 | `result-track:30c1c258837d1b53586e1f8b82f0145e6192d41362318a4cf7ca23592b5fa285` |
| 19 | `theorem` | [residual_upper_of_dynamic_mean](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceF7TailCalibrationNamespaced.lean/declarations/residual-upper-of-dynamic-mean.md) | 144 | `result-track:3d789dd4f7897507513e269f5a19c5fbf88cec8291c8bfb8e79f72766e3cb6b0` |
| 20 | `theorem` | [actual_leading_upper_of_dynamic_mean](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceF7TailCalibrationNamespaced.lean/declarations/actual-leading-upper-of-dynamic-mean.md) | 155 | `result-track:766c5ed6299d3ab3921896f66e38e52722fcff1b66c914d1d89d38528d0876c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0cfbc291c13d38520a6e2614b8b876df11ba7786ffee7f8447cdb080797cfac9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceF7TailCalibration/Variant776687ccf7d6752094c431f3df2a041acb428a50f86580007d19d2515cc79ddc.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceF7TailCalibration/Variant776687ccf7d6752094c431f3df2a041acb428a50f86580007d19d2515cc79ddc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
