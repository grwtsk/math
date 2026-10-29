# Verification target: GRWTSK.NumberTheory.Zeta.ResponseBoundZeroConversions

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d88c131709ce62b90d1893e64e1281af26f4f6f0",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/ResponseBoundZeroConversions.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ResponseBoundZeroConversionsHistoricalSourceEdition2.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ResponseBoundZeroConversionsHistoricalSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d88c131709ce62b90d1893e64e1281af26f4f6f0`.

Source path: `GRWTSK/NumberTheory/Zeta/ResponseBoundZeroConversions.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/ResponseBoundZeroConversions.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.PolynomialEnergyHolomorphy`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PolynomialEnergyHolomorphyHistoricalSourceEdition2.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Analysis.LaplaceTransform.MoebiusResponseFormula`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MoebiusResponseFormula.lean/index.md) — import line 2; pinned internal source present.
- [`GRWTSK.Algebra.MvPolynomial.SquarefreeEulerProduct`](../../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SquarefreeEulerProduct.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.SignedEnergyDecomposition`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SignedEnergyDecompositionHistoricalSourceEdition2.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.SignedSynthesisEnergyBounds`](../../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SignedSynthesisEnergyBoundsHistoricalSourceEdition2.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.Analysis.MeasureTheory.Integral.MoebiusCumulativeEnergy`](../../../../../../MeasureAndIntegration/MoebiusCumulativeEnergyHistoricalSourceEdition2.lean/index.md) — import line 6; pinned internal source present.
- [`GRWTSK.Analysis.SumIntegralComparison.ExponentialResponseSquareSum`](../../../../../../MeasureAndIntegration/ExponentialResponseSquareSum.lean/index.md) — import line 7; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.ReciprocalDecayBounds`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ReciprocalDecayBoundsHistoricalSourceEdition2.lean/index.md) — import line 8; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.DisjointPrimeChainBounds`](../../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/DisjointPrimeChainBoundsHistoricalSourceEdition2.lean/index.md) — import line 9; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.PrimeTranslationBoundContracts`](../../../../../../MeasureAndIntegration/PrimeTranslationBoundContracts.lean/index.md) — import line 10; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [analyticClosure](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ResponseBoundZeroConversionsHistoricalSourceEdition2.lean/declarations/analyticclosure.md) | 20 | `result-track:99a3e763bb0f82cfa58901bf2a681c6480bebea644990016a5e9b493c3ad19bc` |
| 2 | `theorem` | [transform_route_implies_literal_RH](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ResponseBoundZeroConversionsHistoricalSourceEdition2.lean/declarations/transform-route-implies-literal-rh.md) | 22 | `result-track:6596d836866ef3f6667370896d14f907d25ada88cb9210516bb173bc571673c8` |
| 3 | `theorem` | [fixed_window_implies_literal_RH](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ResponseBoundZeroConversionsHistoricalSourceEdition2.lean/declarations/fixed-window-implies-literal-rh.md) | 26 | `result-track:0a5228b07d5983468c38164548b6b1a774cbc42f5ce2e6cc98c590a681b130a5` |
| 4 | `theorem` | [completion_chain_implies_literal_RH](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ResponseBoundZeroConversionsHistoricalSourceEdition2.lean/declarations/completion-chain-implies-literal-rh.md) | 32 | `result-track:f0ca75b39765592c026eaefe831ee212d7a94dd357e524622600c5e7c1477f16` |
| 5 | `theorem` | [original_AS_implies_literal_RH](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ResponseBoundZeroConversionsHistoricalSourceEdition2.lean/declarations/original-as-implies-literal-rh.md) | 36 | `result-track:56b2aef5802f7063c5833f4d2aebee6422da9a0c1f5c24d657885cde2b94b623` |
| 6 | `theorem` | [packet_route_implies_literal_RH](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ResponseBoundZeroConversionsHistoricalSourceEdition2.lean/declarations/packet-route-implies-literal-rh.md) | 45 | `result-track:c336d6e789f6403f28b6d71fbcb5ef5bd35dac9f9bb1aef04901ff5b5fdaee7c` |
| 7 | `theorem` | [actual_pickup_right_line_kernel](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ResponseBoundZeroConversionsHistoricalSourceEdition2.lean/declarations/actual-pickup-right-line-kernel.md) | 59 | `result-track:37c8519a2c9dd9040370d4bfd4ea56ec5c7898ac8c52e1b21f8bcc3cce2a1b5f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=47de031918ab141011d5039cd2b4da7a9e7ef69cfe88e529897f7ab78105a699 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/ResponseBoundZeroConversions.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/ResponseBoundZeroConversions.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
