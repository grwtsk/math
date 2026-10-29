# Category Theory Monad Basic Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**44 observed declarations and anonymous commands**, 16 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant66a5a432cb7fa8b29bc3a7df7fd45fdd8b877685e988f79b5d846277e89371b0.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b0c372a13d0979bbd65169f0af401c3cec174568`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryMonadBasicNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Monad](declarations/monad.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [Monad.unit_naturality](declarations/monad-unit-naturality.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [Monad.mu_naturality](declarations/monad-mu-naturality.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [Comonad](declarations/comonad.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [Comonad.counit_naturality](declarations/comonad-counit-naturality.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [Comonad.delta_naturality](declarations/comonad-delta-naturality.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [coeMonad](declarations/coemonad.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [coeComonad](declarations/coecomonad.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [MonadHom](declarations/monadhom.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `structure` | [ComonadHom](declarations/comonadhom.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [MonadHom.ext'](declarations/monadhom-ext.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [ComonadHom.ext'](declarations/comonadhom-ext.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [MonadHom.id_toNatTrans](declarations/monadhom-id-tonattrans.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [MonadHom.comp_toNatTrans](declarations/monadhom-comp-tonattrans.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [ComonadHom.id_toNatTrans](declarations/comonadhom-id-tonattrans.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [comp_toNatTrans](declarations/comp-tonattrans.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [MonadIso.mk](declarations/monadiso-mk.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [ComonadIso.mk](declarations/comonadiso-mk.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [monadToFunctor](declarations/monadtofunctor.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [monadToFunctor_mapIso_monad_iso_mk](declarations/monadtofunctor-mapiso-monad-iso-mk.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [comonadToFunctor](declarations/comonadtofunctor.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [(anonymous)](declarations/instance.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [comonadToFunctor_mapIso_comonad_iso_mk](declarations/comonadtofunctor-mapiso-comonad-iso-mk.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [MonadIso.toNatIso](declarations/monadiso-tonatiso.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [ComonadIso.toNatIso](declarations/comonadiso-tonatiso.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [id](declarations/id-source-edition-2.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [id](declarations/id.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [transport](declarations/transport-source-edition-2.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [transport](declarations/transport.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [map_unit_app](declarations/map-unit-app.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [isSplitMono_iff_isIso_unit](declarations/issplitmono-iff-isiso-unit.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [map_counit_app](declarations/map-counit-app.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [isSplitEpi_iff_isIso_counit](declarations/issplitepi-iff-isiso-counit.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=58406ca734c7c9bd8b1f82808e990b8571374ac160240d2aeba872d444f847a6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant66a5a432cb7fa8b29bc3a7df7fd45fdd8b877685e988f79b5d846277e89371b0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
