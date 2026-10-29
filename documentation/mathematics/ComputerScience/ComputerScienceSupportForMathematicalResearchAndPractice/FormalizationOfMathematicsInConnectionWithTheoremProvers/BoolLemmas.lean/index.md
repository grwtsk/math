# Bool Lemmas

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**38 observed declarations and anonymous commands**, 38 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta2484aa23b2f5d28a326e7b73a19012db64e529ab35be854079d2b0dd05067d5.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c74aba3a4dc2b61b2ce63d05fcedc4086b798c43`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BoolLemmas.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `lemma` | [cond_true](declarations/cond-true.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [cond_false](declarations/cond-false.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [cond_self.](declarations/cond-self.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [xor_self](declarations/xor-self.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [xor_true](declarations/xor-true.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [xor_false](declarations/xor-false.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [true_xor](declarations/true-xor.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [false_xor](declarations/false-xor.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [true_eq_false_eq_False](declarations/true-eq-false-eq-false.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [false_eq_true_eq_False](declarations/false-eq-true-eq-false.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [eq_false_eq_not_eq_true](declarations/eq-false-eq-not-eq-true.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [eq_true_eq_not_eq_false](declarations/eq-true-eq-not-eq-false.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [eq_false_of_not_eq_true](declarations/eq-false-of-not-eq-true.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [eq_true_of_not_eq_false](declarations/eq-true-of-not-eq-false.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [and_eq_true_eq_eq_true_and_eq_true](declarations/and-eq-true-eq-eq-true-and-eq-true.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [or_eq_true_eq_eq_true_or_eq_true](declarations/or-eq-true-eq-eq-true-or-eq-true.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [not_eq_true_eq_eq_false](declarations/not-eq-true-eq-eq-false.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [and_eq_false_eq_eq_false_or_eq_false](declarations/and-eq-false-eq-eq-false-or-eq-false.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [or_eq_false_eq_eq_false_and_eq_false](declarations/or-eq-false-eq-eq-false-and-eq-false.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [not_eq_false_eq_eq_true](declarations/not-eq-false-eq-eq-true.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [coe_false](declarations/coe-false.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [coe_true](declarations/coe-true.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [coe_sort_false](declarations/coe-sort-false.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [coe_sort_true](declarations/coe-sort-true.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [decide_iff](declarations/decide-iff.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [decide_true](declarations/decide-true.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [of_decide_true](declarations/of-decide-true.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [bool_iff_false](declarations/bool-iff-false.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [bool_eq_false](declarations/bool-eq-false.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [decide_false_iff](declarations/decide-false-iff.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [decide_false](declarations/decide-false.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [of_decide_false](declarations/of-decide-false.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [decide_congr](declarations/decide-congr.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [or_coe_iff](declarations/or-coe-iff.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [and_coe_iff](declarations/and-coe-iff.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [xor_coe_iff](declarations/xor-coe-iff.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [ite_eq_true_distrib](declarations/ite-eq-true-distrib.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [ite_eq_false_distrib](declarations/ite-eq-false-distrib.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2f1e1bedca8afc5fb9d3f8582bc88ef722a29e9976e70150659f24d89896c028 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta2484aa23b2f5d28a326e7b73a19012db64e529ab35be854079d2b0dd05067d5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
