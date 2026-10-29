# Fixed Program Interpreter Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**23 observed declarations and anonymous commands**, 6 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FixedProgramInterpreter/Variantf34998ae050b2893fee5a1461de7e05e65e33b0dfc3217a7263d1d43f2fdb75c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `15108fba50eb1f256fd4dc73b3580ebb0ad42162`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/FixedProgramInterpreterNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [State](declarations/state.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [zeroState](declarations/zerostate.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [programLengthBits](declarations/programlengthbits.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [maxProgramBytes](declarations/maxprogrambytes.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [maxStackDepth](declarations/maxstackdepth.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `abbrev` | [IndexBitPosition](declarations/indexbitposition.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `inductive` | [Operation](declarations/operation.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [nextStackDepth](declarations/nextstackdepth.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [executeOperation](declarations/executeoperation.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [evaluateOperations](declarations/evaluateoperations.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [validateOperationsFrom](declarations/validateoperationsfrom.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [validateOperations](declarations/validateoperations.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [DecodedProgram](declarations/decodedprogram.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [CheckedDecoder](declarations/checkeddecoder.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [DecodedProgram.evaluate](declarations/decodedprogram-evaluate.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [DecodedProgram.evaluateOperations_eq_some_evaluate](declarations/decodedprogram-evaluateoperations-eq-some-evaluate.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [interpretChecked](declarations/interpretchecked.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [interpretTotal](declarations/interprettotal.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [interpretTotal_eq_checked_getD](declarations/interprettotal-eq-checked-getd.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [interpretTotal_of_decode_some](declarations/interprettotal-of-decode-some.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [interpretChecked_of_decode_none](declarations/interpretchecked-of-decode-none.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [interpretTotal_of_decode_none](declarations/interprettotal-of-decode-none.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [interpretTotal_apply_of_decode_none](declarations/interprettotal-apply-of-decode-none.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=54bac6c91dcc09682026ccfde4d5350d3acac5e09ca31a816b7d12e0dbbcbd6a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FixedProgramInterpreter/Variantf34998ae050b2893fee5a1461de7e05e65e33b0dfc3217a7263d1d43f2fdb75c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
