# Limits Shapes Kernels Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**134 observed declarations and anonymous commands**, 54 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant4492a52f5355531a7ca5088ff3dc51a2241a3d404d4d40e537fc2965b82840de.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `caebdbe22fa16ae321ede4d6fbb8a8a53b6283ec`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesKernelsNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [HasKernel](declarations/haskernel.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [HasCokernel](declarations/hascokernel.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [KernelFork](declarations/kernelfork.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [KernelFork.condition](declarations/kernelfork-condition.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [KernelFork.app_one](declarations/kernelfork-app-one.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `abbrev` | [KernelFork.ofι](declarations/kernelfork-of-source-edition-2.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [KernelFork.ι_ofι](declarations/kernelfork-of.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [isoOfι](declarations/isoof-source-edition-2.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [ofιCongr](declarations/of-congr-source-edition-2.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [compNatIso](declarations/compnatiso.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [KernelFork.IsLimit.lift'](declarations/kernelfork-islimit-lift.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [isLimitAux](declarations/islimitaux.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [KernelFork.IsLimit.ofι](declarations/kernelfork-islimit-of.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [isKernelCompMono](declarations/iskernelcompmono.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [isKernelCompMono_lift](declarations/iskernelcompmono-lift.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [isKernelOfComp](declarations/iskernelofcomp.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [KernelFork.IsLimit.ofId](declarations/kernelfork-islimit-ofid.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [KernelFork.IsLimit.ofMonoOfIsZero](declarations/kernelfork-islimit-ofmonoofiszero.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [KernelFork.IsLimit.isIso_ι](declarations/kernelfork-islimit-isiso.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `abbrev` | [kernel](declarations/kernel.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `abbrev` | [kernel.ι](declarations/kernel-source-edition-2.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [equalizer_as_kernel](declarations/equalizer-as-kernel.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [kernel.condition](declarations/kernel-condition.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [kernelIsKernel](declarations/kerneliskernel.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `abbrev` | [kernel.lift](declarations/kernel-lift.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [kernel.lift_ι](declarations/kernel-lift-source-edition-2.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [kernel.lift_zero](declarations/kernel-lift-zero.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [kernel.lift_mono](declarations/kernel-lift-mono.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [kernel.lift'](declarations/kernel-lift-source-edition-3.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `abbrev` | [kernel.map](declarations/kernel-map.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [kernel.lift_map](declarations/kernel-lift-map.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [kernel.mapIso](declarations/kernel-mapiso.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [kernel.ι_zero_isIso](declarations/kernel-zero-isiso.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [eq_zero_of_epi_kernel](declarations/eq-zero-of-epi-kernel.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [kernelZeroIsoSource](declarations/kernelzeroisosource.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [kernelZeroIsoSource_hom](declarations/kernelzeroisosource-hom.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [kernelZeroIsoSource_inv](declarations/kernelzeroisosource-inv.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [kernelIsoOfEq](declarations/kernelisoofeq.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [kernelIsoOfEq_refl](declarations/kernelisoofeq-refl.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [kernelIsoOfEq_hom_comp_ι](declarations/kernelisoofeq-hom-comp.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [kernelIsoOfEq_inv_comp_ι](declarations/kernelisoofeq-inv-comp.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [lift_comp_kernelIsoOfEq_hom](declarations/lift-comp-kernelisoofeq-hom.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [lift_comp_kernelIsoOfEq_inv](declarations/lift-comp-kernelisoofeq-inv.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [kernelIsoOfEq_trans](declarations/kernelisoofeq-trans.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [kernel_not_epi_of_nonzero](declarations/kernel-not-epi-of-nonzero.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [kernel_not_iso_of_nonzero](declarations/kernel-not-iso-of-nonzero.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `instance` | [hasKernel_comp_mono](declarations/haskernel-comp-mono.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [kernelCompMono](declarations/kernelcompmono.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [hasKernel_iso_comp](declarations/haskernel-iso-comp.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [kernelIsIsoComp](declarations/kernelisisocomp.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [kernel.zeroKernelFork](declarations/kernel-zerokernelfork.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [kernel.isLimitConeZeroCone](declarations/kernel-islimitconezerocone.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [kernel.ofMono](declarations/kernel-ofmono.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [kernel.ι_of_mono](declarations/kernel-of-mono.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [zeroKernelOfCancelZero](declarations/zerokernelofcancelzero.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [IsKernel.ofCompIso](declarations/iskernel-ofcompiso.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [kernel.ofCompIso](declarations/kernel-ofcompiso.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [IsKernel.isoKernel](declarations/iskernel-isokernel.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [kernel.isoKernel](declarations/kernel-isokernel.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [kernel.ι_of_zero](declarations/kernel-of-zero.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `abbrev` | [CokernelCofork](declarations/cokernelcofork.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [CokernelCofork.condition](declarations/cokernelcofork-condition.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [CokernelCofork.π_eq_zero](declarations/cokernelcofork-eq-zero.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `abbrev` | [CokernelCofork.ofπ](declarations/cokernelcofork-of-source-edition-2.md) | 558 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [CokernelCofork.π_ofπ](declarations/cokernelcofork-of.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [isoOfπ](declarations/isoof.md) | 569 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [ofπCongr](declarations/of-congr.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [CokernelCofork.IsColimit.desc'](declarations/cokernelcofork-iscolimit-desc.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [isColimitAux](declarations/iscolimitaux.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [CokernelCofork.IsColimit.ofπ](declarations/cokernelcofork-iscolimit-of.md) | 603 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [isCokernelEpiComp](declarations/iscokernelepicomp.md) | 614 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [isCokernelEpiComp_desc](declarations/iscokernelepicomp-desc.md) | 630 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [isCokernelOfComp](declarations/iscokernelofcomp.md) | 642 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [CokernelCofork.IsColimit.ofId](declarations/cokernelcofork-iscolimit-ofid.md) | 651 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [CokernelCofork.IsColimit.ofEpiOfIsZero](declarations/cokernelcofork-iscolimit-ofepiofiszero.md) | 657 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `lemma` | [CokernelCofork.IsColimit.isIso_π](declarations/cokernelcofork-iscolimit-isiso.md) | 662 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `abbrev` | [cokernel](declarations/cokernel.md) | 680 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `abbrev` | [cokernel.π](declarations/cokernel-source-edition-2.md) | 685 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [coequalizer_as_cokernel](declarations/coequalizer-as-cokernel.md) | 690 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [cokernel.condition](declarations/cokernel-condition.md) | 695 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [cokernelIsCokernel](declarations/cokerneliscokernel.md) | 700 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `abbrev` | [cokernel.desc](declarations/cokernel-desc-source-edition-2.md) | 707 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [cokernel.π_desc](declarations/cokernel-desc.md) | 712 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `lemma` | [colimit_ι_zero_cokernel_desc](declarations/colimit-zero-cokernel-desc.md) | 719 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [cokernel.desc_zero](declarations/cokernel-desc-zero.md) | 726 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `instance` | [cokernel.desc_epi](declarations/cokernel-desc-epi.md) | 730 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [cokernel.desc'](declarations/cokernel-desc-source-edition-3.md) | 740 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `abbrev` | [cokernel.map](declarations/cokernel-map.md) | 746 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [cokernel.map_desc](declarations/cokernel-map-desc.md) | 770 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [cokernel.mapIso](declarations/cokernel-mapiso.md) | 779 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `instance` | [cokernel.π_zero_isIso](declarations/cokernel-zero-isiso.md) | 788 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [eq_zero_of_mono_cokernel](declarations/eq-zero-of-mono-cokernel.md) | 792 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [cokernelZeroIsoTarget](declarations/cokernelzeroisotarget.md) | 797 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [cokernelZeroIsoTarget_hom](declarations/cokernelzeroisotarget-hom.md) | 802 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [cokernelZeroIsoTarget_inv](declarations/cokernelzeroisotarget-inv.md) | 808 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `def` | [cokernelIsoOfEq](declarations/cokernelisoofeq.md) | 813 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [cokernelIsoOfEq_refl](declarations/cokernelisoofeq-refl.md) | 819 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [π_comp_cokernelIsoOfEq_hom](declarations/comp-cokernelisoofeq-hom.md) | 824 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [π_comp_cokernelIsoOfEq_inv](declarations/comp-cokernelisoofeq-inv.md) | 830 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [cokernelIsoOfEq_hom_comp_desc](declarations/cokernelisoofeq-hom-comp-desc.md) | 836 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [cokernelIsoOfEq_inv_comp_desc](declarations/cokernelisoofeq-inv-comp-desc.md) | 843 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [cokernelIsoOfEq_trans](declarations/cokernelisoofeq-trans.md) | 850 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [cokernel_not_mono_of_nonzero](declarations/cokernel-not-mono-of-nonzero.md) | 858 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [cokernel_not_iso_of_nonzero](declarations/cokernel-not-iso-of-nonzero.md) | 862 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `instance` | [hasCokernel_comp_iso](declarations/hascokernel-comp-iso.md) | 869 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `def` | [cokernelCompIsIso](declarations/cokernelcompisiso.md) | 886 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `instance` | [hasCokernel_epi_comp](declarations/hascokernel-epi-comp.md) | 892 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `def` | [cokernelEpiComp](declarations/cokernelepicomp.md) | 901 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `def` | [cokernel.zeroCokernelCofork](declarations/cokernel-zerocokernelcofork.md) | 920 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `def` | [cokernel.isColimitCoconeZeroCocone](declarations/cokernel-iscolimitcoconezerococone.md) | 927 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `def` | [cokernel.ofEpi](declarations/cokernel-ofepi.md) | 937 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [cokernel.π_of_epi](declarations/cokernel-of-epi.md) | 944 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [MonoFactorisation.kernel_ι_comp](declarations/monofactorisation-kernel-comp.md) | 955 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `def` | [cokernelImageι](declarations/cokernelimage.md) | 970 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [cokernel.π_of_zero](declarations/cokernel-of-zero.md) | 1000 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `instance` | [kernel.of_cokernel_of_epi](declarations/kernel-of-cokernel-of-epi.md) | 1013 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `instance` | [cokernel.of_kernel_of_mono](declarations/cokernel-of-kernel-of-mono.md) | 1019 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `def` | [zeroCokernelOfZeroCancel](declarations/zerocokernelofzerocancel.md) | 1025 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `def` | [IsCokernel.ofIsoComp](declarations/iscokernel-ofisocomp.md) | 1039 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `def` | [cokernel.ofIsoComp](declarations/cokernel-ofisocomp.md) | 1051 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `def` | [IsCokernel.cokernelIso](declarations/iscokernel-cokerneliso.md) | 1060 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `def` | [cokernel.cokernelIso](declarations/cokernel-cokerneliso.md) | 1071 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `def` | [kernelComparison](declarations/kernelcomparison.md) | 1089 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [kernelComparison_comp_ι](declarations/kernelcomparison-comp.md) | 1095 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [map_lift_kernelComparison](declarations/map-lift-kernelcomparison.md) | 1101 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [kernelComparison_comp_kernel_map](declarations/kernelcomparison-comp-kernel-map.md) | 1109 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `def` | [cokernelComparison](declarations/cokernelcomparison.md) | 1121 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [π_comp_cokernelComparison](declarations/comp-cokernelcomparison.md) | 1128 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [cokernelComparison_map_desc](declarations/cokernelcomparison-map-desc.md) | 1134 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [cokernel_map_comp_cokernelComparison](declarations/cokernel-map-comp-cokernelcomparison.md) | 1142 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `class` | [HasKernels](declarations/haskernels.md) | 1164 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `class` | [HasCokernels](declarations/hascokernels.md) | 1169 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `instance` | [(anonymous)](declarations/instance.md) | 1175 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 1178 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8cd3570c5be47eb370f4a8224fc5146c0beeac9c938b994957329e64a7867f04 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant4492a52f5355531a7ca5088ff3dc51a2241a3d404d4d40e537fc2965b82840de.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
