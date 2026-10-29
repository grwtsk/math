# Arithcc Namespaced Aligned

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 14 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant367e48d67e746baf0ca1ad2785f537aa1aab1ebd825b67b3d07f028f435b99a1.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c61891b1fecb532c0379b5a6e2a6c6c8bb04c0ed`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ArithccNamespacedAligned.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [Word](declarations/word.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Identifier](declarations/identifier.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Register](declarations/register.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [Register.lt_succ_self](declarations/register-lt-succ-self.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [Register.le_of_lt_succ](declarations/register-le-of-lt-succ.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `inductive` | [Expr](declarations/expr.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [value](declarations/value.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `inductive` | [Instruction](declarations/instruction.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [State](declarations/state.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [read](declarations/read.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [write](declarations/write.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [step](declarations/step.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [outcome](declarations/outcome.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [outcome_append](declarations/outcome-append.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [loc](declarations/loc.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [compile](declarations/compile.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [StateEqRs](declarations/stateeqrs.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [StateEqRs.refl](declarations/stateeqrs-refl.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [StateEqRs.symm](declarations/stateeqrs-symm.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [StateEqRs.trans](declarations/stateeqrs-trans.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [StateEq](declarations/stateeq.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [StateEq.refl](declarations/stateeq-refl.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [StateEq.symm](declarations/stateeq-symm.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [StateEq.trans](declarations/stateeq-trans.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [StateEqStateEqRs.trans](declarations/stateeqstateeqrs-trans.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [stateEq_implies_write_eq](declarations/stateeq-implies-write-eq.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [stateEqRs_implies_write_eq_rs](declarations/stateeqrs-implies-write-eq-rs.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [write_eq_implies_stateEq](declarations/write-eq-implies-stateeq.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [compiler_correctness](declarations/compiler-correctness.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `example` | [(anonymous)](declarations/example.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=24e87ee16745bafaf5d1c7c6532192492f3c922cdf9efe9e66a8c84c9cacdfa3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant367e48d67e746baf0ca1ad2785f537aa1aab1ebd825b67b3d07f028f435b99a1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
