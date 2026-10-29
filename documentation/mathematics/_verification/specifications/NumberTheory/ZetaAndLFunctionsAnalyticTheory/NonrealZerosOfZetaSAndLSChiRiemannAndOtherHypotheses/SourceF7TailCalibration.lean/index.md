# Verification target: Source F7 Tail Calibration

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc058de881fe65dc105f99ef9266ead6f1554cf2",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceF7TailCalibration/Variant0aabec150b91f6cc5bdf1281e9265a3e781c02670dc7a0d3aa080a86abbbd615.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceF7TailCalibration.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceF7TailCalibration.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc058de881fe65dc105f99ef9266ead6f1554cf2`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceF7TailCalibration/Variant0aabec150b91f6cc5bdf1281e9265a3e781c02670dc7a0d3aa080a86abbbd615.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceF7TailCalibration/Variant0aabec150b91f6cc5bdf1281e9265a3e781c02670dc7a0d3aa080a86abbbd615.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceCompleteXiTailConsumer` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [physicalCurvatureCoefficient](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceF7TailCalibration.lean/declarations/physicalcurvaturecoefficient.md) | 24 | `declaration-track:f2a4ef4fbc17da9446b243fff3cbafb2e882e8cc703e5ae2df07d8da86eb1ebf` |
| 2 | `def` | [meanTailBudget](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceF7TailCalibration.lean/declarations/meantailbudget.md) | 27 | `declaration-track:b2fa43aaa0a922c44c1560d450d63454134779a83adc348776b6997c91ff6f2a` |
| 3 | `def` | [meanAtomBudget](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceF7TailCalibration.lean/declarations/meanatombudget.md) | 31 | `declaration-track:caaf5a672c1dbb173e0cd99bc78e897dd42ed5ceebd9ca593f58d8b1de55e879` |
| 4 | `def` | [meanResidualBudget](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceF7TailCalibration.lean/declarations/meanresidualbudget.md) | 34 | `declaration-track:e9250a47d63173e231c120ddd9ea12c05644ee53af0b0070565e04631b9f9afb` |
| 5 | `theorem` | [calibratedRadius_pos](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceF7TailCalibration.lean/declarations/calibratedradius-pos.md) | 37 | `result-track:5886d51ec70bb828f2f0b508f211136f8485e6a747487835c807035374962f01` |
| 6 | `theorem` | [calibratedRadius_idempotent](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceF7TailCalibration.lean/declarations/calibratedradius-idempotent.md) | 41 | `result-track:4c938061e4e3f97886b94e1b1ae18fdcdbb8457b7e153d9cf6ad8f8b3073534f` |
| 7 | `theorem` | [meanTailBudget_nonneg](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceF7TailCalibration.lean/declarations/meantailbudget-nonneg.md) | 45 | `result-track:9dc6d5c4024b60bac931479928fb16c213c1d4082635b5890b245a24a946269f` |
| 8 | `theorem` | [meanAtomBudget_eq](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceF7TailCalibration.lean/declarations/meanatombudget-eq.md) | 51 | `result-track:43bcf6fb4796523c86d18b13375dbc5c272a53da253de5bd67cb7b4ecf6676e9` |
| 9 | `theorem` | [meanAtomBudget_nonneg](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceF7TailCalibration.lean/declarations/meanatombudget-nonneg.md) | 57 | `result-track:c89f3e4343065fd85c21368c37a62eaba69189408bdcd0109d92820d6eaf878a` |
| 10 | `theorem` | [dynamic_mean_budget_le](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceF7TailCalibration.lean/declarations/dynamic-mean-budget-le.md) | 61 | `result-track:3c7e78bb493f9b874a3a510dcbd78c1ebe1cba416e1bcc6827668286de449048` |
| 11 | `theorem` | [complete_tail_lower_at_calibrated_radius](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceF7TailCalibration.lean/declarations/complete-tail-lower-at-calibrated-radius.md) | 73 | `result-track:f9e843d61673a9c6a362b25317617b502d95e38c9ba13c4124aab50a6a77a898` |
| 12 | `theorem` | [calibratedRadius_forty](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceF7TailCalibration.lean/declarations/calibratedradius-forty.md) | 82 | `result-track:53a6ac9884fd7f8958c27373c8efdfa5c5e3d93bb82a698ea23401727574c2ad` |
| 13 | `theorem` | [meanTailBudget_forty](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceF7TailCalibration.lean/declarations/meantailbudget-forty.md) | 85 | `result-track:dbf4a7a7b8d505e20c6d20db2cde2decb70c6c719ec4fe6e2f85b91de23d203c` |
| 14 | `theorem` | [meanTailBudget_ninety_one](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceF7TailCalibration.lean/declarations/meantailbudget-ninety-one.md) | 90 | `result-track:248164e9ee2a09993258904c78139fffae3339a5f98009e84a62d8579e01d751` |
| 15 | `theorem` | [remaining_lower_of_dynamic_mean](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceF7TailCalibration.lean/declarations/remaining-lower-of-dynamic-mean.md) | 95 | `result-track:dfc1318b96007c67419135ac996be073c636319114855ed7147a5a64c4765a0f` |
| 16 | `theorem` | [atom_witness_of_dynamic_mean](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceF7TailCalibration.lean/declarations/atom-witness-of-dynamic-mean.md) | 107 | `result-track:0afb94b59090f333f9b4fedb91dd2a5349218d60829ae729cd12f9b604d9a92f` |
| 17 | `theorem` | [all_real_lower_of_dynamic_mean](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceF7TailCalibration.lean/declarations/all-real-lower-of-dynamic-mean.md) | 119 | `result-track:7baff01541a92e4aeef61d80a7008b7df83b4766ac5fab67be4ac95ae731fc00` |
| 18 | `theorem` | [estimate_of_dynamic_mean](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceF7TailCalibration.lean/declarations/estimate-of-dynamic-mean.md) | 130 | `result-track:40da975d620ba544f5d66837c41c8ec85217d6f38987af68e6a8168d596835ac` |
| 19 | `theorem` | [residual_upper_of_dynamic_mean](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceF7TailCalibration.lean/declarations/residual-upper-of-dynamic-mean.md) | 136 | `result-track:84d8aecbb8a0f227c8ee7ca556331f8b10e1c1bb0ae0badecbdd7c8ab1d1dbf1` |
| 20 | `theorem` | [actual_leading_upper_of_dynamic_mean](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceF7TailCalibration.lean/declarations/actual-leading-upper-of-dynamic-mean.md) | 147 | `result-track:436e6c6c498a3d97745bcbd07b86d5f6b16cb72ef1aeb09df1ae29d2082a5443` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=da8228ae88f55da11f577cbfe14654b99a5154f58e53a70c2039b36d02350a55 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceF7TailCalibration/Variant0aabec150b91f6cc5bdf1281e9265a3e781c02670dc7a0d3aa080a86abbbd615.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceF7TailCalibration/Variant0aabec150b91f6cc5bdf1281e9265a3e781c02670dc7a0d3aa080a86abbbd615.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
