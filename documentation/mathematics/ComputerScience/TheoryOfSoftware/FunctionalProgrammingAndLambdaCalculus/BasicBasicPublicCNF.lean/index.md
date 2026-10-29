# Basic Basic Public CNF

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**43 observed declarations and anonymous commands**, 24 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3a7adef51325558e2529fdab9cacf6ddd2aa991ca501e8e945d9bd6eaeec4228.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3ec666c4346637c52df9687c505f1d60be6812f7`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicCNF.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [CNF.Clause](declarations/cnf-clause.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [CNF](declarations/cnf.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Clause.eval](declarations/clause-eval.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [Clause.eval_nil](declarations/clause-eval-nil.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [Clause.eval_cons](declarations/clause-eval-cons.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [eval](declarations/eval.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [empty](declarations/empty.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [emptyWithCapacity](declarations/emptywithcapacity.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [add](declarations/add.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [append](declarations/append.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [eval_empty](declarations/eval-empty.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [eval_add](declarations/eval-add.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [eval_append](declarations/eval-append.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [Sat](declarations/sat.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [Unsat](declarations/unsat.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [sat_def](declarations/sat-def.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [unsat_def](declarations/unsat-def.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [not_unsat_empty](declarations/not-unsat-empty.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [sat_empty](declarations/sat-empty.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [unsat_add_nil](declarations/unsat-add-nil.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [Mem](declarations/mem-source-edition-2.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [not_mem_nil](declarations/not-mem-nil.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [mem_cons](declarations/mem-cons.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [mem_of](declarations/mem-of.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [eval_congr](declarations/eval-congr-source-edition-2.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [Mem](declarations/mem.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [(anonymous)](declarations/instance.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [VarMem](declarations/varmem.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [Internal.any_not_isEmpty_iff_exists_mem](declarations/internal-any-not-isempty-iff-exists-mem.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [not_VarMem_empty](declarations/not-varmem-empty.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [VarMem_add](declarations/varmem-add.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [VarMem_of](declarations/varmem-of.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [Internal.mem_iff](declarations/internal-mem-iff.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [Internal.clauses_append](declarations/internal-clauses-append.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [Internal.ext_iff](declarations/internal-ext-iff.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [emptyWithCapacity_eq_empty](declarations/emptywithcapacity-eq-empty.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [VarMem_append](declarations/varmem-append.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [eval_congr](declarations/eval-congr.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7706703a5f9e54b9faef0eafe2369dabd4c542d60e638e19358219ae86c740b5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3a7adef51325558e2529fdab9cacf6ddd2aa991ca501e8e945d9bd6eaeec4228.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
