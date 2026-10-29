# Verification target: Higher Power Moment Audit Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b8d18595f0c8fb9a75be2d75f559a4958ba617b6",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerMomentAudit/Variant218bb7e2c5cb46c340122a7ce82a93d5e5114c3a0d71b8b1bf95bf5b94a3bd16.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentAuditNamespaced.lean/index.md) · [Full source](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentAuditNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b8d18595f0c8fb9a75be2d75f559a4958ba617b6`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerMomentAudit/Variant218bb7e2c5cb46c340122a7ce82a93d5e5114c3a0d71b8b1bf95bf5b94a3bd16.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/HigherPowerMomentAudit/Variant218bb7e2c5cb46c340122a7ce82a93d5e5114c3a0d71b8b1bf95bf5b94a3bd16.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.PSeries` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [integerMoment](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentAuditNamespaced.lean/declarations/integermoment.md) | 19 | `declaration-track:b75ad51fa885866bc4691f83de2ef53729e1d0725ca3a8d0120e2a268af05290` |
| 2 | `def` | [higherMoment](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentAuditNamespaced.lean/declarations/highermoment.md) | 22 | `declaration-track:f390132e9e56765eb136c3c726fc337e5af3ecd731587ccbd2a4ce758c519834` |
| 3 | `def` | [geometricRatio](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentAuditNamespaced.lean/declarations/geometricratio.md) | 26 | `declaration-track:86b21d8170d87ee0257400eccf19f9266a785ec80cdc4b9ea7a5d0d0d203a0c8` |
| 4 | `def` | [exponentMoment](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentAuditNamespaced.lean/declarations/exponentmoment.md) | 29 | `declaration-track:82169cdfc58dc42efbbc0d9a1f169afefe0b069bce0a6d388ba1cfe988a8dbfe` |
| 5 | `theorem` | [integerMoment_nonneg](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentAuditNamespaced.lean/declarations/integermoment-nonneg.md) | 31 | `result-track:6bcdba97d62d9a716f178ed7b01176d8b09319d9216ddc1f53eafa89ceb13b35` |
| 6 | `theorem` | [higherMoment_nonneg](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentAuditNamespaced.lean/declarations/highermoment-nonneg.md) | 35 | `result-track:605ba0a9ad9e2c1241527623b9ace90662d8a71f64db09f117ab93a540559af8` |
| 7 | `theorem` | [geometricRatio_pos](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentAuditNamespaced.lean/declarations/geometricratio-pos.md) | 39 | `result-track:2b732becebe4663e949a7b60e33403ce82488546e7ccbd847d3346f3075d2f39` |
| 8 | `theorem` | [geometricRatio_lt_one](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentAuditNamespaced.lean/declarations/geometricratio-lt-one.md) | 41 | `result-track:5a41b0152e5c45c7be81e8b9d7637e5f8fc7f7dbebe1290fa0913ae5c2907667` |
| 9 | `theorem` | [exponentMoment_nonneg](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentAuditNamespaced.lean/declarations/exponentmoment-nonneg.md) | 44 | `result-track:36eb3ff24f729d5f2fb63582ece2f086ca5e3939a02b88e24195cedf536e385f` |
| 10 | `theorem` | [integerMoment_le](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentAuditNamespaced.lean/declarations/integermoment-le.md) | 47 | `result-track:e91cf86e62cd71ebb60f2ed6ec8630d5a22a5f5fe026e0c24e0e0cf8648ce927` |
| 11 | `theorem` | [integerMoment_summable](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentAuditNamespaced.lean/declarations/integermoment-summable.md) | 66 | `result-track:4bbe300d5c06b0ed7f80974b9b3401c5c77e15e6877a28338d9c78d4e9f7ac63` |
| 12 | `theorem` | [exponentMoment_summable](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentAuditNamespaced.lean/declarations/exponentmoment-summable.md) | 70 | `result-track:e3ddb66bb3ade4e117b0c36d480dff351968cea3448c2c0a43a379aab2297d98` |
| 13 | `theorem` | [halfPower_pow](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentAuditNamespaced.lean/declarations/halfpower-pow.md) | 83 | `result-track:a3c9863de01ce3895888d525c44cabcab45a0a3f333f32f24fc5c70ec6dba3cf` |
| 14 | `theorem` | [higherMoment_factorization](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentAuditNamespaced.lean/declarations/highermoment-factorization.md) | 90 | `result-track:8f9009f96976742b3fb5c8f410e1cfda6706bb2901e8fe9c5b0da7e7f975a819` |
| 15 | `theorem` | [higherMoment_le_product](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentAuditNamespaced.lean/declarations/highermoment-le-product.md) | 105 | `result-track:27863c4ad689648d7509ebb42542bcf1df554e44fa0fd9edf72f3c89d9e968a3` |
| 16 | `theorem` | [higherMoment_summable](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentAuditNamespaced.lean/declarations/highermoment-summable.md) | 116 | `result-track:1b24886469d6bed462006ffa33b5fc25118d5b181adccbb28ab464b6cd3a8be1` |
| 17 | `theorem` | [primeHigherMoment_summable](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentAuditNamespaced.lean/declarations/primehighermoment-summable.md) | 127 | `result-track:9635089613b3c918a1d4c5d2aaf25babd7fbea3716ae3c8554259adf608e7b17` |
| 18 | `theorem` | [logLocation_sq_ge_one](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentAuditNamespaced.lean/declarations/loglocation-sq-ge-one.md) | 140 | `result-track:a86fa748303c9f1f7d7463cf06d89abad7192eafabd5b2037432e686877f4aa4` |
| 19 | `theorem` | [higherWeight_le_moment](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentAuditNamespaced.lean/declarations/higherweight-le-moment.md) | 151 | `result-track:4c2c817cd1d9b812b80074b86bcef4dc9c9094e2b6aede123a6cd4618266d4d1` |
| 20 | `theorem` | [primeHigherWeight_summable](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentAuditNamespaced.lean/declarations/primehigherweight-summable.md) | 156 | `result-track:fe9bcd6342f13a4ffd8489ead824091c385835863872d9cde0bca34471080180` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=40092719bf3e1420e5b8be7b588f59102545d5ba09f0a2954bee739e67e9e720 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerMomentAudit/Variant218bb7e2c5cb46c340122a7ce82a93d5e5114c3a0d71b8b1bf95bf5b94a3bd16.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/HigherPowerMomentAudit/Variant218bb7e2c5cb46c340122a7ce82a93d5e5114c3a0d71b8b1bf95bf5b94a3bd16.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
