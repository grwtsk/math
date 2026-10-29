# Forward Diff Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 28 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/CommutativeAlgebra/ForwardDiff/Variant9823a33fddd322eba9bb427831f175e18efb812bccc97e845a7b7ae1b0421676.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `72b559d6c958ee410c1c5d9df942becee5f3db4b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GroupTheoryAndGeneralizations/ForwardDiffPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [fwdDiff](declarations/fwddiff.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [fwdDiff_add](declarations/fwddiff-add.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [fwdDiff_const](declarations/fwddiff-const.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [fwdDiff_smul](declarations/fwddiff-smul.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [fwdDiff_const_smul](declarations/fwddiff-const-smul.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [fwdDiff_smul_const](declarations/fwddiff-smul-const.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [fwdDiffₗ](declarations/fwddiff-source-edition-2.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [coe_fwdDiffₗ](declarations/coe-fwddiff.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [coe_fwdDiffₗ_pow](declarations/coe-fwddiff-pow.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [shiftₗ](declarations/shift.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [shiftₗ_apply](declarations/shift-apply.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [shiftₗ_pow_apply](declarations/shift-pow-apply.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [fwdDiff_finsetSum](declarations/fwddiff-finsetsum.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [fwdDiff_iter_add](declarations/fwddiff-iter-add.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [fwdDiff_iter_const_smul](declarations/fwddiff-iter-const-smul.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [fwdDiff_iter_finsetSum](declarations/fwddiff-iter-finsetsum.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [fwdDiff_iter_eq_sum_shift](declarations/fwddiff-iter-eq-sum-shift.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [fwdDiff_iter_comp_add](declarations/fwddiff-iter-comp-add.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [fwdDiff_comp_add](declarations/fwddiff-comp-add.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [shift_eq_sum_fwdDiff_iter](declarations/shift-eq-sum-fwddiff-iter.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [fwdDiff_choose](declarations/fwddiff-choose.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [fwdDiff_iter_choose](declarations/fwddiff-iter-choose.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [fwdDiff_iter_choose_zero](declarations/fwddiff-iter-choose-zero.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [fwdDiff_addChar_eq](declarations/fwddiff-addchar-eq.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [fwdDiff_iter_pow_eq_zero_of_lt](declarations/fwddiff-iter-pow-eq-zero-of-lt.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [fwdDiff_iter_eq_factorial](declarations/fwddiff-iter-eq-factorial.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [Polynomial.fwdDiff_iter_degree_eq_factorial](declarations/polynomial-fwddiff-iter-degree-eq-factorial.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [Polynomial.fwdDiff_iter_eq_zero_of_degree_lt](declarations/polynomial-fwddiff-iter-eq-zero-of-degree-lt.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Polynomial.fwdDiff_iter_degree_add_one_eq_zero](declarations/polynomial-fwddiff-iter-degree-add-one-eq-zero.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [fwdDiff_iter_sum_mul_pow_eq_zero](declarations/fwddiff-iter-sum-mul-pow-eq-zero.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [sum_range_shift_eq_sum_fwdDiff_iter](declarations/sum-range-shift-eq-sum-fwddiff-iter.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=059576c324aec9d1ef0fb59055b4e5bbd3af53cac92013f736cd033f88400ba9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/ForwardDiff/Variant9823a33fddd322eba9bb427831f175e18efb812bccc97e845a7b7ae1b0421676.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
