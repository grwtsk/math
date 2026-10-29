# Refl Quiv

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 10 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variantc7733ad596b6571fa51bfbf18cd4e93da7d45285f4acbfce6cb2a759798de88b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5d351d895bf6bb19d3a1c724b999348eada8de10`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuiv.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [ReflQuiv](declarations/reflquiv.md) | 22 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [toQuiv](declarations/toquiv.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [of](declarations/of.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [of_val](declarations/of-val.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [category](declarations/category.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [id_eq_id](declarations/id-eq-id.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [comp_eq_comp](declarations/comp-eq-comp.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [forget](declarations/forget.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [forget_faithful](declarations/forget-faithful.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [forget.Faithful](declarations/forget-faithful-source-edition-2.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [forgetToQuiv](declarations/forgettoquiv.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [forgetToQuiv_faithful](declarations/forgettoquiv-faithful.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [forgetToQuiv.Faithful](declarations/forgettoquiv-faithful-source-edition-2.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [forget_forgetToQuiv](declarations/forget-forgettoquiv.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [isoOfQuivIso](declarations/isoofquiviso.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [isoOfEquiv](declarations/isoofequiv.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [toFunctor](declarations/tofunctor.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `inductive` | [FreeReflRel](declarations/freereflrel.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [FreeRefl](declarations/freerefl-source-edition-2.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [(anonymous)](declarations/instance.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [FreeRefl.quotientFunctor](declarations/freerefl-quotientfunctor.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [FreeRefl.lift_unique'](declarations/freerefl-lift-unique.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [freeReflMap](declarations/freereflmap.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [freeReflMap_naturality](declarations/freereflmap-naturality.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [freeRefl](declarations/freerefl.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [freeReflNatTrans](declarations/freereflnattrans.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [adj.unit.app](declarations/adj-unit-app.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [adj.unit.map_app_eq](declarations/adj-unit-map-app-eq.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [adj.counit.app](declarations/adj-counit-app.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [adj.counit.comp_app_eq](declarations/adj-counit-comp-app-eq.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [adj](declarations/adj.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=18d5ab57add342a14a1dfa17d19c99ec897673c2e4d3bcbd2865b899d3ba050d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variantc7733ad596b6571fa51bfbf18cd4e93da7d45285f4acbfce6cb2a759798de88b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
