# Verification target: Actual Muntz Bound Attempt06

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8386809cd2d8044adeeb4b995b58685d9440df66",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMuntzBoundAttempt06/Variant6e7b41f9999e0b527710438151ffbb6cccdf5f3e42dcf7b0858ba6c4f33c690a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ActualMuntzBoundAttempt06.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ActualMuntzBoundAttempt06.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8386809cd2d8044adeeb4b995b58685d9440df66`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualMuntzBoundAttempt06/Variant6e7b41f9999e0b527710438151ffbb6cccdf5f3e42dcf7b0858ba6c4f33c690a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualMuntzBoundAttempt06/Variant6e7b41f9999e0b527710438151ffbb6cccdf5f3e42dcf7b0858ba6c4f33c690a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualMuntzInventory` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.AbelSummation` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [actual_source_interval_integral_zero](../../../../MeasureAndIntegration/ActualMuntzBoundAttempt06.lean/declarations/actual-source-interval-integral-zero.md) | 13 | `result-track:1ba0f502159f68a57dbb43092703ac289b89b9024577eee55c41d4f1764edfb8` |
| 2 | `theorem` | [scaled_source_interval_integral_zero](../../../../MeasureAndIntegration/ActualMuntzBoundAttempt06.lean/declarations/scaled-source-interval-integral-zero.md) | 37 | `result-track:9881792d0ab1288819eaafd4464d06c1c851c3e36a699d06b16c0e6af0cf488f` |
| 3 | `theorem` | [actual_scaled_Abel](../../../../MeasureAndIntegration/ActualMuntzBoundAttempt06.lean/declarations/actual-scaled-abel.md) | 42 | `result-track:13e201864001c08c6625926f3ffbfc5bd958c059eb7cc17943b496067dff66e0` |
| 4 | `theorem` | [actual_scaled_linear_derivative_integral_zero](../../../../MeasureAndIntegration/ActualMuntzBoundAttempt06.lean/declarations/actual-scaled-linear-derivative-integral-zero.md) | 69 | `result-track:1cff27add8d13bf0e0efef90e6e9f437ed1e33f52865d4038a8cb39b2bed9729` |
| 5 | `def` | [eulerWeight](../../../../MeasureAndIntegration/ActualMuntzBoundAttempt06.lean/declarations/eulerweight.md) | 89 | `declaration-track:c91f864551b85e751a00f74e9640e88d462a738b5745d344a6cf993105631783` |
| 6 | `theorem` | [eulerWeight_abs_le_one](../../../../MeasureAndIntegration/ActualMuntzBoundAttempt06.lean/declarations/eulerweight-abs-le-one.md) | 91 | `result-track:628f6612760748115fc37f2a83bf3daedb74240cfd919e70b51282ba5e386596` |
| 7 | `theorem` | [scaled_residual_integrable](../../../../MeasureAndIntegration/ActualMuntzBoundAttempt06.lean/declarations/scaled-residual-integrable.md) | 98 | `result-track:ee828fd0b7a03102fb5f81eaa0af53f93a75d09a828d10860b7fb77a9a312450` |
| 8 | `theorem` | [actual_scaled_Euler](../../../../MeasureAndIntegration/ActualMuntzBoundAttempt06.lean/declarations/actual-scaled-euler.md) | 117 | `result-track:b835260b850670655f8ef9ab3e8ef91b44814ca61a898a380a55ffaad54cf69e` |
| 9 | `theorem` | [actualMuntz_abs_le_scaled_derivative](../../../../MeasureAndIntegration/ActualMuntzBoundAttempt06.lean/declarations/actualmuntz-abs-le-scaled-derivative.md) | 140 | `result-track:9842555c95cb2569141b2932a36ce6019c2f5fedafb9a4e520346a5a2321107d` |
| 10 | `def` | [derivativeBudget](../../../../MeasureAndIntegration/ActualMuntzBoundAttempt06.lean/declarations/derivativebudget.md) | 160 | `declaration-track:d10f821d3fbc306aad82ef2869983c7c2fef0277e12292b18c7c532584efa0bf` |
| 11 | `theorem` | [actual_derivative_abs_integrable](../../../../MeasureAndIntegration/ActualMuntzBoundAttempt06.lean/declarations/actual-derivative-abs-integrable.md) | 162 | `result-track:3d902669491f60fba42ee9632dbc75c6ef280737b081d4e3842520228b48d0d4` |
| 12 | `theorem` | [derivativeBudget_nonneg](../../../../MeasureAndIntegration/ActualMuntzBoundAttempt06.lean/declarations/derivativebudget-nonneg.md) | 167 | `result-track:17861944c1ed48bc224cc2c890565cc040e43abc41400bd40c23d96520d3c1f1` |
| 13 | `theorem` | [scaled_derivative_integral_eq](../../../../MeasureAndIntegration/ActualMuntzBoundAttempt06.lean/declarations/scaled-derivative-integral-eq.md) | 170 | `result-track:08523c9363079acb7a0aca7151543c4b07c5136bfe0a572062271dd7bef480c4` |
| 14 | `theorem` | [actualMuntz_abs_le_budget](../../../../MeasureAndIntegration/ActualMuntzBoundAttempt06.lean/declarations/actualmuntz-abs-le-budget.md) | 186 | `result-track:8496739223cb7404e4c59d22d19c321a2dba71992059eaf74b182f014e522a50` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8a626727bfa29d2914fe98ccd18d8eaacab04b48e1ed807fe994d84d09bb4452 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/ActualMuntzBoundAttempt06/Variant6e7b41f9999e0b527710438151ffbb6cccdf5f3e42dcf7b0858ba6c4f33c690a.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/ActualMuntzBoundAttempt06/Variant6e7b41f9999e0b527710438151ffbb6cccdf5f3e42dcf7b0858ba6c4f33c690a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
