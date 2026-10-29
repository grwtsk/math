# Verification target: Higher Power Moment Audit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ffacbf09d9bf9cc5878631527f9f45e8b8149e1e",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerMomentAudit/Variant0263f52a2a7ad540e48e7bb8386ad6858adbfa571e562a24568cb92a901bde87.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentAudit.lean/index.md) · [Full source](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentAudit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ffacbf09d9bf9cc5878631527f9f45e8b8149e1e`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerMomentAudit/Variant0263f52a2a7ad540e48e7bb8386ad6858adbfa571e562a24568cb92a901bde87.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/HigherPowerMomentAudit/Variant0263f52a2a7ad540e48e7bb8386ad6858adbfa571e562a24568cb92a901bde87.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.PSeries` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [integerMoment](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentAudit.lean/declarations/integermoment.md) | 11 | `declaration-track:f3a1d61079cb8dce90381d8016ffddaf1a2ff76af8967c7f8f8035ca4c409812` |
| 2 | `def` | [higherMoment](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentAudit.lean/declarations/highermoment.md) | 14 | `declaration-track:0d29f6fff9d5bb873b3ee680d4df933975a5690a9712ff21b7746c1f079b1dd1` |
| 3 | `def` | [geometricRatio](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentAudit.lean/declarations/geometricratio.md) | 18 | `declaration-track:8ce88010e892d02e7b69d860a62ec3a217170ecffdb72cf084dae551fb6a1976` |
| 4 | `def` | [exponentMoment](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentAudit.lean/declarations/exponentmoment.md) | 21 | `declaration-track:2feaf640f69d5f65a66a651b2d7c8bc3d43bb629ffcf1f02c75463347c421456` |
| 5 | `theorem` | [integerMoment_nonneg](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentAudit.lean/declarations/integermoment-nonneg.md) | 23 | `result-track:f4a3dd268971c94c60bc3ccb9127d28a0c769de4ce52e759a3ef39e5e1012dc5` |
| 6 | `theorem` | [higherMoment_nonneg](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentAudit.lean/declarations/highermoment-nonneg.md) | 27 | `result-track:4987efd7f25f1b448342946dbc9093082d9da7a7bc1492144800a1d553b6a55c` |
| 7 | `theorem` | [geometricRatio_pos](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentAudit.lean/declarations/geometricratio-pos.md) | 31 | `result-track:8fbb9e91a0b1dc88b5d3ff6c25a2eb3d8c221f785999fffb3adfd462f8bb3236` |
| 8 | `theorem` | [geometricRatio_lt_one](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentAudit.lean/declarations/geometricratio-lt-one.md) | 33 | `result-track:c229c9885cb81ea5d1f03d964dbd6f1bfa607b19fab807f99250586442db9af5` |
| 9 | `theorem` | [exponentMoment_nonneg](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentAudit.lean/declarations/exponentmoment-nonneg.md) | 36 | `result-track:ccbe28a384358a6692cad4d5acafe77cc03db76995b11861c04f23c2817152af` |
| 10 | `theorem` | [integerMoment_le](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentAudit.lean/declarations/integermoment-le.md) | 39 | `result-track:595ebb8fc6711b2b0d12f7ee11e75588c823d74b5bbbe474e2940029e5ccdf6d` |
| 11 | `theorem` | [integerMoment_summable](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentAudit.lean/declarations/integermoment-summable.md) | 58 | `result-track:b45bbabadf5ef4dc23da49a848ddfcbbc7e72675dd16c0e895e94305e26df430` |
| 12 | `theorem` | [exponentMoment_summable](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentAudit.lean/declarations/exponentmoment-summable.md) | 62 | `result-track:6a30d04e3f7a3cb8c25e5dc96744a5d8d3dd989c64c2d7714db4e7a017af39a4` |
| 13 | `theorem` | [halfPower_pow](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentAudit.lean/declarations/halfpower-pow.md) | 75 | `result-track:20fd03ffc6f92d28426fb95d677967a21f1cdf825537d26390858f5c12bbfa1a` |
| 14 | `theorem` | [higherMoment_factorization](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentAudit.lean/declarations/highermoment-factorization.md) | 82 | `result-track:83744d406fee23027c23501cd698359c09eb424bb835db5c076fcfb054244c14` |
| 15 | `theorem` | [higherMoment_le_product](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentAudit.lean/declarations/highermoment-le-product.md) | 97 | `result-track:a99948d3a36bd35ee96e0be940a3bc8157730d74f971af58f84a3ad4fba1e479` |
| 16 | `theorem` | [higherMoment_summable](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentAudit.lean/declarations/highermoment-summable.md) | 108 | `result-track:6975067e89ec3c5aac9bf85b0c3d2fd5f7677915a5d371e506a381a0c5064739` |
| 17 | `theorem` | [primeHigherMoment_summable](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentAudit.lean/declarations/primehighermoment-summable.md) | 119 | `result-track:874a5f9dac1d0558b931ae89b372db1af25153aed58e32ee3e841be52330f7e6` |
| 18 | `theorem` | [logLocation_sq_ge_one](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentAudit.lean/declarations/loglocation-sq-ge-one.md) | 132 | `result-track:504500b77a100f4d2c101671518451c29e6db3cf5d7037100cc0f71eeb1a6007` |
| 19 | `theorem` | [higherWeight_le_moment](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentAudit.lean/declarations/higherweight-le-moment.md) | 143 | `result-track:bb22b6b00d723633d3dc2d14bc44a947684e1aff6669107504feb9e2df441d3c` |
| 20 | `theorem` | [primeHigherWeight_summable](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/HigherPowerMomentAudit.lean/declarations/primehigherweight-summable.md) | 148 | `result-track:fad2e349f62f5d994b1b56f44a848d6ace09a02f26cb3a06d0a856b5b184c741` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9e1d3ec775c5b9103248561128780b96d7fe120ae2642c1fe531d49aa8ad32db -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerMomentAudit/Variant0263f52a2a7ad540e48e7bb8386ad6858adbfa571e562a24568cb92a901bde87.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/HigherPowerMomentAudit/Variant0263f52a2a7ad540e48e7bb8386ad6858adbfa571e562a24568cb92a901bde87.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
