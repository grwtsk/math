# Conjugation Reverse Op

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**44 observed declarations and anonymous commands**, 38 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Conjugation/Variant792eac820b1722705d2ce7c708e2469ef8c5b10299d0c6efda0bec1d8fd7cefd.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8944a726cf84bb8ac2eb240a32bd44fb8fe9359c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ConjugationReverseOp.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [involute](declarations/involute.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [involute_ι](declarations/involute-source-edition-2.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [involute_comp_involute](declarations/involute-comp-involute.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [involute_involutive](declarations/involute-involutive.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [involute_involute](declarations/involute-involute.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [involuteEquiv](declarations/involuteequiv.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [reverseOp](declarations/reverseop.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [reverseOp_ι](declarations/reverseop-source-edition-2.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [reverseOpEquiv](declarations/reverseopequiv.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [reverseOpEquiv_opComm](declarations/reverseopequiv-opcomm.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [reverse](declarations/reverse.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [unop_reverseOp](declarations/unop-reverseop.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [op_reverse](declarations/op-reverse.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [reverse_ι](declarations/reverse-source-edition-2.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [reverse.commutes](declarations/reverse-commutes.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [reverse.map_one](declarations/reverse-map-one.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [reverse.map_mul](declarations/reverse-map-mul.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [reverse_involutive](declarations/reverse-involutive.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [reverse_comp_reverse](declarations/reverse-comp-reverse.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [reverse_reverse](declarations/reverse-reverse.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [reverseEquiv](declarations/reverseequiv.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [reverse_comp_involute](declarations/reverse-comp-involute.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [reverse_involute_commute](declarations/reverse-involute-commute.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [reverse_involute](declarations/reverse-involute.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [reverse_prod_map_ι](declarations/reverse-prod-map.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [involute_prod_map_ι](declarations/involute-prod-map.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [submodule_map_involute_eq_comap](declarations/submodule-map-involute-eq-comap.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [ι_range_map_involute](declarations/range-map-involute.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [ι_range_comap_involute](declarations/range-comap-involute.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [evenOdd_map_involute](declarations/evenodd-map-involute.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [evenOdd_comap_involute](declarations/evenodd-comap-involute.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [submodule_map_reverse_eq_comap](declarations/submodule-map-reverse-eq-comap.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [ι_range_map_reverse](declarations/range-map-reverse.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [ι_range_comap_reverse](declarations/range-comap-reverse.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [submodule_map_mul_reverse](declarations/submodule-map-mul-reverse.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [submodule_comap_mul_reverse](declarations/submodule-comap-mul-reverse.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [submodule_map_pow_reverse](declarations/submodule-map-pow-reverse.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [submodule_comap_pow_reverse](declarations/submodule-comap-pow-reverse.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [evenOdd_map_reverse](declarations/evenodd-map-reverse.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [evenOdd_comap_reverse](declarations/evenodd-comap-reverse.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [involute_mem_evenOdd_iff](declarations/involute-mem-evenodd-iff.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [reverse_mem_evenOdd_iff](declarations/reverse-mem-evenodd-iff.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [involute_eq_of_mem_even](declarations/involute-eq-of-mem-even.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [involute_eq_of_mem_odd](declarations/involute-eq-of-mem-odd.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b17b29a45cec5617cc96f1b505a2a2a75e1ac6466bd544367f770346a035f3be -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Conjugation/Variant792eac820b1722705d2ce7c708e2469ef8c5b10299d0c6efda0bec1d8fd7cefd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
