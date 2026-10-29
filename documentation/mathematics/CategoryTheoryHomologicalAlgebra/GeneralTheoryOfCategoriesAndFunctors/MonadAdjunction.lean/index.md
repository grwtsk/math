# Monad Adjunction

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**44 observed declarations and anonymous commands**, 6 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant07a2795d2664530c6c6d7742b8631d88303dc9d66779ad6c82344c7cd72d9155.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1ab320bb293816a8ff1e67ce28c1350e3c24f31c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAdjunction.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [toMonad](declarations/tomonad.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [toComonad](declarations/tocomonad.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [adjToMonadIso](declarations/adjtomonadiso.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [adjToComonadIso](declarations/adjtocomonadiso.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [unitAsIsoOfIso](declarations/unitasisoofiso.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [isIso_unit_of_iso](declarations/isiso-unit-of-iso.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [fullyFaithfulLOfCompIsoId](declarations/fullyfaithfullofcompisoid.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [counitAsIsoOfIso](declarations/counitasisoofiso.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [isIso_counit_of_iso](declarations/isiso-counit-of-iso.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [fullyFaithfulROfCompIsoId](declarations/fullyfaithfulrofcompisoid.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [Monad.comparison](declarations/monad-comparison.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [Monad.comparisonForget](declarations/monad-comparisonforget.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [Monad.left_comparison](declarations/monad-left-comparison.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [(anonymous)](declarations/instance-source-edition-13.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [Comonad.comparison](declarations/comonad-comparison.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [Comonad.comparisonForget](declarations/comonad-comparisonforget.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [Comonad.left_comparison](declarations/comonad-left-comparison.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [Comonad.comparison_faithful_of_faithful](declarations/comonad-comparison-faithful-of-faithful.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [(anonymous)](declarations/instance-source-edition-14.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `class` | [MonadicRightAdjoint](declarations/monadicrightadjoint.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [monadicLeftAdjoint](declarations/monadicleftadjoint.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [monadicAdjunction](declarations/monadicadjunction.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `class` | [ComonadicLeftAdjoint](declarations/comonadicleftadjoint.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [comonadicRightAdjoint](declarations/comonadicrightadjoint.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [comonadicAdjunction](declarations/comonadicadjunction.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [(anonymous)](declarations/instance-source-edition-15.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [μ_iso_of_reflective](declarations/iso-of-reflective.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [δ_iso_of_coreflective](declarations/iso-of-coreflective.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [comparison_essSurj](declarations/comparison-esssurj.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [comparison_full](declarations/comparison-full-source-edition-2.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [comparison_essSurj](declarations/comparison-esssurj-source-edition-2.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [comparison_full](declarations/comparison-full.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [(anonymous)](declarations/instance.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=50e99089da087073de313ab07db2fde5026a0bcbff4adff5ecd4ced8efead71b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant07a2795d2664530c6c6d7742b8631d88303dc9d66779ad6c82344c7cd72d9155.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
