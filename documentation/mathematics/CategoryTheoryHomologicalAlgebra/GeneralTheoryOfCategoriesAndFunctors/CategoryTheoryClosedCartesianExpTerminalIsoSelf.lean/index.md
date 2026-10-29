# Category Theory Closed Cartesian Exp Terminal Iso Self

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**49 observed declarations and anonymous commands**, 25 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb84ad6bdd22ba7ed35fdfb477e88cc3e4b37a62dc6e01f337d37f8a56138d42d.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f8c52d7393adc05e120c80bdd8622a3b57297a71`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryClosedCartesianExpTerminalIsoSelf.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Exponentiable](declarations/exponentiable.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [binaryProductExponentiable](declarations/binaryproductexponentiable.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [terminalExponentiable](declarations/terminalexponentiable.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `abbrev` | [CartesianClosed](declarations/cartesianclosed.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [CartesianClosed.mk](declarations/cartesianclosed-mk.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `abbrev` | [exp](declarations/exp.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `abbrev` | [adjunction](declarations/adjunction.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `abbrev` | [ev](declarations/ev.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `abbrev` | [coev](declarations/coev.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [delabPrefunctorObjExp](declarations/delabprefunctorobjexp.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [ev_coev](declarations/ev-coev.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [coev_ev](declarations/coev-ev.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [curry](declarations/curry.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [uncurry](declarations/uncurry.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [homEquiv_apply_eq](declarations/homequiv-apply-eq.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [homEquiv_symm_apply_eq](declarations/homequiv-symm-apply-eq.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [curry_natural_left](declarations/curry-natural-left.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [curry_natural_right](declarations/curry-natural-right.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [uncurry_natural_right](declarations/uncurry-natural-right.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [uncurry_natural_left](declarations/uncurry-natural-left.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [uncurry_curry](declarations/uncurry-curry.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [curry_uncurry](declarations/curry-uncurry.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [curry_eq_iff](declarations/curry-eq-iff.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [eq_curry_iff](declarations/eq-curry-iff.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [uncurry_eq](declarations/uncurry-eq.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [curry_eq](declarations/curry-eq.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [uncurry_id_eq_ev](declarations/uncurry-id-eq-ev.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [curry_id_eq_coev](declarations/curry-id-eq-coev.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [curry_injective](declarations/curry-injective.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [uncurry_injective](declarations/uncurry-injective.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [expTerminalIsoSelf](declarations/expterminalisoself.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [internalizeHom](declarations/internalizehom.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [pre](declarations/pre.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [prod_map_pre_app_comp_ev](declarations/prod-map-pre-app-comp-ev.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [uncurry_pre](declarations/uncurry-pre.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [coev_app_comp_pre_app](declarations/coev-app-comp-pre-app.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [pre_id](declarations/pre-id.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [pre_map](declarations/pre-map.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [internalHom](declarations/internalhom.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [zeroMul](declarations/zeromul.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [mulZero](declarations/mulzero.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [powZero](declarations/powzero.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [prodCoprodDistrib](declarations/prodcoproddistrib.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [strict_initial](declarations/strict-initial.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [to_initial_isIso](declarations/to-initial-isiso.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [initial_mono](declarations/initial-mono.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [Initial.mono_to](declarations/initial-mono-to.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [cartesianClosedOfEquiv](declarations/cartesianclosedofequiv.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8e32a2faef923c0a632a290012aca055f11bf972cd4e9aa3c56a4cebcc016f0e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb84ad6bdd22ba7ed35fdfb477e88cc3e4b37a62dc6e01f337d37f8a56138d42d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
