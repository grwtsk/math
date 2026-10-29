# Category Theory Monad Basic Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**44 observed declarations and anonymous commands**, 16 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7132f76402ae2e4090a979679f470ce5e437ce0859be1d523c02a92aa8344fe8.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `33e74bca4a67007d9139c1cf31c33fa044ae5546`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryMonadBasicPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Monad](declarations/monad.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [Monad.unit_naturality](declarations/monad-unit-naturality.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [Monad.mu_naturality](declarations/monad-mu-naturality.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [Comonad](declarations/comonad.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [Comonad.counit_naturality](declarations/comonad-counit-naturality.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [Comonad.delta_naturality](declarations/comonad-delta-naturality.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [coeMonad](declarations/coemonad.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [coeComonad](declarations/coecomonad.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [MonadHom](declarations/monadhom.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `structure` | [ComonadHom](declarations/comonadhom.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [(anonymous)](declarations/instance.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [MonadHom.ext'](declarations/monadhom-ext.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [ComonadHom.ext'](declarations/comonadhom-ext.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [MonadHom.id_toNatTrans](declarations/monadhom-id-tonattrans.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [MonadHom.comp_toNatTrans](declarations/monadhom-comp-tonattrans.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [ComonadHom.id_toNatTrans](declarations/comonadhom-id-tonattrans.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [comp_toNatTrans](declarations/comp-tonattrans.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [MonadIso.mk](declarations/monadiso-mk.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [ComonadIso.mk](declarations/comonadiso-mk.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [monadToFunctor](declarations/monadtofunctor.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [monadToFunctor_mapIso_monad_iso_mk](declarations/monadtofunctor-mapiso-monad-iso-mk.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [comonadToFunctor](declarations/comonadtofunctor.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [comonadToFunctor_mapIso_comonad_iso_mk](declarations/comonadtofunctor-mapiso-comonad-iso-mk.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [MonadIso.toNatIso](declarations/monadiso-tonatiso.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [ComonadIso.toNatIso](declarations/comonadiso-tonatiso.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [id](declarations/id-source-edition-2.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [id](declarations/id.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [transport](declarations/transport-source-edition-2.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [transport](declarations/transport.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [map_unit_app](declarations/map-unit-app.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [isSplitMono_iff_isIso_unit](declarations/issplitmono-iff-isiso-unit.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [map_counit_app](declarations/map-counit-app.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [isSplitEpi_iff_isIso_counit](declarations/issplitepi-iff-isiso-counit.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=49d71aeb8c07408f111cdfffab2d6789f361cd83ebd70aad49a031c936370214 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7132f76402ae2e4090a979679f470ce5e437ce0859be1d523c02a92aa8344fe8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
