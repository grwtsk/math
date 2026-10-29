# Clifford Algebra Not Injective Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/CliffordAlgebraNotInjective/Variant6365f68734eb3bb2a2ef2cde530bbfdca80844553733fd0f5337ea7eead6b8fb.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d31523d8d2a407363a363dbcbaba467ed28c11ee`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraNotInjectivePublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [kIdeal](declarations/kideal.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [mem_kIdeal_iff](declarations/mem-kideal-iff.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [X_Y_Z_notMem_kIdeal](declarations/x-y-z-notmem-kideal.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [mul_self_mem_kIdeal_of_X_Y_Z_mul_mem](declarations/mul-self-mem-kideal-of-x-y-z-mul-mem.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `abbrev` | [K](declarations/k.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [comap_C_kIdeal](declarations/comap-c-kideal.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [K.charP](declarations/k-charp.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [K.gen](declarations/k-gen.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [X_sq](declarations/x-sq.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [sq_zero_of_αβγ_mul](declarations/sq-zero-of-mul.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [αβγ_ne_zero](declarations/ne-zero.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [lFunc](declarations/lfunc.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `abbrev` | [L](declarations/l.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [sq](declarations/sq.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [sq_map_add_char_two](declarations/sq-map-add-char-two.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [sq_map_sub_char_two](declarations/sq-map-sub-char-two.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [Q'](declarations/q.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [Q'_add](declarations/q-add.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [Q'_sub](declarations/q-sub.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Q'_apply](declarations/q-apply.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Q'_apply_single](declarations/q-apply-single.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [Q'_zero_under_ideal](declarations/q-zero-under-ideal.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [Q](declarations/q-source-edition-2.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [gen](declarations/gen.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [gen_mul_gen](declarations/gen-mul-gen.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [quot_obv](declarations/quot-obv.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [αβγ_smul_eq_zero](declarations/smul-eq-zero.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [algebraMap_αβγ_eq_zero](declarations/algebramap-eq-zero.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [algebraMap_not_injective](declarations/algebramap-not-injective.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Q_not_in_range_toQuadraticForm](declarations/q-not-in-range-toquadraticform.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [CliffordAlgebra.not_forall_algebraMap_injective.](declarations/cliffordalgebra-not-forall-algebramap-injective.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [LinearMap.BilinMap.not_forall_toQuadraticMap_surjective.](declarations/linearmap-bilinmap-not-forall-toquadraticmap-surjective.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=48b9c0243c7b7e2fe887c786818e42c80c398ef78e7ad3735f021501b6ce98c9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/CliffordAlgebraNotInjective/Variant6365f68734eb3bb2a2ef2cde530bbfdca80844553733fd0f5337ea7eead6b8fb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
