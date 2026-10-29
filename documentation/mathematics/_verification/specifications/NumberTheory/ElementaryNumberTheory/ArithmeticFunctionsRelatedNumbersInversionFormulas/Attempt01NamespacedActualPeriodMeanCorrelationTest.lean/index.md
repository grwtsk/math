# Verification target: Attempt01 Namespaced Actual Period Mean Correlation Test

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d28a7170247a5ba8e116a3dc5f43f75a03abc8d8",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variant1894ca12d06e43041f71119155ff3e445363cf94ce04f71f1b1fd0a64d25272f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt01NamespacedActualPeriodMeanCorrelationTest.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt01NamespacedActualPeriodMeanCorrelationTest.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d28a7170247a5ba8e116a3dc5f43f75a03abc8d8`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variant1894ca12d06e43041f71119155ff3e445363cf94ce04f71f1b1fd0a64d25272f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variant1894ca12d06e43041f71119155ff3e445363cf94ce04f71f1b1fd0a64d25272f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualHalfNearMeanInterior` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualPeriodMeanCorrelationTest](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt01NamespacedActualPeriodMeanCorrelationTest.lean/declarations/actualperiodmeancorrelationtest.md) | 30 | `declaration-track:d020683e9364f963527f47144931df8ad147cec7b02b135e90846b2f8f40b4ff` |
| 2 | `def` | [actualPeriodMeanTimeTest](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt01NamespacedActualPeriodMeanCorrelationTest.lean/declarations/actualperiodmeantimetest.md) | 35 | `declaration-track:5ab65bc39dace3ea8bd396125388ea355e93122a48558dea076168637e93c720` |
| 3 | `theorem` | [jet_hasDerivAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt01NamespacedActualPeriodMeanCorrelationTest.lean/declarations/jet-hasderivat.md) | 40 | `result-track:20738bf592182a90969a6ef712504dbfd49b28ee4806aed74f8ea211fa7c7a5e` |
| 4 | `theorem` | [jet_contDiff_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt01NamespacedActualPeriodMeanCorrelationTest.lean/declarations/jet-contdiff-one.md) | 48 | `result-track:ef5ac25a5cc3a2efb2ba51c85a476b0d8e0376c7b26312b62f595957ac712599` |
| 5 | `theorem` | [actualPeriodMeanCorrelationTest_hasDerivAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt01NamespacedActualPeriodMeanCorrelationTest.lean/declarations/actualperiodmeancorrelationtest-hasderivat.md) | 55 | `result-track:b572283304024cd629ce1a84dad6d2f22ff1cf26bf425f4963edc0b751c43201` |
| 6 | `theorem` | [actualPeriodMeanTimeTest_covariant_deriv](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt01NamespacedActualPeriodMeanCorrelationTest.lean/declarations/actualperiodmeantimetest-covariant-deriv.md) | 67 | `result-track:e86242fb3fbbeb0437af4c1b3a8bc29d1d45afa83ebf8ae4d1be16e29628c9f8` |
| 7 | `theorem` | [correlation_test_contDiff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt01NamespacedActualPeriodMeanCorrelationTest.lean/declarations/correlation-test-contdiff.md) | 89 | `result-track:08bf78eb268f20810f80069d9faa368018554accec55d75e836d5871f21cabc0` |
| 8 | `theorem` | [time_test_contDiff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt01NamespacedActualPeriodMeanCorrelationTest.lean/declarations/time-test-contdiff.md) | 96 | `result-track:0a56d35c7d7c9096b1a8f98c7dd3cf71908247995a32795af6cab5120511d268` |
| 9 | `theorem` | [actualPeriodMeanTests_at_upper](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt01NamespacedActualPeriodMeanCorrelationTest.lean/declarations/actualperiodmeantests-at-upper.md) | 105 | `result-track:65b53f143e73349d0ab58a803edcd2d75308581120b4817faf4624ee5aeced29` |
| 10 | `theorem` | [actual_orders](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt01NamespacedActualPeriodMeanCorrelationTest.lean/declarations/actual-orders.md) | 115 | `result-track:8e4dc2567fe5bd3b2c5e726a34833049d8168563acab62fd36e6a9f879111d01` |
| 11 | `theorem` | [actual_window_eq_half_row](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt01NamespacedActualPeriodMeanCorrelationTest.lean/declarations/actual-window-eq-half-row.md) | 123 | `result-track:0159c1b772b3385e28bd28ba38bd298180b94ab645d743e014db970b76b3bba1` |
| 12 | `theorem` | [actualPeriodMeanTimeFactor_eq_closed_half_row](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt01NamespacedActualPeriodMeanCorrelationTest.lean/declarations/actualperiodmeantimefactor-eq-closed-half-row.md) | 148 | `result-track:2ea2dcdd412494ea672dc4b5f3fa51be928532adfd1fb45390cf9c8b73b8a33b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ebbcab6c660e2345f87cd6e6b8343a5829f4aac0080a733f8d656c72b859e985 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variant1894ca12d06e43041f71119155ff3e445363cf94ce04f71f1b1fd0a64d25272f.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variant1894ca12d06e43041f71119155ff3e445363cf94ce04f71f1b1fd0a64d25272f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
