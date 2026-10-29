# Continuous Unit Interval

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**42 observed declarations and anonymous commands**, 23 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuous/Variantaf330c239727cdaa82ac99be49777d069d65e0d633b9eec14cabaa8375407846.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `48e4a1c3c27635d4d8a7e340d8e180b7ee934809`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ContinuousUnitInterval.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [UnitInterval](declarations/unitinterval.md) | 10 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [denominator](declarations/denominator.md) | 18 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [zero](declarations/zero.md) | 22 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [one](declarations/one.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [ofBool](declarations/ofbool.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [add](declarations/add.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [sub](declarations/sub.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [mul](declarations/mul.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [compl](declarations/compl.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [leq](declarations/leq.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [min](declarations/min.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [max](declarations/max.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [denominator_zero](declarations/denominator-zero.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [denominator_one](declarations/denominator-one.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [ofBool_false](declarations/ofbool-false.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [ofBool_true](declarations/ofbool-true.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [compl_zero](declarations/compl-zero.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [compl_one](declarations/compl-one.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `structure` | [Operators](declarations/operators.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `abbrev` | [Valuation](declarations/valuation.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [eval](declarations/eval.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [eval_var](declarations/eval-var.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [eval_falsum](declarations/eval-falsum.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [eval_truth](declarations/eval-truth.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [lukasiewiczOperators](declarations/lukasiewiczoperators.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [probabilisticOperators](declarations/probabilisticoperators.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [evalLukasiewicz](declarations/evallukasiewicz.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [evalProbabilistic](declarations/evalprobabilistic.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [lukasiewicz_compl_ofBool](declarations/lukasiewicz-compl-ofbool.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [lukasiewicz_conj_ofBool](declarations/lukasiewicz-conj-ofbool.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [lukasiewicz_disj_ofBool](declarations/lukasiewicz-disj-ofbool.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [lukasiewicz_impl_ofBool](declarations/lukasiewicz-impl-ofbool.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [lukasiewicz_eqv_ofBool](declarations/lukasiewicz-eqv-ofbool.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [lukasiewicz_nand_ofBool](declarations/lukasiewicz-nand-ofbool.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [probabilistic_compl_ofBool](declarations/probabilistic-compl-ofbool.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [probabilistic_conj_ofBool](declarations/probabilistic-conj-ofbool.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [probabilistic_disj_ofBool](declarations/probabilistic-disj-ofbool.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [probabilistic_impl_ofBool](declarations/probabilistic-impl-ofbool.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [probabilistic_eqv_ofBool](declarations/probabilistic-eqv-ofbool.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [probabilistic_nand_ofBool](declarations/probabilistic-nand-ofbool.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [evalLukasiewicz_ofBool](declarations/evallukasiewicz-ofbool.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [evalProbabilistic_ofBool](declarations/evalprobabilistic-ofbool.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ba7bd0e8a4384e7ce9725c7e39316ea51d930f6acb5c0e8ecd5f60d4165ac4e1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuous/Variantaf330c239727cdaa82ac99be49777d069d65e0d633b9eec14cabaa8375407846.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
