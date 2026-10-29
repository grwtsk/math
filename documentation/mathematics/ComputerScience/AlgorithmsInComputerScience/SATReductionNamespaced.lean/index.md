# SATReduction Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**62 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SATReduction/Variantf703273d76dafd52ee71c2486f2526dc42195865a87f34840189cc33a9821059.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `42e24640674a6b58f6b5e4e96bc0fd17f9505c51`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/SATReductionNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Bits](declarations/bits.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [Assignment](declarations/assignment.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [readInput](declarations/readinput.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [inputAssignment](declarations/inputassignment.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [readInput_inputAssignment](declarations/readinput-inputassignment.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `inductive` | [Literal](declarations/literal.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [Holds](declarations/holds.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [forBit](declarations/forbit.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [blocking](declarations/blocking.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [holds_forBit](declarations/holds-forbit.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [holds_blocking](declarations/holds-blocking.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `abbrev` | [Clause](declarations/clause.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `abbrev` | [CNF](declarations/cnf.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [Holds](declarations/holds-source-edition-3.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [holds_nil](declarations/holds-nil-source-edition-2.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [holds_cons](declarations/holds-cons.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [holds_singleton](declarations/holds-singleton.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [Holds](declarations/holds-source-edition-2.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [Satisfiable](declarations/satisfiable.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [holds_nil](declarations/holds-nil.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [holds_cons](declarations/holds-cons-source-edition-2.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [holds_append](declarations/holds-append.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [holds_ofFn](declarations/holds-offn.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `inductive` | [Gate](declarations/gate.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [eval](declarations/eval.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [clauseCount](declarations/clausecount.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [inputs](declarations/inputs.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [InputsBelow](declarations/inputsbelow.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [clauseCount_le_four](declarations/clausecount-le-four.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [encodeGate](declarations/encodegate.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [encodeGate_length](declarations/encodegate-length.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [encodeGate_correct](declarations/encodegate-correct.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [encodeFrom](declarations/encodefrom.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [ValidFrom](declarations/validfrom.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [WellFormedFrom](declarations/wellformedfrom.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [encodeFrom_correct](declarations/encodefrom-correct.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [encodeFrom_length](declarations/encodefrom-length.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [encodeFrom_length_le_four_mul](declarations/encodefrom-length-le-four-mul.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `structure` | [Circuit](declarations/circuit.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [WellFormed](declarations/wellformed.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [ValidTrace](declarations/validtrace.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [readOutput](declarations/readoutput.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [targetCNF](declarations/targetcnf.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [targetCNF_correct](declarations/targetcnf-correct.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [toCNF](declarations/tocnf.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [toCNF_correct](declarations/tocnf-correct.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [targetCNF_length](declarations/targetcnf-length.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [toCNF_length_le](declarations/tocnf-length-le.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [Implements](declarations/implements.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `structure` | [CompiledAlgorithm](declarations/compiledalgorithm.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [satisfiable_toCNF_iff_preimage](declarations/satisfiable-tocnf-iff-preimage.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [CompiledAlgorithm.sat_iff_preimage](declarations/compiledalgorithm-sat-iff-preimage.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [InputWitness](declarations/inputwitness.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [inputWitness_iff_preimage](declarations/inputwitness-iff-preimage.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [blockingClause](declarations/blockingclause.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [blockingClause_correct](declarations/blockingclause-correct.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [truthTableCNF](declarations/truthtablecnf.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [truthTableCNF_correct](declarations/truthtablecnf-correct.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [every_fixed_width_function_reduces_to_sat](declarations/every-fixed-width-function-reduces-to-sat.md) | 590 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [bijective_has_unique_preimage](declarations/bijective-has-unique-preimage.md) | 609 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [bijective_circuit_has_unique_sat_input](declarations/bijective-circuit-has-unique-sat-input.md) | 624 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [bijective_truthTable_has_unique_sat_input](declarations/bijective-truthtable-has-unique-sat-input.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3117a9dcbf869de0c573d63c0798c4e02f50a5990b1de5403bd18a14dab658fd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SATReduction/Variantf703273d76dafd52ee71c2486f2526dc42195865a87f34840189cc33a9821059.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
