# Category Theory Closed Cartesian Namespaced Exp Terminal Iso Self

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**49 observed declarations and anonymous commands**, 25 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b5cec0fec095510a1004cebef8b6ccb7f8bc2732`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryClosedCartesianNamespacedExpTerminalIsoSelf.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Exponentiable](declarations/exponentiable.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [binaryProductExponentiable](declarations/binaryproductexponentiable.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [terminalExponentiable](declarations/terminalexponentiable.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `abbrev` | [CartesianClosed](declarations/cartesianclosed.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [CartesianClosed.mk](declarations/cartesianclosed-mk.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `abbrev` | [exp](declarations/exp.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `abbrev` | [adjunction](declarations/adjunction.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `abbrev` | [ev](declarations/ev.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `abbrev` | [coev](declarations/coev.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [delabPrefunctorObjExp](declarations/delabprefunctorobjexp.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [ev_coev](declarations/ev-coev.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [coev_ev](declarations/coev-ev.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [curry](declarations/curry.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [uncurry](declarations/uncurry.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [homEquiv_apply_eq](declarations/homequiv-apply-eq.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [homEquiv_symm_apply_eq](declarations/homequiv-symm-apply-eq.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [curry_natural_left](declarations/curry-natural-left.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [curry_natural_right](declarations/curry-natural-right.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [uncurry_natural_right](declarations/uncurry-natural-right.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [uncurry_natural_left](declarations/uncurry-natural-left.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [uncurry_curry](declarations/uncurry-curry.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [curry_uncurry](declarations/curry-uncurry.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [curry_eq_iff](declarations/curry-eq-iff.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [eq_curry_iff](declarations/eq-curry-iff.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [uncurry_eq](declarations/uncurry-eq.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [curry_eq](declarations/curry-eq.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [uncurry_id_eq_ev](declarations/uncurry-id-eq-ev.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [curry_id_eq_coev](declarations/curry-id-eq-coev.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [curry_injective](declarations/curry-injective.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [uncurry_injective](declarations/uncurry-injective.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [expTerminalIsoSelf](declarations/expterminalisoself.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [internalizeHom](declarations/internalizehom.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [pre](declarations/pre.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [prod_map_pre_app_comp_ev](declarations/prod-map-pre-app-comp-ev.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [uncurry_pre](declarations/uncurry-pre.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [coev_app_comp_pre_app](declarations/coev-app-comp-pre-app.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [pre_id](declarations/pre-id.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [pre_map](declarations/pre-map.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [internalHom](declarations/internalhom.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [zeroMul](declarations/zeromul.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [mulZero](declarations/mulzero.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [powZero](declarations/powzero.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [prodCoprodDistrib](declarations/prodcoproddistrib.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [strict_initial](declarations/strict-initial.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [to_initial_isIso](declarations/to-initial-isiso.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [initial_mono](declarations/initial-mono.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [Initial.mono_to](declarations/initial-mono-to.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [cartesianClosedOfEquiv](declarations/cartesianclosedofequiv.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9ec940b9b2d3047246b4b3708f9f897d4542b28e9ecce41bc92864af0d651682 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
