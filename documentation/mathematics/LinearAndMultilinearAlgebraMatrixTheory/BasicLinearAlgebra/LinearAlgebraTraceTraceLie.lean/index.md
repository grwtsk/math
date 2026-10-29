# Linear Algebra Trace Trace Lie

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 31 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Trace/Variant7d8d85bf69fddb7c90d192e6956d2989b51b3f3dc626ec5b82354aaf87d26333.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6edf37b5746da28bc86ea65c0b567bab2a9de8bc`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraTraceTraceLie.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [traceAux](declarations/traceaux.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [traceAux_def](declarations/traceaux-def.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [traceAux_eq](declarations/traceaux-eq.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [trace](declarations/trace.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [trace_eq_matrix_trace_of_finset](declarations/trace-eq-matrix-trace-of-finset.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [trace_eq_matrix_trace](declarations/trace-eq-matrix-trace.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [trace_mul_comm](declarations/trace-mul-comm.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [trace_mul_cycle](declarations/trace-mul-cycle-source-edition-2.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [trace_mul_cycle'](declarations/trace-mul-cycle.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [trace_conj](declarations/trace-conj.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [trace_lie](declarations/trace-lie.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [trace_eq_contract_of_basis](declarations/trace-eq-contract-of-basis-source-edition-2.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [trace_eq_contract_of_basis'](declarations/trace-eq-contract-of-basis.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [trace_eq_contract](declarations/trace-eq-contract.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [trace_eq_contract_apply](declarations/trace-eq-contract-apply.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [trace_eq_contract'](declarations/trace-eq-contract-source-edition-2.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [trace_one](declarations/trace-one.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [trace_id](declarations/trace-id.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [trace_transpose](declarations/trace-transpose.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [trace_prodMap](declarations/trace-prodmap.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [trace_prodMap'](declarations/trace-prodmap-source-edition-2.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [trace_tensorProduct](declarations/trace-tensorproduct-source-edition-2.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [trace_comp_comm](declarations/trace-comp-comm.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [trace_transpose'](declarations/trace-transpose-source-edition-2.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [trace_tensorProduct'](declarations/trace-tensorproduct.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [trace_comp_comm'](declarations/trace-comp-comm-source-edition-2.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [trace_comp_cycle](declarations/trace-comp-cycle-source-edition-2.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [trace_comp_cycle'](declarations/trace-comp-cycle.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [trace_conj'](declarations/trace-conj-source-edition-2.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [IsProj.trace](declarations/isproj-trace.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [isNilpotent_trace_of_isNilpotent](declarations/isnilpotent-trace-of-isnilpotent.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [trace_comp_eq_mul_of_commute_of_isNilpotent](declarations/trace-comp-eq-mul-of-commute-of-isnilpotent.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [trace_baseChange](declarations/trace-basechange.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d1f28d1b4f85d54b9ff00d83bd351b71734b92b9c4c4735e7f7a08caa6559472 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Trace/Variant7d8d85bf69fddb7c90d192e6956d2989b51b3f3dc626ec5b82354aaf87d26333.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
