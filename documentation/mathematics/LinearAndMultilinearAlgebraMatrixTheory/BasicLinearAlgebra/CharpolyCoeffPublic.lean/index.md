# Charpoly Coeff Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 31 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/CommutativeAlgebra/Coeff/Variant4fc1ee06ff76b13dd6e641e7b284e9e925f2cc259784bed14dd6828296e39d09.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0f1f9f1b2ee9a0af47373b039eab1bb5d7f33ccd`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [charmatrix_apply_natDegree](declarations/charmatrix-apply-natdegree.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [charmatrix_apply_natDegree_le](declarations/charmatrix-apply-natdegree-le.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [charpoly_sub_diagonal_degree_lt](declarations/charpoly-sub-diagonal-degree-lt.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [charpoly_coeff_eq_prod_coeff_of_le](declarations/charpoly-coeff-eq-prod-coeff-of-le.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [charpoly_degree_eq_dim](declarations/charpoly-degree-eq-dim.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [charpoly_natDegree_eq_dim](declarations/charpoly-natdegree-eq-dim.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [charpoly_monic](declarations/charpoly-monic.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [trace_eq_neg_charpoly_coeff](declarations/trace-eq-neg-charpoly-coeff.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [trace_eq_neg_charpoly_nextCoeff](declarations/trace-eq-neg-charpoly-nextcoeff.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [det_eq_sign_charpoly_coeff](declarations/det-eq-sign-charpoly-coeff.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [derivative_det_one_add_X_smul_aux](declarations/derivative-det-one-add-x-smul-aux.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [derivative_det_one_add_X_smul](declarations/derivative-det-one-add-x-smul.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [coeff_det_one_add_X_smul_one](declarations/coeff-det-one-add-x-smul-one.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [det_one_add_X_smul](declarations/det-one-add-x-smul.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [det_one_add_smul](declarations/det-one-add-smul.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [charpoly_of_card_eq_two](declarations/charpoly-of-card-eq-two.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [charpoly_fin_two](declarations/charpoly-fin-two.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [matPolyEquiv_eq_X_pow_sub_C](declarations/matpolyequiv-eq-x-pow-sub-c.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [aeval_eq_aeval_mod_charpoly](declarations/aeval-eq-aeval-mod-charpoly.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [pow_eq_aeval_mod_charpoly](declarations/pow-eq-aeval-mod-charpoly.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [coeff_charpoly_mem_ideal_pow](declarations/coeff-charpoly-mem-ideal-pow.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [charpolyRev](declarations/charpolyrev.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [reverse_charpoly](declarations/reverse-charpoly.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [charpoly_inv](declarations/charpoly-inv.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [eval_charpolyRev](declarations/eval-charpolyrev.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [coeff_charpolyRev_eq_neg_trace](declarations/coeff-charpolyrev-eq-neg-trace.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [isUnit_charpolyRev_of_isNilpotent](declarations/isunit-charpolyrev-of-isnilpotent.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [isNilpotent_trace_of_isNilpotent](declarations/isnilpotent-trace-of-isnilpotent.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [isNilpotent_charpoly_sub_pow_of_isNilpotent](declarations/isnilpotent-charpoly-sub-pow-of-isnilpotent.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [det_piecewise_one_eq_submatrix_det](declarations/det-piecewise-one-eq-submatrix-det.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [coeff_det_one_add_X_smul_eq_sum_minors](declarations/coeff-det-one-add-x-smul-eq-sum-minors.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [charpoly_coeff_eq_sum_minors](declarations/charpoly-coeff-eq-sum-minors.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=27478c430330ed85ec072a1308672954d667d9d0400a5d7141bb704d51d4a92b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Coeff/Variant4fc1ee06ff76b13dd6e641e7b284e9e925f2cc259784bed14dd6828296e39d09.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
