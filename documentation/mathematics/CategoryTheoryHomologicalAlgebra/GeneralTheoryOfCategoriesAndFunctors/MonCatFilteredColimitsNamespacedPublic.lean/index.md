# Mon Cat Filtered Colimits Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**29 observed declarations and anonymous commands**, 9 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant49a2ae20991785f75aef166cbfbfceedc3790690ae3e1b8426b0973f5236011b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7d15a15af9228eb8a9c7dd58b9594fc194bbe8f1`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [M](declarations/m.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [M.mk](declarations/m-mk.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [M.mk_surjective](declarations/m-mk-surjective.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [M.mk_eq](declarations/m-mk-eq.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [M.map_mk](declarations/m-map-mk.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [colimitOne](declarations/colimitone.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [colimit_one_eq](declarations/colimit-one-eq.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [colimitMulAux](declarations/colimitmulaux.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [colimitMulAux_eq_of_rel_left](declarations/colimitmulaux-eq-of-rel-left.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [colimitMulAux_eq_of_rel_right](declarations/colimitmulaux-eq-of-rel-right.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [colimitMul](declarations/colimitmul.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [colimit_mul_mk_eq](declarations/colimit-mul-mk-eq-source-edition-2.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [colimit_mul_mk_eq'](declarations/colimit-mul-mk-eq.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [colimitMulOneClass](declarations/colimitmuloneclass.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [colimitMonoid](declarations/colimitmonoid.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [colimit](declarations/colimit-source-edition-2.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [coconeMorphism](declarations/coconemorphism.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [cocone_naturality](declarations/cocone-naturality.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [colimitCocone](declarations/colimitcocone-source-edition-2.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [colimitDesc](declarations/colimitdesc.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [colimitCoconeIsColimit](declarations/colimitcoconeiscolimit.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [forget_preservesFilteredColimits](declarations/forget-preservesfilteredcolimits-source-edition-2.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `abbrev` | [M](declarations/m-source-edition-2.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [colimitCommMonoid](declarations/colimitcommmonoid.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [colimit](declarations/colimit.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [colimitCocone](declarations/colimitcocone.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [colimitCoconeIsColimit](declarations/colimitcoconeiscolimit-source-edition-2.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [forget₂Mon_preservesFilteredColimits](declarations/forget-mon-preservesfilteredcolimits.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [forget_preservesFilteredColimits](declarations/forget-preservesfilteredcolimits.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ff3f2332c82691383f0554535add72899fb5771c19df40495fe2139b4cb7562e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant49a2ae20991785f75aef166cbfbfceedc3790690ae3e1b8426b0973f5236011b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
