# Inner Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Inner/Variantf43707f41dbb5224442aa951903fde7efb6c74110fb7e5ddfc198d0ecdfff757.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `583f697e054712bb4da876bf3becc182955138b1`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FunctionalAnalysis/InnerNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [wInner](declarations/winner.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [cWeight](declarations/cweight.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [wInner_cWeight_eq_smul_wInner_one](declarations/winner-cweight-eq-smul-winner-one.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [conj_wInner_symm](declarations/conj-winner-symm.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [wInner_zero_left](declarations/winner-zero-left.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [wInner_zero_right](declarations/winner-zero-right.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [wInner_add_left](declarations/winner-add-left.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [wInner_add_right](declarations/winner-add-right.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [wInner_neg_left](declarations/winner-neg-left.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [wInner_neg_right](declarations/winner-neg-right.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [wInner_sub_left](declarations/winner-sub-left.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [wInner_sub_right](declarations/winner-sub-right.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [wInner_of_isEmpty](declarations/winner-of-isempty.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [wInner_smul_left](declarations/winner-smul-left.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [wInner_smul_right](declarations/winner-smul-right.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [mul_wInner_left](declarations/mul-winner-left.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [wInner_one_eq_sum](declarations/winner-one-eq-sum.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [wInner_cWeight_eq_expect](declarations/winner-cweight-eq-expect.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [wInner_const_left](declarations/winner-const-left.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [wInner_const_right](declarations/winner-const-right.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [wInner_one_const_left](declarations/winner-one-const-left.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [wInner_one_const_right](declarations/winner-one-const-right.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [wInner_cWeight_const_left](declarations/winner-cweight-const-left.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [wInner_cWeight_const_right](declarations/winner-cweight-const-right.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [wInner_one_eq_inner](declarations/winner-one-eq-inner.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [inner_eq_wInner_one](declarations/inner-eq-winner-one.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [linearIndependent_of_ne_zero_of_wInner_one_eq_zero](declarations/linearindependent-of-ne-zero-of-winner-one-eq-zero.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [linearIndependent_of_ne_zero_of_wInner_cWeight_eq_zero](declarations/linearindependent-of-ne-zero-of-winner-cweight-eq-zero.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [wInner_nonneg](declarations/winner-nonneg.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [norm_wInner_le](declarations/norm-winner-le.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [abs_wInner_le](declarations/abs-winner-le.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=090d1e9e0ac1352aefe0f763fdebd8a56c89c540749f1ff1d4a4f021f7b435ba -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Inner/Variantf43707f41dbb5224442aa951903fde7efb6c74110fb7e5ddfc198d0ecdfff757.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
