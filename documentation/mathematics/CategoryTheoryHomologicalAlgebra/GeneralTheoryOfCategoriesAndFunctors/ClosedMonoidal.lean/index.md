# Closed Monoidal

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**44 observed declarations and anonymous commands**, 30 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianteae4d8e9ccf58a6c37e85c1d2203a6ea39d2a1c26090ab51905877e2aa4ca1fd.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `de6b16de08a6c34a39ff04166ac41fdaf055cfc0`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedMonoidal.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [Closed](declarations/closed.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `class` | [MonoidalClosed](declarations/monoidalclosed.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [tensorClosed](declarations/tensorclosed.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [unitClosed](declarations/unitclosed.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [ihom](declarations/ihom.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [adjunction](declarations/adjunction.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [ev](declarations/ev.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [coev](declarations/coev.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [ihom_adjunction_counit](declarations/ihom-adjunction-counit.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [ihom_adjunction_unit](declarations/ihom-adjunction-unit.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [ev_naturality](declarations/ev-naturality.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [coev_naturality](declarations/coev-naturality.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [ev_coev](declarations/ev-coev.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [coev_ev](declarations/coev-ev.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [(anonymous)](declarations/instance.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [curry](declarations/curry.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [uncurry](declarations/uncurry.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [homEquiv_apply_eq](declarations/homequiv-apply-eq.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [homEquiv_symm_apply_eq](declarations/homequiv-symm-apply-eq.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [curry_natural_left](declarations/curry-natural-left.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [curry_natural_right](declarations/curry-natural-right.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [uncurry_natural_right](declarations/uncurry-natural-right.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [uncurry_natural_left](declarations/uncurry-natural-left.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [uncurry_curry](declarations/uncurry-curry.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [curry_uncurry](declarations/curry-uncurry.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [curry_eq_iff](declarations/curry-eq-iff.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [eq_curry_iff](declarations/eq-curry-iff.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [uncurry_eq](declarations/uncurry-eq.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [curry_eq](declarations/curry-eq.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [curry_injective](declarations/curry-injective.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [uncurry_injective](declarations/uncurry-injective.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [uncurry_id_eq_ev](declarations/uncurry-id-eq-ev.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [curry_id_eq_coev](declarations/curry-id-eq-coev.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [pre](declarations/pre.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [id_tensor_pre_app_comp_ev](declarations/id-tensor-pre-app-comp-ev.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [uncurry_pre](declarations/uncurry-pre.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [coev_app_comp_pre_app](declarations/coev-app-comp-pre-app.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [pre_id](declarations/pre-id.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [pre_map](declarations/pre-map.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [pre_comm_ihom_map](declarations/pre-comm-ihom-map.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [internalHom](declarations/internalhom.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [ofEquiv](declarations/ofequiv.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [ofEquiv_curry_def](declarations/ofequiv-curry-def.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [ofEquiv_uncurry_def](declarations/ofequiv-uncurry-def.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d10f43a5ee622c8e0e1c9094d54ea99c775ed7cecdd3a0ee2c992dc5e81720b5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianteae4d8e9ccf58a6c37e85c1d2203a6ea39d2a1c26090ab51905877e2aa4ca1fd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
