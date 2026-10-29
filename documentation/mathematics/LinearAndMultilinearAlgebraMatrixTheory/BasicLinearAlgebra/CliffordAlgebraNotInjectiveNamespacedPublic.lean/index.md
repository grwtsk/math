# Clifford Algebra Not Injective Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/CliffordAlgebraNotInjective/Variant788fec8499b73fac79448888f5afee293fb220417f6fb48b8ea20d9637cfea29.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2ebf9d27a2d131951441c917f2fa2dc2ce974315`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraNotInjectiveNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [kIdeal](declarations/kideal.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [mem_kIdeal_iff](declarations/mem-kideal-iff.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [X_Y_Z_notMem_kIdeal](declarations/x-y-z-notmem-kideal.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [mul_self_mem_kIdeal_of_X_Y_Z_mul_mem](declarations/mul-self-mem-kideal-of-x-y-z-mul-mem.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `abbrev` | [K](declarations/k.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [comap_C_kIdeal](declarations/comap-c-kideal.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [K.charP](declarations/k-charp.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [K.gen](declarations/k-gen.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [X_sq](declarations/x-sq.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [sq_zero_of_αβγ_mul](declarations/sq-zero-of-mul.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [αβγ_ne_zero](declarations/ne-zero.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [lFunc](declarations/lfunc.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `abbrev` | [L](declarations/l.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [sq](declarations/sq.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [sq_map_add_char_two](declarations/sq-map-add-char-two.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [sq_map_sub_char_two](declarations/sq-map-sub-char-two.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [Q'](declarations/q-source-edition-2.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [Q'_add](declarations/q-add.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [Q'_sub](declarations/q-sub.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Q'_apply](declarations/q-apply.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Q'_apply_single](declarations/q-apply-single.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [Q'_zero_under_ideal](declarations/q-zero-under-ideal.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [Q](declarations/q.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [gen](declarations/gen.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [gen_mul_gen](declarations/gen-mul-gen.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [quot_obv](declarations/quot-obv.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [αβγ_smul_eq_zero](declarations/smul-eq-zero.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [algebraMap_αβγ_eq_zero](declarations/algebramap-eq-zero.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [algebraMap_not_injective](declarations/algebramap-not-injective.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Q_not_in_range_toQuadraticForm](declarations/q-not-in-range-toquadraticform.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [CliffordAlgebra.not_forall_algebraMap_injective.](declarations/cliffordalgebra-not-forall-algebramap-injective.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [LinearMap.BilinMap.not_forall_toQuadraticMap_surjective.](declarations/linearmap-bilinmap-not-forall-toquadraticmap-surjective.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=19cd9769f1ca61ed8450f19bdd22da22556c063fa8de902cbd9168e4e87b9c9b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/CliffordAlgebraNotInjective/Variant788fec8499b73fac79448888f5afee293fb220417f6fb48b8ea20d9637cfea29.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
