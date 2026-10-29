# Ring Filtered Colimits

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 1 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4240e2d47dee7d78be325f2baba791790d3569f78a7c96f696e8bbab974d772a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `22a2110714dd450694fe4682f09d19dcd9db68ed`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingFilteredColimits.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [semiringObj](declarations/semiringobj.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [R](declarations/r-source-edition-4.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [colimitSemiring](declarations/colimitsemiring.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [colimit](declarations/colimit-source-edition-2.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [colimitCocone](declarations/colimitcocone-source-edition-2.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [colimitCoconeIsColimit](declarations/colimitcoconeiscolimit-source-edition-3.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [forget₂Mon_preservesFilteredColimits](declarations/forget-mon-preservesfilteredcolimits.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [forget_preservesFilteredColimits](declarations/forget-preservesfilteredcolimits-source-edition-2.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `abbrev` | [R](declarations/r-source-edition-3.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [colimitCommSemiring](declarations/colimitcommsemiring.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [colimit](declarations/colimit.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [colimitCocone](declarations/colimitcocone.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [colimitCoconeIsColimit](declarations/colimitcoconeiscolimit.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [forget₂SemiRing_preservesFilteredColimits](declarations/forget-semiring-preservesfilteredcolimits-source-edition-2.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [forget_preservesFilteredColimits](declarations/forget-preservesfilteredcolimits-source-edition-4.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `abbrev` | [R](declarations/r.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [colimitRing](declarations/colimitring.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [colimit](declarations/colimit-source-edition-3.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [colimitCocone](declarations/colimitcocone-source-edition-4.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [colimitCoconeIsColimit](declarations/colimitcoconeiscolimit-source-edition-4.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [forget₂SemiRing_preservesFilteredColimits](declarations/forget-semiring-preservesfilteredcolimits.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [forget_preservesFilteredColimits](declarations/forget-preservesfilteredcolimits-source-edition-3.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `abbrev` | [R](declarations/r-source-edition-2.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [colimitCommRing](declarations/colimitcommring.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [colimit](declarations/colimit-source-edition-4.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [colimitCocone](declarations/colimitcocone-source-edition-3.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [colimitCoconeIsColimit](declarations/colimitcoconeiscolimit-source-edition-2.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [forget₂Ring_preservesFilteredColimits](declarations/forget-ring-preservesfilteredcolimits.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [forget_preservesFilteredColimits](declarations/forget-preservesfilteredcolimits.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [nontrivial](declarations/nontrivial.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [(anonymous)](declarations/instance.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d15a51888e6e64bbcfcf008b55bce4deac1de690db4657d6c2cc7dcac50a76f7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4240e2d47dee7d78be325f2baba791790d3569f78a7c96f696e8bbab974d772a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
