# Arithcc Namespaced Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 14 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variantee163defbf7b6a80d870ac0e383ebeec2e6ac6745226a9e18a4c59a83caa2f11.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8ea51c5798cb305b37b1f9ee0d98cb19f2fd4423`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ArithccNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Word](declarations/word.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [Identifier](declarations/identifier.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [Register](declarations/register.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [Register.lt_succ_self](declarations/register-lt-succ-self.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [Register.le_of_lt_succ](declarations/register-le-of-lt-succ.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `inductive` | [Expr](declarations/expr.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [value](declarations/value.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `inductive` | [Instruction](declarations/instruction.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [State](declarations/state.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [read](declarations/read.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [write](declarations/write.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [step](declarations/step.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [outcome](declarations/outcome.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [outcome_append](declarations/outcome-append.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [loc](declarations/loc.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [compile](declarations/compile.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [StateEqRs](declarations/stateeqrs.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [StateEqRs.refl](declarations/stateeqrs-refl.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [StateEqRs.symm](declarations/stateeqrs-symm.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [StateEqRs.trans](declarations/stateeqrs-trans.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [StateEq](declarations/stateeq.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [StateEq.refl](declarations/stateeq-refl.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [StateEq.symm](declarations/stateeq-symm.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [StateEq.trans](declarations/stateeq-trans.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [StateEqStateEqRs.trans](declarations/stateeqstateeqrs-trans.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [stateEq_implies_write_eq](declarations/stateeq-implies-write-eq.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [stateEqRs_implies_write_eq_rs](declarations/stateeqrs-implies-write-eq-rs.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [write_eq_implies_stateEq](declarations/write-eq-implies-stateeq.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [compiler_correctness](declarations/compiler-correctness.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `example` | [(anonymous)](declarations/example.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3e7d6aba254a232a0bdbfa5da294fd1828c69799385f96a70e41806640268e71 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variantee163defbf7b6a80d870ac0e383ebeec2e6ac6745226a9e18a4c59a83caa2f11.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
