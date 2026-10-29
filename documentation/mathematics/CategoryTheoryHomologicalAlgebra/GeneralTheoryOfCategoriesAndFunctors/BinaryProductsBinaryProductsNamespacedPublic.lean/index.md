# Binary Products Binary Products Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**101 observed declarations and anonymous commands**, 56 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant9dd5a1128ffce296a9165af2989895826f8a62ab9c102171fd6949878229404a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `433257468ddd7622bab32e496c8ecdf659051179`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BinaryProductsBinaryProductsNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [HasBinaryProduct](declarations/hasbinaryproduct.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [HasBinaryCoproduct](declarations/hasbinarycoproduct.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [prod](declarations/prod.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `abbrev` | [coprod](declarations/coprod.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `abbrev` | [prod.fst](declarations/prod-fst.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `abbrev` | [prod.snd](declarations/prod-snd.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `abbrev` | [coprod.inl](declarations/coprod-inl.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `abbrev` | [coprod.inr](declarations/coprod-inr.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [prodIsProd](declarations/prodisprod.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [coprodIsCoprod](declarations/coprodiscoprod.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [prod.hom_ext](declarations/prod-hom-ext.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [coprod.hom_ext](declarations/coprod-hom-ext.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `abbrev` | [prod.lift](declarations/prod-lift-source-edition-2.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `abbrev` | [diag](declarations/diag.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `abbrev` | [coprod.desc](declarations/coprod-desc-source-edition-2.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `abbrev` | [codiag](declarations/codiag.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [prod.lift_fst](declarations/prod-lift-fst.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [prod.lift_snd](declarations/prod-lift-snd.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [coprod.inl_desc](declarations/coprod-inl-desc.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [coprod.inr_desc](declarations/coprod-inr-desc.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [prod.mono_lift_of_mono_left](declarations/prod-mono-lift-of-mono-left.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [prod.mono_lift_of_mono_right](declarations/prod-mono-lift-of-mono-right.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [coprod.epi_desc_of_epi_left](declarations/coprod-epi-desc-of-epi-left.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [coprod.epi_desc_of_epi_right](declarations/coprod-epi-desc-of-epi-right.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [prod.lift'](declarations/prod-lift.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [coprod.desc'](declarations/coprod-desc.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [prod.map](declarations/prod-map.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [coprod.map](declarations/coprod-map.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [prod.comp_lift](declarations/prod-comp-lift.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [prod.comp_diag](declarations/prod-comp-diag.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [prod.map_fst](declarations/prod-map-fst.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [prod.map_snd](declarations/prod-map-snd.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [prod.map_id_id](declarations/prod-map-id-id.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [prod.lift_fst_snd](declarations/prod-lift-fst-snd.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [prod.lift_map](declarations/prod-lift-map.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [prod.lift_fst_comp_snd_comp](declarations/prod-lift-fst-comp-snd-comp.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [prod.map_map](declarations/prod-map-map.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [prod.map_swap](declarations/prod-map-swap.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [prod.map_comp_id](declarations/prod-map-comp-id.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [prod.map_id_comp](declarations/prod-map-id-comp.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [prod.mapIso](declarations/prod-mapiso.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [isIso_prod](declarations/isiso-prod.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [prod.map_mono](declarations/prod-map-mono.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [prod.diag_map](declarations/prod-diag-map.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [prod.diag_map_fst_snd](declarations/prod-diag-map-fst-snd.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [prod.diag_map_fst_snd_comp](declarations/prod-diag-map-fst-snd-comp.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `instance` | [(anonymous)](declarations/instance.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [coprod.desc_comp](declarations/coprod-desc-comp.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [coprod.diag_comp](declarations/coprod-diag-comp.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [coprod.inl_map](declarations/coprod-inl-map.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [coprod.inr_map](declarations/coprod-inr-map.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [coprod.map_id_id](declarations/coprod-map-id-id.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [coprod.desc_inl_inr](declarations/coprod-desc-inl-inr.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [coprod.map_desc](declarations/coprod-map-desc.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [coprod.desc_comp_inl_comp_inr](declarations/coprod-desc-comp-inl-comp-inr.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [coprod.map_map](declarations/coprod-map-map.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [coprod.map_swap](declarations/coprod-map-swap.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [coprod.map_comp_id](declarations/coprod-map-comp-id.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [coprod.map_id_comp](declarations/coprod-map-id-comp.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [coprod.mapIso](declarations/coprod-mapiso.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `instance` | [isIso_coprod](declarations/isiso-coprod.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `instance` | [coprod.map_epi](declarations/coprod-map-epi.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [coprod.map_codiag](declarations/coprod-map-codiag.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [coprod.map_inl_inr_codiag](declarations/coprod-map-inl-inr-codiag.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [coprod.map_comp_inl_inr_codiag](declarations/coprod-map-comp-inl-inr-codiag.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `abbrev` | [HasBinaryProducts](declarations/hasbinaryproducts.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `abbrev` | [HasBinaryCoproducts](declarations/hasbinarycoproducts.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [hasBinaryProducts_of_hasLimit_pair](declarations/hasbinaryproducts-of-haslimit-pair.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [hasBinaryCoproducts_of_hasColimit_pair](declarations/hasbinarycoproducts-of-hascolimit-pair.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [prod.braiding](declarations/prod-braiding.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [braid_natural](declarations/braid-natural.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [prod.symmetry'](declarations/prod-symmetry-source-edition-2.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [prod.symmetry](declarations/prod-symmetry.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [prod.associator](declarations/prod-associator.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [prod.pentagon](declarations/prod-pentagon.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [prod.associator_naturality](declarations/prod-associator-naturality.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [prod.leftUnitor](declarations/prod-leftunitor.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [prod.rightUnitor](declarations/prod-rightunitor.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [prod.leftUnitor_hom_naturality](declarations/prod-leftunitor-hom-naturality.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [prod.leftUnitor_inv_naturality](declarations/prod-leftunitor-inv-naturality.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [prod.rightUnitor_hom_naturality](declarations/prod-rightunitor-hom-naturality.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [prod_rightUnitor_inv_naturality](declarations/prod-rightunitor-inv-naturality.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [prod.triangle](declarations/prod-triangle.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [coprod.braiding](declarations/coprod-braiding.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [coprod.symmetry'](declarations/coprod-symmetry.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [coprod.symmetry](declarations/coprod-symmetry-source-edition-2.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [coprod.associator](declarations/coprod-associator.md) | 540 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [coprod.pentagon](declarations/coprod-pentagon.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [coprod.associator_naturality](declarations/coprod-associator-naturality.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [coprod.leftUnitor](declarations/coprod-leftunitor.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [coprod.leftUnitor_naturality](declarations/coprod-leftunitor-naturality.md) | 566 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [coprod.rightUnitor](declarations/coprod-rightunitor.md) | 572 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [coprod.rightUnitor_naturality](declarations/coprod-rightunitor-naturality.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [coprod.triangle](declarations/coprod-triangle.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `def` | [prod.functor](declarations/prod-functor.md) | 595 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `def` | [prod.functorLeftComp](declarations/prod-functorleftcomp.md) | 604 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `def` | [coprod.functor](declarations/coprod-functor.md) | 616 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `def` | [coprod.functorLeftComp](declarations/coprod-functorleftcomp.md) | 624 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `lemma` | [HasBinaryProduct.swap](declarations/hasbinaryproduct-swap.md) | 636 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `def` | [Over.coprodObj](declarations/over-coprodobj.md) | 651 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [Over.coprod](declarations/over-coprod.md) | 661 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2e5d1561d191f81865563aacce0d5a5ba2a6b157d99765dd29ec5223efa6da91 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant9dd5a1128ffce296a9165af2989895826f8a62ab9c102171fd6949878229404a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
