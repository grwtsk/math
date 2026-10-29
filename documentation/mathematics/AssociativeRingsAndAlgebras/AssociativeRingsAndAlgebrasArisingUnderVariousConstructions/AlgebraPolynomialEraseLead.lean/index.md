# Algebra Polynomial Erase Lead

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**52 observed declarations and anonymous commands**, 51 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f9ca512f7ebd7f5f88060fdb89ffef46e7f3c0fc`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialEraseLead.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [eraseLead](declarations/eraselead.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [eraseLead_support](declarations/eraselead-support.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [eraseLead_coeff](declarations/eraselead-coeff.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [eraseLead_coeff_natDegree](declarations/eraselead-coeff-natdegree.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [eraseLead_coeff_of_ne](declarations/eraselead-coeff-of-ne.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [eraseLead_zero](declarations/eraselead-zero.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [eraseLead_add_monomial_natDegree_leadingCoeff](declarations/eraselead-add-monomial-natdegree-leadingcoeff.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [eraseLead_add_C_mul_X_pow](declarations/eraselead-add-c-mul-x-pow.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [self_sub_monomial_natDegree_leadingCoeff](declarations/self-sub-monomial-natdegree-leadingcoeff.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [self_sub_C_mul_X_pow](declarations/self-sub-c-mul-x-pow.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [eraseLead_ne_zero](declarations/eraselead-ne-zero.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [lt_natDegree_of_mem_eraseLead_support](declarations/lt-natdegree-of-mem-eraselead-support.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [ne_natDegree_of_mem_eraseLead_support](declarations/ne-natdegree-of-mem-eraselead-support.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [natDegree_notMem_eraseLead_support](declarations/natdegree-notmem-eraselead-support.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [eraseLead_support_card_lt](declarations/eraselead-support-card-lt.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [card_support_eraseLead_add_one](declarations/card-support-eraselead-add-one.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [card_support_eraseLead](declarations/card-support-eraselead-source-edition-2.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [card_support_eraseLead'](declarations/card-support-eraselead.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [card_support_eq_one_of_eraseLead_eq_zero](declarations/card-support-eq-one-of-eraselead-eq-zero.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [card_support_le_one_of_eraseLead_eq_zero](declarations/card-support-le-one-of-eraselead-eq-zero.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [eraseLead_monomial](declarations/eraselead-monomial.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [eraseLead_C](declarations/eraselead-c.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [eraseLead_X](declarations/eraselead-x.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [eraseLead_X_pow](declarations/eraselead-x-pow.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [eraseLead_C_mul_X_pow](declarations/eraselead-c-mul-x-pow.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [eraseLead_C_mul_X](declarations/eraselead-c-mul-x.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [eraseLead_add_of_degree_lt_left](declarations/eraselead-add-of-degree-lt-left.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [eraseLead_add_of_natDegree_lt_left](declarations/eraselead-add-of-natdegree-lt-left.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [eraseLead_add_of_degree_lt_right](declarations/eraselead-add-of-degree-lt-right.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [eraseLead_add_of_natDegree_lt_right](declarations/eraselead-add-of-natdegree-lt-right.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [eraseLead_degree_le](declarations/eraselead-degree-le.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [degree_eraseLead_lt](declarations/degree-eraselead-lt.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [eraseLead_natDegree_le_aux](declarations/eraselead-natdegree-le-aux.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [eraseLead_natDegree_lt](declarations/eraselead-natdegree-lt.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [natDegree_pos_of_eraseLead_ne_zero](declarations/natdegree-pos-of-eraselead-ne-zero.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [eraseLead_natDegree_lt_or_eraseLead_eq_zero](declarations/eraselead-natdegree-lt-or-eraselead-eq-zero.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [eraseLead_natDegree_le](declarations/eraselead-natdegree-le.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [natDegree_eraseLead](declarations/natdegree-eraselead.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [natDegree_eraseLead_add_one](declarations/natdegree-eraselead-add-one.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [natDegree_eraseLead_le_of_nextCoeff_eq_zero](declarations/natdegree-eraselead-le-of-nextcoeff-eq-zero.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [two_le_natDegree_of_nextCoeff_eraseLead](declarations/two-le-natdegree-of-nextcoeff-eraselead.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [leadingCoeff_eraseLead_eq_nextCoeff](declarations/leadingcoeff-eraselead-eq-nextcoeff.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [nextCoeff_eq_zero_of_eraseLead_eq_zero](declarations/nextcoeff-eq-zero-of-eraselead-eq-zero.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [induction_with_natDegree_le](declarations/induction-with-natdegree-le.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [mono_map_natDegree_eq](declarations/mono-map-natdegree-eq.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [map_natDegree_eq_sub](declarations/map-natdegree-eq-sub.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [map_natDegree_eq_natDegree](declarations/map-natdegree-eq-natdegree.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [card_support_eq'](declarations/card-support-eq-source-edition-2.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [card_support_eq](declarations/card-support-eq.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [card_support_eq_one](declarations/card-support-eq-one.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [card_support_eq_two](declarations/card-support-eq-two.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [card_support_eq_three](declarations/card-support-eq-three.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=28912324e18b01eea254986a1aef32ffd2f85c3370a0c227f540334218013d1f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
