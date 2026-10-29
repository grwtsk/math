# Continuous Namespaced Unit Interval

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**42 observed declarations and anonymous commands**, 23 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuous/Variant12588a14d9e6d76adabfcc839cd878601abea211cd461ab0db40a513addd2bec.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6d1a4472d6e5351385a7f6c6b40c6f7e7de73635`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ContinuousNamespacedUnitInterval.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [UnitInterval](declarations/unitinterval.md) | 18 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [denominator](declarations/denominator.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [zero](declarations/zero.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [one](declarations/one.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [ofBool](declarations/ofbool.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [add](declarations/add.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [sub](declarations/sub.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [mul](declarations/mul.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [compl](declarations/compl.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [leq](declarations/leq.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [min](declarations/min.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [max](declarations/max.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [denominator_zero](declarations/denominator-zero.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [denominator_one](declarations/denominator-one.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [ofBool_false](declarations/ofbool-false.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [ofBool_true](declarations/ofbool-true.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [compl_zero](declarations/compl-zero.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [compl_one](declarations/compl-one.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `structure` | [Operators](declarations/operators.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `abbrev` | [Valuation](declarations/valuation.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [eval](declarations/eval.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [eval_var](declarations/eval-var.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [eval_falsum](declarations/eval-falsum.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [eval_truth](declarations/eval-truth.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [lukasiewiczOperators](declarations/lukasiewiczoperators.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [probabilisticOperators](declarations/probabilisticoperators.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [evalLukasiewicz](declarations/evallukasiewicz.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [evalProbabilistic](declarations/evalprobabilistic.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [lukasiewicz_compl_ofBool](declarations/lukasiewicz-compl-ofbool.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [lukasiewicz_conj_ofBool](declarations/lukasiewicz-conj-ofbool.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [lukasiewicz_disj_ofBool](declarations/lukasiewicz-disj-ofbool.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [lukasiewicz_impl_ofBool](declarations/lukasiewicz-impl-ofbool.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [lukasiewicz_eqv_ofBool](declarations/lukasiewicz-eqv-ofbool.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [lukasiewicz_nand_ofBool](declarations/lukasiewicz-nand-ofbool.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [probabilistic_compl_ofBool](declarations/probabilistic-compl-ofbool.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [probabilistic_conj_ofBool](declarations/probabilistic-conj-ofbool.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [probabilistic_disj_ofBool](declarations/probabilistic-disj-ofbool.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [probabilistic_impl_ofBool](declarations/probabilistic-impl-ofbool.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [probabilistic_eqv_ofBool](declarations/probabilistic-eqv-ofbool.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [probabilistic_nand_ofBool](declarations/probabilistic-nand-ofbool.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [evalLukasiewicz_ofBool](declarations/evallukasiewicz-ofbool.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [evalProbabilistic_ofBool](declarations/evalprobabilistic-ofbool.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=22a218292a56245e2c0a8ea0fa69b3aa56a0d432477941f9f2de2558a7a2fd9d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuous/Variant12588a14d9e6d76adabfcc839cd878601abea211cd461ab0db40a513addd2bec.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
