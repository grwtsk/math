# Binary Biproducts

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**149 observed declarations and anonymous commands**, 57 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryBiproducts/Variant127593834a529fc2d4409f46fceeab5d9b51675ea73afe4256671c452fe27c5e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3321d63308ec99bb6f4d99332459ea003452054f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BinaryBiproducts.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [BinaryBicone](declarations/binarybicone.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [BinaryBiconeMorphism](declarations/binarybiconemorphism.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [BinaryBicone.category](declarations/binarybicone-category.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [BinaryBiconeMorphism.ext](declarations/binarybiconemorphism-ext.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [ext](declarations/ext.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [functoriality](declarations/functoriality.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [functoriality_full](declarations/functoriality-full.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [functoriality_faithful](declarations/functoriality-faithful.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [toCone](declarations/tocone.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [toCone_pt](declarations/tocone-pt.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [toCone_π_app_left](declarations/tocone-app-left.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [toCone_π_app_right](declarations/tocone-app-right.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [binary_fan_fst_toCone](declarations/binary-fan-fst-tocone.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [binary_fan_snd_toCone](declarations/binary-fan-snd-tocone.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [toCocone](declarations/tococone.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [toCocone_pt](declarations/tococone-pt.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [toCocone_ι_app_left](declarations/tococone-app-left.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [toCocone_ι_app_right](declarations/tococone-app-right.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [binary_cofan_inl_toCocone](declarations/binary-cofan-inl-tococone.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [binary_cofan_inr_toCocone](declarations/binary-cofan-inr-tococone.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [(anonymous)](declarations/instance.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [toBiconeFunctor](declarations/tobiconefunctor.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `abbrev` | [toBicone](declarations/tobicone.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [toBiconeIsLimit](declarations/tobiconeislimit.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [toBiconeIsColimit](declarations/tobiconeiscolimit.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [toBinaryBiconeFunctor](declarations/tobinarybiconefunctor.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `abbrev` | [toBinaryBicone](declarations/tobinarybicone.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [toBinaryBiconeIsLimit](declarations/tobinarybiconeislimit.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [toBinaryBiconeIsColimit](declarations/tobinarybiconeiscolimit.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `structure` | [BinaryBicone.IsBilimit](declarations/binarybicone-isbilimit.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [BinaryBicone.toBiconeIsBilimit](declarations/binarybicone-tobiconeisbilimit.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [Bicone.toBinaryBiconeIsBilimit](declarations/bicone-tobinarybiconeisbilimit.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `structure` | [BinaryBiproductData](declarations/binarybiproductdata.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `class` | [HasBinaryBiproduct](declarations/hasbinarybiproduct.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [HasBinaryBiproduct.mk](declarations/hasbinarybiproduct-mk.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [getBinaryBiproductData](declarations/getbinarybiproductdata.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [BinaryBiproduct.bicone](declarations/binarybiproduct-bicone.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [BinaryBiproduct.isBilimit](declarations/binarybiproduct-isbilimit.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [BinaryBiproduct.isLimit](declarations/binarybiproduct-islimit.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [BinaryBiproduct.isColimit](declarations/binarybiproduct-iscolimit.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `class` | [HasBinaryBiproducts](declarations/hasbinarybiproducts.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [hasBinaryBiproducts_of_finite_biproducts](declarations/hasbinarybiproducts-of-finite-biproducts.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [HasBinaryBiproduct.hasLimit_pair](declarations/hasbinarybiproduct-haslimit-pair.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `instance` | [HasBinaryBiproduct.hasColimit_pair](declarations/hasbinarybiproduct-hascolimit-pair.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [biprodIso](declarations/biprodiso.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `abbrev` | [biprod](declarations/biprod.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `abbrev` | [biprod.fst](declarations/biprod-fst.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `abbrev` | [biprod.snd](declarations/biprod-snd.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `abbrev` | [biprod.inl](declarations/biprod-inl.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `abbrev` | [biprod.inr](declarations/biprod-inr.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [BinaryBiproduct.bicone_fst](declarations/binarybiproduct-bicone-fst.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [BinaryBiproduct.bicone_snd](declarations/binarybiproduct-bicone-snd.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [BinaryBiproduct.bicone_inl](declarations/binarybiproduct-bicone-inl.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [BinaryBiproduct.bicone_inr](declarations/binarybiproduct-bicone-inr.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [biprod.inl_fst](declarations/biprod-inl-fst.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [biprod.inl_snd](declarations/biprod-inl-snd.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [biprod.inr_fst](declarations/biprod-inr-fst.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [biprod.inr_snd](declarations/biprod-inr-snd.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `abbrev` | [biprod.lift](declarations/biprod-lift.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `abbrev` | [biprod.desc](declarations/biprod-desc.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [biprod.lift_fst](declarations/biprod-lift-fst.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [biprod.lift_snd](declarations/biprod-lift-snd.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [biprod.inl_desc](declarations/biprod-inl-desc.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [biprod.inr_desc](declarations/biprod-inr-desc.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `instance` | [biprod.mono_lift_of_mono_left](declarations/biprod-mono-lift-of-mono-left.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `instance` | [biprod.mono_lift_of_mono_right](declarations/biprod-mono-lift-of-mono-right.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `instance` | [biprod.epi_desc_of_epi_left](declarations/biprod-epi-desc-of-epi-left.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `instance` | [biprod.epi_desc_of_epi_right](declarations/biprod-epi-desc-of-epi-right.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `abbrev` | [biprod.map](declarations/biprod-map-source-edition-2.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `abbrev` | [biprod.map'](declarations/biprod-map.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [biprod.hom_ext](declarations/biprod-hom-ext.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [biprod.hom_ext'](declarations/biprod-hom-ext-source-edition-2.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [biprod.isoProd](declarations/biprod-isoprod.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [biprod.isoProd_hom](declarations/biprod-isoprod-hom.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [biprod.isoProd_inv](declarations/biprod-isoprod-inv.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [biprod.isoCoprod](declarations/biprod-isocoprod.md) | 543 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [biprod.isoCoprod_inv](declarations/biprod-isocoprod-inv.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [biprod_isoCoprod_hom](declarations/biprod-isocoprod-hom.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [biprod.map_eq_map'](declarations/biprod-map-eq-map.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `instance` | [biprod.inl_mono](declarations/biprod-inl-mono.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `instance` | [biprod.inr_mono](declarations/biprod-inr-mono.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `instance` | [biprod.fst_epi](declarations/biprod-fst-epi.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `instance` | [biprod.snd_epi](declarations/biprod-snd-epi.md) | 587 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [biprod.map_fst](declarations/biprod-map-fst.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [biprod.map_snd](declarations/biprod-map-snd.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [biprod.inl_map](declarations/biprod-inl-map.md) | 603 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [biprod.inr_map](declarations/biprod-inr-map.md) | 609 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [biprod.mapIso](declarations/biprod-mapiso.md) | 617 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [biprod.conePointUniqueUpToIso_hom](declarations/biprod-conepointuniqueuptoiso-hom.md) | 623 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [biprod.conePointUniqueUpToIso_inv](declarations/biprod-conepointuniqueuptoiso-inv.md) | 629 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `def` | [biprod.uniqueUpToIso](declarations/biprod-uniqueuptoiso.md) | 644 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [biprod.isIso_inl_iff_id_eq_fst_comp_inl](declarations/biprod-isiso-inl-iff-id-eq-fst-comp-inl.md) | 659 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `instance` | [biprod.map_epi](declarations/biprod-map-epi.md) | 669 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `instance` | [prod.map_epi](declarations/prod-map-epi.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `instance` | [biprod.map_mono](declarations/biprod-map-mono.md) | 681 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `instance` | [coprod.map_mono](declarations/coprod-map-mono.md) | 687 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `def` | [BinaryBicone.fstKernelFork](declarations/binarybicone-fstkernelfork-source-edition-2.md) | 701 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [BinaryBicone.fstKernelFork_ι](declarations/binarybicone-fstkernelfork.md) | 705 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `def` | [BinaryBicone.sndKernelFork](declarations/binarybicone-sndkernelfork-source-edition-2.md) | 709 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [BinaryBicone.sndKernelFork_ι](declarations/binarybicone-sndkernelfork.md) | 713 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `def` | [BinaryBicone.inlCokernelCofork](declarations/binarybicone-inlcokernelcofork-source-edition-2.md) | 717 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [BinaryBicone.inlCokernelCofork_π](declarations/binarybicone-inlcokernelcofork.md) | 721 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `def` | [BinaryBicone.inrCokernelCofork](declarations/binarybicone-inrcokernelcofork.md) | 725 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [BinaryBicone.inrCokernelCofork_π](declarations/binarybicone-inrcokernelcofork-source-edition-2.md) | 729 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `def` | [BinaryBicone.isLimitFstKernelFork](declarations/binarybicone-islimitfstkernelfork.md) | 734 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `def` | [BinaryBicone.isLimitSndKernelFork](declarations/binarybicone-islimitsndkernelfork.md) | 739 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `def` | [BinaryBicone.isColimitInlCokernelCofork](declarations/binarybicone-iscolimitinlcokernelcofork.md) | 744 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `def` | [BinaryBicone.isColimitInrCokernelCofork](declarations/binarybicone-iscolimitinrcokernelcofork.md) | 750 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `def` | [biprod.fstKernelFork](declarations/biprod-fstkernelfork.md) | 763 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [biprod.fstKernelFork_ι](declarations/biprod-fstkernelfork-source-edition-2.md) | 767 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `def` | [biprod.isKernelFstKernelFork](declarations/biprod-iskernelfstkernelfork.md) | 771 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `def` | [biprod.sndKernelFork](declarations/biprod-sndkernelfork-source-edition-2.md) | 776 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [biprod.sndKernelFork_ι](declarations/biprod-sndkernelfork.md) | 780 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `def` | [biprod.isKernelSndKernelFork](declarations/biprod-iskernelsndkernelfork.md) | 784 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `def` | [biprod.inlCokernelCofork](declarations/biprod-inlcokernelcofork-source-edition-2.md) | 789 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [biprod.inlCokernelCofork_π](declarations/biprod-inlcokernelcofork.md) | 793 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `def` | [biprod.isCokernelInlCokernelFork](declarations/biprod-iscokernelinlcokernelfork.md) | 797 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `def` | [biprod.inrCokernelCofork](declarations/biprod-inrcokernelcofork.md) | 802 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [biprod.inrCokernelCofork_π](declarations/biprod-inrcokernelcofork-source-edition-2.md) | 806 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `def` | [biprod.isCokernelInrCokernelFork](declarations/biprod-iscokernelinrcokernelfork.md) | 810 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 817 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `def` | [kernelBiprodFstIso](declarations/kernelbiprodfstiso.md) | 822 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 825 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `def` | [kernelBiprodSndIso](declarations/kernelbiprodsndiso.md) | 830 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 833 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `def` | [cokernelBiprodInlIso](declarations/cokernelbiprodinliso.md) | 838 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 841 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `def` | [cokernelBiprodInrIso](declarations/cokernelbiprodinriso.md) | 846 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `def` | [isoBiprodZero](declarations/isobiprodzero.md) | 855 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `def` | [isoZeroBiprod](declarations/isozerobiprod.md) | 866 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `lemma` | [biprod_isZero_iff](declarations/biprod-iszero-iff.md) | 876 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `def` | [biprod.braiding](declarations/biprod-braiding-source-edition-2.md) | 898 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `def` | [biprod.braiding'](declarations/biprod-braiding.md) | 905 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [biprod.braiding'_eq_braiding](declarations/biprod-braiding-eq-braiding.md) | 909 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [biprod.braid_natural](declarations/biprod-braid-natural.md) | 914 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [biprod.braiding_map_braiding](declarations/biprod-braiding-map-braiding.md) | 919 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [biprod.symmetry'](declarations/biprod-symmetry.md) | 924 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [biprod.symmetry](declarations/biprod-symmetry-source-edition-2.md) | 930 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `def` | [biprod.associator](declarations/biprod-associator.md) | 935 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [biprod.associator_natural](declarations/biprod-associator-natural.md) | 941 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [biprod.associator_inv_natural](declarations/biprod-associator-inv-natural.md) | 948 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `def` | [Indecomposable](declarations/indecomposable.md) | 965 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [isIso_left_of_isIso_biprod_map](declarations/isiso-left-of-isiso-biprod-map.md) | 975 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [isIso_right_of_isIso_biprod_map](declarations/isiso-right-of-isiso-biprod-map.md) | 996 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9dbf06f1bad0f0b9d904cd686418c22969517f26226028cbf2e9133ff93b9e8c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryBiproducts/Variant127593834a529fc2d4409f46fceeab5d9b51675ea73afe4256671c452fe27c5e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
