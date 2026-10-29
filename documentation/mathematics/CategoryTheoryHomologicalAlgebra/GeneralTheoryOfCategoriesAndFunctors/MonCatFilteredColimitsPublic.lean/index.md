# Mon Cat Filtered Colimits Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**29 observed declarations and anonymous commands**, 9 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7b352fd66ab5f8b7add39bc56dfa879f54fac9d2c96e1c6f5d395b54ead3d723.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1e3526dbce57d167b44a1ad046628b5289f3b08c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [M](declarations/m.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [M.mk](declarations/m-mk.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [M.mk_surjective](declarations/m-mk-surjective.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [M.mk_eq](declarations/m-mk-eq.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [M.map_mk](declarations/m-map-mk.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [colimitOne](declarations/colimitone.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [colimit_one_eq](declarations/colimit-one-eq.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [colimitMulAux](declarations/colimitmulaux.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [colimitMulAux_eq_of_rel_left](declarations/colimitmulaux-eq-of-rel-left.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [colimitMulAux_eq_of_rel_right](declarations/colimitmulaux-eq-of-rel-right.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [colimitMul](declarations/colimitmul.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [colimit_mul_mk_eq](declarations/colimit-mul-mk-eq-source-edition-2.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [colimit_mul_mk_eq'](declarations/colimit-mul-mk-eq.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [colimitMulOneClass](declarations/colimitmuloneclass.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [colimitMonoid](declarations/colimitmonoid.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [colimit](declarations/colimit.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [coconeMorphism](declarations/coconemorphism.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [cocone_naturality](declarations/cocone-naturality.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [colimitCocone](declarations/colimitcocone-source-edition-2.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [colimitDesc](declarations/colimitdesc.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [colimitCoconeIsColimit](declarations/colimitcoconeiscolimit-source-edition-2.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [forget_preservesFilteredColimits](declarations/forget-preservesfilteredcolimits.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `abbrev` | [M](declarations/m-source-edition-2.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [colimitCommMonoid](declarations/colimitcommmonoid.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [colimit](declarations/colimit-source-edition-2.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [colimitCocone](declarations/colimitcocone.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [colimitCoconeIsColimit](declarations/colimitcoconeiscolimit.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [forget₂Mon_preservesFilteredColimits](declarations/forget-mon-preservesfilteredcolimits.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [forget_preservesFilteredColimits](declarations/forget-preservesfilteredcolimits-source-edition-2.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=949ac352f1503c5c1d35035bc7c0c6b4e145a473576955ba313a97530c8ef718 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7b352fd66ab5f8b7add39bc56dfa879f54fac9d2c96e1c6f5d395b54ead3d723.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
