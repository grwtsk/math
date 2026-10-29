# Rat Defs Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**61 observed declarations and anonymous commands**, 46 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/Defs/Variantc743cfd4c8dfdecbd722c7efaa05a224fd631dd9366e078896d73ab594458afb.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d94bc971696917509bcb194965ac84f657ebb114`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/NumberTheory/ElementaryNumberTheory/RatDefsNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [pos](declarations/pos.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [mk'_num_den](declarations/mk-num-den.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [ofInt_eq_cast](declarations/ofint-eq-cast.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [intCast_injective](declarations/intcast-injective.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [natCast_injective](declarations/natcast-injective.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [intCast_eq_one_iff](declarations/intcast-eq-one-iff.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [natCast_eq_one_iff](declarations/natcast-eq-one-iff.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [mkRat_eq_divInt](declarations/mkrat-eq-divint.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [mk'_zero](declarations/mk-zero.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [num_ne_zero](declarations/num-ne-zero.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [den_ne_zero](declarations/den-ne-zero.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [divInt_eq_zero](declarations/divint-eq-zero.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [divInt_ne_zero](declarations/divint-ne-zero.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [intCast_eq_divInt](declarations/intcast-eq-divint.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [lift_binop_eq](declarations/lift-binop-eq.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [neg_def](declarations/neg-def.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [divInt_neg](declarations/divint-neg.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [mk'_mul_mk'](declarations/mk-mul-mk.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [mul_eq_mkRat](declarations/mul-eq-mkrat.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [pow_eq_mkRat](declarations/pow-eq-mkrat.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [pow_eq_divInt](declarations/pow-eq-divint.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [mk'_pow](declarations/mk-pow.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [inv_mkRat](declarations/inv-mkrat.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [divInt_div_divInt](declarations/divint-div-divint.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [div_def'](declarations/div-def.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [divInt_one](declarations/divint-one.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [divInt_one_one](declarations/divint-one-one.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [zero_ne_one](declarations/zero-ne-one.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [nontrivial](declarations/nontrivial.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [addCommGroup](declarations/addcommgroup.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [addGroup](declarations/addgroup.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [addCommMonoid](declarations/addcommmonoid.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [addMonoid](declarations/addmonoid.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [addLeftCancelSemigroup](declarations/addleftcancelsemigroup.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [addRightCancelSemigroup](declarations/addrightcancelsemigroup.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [addCommSemigroup](declarations/addcommsemigroup.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [addSemigroup](declarations/addsemigroup.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [commMonoid](declarations/commmonoid.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [monoid](declarations/monoid.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [commSemigroup](declarations/commsemigroup.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [semigroup](declarations/semigroup.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [den_neg_eq_den](declarations/den-neg-eq-den.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [num_neg_eq_neg_num](declarations/num-neg-eq-neg-num.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [num_zero](declarations/num-zero.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [den_zero](declarations/den-zero.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [zero_of_num_zero](declarations/zero-of-num-zero.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [zero_iff_num_zero](declarations/zero-iff-num-zero.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [num_one](declarations/num-one.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [den_one](declarations/den-one.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [mk_num_ne_zero_of_ne_zero](declarations/mk-num-ne-zero-of-ne-zero.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [mk_denom_ne_zero_of_ne_zero](declarations/mk-denom-ne-zero-of-ne-zero.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [divInt_ne_zero_of_ne_zero](declarations/divint-ne-zero-of-ne-zero.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [add_divInt](declarations/add-divint.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [intCast_div_eq_divInt](declarations/intcast-div-eq-divint.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [natCast_div_eq_divInt](declarations/natcast-div-eq-divint.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [divInt_mul_divInt_cancel](declarations/divint-mul-divint-cancel.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [coe_int_num_of_den_eq_one](declarations/coe-int-num-of-den-eq-one.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `lemma` | [eq_num_of_isInt](declarations/eq-num-of-isint.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [den_eq_one_iff](declarations/den-eq-one-iff.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `instance` | [canLift](declarations/canlift.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [divCasesOn](declarations/divcaseson.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5f2ec4d4713ebe57889301f5147743912a1734abc03a429360099903677fd057 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Defs/Variantc743cfd4c8dfdecbd722c7efaa05a224fd631dd9366e078896d73ab594458afb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
