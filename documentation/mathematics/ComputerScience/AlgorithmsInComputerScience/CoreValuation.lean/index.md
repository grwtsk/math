# Core Valuation

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**64 observed declarations and anonymous commands**, 50 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant004eb2c8b5d8f37ea2d52c8aabc1b8bcd0602d1cfbb8ef7730c8daab204fe048.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0b4160de987577662252ec019fbc8e37e250e5e6`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/CoreValuation.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Valuation](declarations/valuation.md) | 8 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [Formula](declarations/formula.md) | 11 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [const](declarations/const.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [eval](declarations/eval.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [eval_var](declarations/eval-var.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [eval_falsum](declarations/eval-falsum.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [eval_truth](declarations/eval-truth.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [eval_neg](declarations/eval-neg.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [eval_conj](declarations/eval-conj.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [eval_disj](declarations/eval-disj.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [eval_impl](declarations/eval-impl.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [eval_eqv](declarations/eval-eqv.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [eval_const](declarations/eval-const.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [mapAtoms](declarations/mapatoms.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mapAtoms_const](declarations/mapatoms-const.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [mapAtoms_id](declarations/mapatoms-id.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [mapAtoms_comp](declarations/mapatoms-comp.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [eval_mapAtoms](declarations/eval-mapatoms.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [atoms](declarations/atoms.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [size](declarations/size.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [depth](declarations/depth.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [size_mapAtoms](declarations/size-mapatoms.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [depth_mapAtoms](declarations/depth-mapatoms.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [eval_congr](declarations/eval-congr.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [Satisfies](declarations/satisfies.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [Valid](declarations/valid.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [Satisfiable](declarations/satisfiable.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [Unsatisfiable](declarations/unsatisfiable.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [Entails](declarations/entails.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [Equivalent](declarations/equivalent.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [equivalent_refl](declarations/equivalent-refl.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [equivalent_symm](declarations/equivalent-symm.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [equivalent_trans](declarations/equivalent-trans.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [entails_refl](declarations/entails-refl.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [entails_trans](declarations/entails-trans.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [entails_of_equivalent](declarations/entails-of-equivalent.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [valid_of_equivalent](declarations/valid-of-equivalent.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [satisfiable_of_equivalent](declarations/satisfiable-of-equivalent.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [unsatisfiable_of_equivalent](declarations/unsatisfiable-of-equivalent.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [equivalent_neg](declarations/equivalent-neg.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [equivalent_conj](declarations/equivalent-conj.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [equivalent_disj](declarations/equivalent-disj.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [equivalent_impl](declarations/equivalent-impl.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [equivalent_eqv](declarations/equivalent-eqv.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [valid_truth](declarations/valid-truth.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [unsatisfiable_falsum](declarations/unsatisfiable-falsum.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [satisfiable_truth](declarations/satisfiable-truth.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [not_satisfiable_falsum](declarations/not-satisfiable-falsum.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [satisfiable_of_valid](declarations/satisfiable-of-valid.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [valid_neg_of_unsatisfiable](declarations/valid-neg-of-unsatisfiable.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [unsatisfiable_of_valid_neg](declarations/unsatisfiable-of-valid-neg.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [valid_neg_iff_unsatisfiable](declarations/valid-neg-iff-unsatisfiable.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [unsatisfiable_iff_not_satisfiable](declarations/unsatisfiable-iff-not-satisfiable.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [valid_iff_not_satisfiable_neg](declarations/valid-iff-not-satisfiable-neg.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [equivalent_double_neg](declarations/equivalent-double-neg.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [equivalent_conj_comm](declarations/equivalent-conj-comm.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [equivalent_disj_comm](declarations/equivalent-disj-comm.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [equivalent_conj_assoc](declarations/equivalent-conj-assoc.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [equivalent_disj_assoc](declarations/equivalent-disj-assoc.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [equivalent_impl_disj](declarations/equivalent-impl-disj.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [equivalent_deMorgan_conj](declarations/equivalent-demorgan-conj.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [equivalent_deMorgan_disj](declarations/equivalent-demorgan-disj.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [valid_impl_refl](declarations/valid-impl-refl.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [valid_eqv_refl](declarations/valid-eqv-refl.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d5d10484d41772839b4268ab6f51dec85bb7517bb559876f269011e7d62e6c40 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant004eb2c8b5d8f37ea2d52c8aabc1b8bcd0602d1cfbb8ef7730c8daab204fe048.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
