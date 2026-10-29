# CDFTo Kernel

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**46 observed declarations and anonymous commands**, 41 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/CDFToKernel/Variantd8fe33ca153003087b49616cdd06cdad2a2f16a53341615d2df1897c92fc25d3.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `25f38cf0214ed3c5ce9cd620ef2ff0a871c81e38`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/ProbabilityTheoryAndStochasticProcesses/CDFToKernel.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [IsRatCondKernelCDF](declarations/isratcondkernelcdf.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [IsRatCondKernelCDF.mono](declarations/isratcondkernelcdf-mono.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [IsRatCondKernelCDF.tendsto_atTop_one](declarations/isratcondkernelcdf-tendsto-attop-one.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [IsRatCondKernelCDF.tendsto_atBot_zero](declarations/isratcondkernelcdf-tendsto-atbot-zero.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [IsRatCondKernelCDF.iInf_rat_gt_eq](declarations/isratcondkernelcdf-iinf-rat-gt-eq.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [stieltjesOfMeasurableRat_ae_eq](declarations/stieltjesofmeasurablerat-ae-eq.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [setIntegral_stieltjesOfMeasurableRat_rat](declarations/setintegral-stieltjesofmeasurablerat-rat.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [setLIntegral_stieltjesOfMeasurableRat_rat](declarations/setlintegral-stieltjesofmeasurablerat-rat.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [setLIntegral_stieltjesOfMeasurableRat](declarations/setlintegral-stieltjesofmeasurablerat.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [lintegral_stieltjesOfMeasurableRat](declarations/lintegral-stieltjesofmeasurablerat.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [integrable_stieltjesOfMeasurableRat](declarations/integrable-stieltjesofmeasurablerat.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [setIntegral_stieltjesOfMeasurableRat](declarations/setintegral-stieltjesofmeasurablerat.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [integral_stieltjesOfMeasurableRat](declarations/integral-stieltjesofmeasurablerat.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [IsRatCondKernelCDFAux](declarations/isratcondkernelcdfaux.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [IsRatCondKernelCDFAux.measurable_right](declarations/isratcondkernelcdfaux-measurable-right.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [IsRatCondKernelCDFAux.mono](declarations/isratcondkernelcdfaux-mono.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [IsRatCondKernelCDFAux.nonneg](declarations/isratcondkernelcdfaux-nonneg.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [IsRatCondKernelCDFAux.le_one](declarations/isratcondkernelcdfaux-le-one.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [IsRatCondKernelCDFAux.tendsto_zero_of_antitone](declarations/isratcondkernelcdfaux-tendsto-zero-of-antitone.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [IsRatCondKernelCDFAux.tendsto_one_of_monotone](declarations/isratcondkernelcdfaux-tendsto-one-of-monotone.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [IsRatCondKernelCDFAux.tendsto_atTop_one](declarations/isratcondkernelcdfaux-tendsto-attop-one.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [IsRatCondKernelCDFAux.tendsto_atBot_zero](declarations/isratcondkernelcdfaux-tendsto-atbot-zero.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [IsRatCondKernelCDFAux.bddBelow_range](declarations/isratcondkernelcdfaux-bddbelow-range.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [IsRatCondKernelCDFAux.integrable_iInf_rat_gt](declarations/isratcondkernelcdfaux-integrable-iinf-rat-gt.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [_root_.MeasureTheory.Measure.iInf_rat_gt_prod_Iic](declarations/root-measuretheory-measure-iinf-rat-gt-prod-iic.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [IsRatCondKernelCDFAux.setIntegral_iInf_rat_gt](declarations/isratcondkernelcdfaux-setintegral-iinf-rat-gt.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [IsRatCondKernelCDFAux.iInf_rat_gt_eq](declarations/isratcondkernelcdfaux-iinf-rat-gt-eq.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [IsRatCondKernelCDFAux.isRatStieltjesPoint_ae](declarations/isratcondkernelcdfaux-isratstieltjespoint-ae.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [IsRatCondKernelCDFAux.isRatCondKernelCDF](declarations/isratcondkernelcdfaux-isratcondkernelcdf.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `structure` | [IsCondKernelCDF](declarations/iscondkernelcdf.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [IsCondKernelCDF.nonneg](declarations/iscondkernelcdf-nonneg.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [IsCondKernelCDF.le_one](declarations/iscondkernelcdf-le-one.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [IsCondKernelCDF.integral](declarations/iscondkernelcdf-integral.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [IsCondKernelCDF.setLIntegral](declarations/iscondkernelcdf-setlintegral.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [IsCondKernelCDF.lintegral](declarations/iscondkernelcdf-lintegral.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [isCondKernelCDF_stieltjesOfMeasurableRat](declarations/iscondkernelcdf-stieltjesofmeasurablerat.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [IsCondKernelCDF.toKernel](declarations/iscondkernelcdf-tokernel.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [IsCondKernelCDF.toKernel_apply](declarations/iscondkernelcdf-tokernel-apply.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [instIsMarkovKernel_toKernel](declarations/instismarkovkernel-tokernel.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [IsCondKernelCDF.toKernel_Iic](declarations/iscondkernelcdf-tokernel-iic.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [setLIntegral_toKernel_Iic](declarations/setlintegral-tokernel-iic.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [setLIntegral_toKernel_univ](declarations/setlintegral-tokernel-univ.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [lintegral_toKernel_univ](declarations/lintegral-tokernel-univ.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [setLIntegral_toKernel_prod](declarations/setlintegral-tokernel-prod.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [lintegral_toKernel_mem](declarations/lintegral-tokernel-mem.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [compProd_toKernel](declarations/compprod-tokernel.md) | 620 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d8b8e9263981fe1bcd6cd6d616f0f40039ff239e2cf6faa2bb1dc9353df265e5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/CDFToKernel/Variantd8fe33ca153003087b49616cdd06cdad2a2f16a53341615d2df1897c92fc25d3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
