# Verification target: Actual Support Edge Lower Trace Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ea9faaf056b788be3ddff77b8975d5acd85057c",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSupportEdgeLowerTrace/Variantf75ad26be531bd96010de717f498c636a842d5f5dc66cfc9c9a93d0157540faf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ActualSupportEdgeLowerTraceNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ActualSupportEdgeLowerTraceNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ea9faaf056b788be3ddff77b8975d5acd85057c`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSupportEdgeLowerTrace/Variantf75ad26be531bd96010de717f498c636a842d5f5dc66cfc9c9a93d0157540faf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSupportEdgeLowerTrace/Variantf75ad26be531bd96010de717f498c636a842d5f5dc66cfc9c9a93d0157540faf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualSupportEdgeBetaInteraction` — import line 6; external provider; requires a separately pinned dependency.
- `RootActualCriticalColumnTransfer` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualLowerTimeFactor](../../../../MeasureAndIntegration/ActualSupportEdgeLowerTraceNamespaced.lean/declarations/actuallowertimefactor.md) | 34 | `declaration-track:e36c3aafab6c5b6b35c255c69b0660dbe28d1eccf8ad96de3237d8b243dc6271` |
| 2 | `theorem` | [actual_orders](../../../../MeasureAndIntegration/ActualSupportEdgeLowerTraceNamespaced.lean/declarations/actual-orders.md) | 39 | `result-track:6eaa0c0356f6ee9683b729b7c8a03d605c923c6255062d548f5e54d876eac9f0` |
| 3 | `theorem` | [mixed_contDiff](../../../../MeasureAndIntegration/ActualSupportEdgeLowerTraceNamespaced.lean/declarations/mixed-contdiff.md) | 61 | `result-track:ffecb26be9c690f5eff92f8eb1a5c343aae17af992b9c87564999305d4208fda` |
| 4 | `theorem` | [actualLowerTimeFactor_eq_negative_error_integral](../../../../MeasureAndIntegration/ActualSupportEdgeLowerTraceNamespaced.lean/declarations/actuallowertimefactor-eq-negative-error-integral.md) | 74 | `result-track:eee8d04bc81702321858f85471cb3e8061eb63c01ff823fbcea3e49754d6ab8f` |
| 5 | `theorem` | [source_jet_zero_right](../../../../MeasureAndIntegration/ActualSupportEdgeLowerTraceNamespaced.lean/declarations/source-jet-zero-right.md) | 88 | `result-track:d9333941281bbba97f4535ed101fc97eb150e4f41994815567f3545acb13f263` |
| 6 | `theorem` | [mixed_zero_right](../../../../MeasureAndIntegration/ActualSupportEdgeLowerTraceNamespaced.lean/declarations/mixed-zero-right.md) | 107 | `result-track:29d55b1dac6843a9820f17459507f695f03c3b70e5398c04fe37cfe3754cb2f6` |
| 7 | `theorem` | [exponential_truncated_moment_le](../../../../MeasureAndIntegration/ActualSupportEdgeLowerTraceNamespaced.lean/declarations/exponential-truncated-moment-le.md) | 114 | `result-track:7d0cb6e61312707ff496b79c6d71e449687b9cdfa2cdb7f08940462f49724ead` |
| 8 | `theorem` | [actualLowerTimeFactor_abs_le](../../../../MeasureAndIntegration/ActualSupportEdgeLowerTraceNamespaced.lean/declarations/actuallowertimefactor-abs-le.md) | 144 | `result-track:99367c8ce1b66fcd57874dc36e76f07672ba7d156c533f437e743202cf20bb29` |
| 9 | `theorem` | [actualCriticalAdjustedLowerColumnTrace_abs_le](../../../../MeasureAndIntegration/ActualSupportEdgeLowerTraceNamespaced.lean/declarations/actualcriticaladjustedlowercolumntrace-abs-le.md) | 251 | `result-track:a8069d6db08b727f0555bed5df3035ab8acc6485da50670adb62562d81bd3cb8` |
| 10 | `theorem` | [actualCriticalAdjustedLowerColumnTrace_abs_le_square](../../../../MeasureAndIntegration/ActualSupportEdgeLowerTraceNamespaced.lean/declarations/actualcriticaladjustedlowercolumntrace-abs-le-square.md) | 272 | `result-track:ce3e444f7c6fa0d5c2644d8d9d13db6f1990c051da0359a6b82a1742fafa7128` |
| 11 | `theorem` | [actualCriticalAdjustedLowerColumnTrace_tendsto_zero](../../../../MeasureAndIntegration/ActualSupportEdgeLowerTraceNamespaced.lean/declarations/actualcriticaladjustedlowercolumntrace-tendsto-zero.md) | 283 | `result-track:1a24417c1cac3d390e56afa187886f3932097471cbd56cdabe4c3355e9d544a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d168e20f5e8e30452298426ce4a75891b89c08ad082596d99bf95ed6c472a33f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSupportEdgeLowerTrace/Variantf75ad26be531bd96010de717f498c636a842d5f5dc66cfc9c9a93d0157540faf.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSupportEdgeLowerTrace/Variantf75ad26be531bd96010de717f498c636a842d5f5dc66cfc9c9a93d0157540faf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
