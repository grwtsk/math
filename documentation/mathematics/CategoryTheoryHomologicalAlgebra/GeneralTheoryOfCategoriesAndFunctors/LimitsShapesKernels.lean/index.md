# Limits Shapes Kernels

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**134 observed declarations and anonymous commands**, 54 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variantcdbb1b345fae4b061d4055f0345a6f46620009b1d6bd8ce3499faf1ebf95a427.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4d5f9d4f7166c1b62ed29460bedfbc89c08bc962`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesKernels.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [HasKernel](declarations/haskernel.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [HasCokernel](declarations/hascokernel.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [KernelFork](declarations/kernelfork.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [KernelFork.condition](declarations/kernelfork-condition.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [KernelFork.app_one](declarations/kernelfork-app-one.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `abbrev` | [KernelFork.ofι](declarations/kernelfork-of-source-edition-2.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [KernelFork.ι_ofι](declarations/kernelfork-of.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [isoOfι](declarations/isoof.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [ofιCongr](declarations/of-congr-source-edition-2.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [compNatIso](declarations/compnatiso.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [KernelFork.IsLimit.lift'](declarations/kernelfork-islimit-lift.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [isLimitAux](declarations/islimitaux.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [KernelFork.IsLimit.ofι](declarations/kernelfork-islimit-of.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [isKernelCompMono](declarations/iskernelcompmono.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [isKernelCompMono_lift](declarations/iskernelcompmono-lift.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [isKernelOfComp](declarations/iskernelofcomp.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [KernelFork.IsLimit.ofId](declarations/kernelfork-islimit-ofid.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [KernelFork.IsLimit.ofMonoOfIsZero](declarations/kernelfork-islimit-ofmonoofiszero.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [KernelFork.IsLimit.isIso_ι](declarations/kernelfork-islimit-isiso.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `abbrev` | [kernel](declarations/kernel-source-edition-2.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `abbrev` | [kernel.ι](declarations/kernel.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [equalizer_as_kernel](declarations/equalizer-as-kernel.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [kernel.condition](declarations/kernel-condition.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [kernelIsKernel](declarations/kerneliskernel.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `abbrev` | [kernel.lift](declarations/kernel-lift.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [kernel.lift_ι](declarations/kernel-lift-source-edition-2.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [kernel.lift_zero](declarations/kernel-lift-zero.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [kernel.lift_mono](declarations/kernel-lift-mono.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [kernel.lift'](declarations/kernel-lift-source-edition-3.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `abbrev` | [kernel.map](declarations/kernel-map.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [kernel.lift_map](declarations/kernel-lift-map.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [kernel.mapIso](declarations/kernel-mapiso.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [kernel.ι_zero_isIso](declarations/kernel-zero-isiso.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [eq_zero_of_epi_kernel](declarations/eq-zero-of-epi-kernel.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [kernelZeroIsoSource](declarations/kernelzeroisosource.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [kernelZeroIsoSource_hom](declarations/kernelzeroisosource-hom.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [kernelZeroIsoSource_inv](declarations/kernelzeroisosource-inv.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [kernelIsoOfEq](declarations/kernelisoofeq.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [kernelIsoOfEq_refl](declarations/kernelisoofeq-refl.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [kernelIsoOfEq_hom_comp_ι](declarations/kernelisoofeq-hom-comp.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [kernelIsoOfEq_inv_comp_ι](declarations/kernelisoofeq-inv-comp.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [lift_comp_kernelIsoOfEq_hom](declarations/lift-comp-kernelisoofeq-hom.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [lift_comp_kernelIsoOfEq_inv](declarations/lift-comp-kernelisoofeq-inv.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [kernelIsoOfEq_trans](declarations/kernelisoofeq-trans.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [kernel_not_epi_of_nonzero](declarations/kernel-not-epi-of-nonzero.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [kernel_not_iso_of_nonzero](declarations/kernel-not-iso-of-nonzero.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `instance` | [hasKernel_comp_mono](declarations/haskernel-comp-mono.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [kernelCompMono](declarations/kernelcompmono.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [hasKernel_iso_comp](declarations/haskernel-iso-comp.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [kernelIsIsoComp](declarations/kernelisisocomp.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [kernel.zeroKernelFork](declarations/kernel-zerokernelfork.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [kernel.isLimitConeZeroCone](declarations/kernel-islimitconezerocone.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [kernel.ofMono](declarations/kernel-ofmono.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [kernel.ι_of_mono](declarations/kernel-of-mono.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [zeroKernelOfCancelZero](declarations/zerokernelofcancelzero.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [IsKernel.ofCompIso](declarations/iskernel-ofcompiso.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [kernel.ofCompIso](declarations/kernel-ofcompiso.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [IsKernel.isoKernel](declarations/iskernel-isokernel.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [kernel.isoKernel](declarations/kernel-isokernel.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [kernel.ι_of_zero](declarations/kernel-of-zero.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `abbrev` | [CokernelCofork](declarations/cokernelcofork.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [CokernelCofork.condition](declarations/cokernelcofork-condition.md) | 540 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [CokernelCofork.π_eq_zero](declarations/cokernelcofork-eq-zero.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `abbrev` | [CokernelCofork.ofπ](declarations/cokernelcofork-of-source-edition-2.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [CokernelCofork.π_ofπ](declarations/cokernelcofork-of.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [isoOfπ](declarations/isoof-source-edition-2.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [ofπCongr](declarations/of-congr.md) | 566 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [CokernelCofork.IsColimit.desc'](declarations/cokernelcofork-iscolimit-desc.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [isColimitAux](declarations/iscolimitaux.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [CokernelCofork.IsColimit.ofπ](declarations/cokernelcofork-iscolimit-of.md) | 595 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [isCokernelEpiComp](declarations/iscokernelepicomp.md) | 606 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [isCokernelEpiComp_desc](declarations/iscokernelepicomp-desc.md) | 622 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [isCokernelOfComp](declarations/iscokernelofcomp.md) | 634 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [CokernelCofork.IsColimit.ofId](declarations/cokernelcofork-iscolimit-ofid.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [CokernelCofork.IsColimit.ofEpiOfIsZero](declarations/cokernelcofork-iscolimit-ofepiofiszero.md) | 649 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `lemma` | [CokernelCofork.IsColimit.isIso_π](declarations/cokernelcofork-iscolimit-isiso.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `abbrev` | [cokernel](declarations/cokernel.md) | 672 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `abbrev` | [cokernel.π](declarations/cokernel-source-edition-2.md) | 677 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [coequalizer_as_cokernel](declarations/coequalizer-as-cokernel.md) | 682 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [cokernel.condition](declarations/cokernel-condition.md) | 687 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [cokernelIsCokernel](declarations/cokerneliscokernel.md) | 692 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `abbrev` | [cokernel.desc](declarations/cokernel-desc-source-edition-3.md) | 699 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [cokernel.π_desc](declarations/cokernel-desc-source-edition-2.md) | 704 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `lemma` | [colimit_ι_zero_cokernel_desc](declarations/colimit-zero-cokernel-desc.md) | 711 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [cokernel.desc_zero](declarations/cokernel-desc-zero.md) | 718 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `instance` | [cokernel.desc_epi](declarations/cokernel-desc-epi.md) | 722 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [cokernel.desc'](declarations/cokernel-desc.md) | 732 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `abbrev` | [cokernel.map](declarations/cokernel-map.md) | 738 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [cokernel.map_desc](declarations/cokernel-map-desc.md) | 762 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [cokernel.mapIso](declarations/cokernel-mapiso.md) | 771 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `instance` | [cokernel.π_zero_isIso](declarations/cokernel-zero-isiso.md) | 780 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [eq_zero_of_mono_cokernel](declarations/eq-zero-of-mono-cokernel.md) | 784 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [cokernelZeroIsoTarget](declarations/cokernelzeroisotarget.md) | 789 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [cokernelZeroIsoTarget_hom](declarations/cokernelzeroisotarget-hom.md) | 794 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [cokernelZeroIsoTarget_inv](declarations/cokernelzeroisotarget-inv.md) | 800 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `def` | [cokernelIsoOfEq](declarations/cokernelisoofeq.md) | 805 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [cokernelIsoOfEq_refl](declarations/cokernelisoofeq-refl.md) | 811 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [π_comp_cokernelIsoOfEq_hom](declarations/comp-cokernelisoofeq-hom.md) | 816 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [π_comp_cokernelIsoOfEq_inv](declarations/comp-cokernelisoofeq-inv.md) | 822 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [cokernelIsoOfEq_hom_comp_desc](declarations/cokernelisoofeq-hom-comp-desc.md) | 828 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [cokernelIsoOfEq_inv_comp_desc](declarations/cokernelisoofeq-inv-comp-desc.md) | 835 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [cokernelIsoOfEq_trans](declarations/cokernelisoofeq-trans.md) | 842 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [cokernel_not_mono_of_nonzero](declarations/cokernel-not-mono-of-nonzero.md) | 850 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [cokernel_not_iso_of_nonzero](declarations/cokernel-not-iso-of-nonzero.md) | 854 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `instance` | [hasCokernel_comp_iso](declarations/hascokernel-comp-iso.md) | 861 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `def` | [cokernelCompIsIso](declarations/cokernelcompisiso.md) | 878 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `instance` | [hasCokernel_epi_comp](declarations/hascokernel-epi-comp.md) | 884 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `def` | [cokernelEpiComp](declarations/cokernelepicomp.md) | 893 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `def` | [cokernel.zeroCokernelCofork](declarations/cokernel-zerocokernelcofork.md) | 912 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `def` | [cokernel.isColimitCoconeZeroCocone](declarations/cokernel-iscolimitcoconezerococone.md) | 919 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `def` | [cokernel.ofEpi](declarations/cokernel-ofepi.md) | 929 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [cokernel.π_of_epi](declarations/cokernel-of-epi.md) | 936 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [MonoFactorisation.kernel_ι_comp](declarations/monofactorisation-kernel-comp.md) | 947 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `def` | [cokernelImageι](declarations/cokernelimage.md) | 962 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [cokernel.π_of_zero](declarations/cokernel-of-zero.md) | 992 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `instance` | [kernel.of_cokernel_of_epi](declarations/kernel-of-cokernel-of-epi.md) | 1005 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `instance` | [cokernel.of_kernel_of_mono](declarations/cokernel-of-kernel-of-mono.md) | 1011 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `def` | [zeroCokernelOfZeroCancel](declarations/zerocokernelofzerocancel.md) | 1017 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `def` | [IsCokernel.ofIsoComp](declarations/iscokernel-ofisocomp.md) | 1031 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `def` | [cokernel.ofIsoComp](declarations/cokernel-ofisocomp.md) | 1043 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `def` | [IsCokernel.cokernelIso](declarations/iscokernel-cokerneliso.md) | 1052 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `def` | [cokernel.cokernelIso](declarations/cokernel-cokerneliso.md) | 1063 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `def` | [kernelComparison](declarations/kernelcomparison.md) | 1081 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [kernelComparison_comp_ι](declarations/kernelcomparison-comp.md) | 1087 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [map_lift_kernelComparison](declarations/map-lift-kernelcomparison.md) | 1093 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [kernelComparison_comp_kernel_map](declarations/kernelcomparison-comp-kernel-map.md) | 1101 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `def` | [cokernelComparison](declarations/cokernelcomparison.md) | 1113 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [π_comp_cokernelComparison](declarations/comp-cokernelcomparison.md) | 1120 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [cokernelComparison_map_desc](declarations/cokernelcomparison-map-desc.md) | 1126 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [cokernel_map_comp_cokernelComparison](declarations/cokernel-map-comp-cokernelcomparison.md) | 1134 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `class` | [HasKernels](declarations/haskernels.md) | 1156 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `class` | [HasCokernels](declarations/hascokernels.md) | 1161 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 1167 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `instance` | [(anonymous)](declarations/instance.md) | 1170 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b607d8d61d72dba6cc6a55169d37ae08e6dcb34f56e725ce9508550495af5c45 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variantcdbb1b345fae4b061d4055f0345a6f46620009b1d6bd8ce3499faf1ebf95a427.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
