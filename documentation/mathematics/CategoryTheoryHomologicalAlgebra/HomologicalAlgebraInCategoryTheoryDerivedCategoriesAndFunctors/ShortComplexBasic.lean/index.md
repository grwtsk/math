# Short Complex Basic

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**47 observed declarations and anonymous commands**, 14 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb361dc9ef11715407bb0e087912af950ec340eba9a9c18312069e90075320aa6.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `53228fe9b1f384fabd4e145d72429aa336aadaf7`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexBasic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [ShortComplex](declarations/shortcomplex.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [Hom](declarations/hom.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Hom.id](declarations/hom-id.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [Hom.comp](declarations/hom-comp.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [hom_ext](declarations/hom-ext.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [homMk](declarations/hommk.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [id_τ₁](declarations/id.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [id_τ₂](declarations/id-source-edition-3.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [id_τ₃](declarations/id-source-edition-2.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [comp_τ₁](declarations/comp-source-edition-3.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [comp_τ₂](declarations/comp.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [comp_τ₃](declarations/comp-source-edition-2.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [(anonymous)](declarations/instance.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [zero_τ₁](declarations/zero.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [zero_τ₂](declarations/zero-source-edition-3.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [zero_τ₃](declarations/zero-source-edition-2.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [π₁](declarations/anonymous-source-edition-3.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [π₂](declarations/anonymous-source-edition-2.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [π₃](declarations/anonymous.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [preservesZeroMorphisms_π₁](declarations/preserveszeromorphisms-source-edition-2.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [preservesZeroMorphisms_π₂](declarations/preserveszeromorphisms.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [preservesZeroMorphisms_π₃](declarations/preserveszeromorphisms-source-edition-3.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [π₁Toπ₂](declarations/to.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [π₂Toπ₃](declarations/to-source-edition-2.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [π₁Toπ₂_comp_π₂Toπ₃](declarations/to-comp-to.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [map](declarations/map.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [mapNatTrans](declarations/mapnattrans.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [mapNatIso](declarations/mapnatiso.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [_root_.CategoryTheory.Functor.mapShortComplex](declarations/root-categorytheory-functor-mapshortcomplex.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [isoMk](declarations/isomk.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [isIso_of_isIso](declarations/isiso-of-isiso.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [op](declarations/op.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [opMap](declarations/opmap.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [opMap_id](declarations/opmap-id.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [unop](declarations/unop.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [unopMap](declarations/unopmap.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [unopMap_id](declarations/unopmap-id.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [opFunctor](declarations/opfunctor.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [unopFunctor](declarations/unopfunctor.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [opEquiv](declarations/opequiv.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `abbrev` | [unopOp](declarations/unopop.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `abbrev` | [opUnop](declarations/opunop.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=21a6383b0249a87536a8549e9e02f7acdd432c486b281670c61c9fe50dd5daed -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb361dc9ef11715407bb0e087912af950ec340eba9a9c18312069e90075320aa6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
