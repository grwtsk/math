# Category Theory Closed Cartesian Namespaced Exp Unit Nat Iso

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**51 observed declarations and anonymous commands**, 25 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5e2c34ace5439a46095aa40f18bf825ac63434f0`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryClosedCartesianNamespacedExpUnitNatIso.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Exponentiable](declarations/exponentiable.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [Exponentiable.mk](declarations/exponentiable-mk.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [binaryProductExponentiable](declarations/binaryproductexponentiable.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [terminalExponentiable](declarations/terminalexponentiable.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `abbrev` | [CartesianClosed](declarations/cartesianclosed.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [CartesianClosed.mk](declarations/cartesianclosed-mk.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `abbrev` | [exp](declarations/exp.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `abbrev` | [adjunction](declarations/adjunction.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `abbrev` | [ev](declarations/ev.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `abbrev` | [coev](declarations/coev.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [delabPrefunctorObjExp](declarations/delabprefunctorobjexp.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [ev_coev](declarations/ev-coev.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [coev_ev](declarations/coev-ev.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [(anonymous)](declarations/instance.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [curry](declarations/curry.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [uncurry](declarations/uncurry.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [homEquiv_apply_eq](declarations/homequiv-apply-eq.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [homEquiv_symm_apply_eq](declarations/homequiv-symm-apply-eq.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [curry_natural_left](declarations/curry-natural-left.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [curry_natural_right](declarations/curry-natural-right.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [uncurry_natural_right](declarations/uncurry-natural-right.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [uncurry_natural_left](declarations/uncurry-natural-left.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [uncurry_curry](declarations/uncurry-curry.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [curry_uncurry](declarations/curry-uncurry.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [curry_eq_iff](declarations/curry-eq-iff.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [eq_curry_iff](declarations/eq-curry-iff.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [uncurry_eq](declarations/uncurry-eq.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [curry_eq](declarations/curry-eq.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [uncurry_id_eq_ev](declarations/uncurry-id-eq-ev.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [curry_id_eq_coev](declarations/curry-id-eq-coev.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [curry_injective](declarations/curry-injective.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [uncurry_injective](declarations/uncurry-injective.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [expUnitNatIso](declarations/expunitnatiso.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [expUnitIsoSelf](declarations/expunitisoself.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [internalizeHom](declarations/internalizehom.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [pre](declarations/pre.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [prod_map_pre_app_comp_ev](declarations/prod-map-pre-app-comp-ev.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [uncurry_pre](declarations/uncurry-pre.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [coev_app_comp_pre_app](declarations/coev-app-comp-pre-app.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [pre_id](declarations/pre-id.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [pre_map](declarations/pre-map.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [internalHom](declarations/internalhom.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [zeroMul](declarations/zeromul.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [mulZero](declarations/mulzero.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [powZero](declarations/powzero.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [prodCoprodDistrib](declarations/prodcoproddistrib.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [strict_initial](declarations/strict-initial.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [to_initial_isIso](declarations/to-initial-isiso.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [initial_mono](declarations/initial-mono.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `instance` | [Initial.mono_to](declarations/initial-mono-to.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [cartesianClosedOfEquiv](declarations/cartesianclosedofequiv.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1fd13b9ae105fed6e89b9df182de9122e37747b582a2898469d09afab0138438 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
