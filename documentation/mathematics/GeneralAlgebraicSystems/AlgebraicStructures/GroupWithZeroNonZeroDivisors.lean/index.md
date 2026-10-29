# Group With Zero Non Zero Divisors

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**51 observed declarations and anonymous commands**, 42 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/UniversalAlgebra/NonZeroDivisors/Varianteb505dde7aeb109f04ffaf3d702bddcc6bbec03b4486885669cbbe6590c7ba9b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fb917e7a9e04e44aaba72a59be01084e99420df7`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisors.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [nonZeroDivisorsLeft](declarations/nonzerodivisorsleft.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [mem_nonZeroDivisorsLeft_iff](declarations/mem-nonzerodivisorsleft-iff.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [notMem_nonZeroDivisorsLeft_iff](declarations/notmem-nonzerodivisorsleft-iff.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [nonZeroDivisorsRight](declarations/nonzerodivisorsright.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [mem_nonZeroDivisorsRight_iff](declarations/mem-nonzerodivisorsright-iff.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [notMem_nonZeroDivisorsRight_iff](declarations/notmem-nonzerodivisorsright-iff.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [nonZeroDivisorsLeft_eq_right](declarations/nonzerodivisorsleft-eq-right.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [coe_nonZeroDivisorsLeft_eq](declarations/coe-nonzerodivisorsleft-eq.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [coe_nonZeroDivisorsRight_eq](declarations/coe-nonzerodivisorsright-eq.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [nonZeroDivisors](declarations/nonzerodivisors.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [nonZeroSMulDivisors](declarations/nonzerosmuldivisors.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [nonZeroDivisorsLeft_eq_nonZeroDivisors](declarations/nonzerodivisorsleft-eq-nonzerodivisors.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [nonZeroDivisorsRight_eq_nonZeroSMulDivisors](declarations/nonzerodivisorsright-eq-nonzerosmuldivisors.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [mem_nonZeroDivisors_iff](declarations/mem-nonzerodivisors-iff.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [notMem_nonZeroDivisors_iff](declarations/notmem-nonzerodivisors-iff.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [mul_right_mem_nonZeroDivisors_eq_zero_iff](declarations/mul-right-mem-nonzerodivisors-eq-zero-iff.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [mul_right_coe_nonZeroDivisors_eq_zero_iff](declarations/mul-right-coe-nonzerodivisors-eq-zero-iff.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [IsUnit.mem_nonZeroDivisors](declarations/isunit-mem-nonzerodivisors.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [zero_notMem_nonZeroDivisors](declarations/zero-notmem-nonzerodivisors.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [nonZeroDivisors.ne_zero](declarations/nonzerodivisors-ne-zero.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [nonZeroDivisors.coe_ne_zero](declarations/nonzerodivisors-coe-ne-zero.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [(anonymous)](declarations/instance.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [eq_zero_of_ne_zero_of_mul_right_eq_zero](declarations/eq-zero-of-ne-zero-of-mul-right-eq-zero.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [eq_zero_of_ne_zero_of_mul_left_eq_zero](declarations/eq-zero-of-ne-zero-of-mul-left-eq-zero.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [mem_nonZeroDivisors_of_ne_zero](declarations/mem-nonzerodivisors-of-ne-zero.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [mem_nonZeroDivisors_iff_ne_zero](declarations/mem-nonzerodivisors-iff-ne-zero.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [le_nonZeroDivisors_of_noZeroDivisors](declarations/le-nonzerodivisors-of-nozerodivisors.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [powers_le_nonZeroDivisors_of_noZeroDivisors](declarations/powers-le-nonzerodivisors-of-nozerodivisors.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [map_ne_zero_of_mem_nonZeroDivisors](declarations/map-ne-zero-of-mem-nonzerodivisors.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [map_mem_nonZeroDivisors](declarations/map-mem-nonzerodivisors.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [MulEquivClass.map_nonZeroDivisors](declarations/mulequivclass-map-nonzerodivisors.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [map_le_nonZeroDivisors_of_injective](declarations/map-le-nonzerodivisors-of-injective.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [nonZeroDivisors_le_comap_nonZeroDivisors_of_injective](declarations/nonzerodivisors-le-comap-nonzerodivisors-of-injective.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [mem_nonZeroDivisors_of_injective](declarations/mem-nonzerodivisors-of-injective.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [comap_nonZeroDivisors_le_of_injective](declarations/comap-nonzerodivisors-le-of-injective.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [mul_left_mem_nonZeroDivisors_eq_zero_iff](declarations/mul-left-mem-nonzerodivisors-eq-zero-iff.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [mul_left_coe_nonZeroDivisors_eq_zero_iff](declarations/mul-left-coe-nonzerodivisors-eq-zero-iff.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [mul_mem_nonZeroDivisors](declarations/mul-mem-nonzerodivisors.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [nonZeroDivisors_dvd_iff_dvd_coe](declarations/nonzerodivisors-dvd-iff-dvd-coe.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [nonZeroDivisorsEquivUnits](declarations/nonzerodivisorsequivunits.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [isUnit_of_mem_nonZeroDivisors](declarations/isunit-of-mem-nonzerodivisors.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [mem_nonZeroSMulDivisors_iff](declarations/mem-nonzerosmuldivisors-iff.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [unop_nonZeroSMulDivisors_mulOpposite_eq_nonZeroDivisors](declarations/unop-nonzerosmuldivisors-mulopposite-eq-nonzerodivisors.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [nonZeroSMulDivisors_mulOpposite_eq_op_nonZeroDivisors](declarations/nonzerosmuldivisors-mulopposite-eq-op-nonzerodivisors.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [unitsNonZeroDivisorsEquiv](declarations/unitsnonzerodivisorsequiv.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [nonZeroDivisors.associated_coe](declarations/nonzerodivisors-associated-coe.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [mk_mem_nonZeroDivisors_associates](declarations/mk-mem-nonzerodivisors-associates.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [associatesNonZeroDivisorsEquiv](declarations/associatesnonzerodivisorsequiv.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [associatesNonZeroDivisorsEquiv_mk_mk](declarations/associatesnonzerodivisorsequiv-mk-mk.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [associatesNonZeroDivisorsEquiv_symm_mk_mk](declarations/associatesnonzerodivisorsequiv-symm-mk-mk.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2c074137da229dc4cb03b07658bbd24985e14a0891e7a4d1ad674c0f663ceb0a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/NonZeroDivisors/Varianteb505dde7aeb109f04ffaf3d702bddcc6bbec03b4486885669cbbe6590c7ba9b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
