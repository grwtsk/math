# Category Theory Monad Basic Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**44 observed declarations and anonymous commands**, 16 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa04ad44addbda4c65bb549f7bbf295d31b76a777b30818632b2870ec538adde.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ba9c1c2a89c744e6fb503f95b779ee299adf98ec`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryMonadBasicNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Monad](declarations/monad.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [Monad.unit_naturality](declarations/monad-unit-naturality.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [Monad.mu_naturality](declarations/monad-mu-naturality.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [Comonad](declarations/comonad.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [Comonad.counit_naturality](declarations/comonad-counit-naturality.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [Comonad.delta_naturality](declarations/comonad-delta-naturality.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [coeMonad](declarations/coemonad.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [coeComonad](declarations/coecomonad.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [MonadHom](declarations/monadhom.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `structure` | [ComonadHom](declarations/comonadhom.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [MonadHom.ext'](declarations/monadhom-ext.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [ComonadHom.ext'](declarations/comonadhom-ext.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [MonadHom.id_toNatTrans](declarations/monadhom-id-tonattrans.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [MonadHom.comp_toNatTrans](declarations/monadhom-comp-tonattrans.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [ComonadHom.id_toNatTrans](declarations/comonadhom-id-tonattrans.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [comp_toNatTrans](declarations/comp-tonattrans.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [MonadIso.mk](declarations/monadiso-mk.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [ComonadIso.mk](declarations/comonadiso-mk.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [monadToFunctor](declarations/monadtofunctor.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [monadToFunctor_mapIso_monad_iso_mk](declarations/monadtofunctor-mapiso-monad-iso-mk.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [comonadToFunctor](declarations/comonadtofunctor.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [comonadToFunctor_mapIso_comonad_iso_mk](declarations/comonadtofunctor-mapiso-comonad-iso-mk.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [MonadIso.toNatIso](declarations/monadiso-tonatiso.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [ComonadIso.toNatIso](declarations/comonadiso-tonatiso.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [id](declarations/id.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [id](declarations/id-source-edition-2.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [transport](declarations/transport-source-edition-2.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [transport](declarations/transport.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [map_unit_app](declarations/map-unit-app.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [isSplitMono_iff_isIso_unit](declarations/issplitmono-iff-isiso-unit.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [map_counit_app](declarations/map-counit-app.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [isSplitEpi_iff_isIso_counit](declarations/issplitepi-iff-isiso-counit.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cc6d2a425ab7a90d0e0a61bc262ef754a87f87f27afd77400bb97d6c52237919 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfa04ad44addbda4c65bb549f7bbf295d31b76a777b30818632b2870ec538adde.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
