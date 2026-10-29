# Closed Monoidal Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**44 observed declarations and anonymous commands**, 30 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant0a9358dc29df80de18b1093124adfaa93e36fe205324c2dfa111cf70a0f3a5d1.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d251eccdbcc8f7dc81a7d81df73fa03771e310c9`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidalNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [Closed](declarations/closed.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `class` | [MonoidalClosed](declarations/monoidalclosed.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [tensorClosed](declarations/tensorclosed.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [unitClosed](declarations/unitclosed.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [ihom](declarations/ihom.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [adjunction](declarations/adjunction.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [ev](declarations/ev.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [coev](declarations/coev.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [ihom_adjunction_counit](declarations/ihom-adjunction-counit.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [ihom_adjunction_unit](declarations/ihom-adjunction-unit.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [ev_naturality](declarations/ev-naturality.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [coev_naturality](declarations/coev-naturality.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [ev_coev](declarations/ev-coev.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [coev_ev](declarations/coev-ev.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [(anonymous)](declarations/instance.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [curry](declarations/curry.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [uncurry](declarations/uncurry.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [homEquiv_apply_eq](declarations/homequiv-apply-eq.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [homEquiv_symm_apply_eq](declarations/homequiv-symm-apply-eq.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [curry_natural_left](declarations/curry-natural-left.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [curry_natural_right](declarations/curry-natural-right.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [uncurry_natural_right](declarations/uncurry-natural-right.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [uncurry_natural_left](declarations/uncurry-natural-left.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [uncurry_curry](declarations/uncurry-curry.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [curry_uncurry](declarations/curry-uncurry.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [curry_eq_iff](declarations/curry-eq-iff.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [eq_curry_iff](declarations/eq-curry-iff.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [uncurry_eq](declarations/uncurry-eq.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [curry_eq](declarations/curry-eq.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [curry_injective](declarations/curry-injective.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [uncurry_injective](declarations/uncurry-injective.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [uncurry_id_eq_ev](declarations/uncurry-id-eq-ev.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [curry_id_eq_coev](declarations/curry-id-eq-coev.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [pre](declarations/pre.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [id_tensor_pre_app_comp_ev](declarations/id-tensor-pre-app-comp-ev.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [uncurry_pre](declarations/uncurry-pre.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [coev_app_comp_pre_app](declarations/coev-app-comp-pre-app.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [pre_id](declarations/pre-id.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [pre_map](declarations/pre-map.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [pre_comm_ihom_map](declarations/pre-comm-ihom-map.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [internalHom](declarations/internalhom.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [ofEquiv](declarations/ofequiv.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [ofEquiv_curry_def](declarations/ofequiv-curry-def.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [ofEquiv_uncurry_def](declarations/ofequiv-uncurry-def.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9276d3a8752fc924674e7b823af1af74a2f1857bbfad82b652dfdb8217f64111 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant0a9358dc29df80de18b1093124adfaa93e36fe205324c2dfa111cf70a0f3a5d1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
