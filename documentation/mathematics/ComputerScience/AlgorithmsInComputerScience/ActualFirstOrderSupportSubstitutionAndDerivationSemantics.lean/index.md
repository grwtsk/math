# Actual First Order Support Substitution And Derivation Semantics

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 21 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DerivationSemantics/Variant46344687a5944a90fefb94d2c1bcc6d6fc7f600df6b5e62fe8d924b7011e75cf.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5786f4bffd29885eb2509edc830f6b7e59639cb4`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/ActualFirstOrderSupportSubstitutionAndDerivationSemantics.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [Term.variableSupport](declarations/term-variablesupport.md) | 22 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [termValid_restrict](declarations/termvalid-restrict.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [termValid_substitute](declarations/termvalid-substitute.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [evaluatePartial](declarations/evaluatepartial.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [evaluateTerm_eq_partial](declarations/evaluateterm-eq-partial.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [evaluatePartial_support](declarations/evaluatepartial-support.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [substitutionAssignment](declarations/substitutionassignment.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [evaluatePartial_substitute](declarations/evaluatepartial-substitute.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [PartialAssignmentBounded](declarations/partialassignmentbounded.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [TableOutputBounded](declarations/tableoutputbounded.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [tableOutput_bounded_of_valid](declarations/tableoutput-bounded-of-valid.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [evaluatePartial_bounded](declarations/evaluatepartial-bounded.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [substitutionAssignment_bounded](declarations/substitutionassignment-bounded.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [GeneratorsPartiallyInterpreted](declarations/generatorspartiallyinterpreted.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [representationDerivable_evaluatePartial](declarations/representationderivable-evaluatepartial.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [representationDerivable_evaluateTerm](declarations/representationderivable-evaluateterm.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [checkedEquation_evaluateTerm](declarations/checkedequation-evaluateterm.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [interpreter_outputs_bounded](declarations/interpreter-outputs-bounded.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [actual_generators_partially_interpreted](declarations/actual-generators-partially-interpreted.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [actual_substituted_derivation_sound](declarations/actual-substituted-derivation-sound.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [actualCheckedEquation](declarations/actualcheckedequation.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [actual_verified_equation_semantics](declarations/actual-verified-equation-semantics.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [actual_ground_restriction](declarations/actual-ground-restriction.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [missing_dependency_invalid](declarations/missing-dependency-invalid.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [actual_substitution_typed](declarations/actual-substitution-typed.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [singletonTable](declarations/singletontable.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [erasingGenerator](declarations/erasinggenerator.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [erasingDeclaration](declarations/erasingdeclaration.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [erasing_generator_valid_on_all_total_assignments](declarations/erasing-generator-valid-on-all-total-assignments.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [untyped_substitution_can_break_semantics](declarations/untyped-substitution-can-break-semantics.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [untyped_substitution_rejected](declarations/untyped-substitution-rejected.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=122d31ff31124eeb2df82ee77a904b06cdf2b2702a55e596412636e7d06dccf3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DerivationSemantics/Variant46344687a5944a90fefb94d2c1bcc6d6fc7f600df6b5e62fe8d924b7011e75cf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
