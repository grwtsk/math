# Rat Defs Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**61 observed declarations and anonymous commands**, 46 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c66021e40f6aefda3b98f207041cc0c16f83e53f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/NumberTheory/ElementaryNumberTheory/RatDefsPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [pos](declarations/pos.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [mk'_num_den](declarations/mk-num-den.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [ofInt_eq_cast](declarations/ofint-eq-cast.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [intCast_injective](declarations/intcast-injective.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [natCast_injective](declarations/natcast-injective.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [intCast_eq_one_iff](declarations/intcast-eq-one-iff.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [natCast_eq_one_iff](declarations/natcast-eq-one-iff.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [mkRat_eq_divInt](declarations/mkrat-eq-divint.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [mk'_zero](declarations/mk-zero.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [num_ne_zero](declarations/num-ne-zero.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [den_ne_zero](declarations/den-ne-zero.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [divInt_eq_zero](declarations/divint-eq-zero.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [divInt_ne_zero](declarations/divint-ne-zero.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [intCast_eq_divInt](declarations/intcast-eq-divint.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [lift_binop_eq](declarations/lift-binop-eq.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [neg_def](declarations/neg-def.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [divInt_neg](declarations/divint-neg.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [mk'_mul_mk'](declarations/mk-mul-mk.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [mul_eq_mkRat](declarations/mul-eq-mkrat.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [pow_eq_mkRat](declarations/pow-eq-mkrat.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [pow_eq_divInt](declarations/pow-eq-divint.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [mk'_pow](declarations/mk-pow.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [inv_mkRat](declarations/inv-mkrat.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [divInt_div_divInt](declarations/divint-div-divint.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [div_def'](declarations/div-def.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [divInt_one](declarations/divint-one.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [divInt_one_one](declarations/divint-one-one.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [zero_ne_one](declarations/zero-ne-one.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [nontrivial](declarations/nontrivial.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [addCommGroup](declarations/addcommgroup.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [addGroup](declarations/addgroup.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [addCommMonoid](declarations/addcommmonoid.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [addMonoid](declarations/addmonoid.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [addLeftCancelSemigroup](declarations/addleftcancelsemigroup.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [addRightCancelSemigroup](declarations/addrightcancelsemigroup.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [addCommSemigroup](declarations/addcommsemigroup.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [addSemigroup](declarations/addsemigroup.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [commMonoid](declarations/commmonoid.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [monoid](declarations/monoid.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [commSemigroup](declarations/commsemigroup.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [semigroup](declarations/semigroup.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [den_neg_eq_den](declarations/den-neg-eq-den.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [num_neg_eq_neg_num](declarations/num-neg-eq-neg-num.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [num_zero](declarations/num-zero.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [den_zero](declarations/den-zero.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [zero_of_num_zero](declarations/zero-of-num-zero.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [zero_iff_num_zero](declarations/zero-iff-num-zero.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [num_one](declarations/num-one.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [den_one](declarations/den-one.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [mk_num_ne_zero_of_ne_zero](declarations/mk-num-ne-zero-of-ne-zero.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [mk_denom_ne_zero_of_ne_zero](declarations/mk-denom-ne-zero-of-ne-zero.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [divInt_ne_zero_of_ne_zero](declarations/divint-ne-zero-of-ne-zero.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [add_divInt](declarations/add-divint.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [intCast_div_eq_divInt](declarations/intcast-div-eq-divint.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [natCast_div_eq_divInt](declarations/natcast-div-eq-divint.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [divInt_mul_divInt_cancel](declarations/divint-mul-divint-cancel.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [coe_int_num_of_den_eq_one](declarations/coe-int-num-of-den-eq-one.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `lemma` | [eq_num_of_isInt](declarations/eq-num-of-isint.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [den_eq_one_iff](declarations/den-eq-one-iff.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `instance` | [canLift](declarations/canlift.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [divCasesOn](declarations/divcaseson.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=48b717f3a0c8015b56150cbdec4b06007d820acf6840af5d8a924fdf390640aa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Defs/Varianted315c24b6c161f791abc0def7da2975850d081a0379297c9a186628f0e9195b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
