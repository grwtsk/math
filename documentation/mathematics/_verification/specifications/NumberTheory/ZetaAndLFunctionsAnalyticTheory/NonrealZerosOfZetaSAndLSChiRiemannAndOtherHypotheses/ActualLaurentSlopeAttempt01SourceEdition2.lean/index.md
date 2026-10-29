# Verification target: Actual Laurent Slope Attempt01 Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0f47e7529649f9e8a9cedd39de2055bb9bc81ce7",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ActualLaurentSlopeAttempt01/Variantb2c20447e95ab2c8ea0fff67937323499fcde403d5220e1aa16b5940599882e8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ActualLaurentSlopeAttempt01SourceEdition2.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ActualLaurentSlopeAttempt01SourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0f47e7529649f9e8a9cedd39de2055bb9bc81ce7`.

Source path: `GRWTSK/NumberTheory/ActualLaurentSlopeAttempt01/Variantb2c20447e95ab2c8ea0fff67937323499fcde403d5220e1aa16b5940599882e8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ActualLaurentSlopeAttempt01/Variantb2c20447e95ab2c8ea0fff67937323499fcde403d5220e1aa16b5940599882e8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Harmonic.ZetaAsymp` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Slope` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [regularNegativeLogDerivative](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ActualLaurentSlopeAttempt01SourceEdition2.lean/declarations/regularnegativelogderivative.md) | 11 | `declaration-track:5a6dba6f81ae3d5071760c1410599bd008e8b0f8141119316a11747a8f68472f` |
| 2 | `theorem` | [actual_regular_zeta_derivative](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ActualLaurentSlopeAttempt01SourceEdition2.lean/declarations/actual-regular-zeta-derivative.md) | 14 | `result-track:670213cec715afdcf75cd16c9e71bf9a132a450eee73af53bc4b574fcc8d0080` |
| 3 | `theorem` | [actual_regular_zeta_second_derivative_at_one](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ActualLaurentSlopeAttempt01SourceEdition2.lean/declarations/actual-regular-zeta-second-derivative-at-one.md) | 20 | `result-track:939028adbd4c880b1e28d5fd472616287af98711a022fe25ac37c7ce49968a0d` |
| 4 | `theorem` | [actual_regular_negative_value](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ActualLaurentSlopeAttempt01SourceEdition2.lean/declarations/actual-regular-negative-value.md) | 34 | `result-track:0d4aa42621c81603a678310c9dc7daed9db294fa75dfd2d68a31513717387304` |
| 5 | `theorem` | [actual_regular_negative_derivative](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ActualLaurentSlopeAttempt01SourceEdition2.lean/declarations/actual-regular-negative-derivative.md) | 38 | `result-track:0312d6fbce97d475e163e019e4b30caae0ffbfb2c48a2621514cb7ae7393482a` |
| 6 | `theorem` | [actual_regular_negative_slope](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ActualLaurentSlopeAttempt01SourceEdition2.lean/declarations/actual-regular-negative-slope.md) | 47 | `result-track:44c2060156450a5d8fa811a221261aea32a7fd3d51004accecb823b821b3d338` |
| 7 | `theorem` | [actual_negative_log_regularization](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ActualLaurentSlopeAttempt01SourceEdition2.lean/declarations/actual-negative-log-regularization.md) | 55 | `result-track:8958a3e1e2ed6b22b460e71d2777b4a467023548aadad116f8851e679543999b` |
| 8 | `theorem` | [actual_negative_log_laurent_slope](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ActualLaurentSlopeAttempt01SourceEdition2.lean/declarations/actual-negative-log-laurent-slope.md) | 64 | `result-track:ee25593cbe47ac727f9e403cc2d88680fc08f8e380a3bdb3203b5ff267c3bd03` |
| 9 | `theorem` | [actual_vonMangoldt_series_laurent_slope](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ActualLaurentSlopeAttempt01SourceEdition2.lean/declarations/actual-vonmangoldt-series-laurent-slope.md) | 77 | `result-track:a5a760ca19bd78706faddb6dd4178ad17c953a82739f578400e5431f417e311e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ccbe67e10dc3d2f511aa8682136cf20c5a886f48151f06389ba1a604f1b11a67 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ActualLaurentSlopeAttempt01/Variantb2c20447e95ab2c8ea0fff67937323499fcde403d5220e1aa16b5940599882e8.lean","GRWTSK/_verification/specifications/NumberTheory/ActualLaurentSlopeAttempt01/Variantb2c20447e95ab2c8ea0fff67937323499fcde403d5220e1aa16b5940599882e8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
