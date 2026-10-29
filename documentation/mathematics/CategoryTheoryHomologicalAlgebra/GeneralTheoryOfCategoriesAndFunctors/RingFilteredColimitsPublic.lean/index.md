# Ring Filtered Colimits Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**37 observed declarations and anonymous commands**, 4 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7b576da79fb3bd5a07f17d9bfa0a03fae5ccfc23035bfa5300103c0516831060.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `474f257662ee3869afb6d5ff03d7fa0e4a3ef2bb`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingFilteredColimitsPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [semiringObj](declarations/semiringobj.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [R](declarations/r.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [colimitSemiring](declarations/colimitsemiring.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [colimit](declarations/colimit-source-edition-3.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [colimitCocone](declarations/colimitcocone-source-edition-4.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [descAddMonoidHom](declarations/descaddmonoidhom.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [descAddMonoidHom_quotMk](declarations/descaddmonoidhom-quotmk.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [descMonoidHom](declarations/descmonoidhom.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [descMonoidHom_quotMk](declarations/descmonoidhom-quotmk.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [descMonoidHom_apply_eq](declarations/descmonoidhom-apply-eq.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [colimitCoconeIsColimit](declarations/colimitcoconeiscolimit-source-edition-3.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [forget₂Mon_preservesFilteredColimits](declarations/forget-mon-preservesfilteredcolimits.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [forget_preservesFilteredColimits](declarations/forget-preservesfilteredcolimits-source-edition-2.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `abbrev` | [R](declarations/r-source-edition-2.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [colimitCommSemiring](declarations/colimitcommsemiring.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [colimit](declarations/colimit-source-edition-4.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [colimitCocone](declarations/colimitcocone-source-edition-2.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [colimitCoconeIsColimit](declarations/colimitcoconeiscolimit-source-edition-2.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [forget₂SemiRing_preservesFilteredColimits](declarations/forget-semiring-preservesfilteredcolimits-source-edition-2.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [forget_preservesFilteredColimits](declarations/forget-preservesfilteredcolimits.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `abbrev` | [R](declarations/r-source-edition-3.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [colimitRing](declarations/colimitring.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [colimit](declarations/colimit-source-edition-2.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [colimitCocone](declarations/colimitcocone.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [colimitCoconeIsColimit](declarations/colimitcoconeiscolimit.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [forget₂SemiRing_preservesFilteredColimits](declarations/forget-semiring-preservesfilteredcolimits.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [forget_preservesFilteredColimits](declarations/forget-preservesfilteredcolimits-source-edition-3.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `abbrev` | [R](declarations/r-source-edition-4.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [colimitCommRing](declarations/colimitcommring.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [colimit](declarations/colimit.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [colimitCocone](declarations/colimitcocone-source-edition-3.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [colimitCoconeIsColimit](declarations/colimitcoconeiscolimit-source-edition-4.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [forget₂Ring_preservesFilteredColimits](declarations/forget-ring-preservesfilteredcolimits.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [forget_preservesFilteredColimits](declarations/forget-preservesfilteredcolimits-source-edition-4.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [nontrivial](declarations/nontrivial.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [(anonymous)](declarations/instance.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d77c2b5127d25eeb5abfe96084a9fe8020aa09fb41cd8020240b4d1d94e40d35 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7b576da79fb3bd5a07f17d9bfa0a03fae5ccfc23035bfa5300103c0516831060.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
