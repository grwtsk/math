# Conjugation Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**38 observed declarations and anonymous commands**, 34 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Conjugation/Variante54473708ea3ee91d7a46024fd98c186bab85a55db819759232c1605969c0dc7.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `662d9cf6712dc90dfe7ef2e6a6ba4c8e9755defc`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ConjugationNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [involute](declarations/involute.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [involute_ι](declarations/involute-source-edition-2.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [involute_comp_involute](declarations/involute-comp-involute.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [involute_involutive](declarations/involute-involutive.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [involute_involute](declarations/involute-involute.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [involuteEquiv](declarations/involuteequiv.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [reverse](declarations/reverse-source-edition-2.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [reverse_ι](declarations/reverse.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [reverse.commutes](declarations/reverse-commutes.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [reverse.map_one](declarations/reverse-map-one.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [reverse.map_mul](declarations/reverse-map-mul.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [reverse_comp_reverse](declarations/reverse-comp-reverse.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [reverse_involutive](declarations/reverse-involutive.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [reverse_reverse](declarations/reverse-reverse.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [reverseEquiv](declarations/reverseequiv.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [reverse_comp_involute](declarations/reverse-comp-involute.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [reverse_involute_commute](declarations/reverse-involute-commute.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [reverse_involute](declarations/reverse-involute.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [reverse_prod_map_ι](declarations/reverse-prod-map.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [involute_prod_map_ι](declarations/involute-prod-map.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [submodule_map_involute_eq_comap](declarations/submodule-map-involute-eq-comap.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [ι_range_map_involute](declarations/range-map-involute.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [ι_range_comap_involute](declarations/range-comap-involute.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [evenOdd_map_involute](declarations/evenodd-map-involute.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [evenOdd_comap_involute](declarations/evenodd-comap-involute.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [submodule_map_reverse_eq_comap](declarations/submodule-map-reverse-eq-comap.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [ι_range_map_reverse](declarations/range-map-reverse.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [ι_range_comap_reverse](declarations/range-comap-reverse.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [submodule_map_mul_reverse](declarations/submodule-map-mul-reverse.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [submodule_comap_mul_reverse](declarations/submodule-comap-mul-reverse.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [submodule_map_pow_reverse](declarations/submodule-map-pow-reverse.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [submodule_comap_pow_reverse](declarations/submodule-comap-pow-reverse.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [evenOdd_map_reverse](declarations/evenodd-map-reverse.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [evenOdd_comap_reverse](declarations/evenodd-comap-reverse.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [involute_mem_evenOdd_iff](declarations/involute-mem-evenodd-iff.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [reverse_mem_evenOdd_iff](declarations/reverse-mem-evenodd-iff.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [involute_eq_of_mem_even](declarations/involute-eq-of-mem-even.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [involute_eq_of_mem_odd](declarations/involute-eq-of-mem-odd.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=22b808aa775598300877cbd99073544ac40cb2e5e5dd33fec9a4d08c2fde077a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Conjugation/Variante54473708ea3ee91d7a46024fd98c186bab85a55db819759232c1605969c0dc7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
