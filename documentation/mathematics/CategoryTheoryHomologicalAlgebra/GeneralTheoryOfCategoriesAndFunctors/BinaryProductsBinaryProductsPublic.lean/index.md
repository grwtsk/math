# Binary Products Binary Products Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**101 observed declarations and anonymous commands**, 56 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant1a5e5a503cccdaef83dee8647823e0360835e33eaac952d4df9854dea8e20bca.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8a5e02f331b6bad70e42c2007eaceaf4aa7b73a7`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BinaryProductsBinaryProductsPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [HasBinaryProduct](declarations/hasbinaryproduct.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [HasBinaryCoproduct](declarations/hasbinarycoproduct.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [prod](declarations/prod.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `abbrev` | [coprod](declarations/coprod.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `abbrev` | [prod.fst](declarations/prod-fst.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `abbrev` | [prod.snd](declarations/prod-snd.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `abbrev` | [coprod.inl](declarations/coprod-inl.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `abbrev` | [coprod.inr](declarations/coprod-inr.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [prodIsProd](declarations/prodisprod.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [coprodIsCoprod](declarations/coprodiscoprod.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [prod.hom_ext](declarations/prod-hom-ext.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [coprod.hom_ext](declarations/coprod-hom-ext.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `abbrev` | [prod.lift](declarations/prod-lift.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `abbrev` | [diag](declarations/diag.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `abbrev` | [coprod.desc](declarations/coprod-desc.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `abbrev` | [codiag](declarations/codiag.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [prod.lift_fst](declarations/prod-lift-fst.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [prod.lift_snd](declarations/prod-lift-snd.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [coprod.inl_desc](declarations/coprod-inl-desc.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [coprod.inr_desc](declarations/coprod-inr-desc.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [prod.mono_lift_of_mono_left](declarations/prod-mono-lift-of-mono-left.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [prod.mono_lift_of_mono_right](declarations/prod-mono-lift-of-mono-right.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [coprod.epi_desc_of_epi_left](declarations/coprod-epi-desc-of-epi-left.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [coprod.epi_desc_of_epi_right](declarations/coprod-epi-desc-of-epi-right.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [prod.lift'](declarations/prod-lift-source-edition-2.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [coprod.desc'](declarations/coprod-desc-source-edition-2.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [prod.map](declarations/prod-map.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [coprod.map](declarations/coprod-map.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [prod.comp_lift](declarations/prod-comp-lift.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [prod.comp_diag](declarations/prod-comp-diag.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [prod.map_fst](declarations/prod-map-fst.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [prod.map_snd](declarations/prod-map-snd.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [prod.map_id_id](declarations/prod-map-id-id.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [prod.lift_fst_snd](declarations/prod-lift-fst-snd.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [prod.lift_map](declarations/prod-lift-map.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [prod.lift_fst_comp_snd_comp](declarations/prod-lift-fst-comp-snd-comp.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [prod.map_map](declarations/prod-map-map.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [prod.map_swap](declarations/prod-map-swap.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [prod.map_comp_id](declarations/prod-map-comp-id.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [prod.map_id_comp](declarations/prod-map-id-comp.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [prod.mapIso](declarations/prod-mapiso.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [isIso_prod](declarations/isiso-prod.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [prod.map_mono](declarations/prod-map-mono.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [prod.diag_map](declarations/prod-diag-map.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [prod.diag_map_fst_snd](declarations/prod-diag-map-fst-snd.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [prod.diag_map_fst_snd_comp](declarations/prod-diag-map-fst-snd-comp.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `instance` | [(anonymous)](declarations/instance.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [coprod.desc_comp](declarations/coprod-desc-comp.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [coprod.diag_comp](declarations/coprod-diag-comp.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [coprod.inl_map](declarations/coprod-inl-map.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [coprod.inr_map](declarations/coprod-inr-map.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [coprod.map_id_id](declarations/coprod-map-id-id.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [coprod.desc_inl_inr](declarations/coprod-desc-inl-inr.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [coprod.map_desc](declarations/coprod-map-desc.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [coprod.desc_comp_inl_comp_inr](declarations/coprod-desc-comp-inl-comp-inr.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [coprod.map_map](declarations/coprod-map-map.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [coprod.map_swap](declarations/coprod-map-swap.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [coprod.map_comp_id](declarations/coprod-map-comp-id.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [coprod.map_id_comp](declarations/coprod-map-id-comp.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [coprod.mapIso](declarations/coprod-mapiso.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `instance` | [isIso_coprod](declarations/isiso-coprod.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `instance` | [coprod.map_epi](declarations/coprod-map-epi.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [coprod.map_codiag](declarations/coprod-map-codiag.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [coprod.map_inl_inr_codiag](declarations/coprod-map-inl-inr-codiag.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [coprod.map_comp_inl_inr_codiag](declarations/coprod-map-comp-inl-inr-codiag.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `abbrev` | [HasBinaryProducts](declarations/hasbinaryproducts.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `abbrev` | [HasBinaryCoproducts](declarations/hasbinarycoproducts.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [hasBinaryProducts_of_hasLimit_pair](declarations/hasbinaryproducts-of-haslimit-pair.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [hasBinaryCoproducts_of_hasColimit_pair](declarations/hasbinarycoproducts-of-hascolimit-pair.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [prod.braiding](declarations/prod-braiding.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [braid_natural](declarations/braid-natural.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [prod.symmetry'](declarations/prod-symmetry-source-edition-2.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [prod.symmetry](declarations/prod-symmetry.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [prod.associator](declarations/prod-associator.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [prod.pentagon](declarations/prod-pentagon.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [prod.associator_naturality](declarations/prod-associator-naturality.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [prod.leftUnitor](declarations/prod-leftunitor.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [prod.rightUnitor](declarations/prod-rightunitor.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [prod.leftUnitor_hom_naturality](declarations/prod-leftunitor-hom-naturality.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [prod.leftUnitor_inv_naturality](declarations/prod-leftunitor-inv-naturality.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [prod.rightUnitor_hom_naturality](declarations/prod-rightunitor-hom-naturality.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [prod_rightUnitor_inv_naturality](declarations/prod-rightunitor-inv-naturality.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [prod.triangle](declarations/prod-triangle.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [coprod.braiding](declarations/coprod-braiding.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [coprod.symmetry'](declarations/coprod-symmetry.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [coprod.symmetry](declarations/coprod-symmetry-source-edition-2.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [coprod.associator](declarations/coprod-associator.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [coprod.pentagon](declarations/coprod-pentagon.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [coprod.associator_naturality](declarations/coprod-associator-naturality.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [coprod.leftUnitor](declarations/coprod-leftunitor.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [coprod.leftUnitor_naturality](declarations/coprod-leftunitor-naturality.md) | 558 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [coprod.rightUnitor](declarations/coprod-rightunitor.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [coprod.rightUnitor_naturality](declarations/coprod-rightunitor-naturality.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [coprod.triangle](declarations/coprod-triangle.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `def` | [prod.functor](declarations/prod-functor.md) | 587 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `def` | [prod.functorLeftComp](declarations/prod-functorleftcomp.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `def` | [coprod.functor](declarations/coprod-functor.md) | 608 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `def` | [coprod.functorLeftComp](declarations/coprod-functorleftcomp.md) | 616 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `lemma` | [HasBinaryProduct.swap](declarations/hasbinaryproduct-swap.md) | 628 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `def` | [Over.coprodObj](declarations/over-coprodobj.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [Over.coprod](declarations/over-coprod.md) | 653 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=663957a5e126dd005633959af62657d5e8bbfc130fa1539b947345b1ab559012 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant1a5e5a503cccdaef83dee8647823e0360835e33eaac952d4df9854dea8e20bca.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
