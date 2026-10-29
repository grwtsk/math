# CDFTo Kernel Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**46 observed declarations and anonymous commands**, 41 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/CDFToKernel/Variant849360d552757c37943a0f7b34e37fb172a4e82984327716da7b43eb6e5db4c0.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ffda87e1c3370647a584a62c8bc589d235d0bfce`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/ProbabilityTheoryAndStochasticProcesses/CDFToKernelPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [IsRatCondKernelCDF](declarations/isratcondkernelcdf.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [IsRatCondKernelCDF.mono](declarations/isratcondkernelcdf-mono.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [IsRatCondKernelCDF.tendsto_atTop_one](declarations/isratcondkernelcdf-tendsto-attop-one.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [IsRatCondKernelCDF.tendsto_atBot_zero](declarations/isratcondkernelcdf-tendsto-atbot-zero.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [IsRatCondKernelCDF.iInf_rat_gt_eq](declarations/isratcondkernelcdf-iinf-rat-gt-eq.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [stieltjesOfMeasurableRat_ae_eq](declarations/stieltjesofmeasurablerat-ae-eq.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [setIntegral_stieltjesOfMeasurableRat_rat](declarations/setintegral-stieltjesofmeasurablerat-rat.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [setLIntegral_stieltjesOfMeasurableRat_rat](declarations/setlintegral-stieltjesofmeasurablerat-rat.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [setLIntegral_stieltjesOfMeasurableRat](declarations/setlintegral-stieltjesofmeasurablerat.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [lintegral_stieltjesOfMeasurableRat](declarations/lintegral-stieltjesofmeasurablerat.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [integrable_stieltjesOfMeasurableRat](declarations/integrable-stieltjesofmeasurablerat.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [setIntegral_stieltjesOfMeasurableRat](declarations/setintegral-stieltjesofmeasurablerat.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [integral_stieltjesOfMeasurableRat](declarations/integral-stieltjesofmeasurablerat.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [IsRatCondKernelCDFAux](declarations/isratcondkernelcdfaux.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [IsRatCondKernelCDFAux.measurable_right](declarations/isratcondkernelcdfaux-measurable-right.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [IsRatCondKernelCDFAux.mono](declarations/isratcondkernelcdfaux-mono.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [IsRatCondKernelCDFAux.nonneg](declarations/isratcondkernelcdfaux-nonneg.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [IsRatCondKernelCDFAux.le_one](declarations/isratcondkernelcdfaux-le-one.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [IsRatCondKernelCDFAux.tendsto_zero_of_antitone](declarations/isratcondkernelcdfaux-tendsto-zero-of-antitone.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [IsRatCondKernelCDFAux.tendsto_one_of_monotone](declarations/isratcondkernelcdfaux-tendsto-one-of-monotone.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [IsRatCondKernelCDFAux.tendsto_atTop_one](declarations/isratcondkernelcdfaux-tendsto-attop-one.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [IsRatCondKernelCDFAux.tendsto_atBot_zero](declarations/isratcondkernelcdfaux-tendsto-atbot-zero.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [IsRatCondKernelCDFAux.bddBelow_range](declarations/isratcondkernelcdfaux-bddbelow-range.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [IsRatCondKernelCDFAux.integrable_iInf_rat_gt](declarations/isratcondkernelcdfaux-integrable-iinf-rat-gt.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [_root_.MeasureTheory.Measure.iInf_rat_gt_prod_Iic](declarations/root-measuretheory-measure-iinf-rat-gt-prod-iic.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [IsRatCondKernelCDFAux.setIntegral_iInf_rat_gt](declarations/isratcondkernelcdfaux-setintegral-iinf-rat-gt.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [IsRatCondKernelCDFAux.iInf_rat_gt_eq](declarations/isratcondkernelcdfaux-iinf-rat-gt-eq.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [IsRatCondKernelCDFAux.isRatStieltjesPoint_ae](declarations/isratcondkernelcdfaux-isratstieltjespoint-ae.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [IsRatCondKernelCDFAux.isRatCondKernelCDF](declarations/isratcondkernelcdfaux-isratcondkernelcdf.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `structure` | [IsCondKernelCDF](declarations/iscondkernelcdf.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [IsCondKernelCDF.nonneg](declarations/iscondkernelcdf-nonneg.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [IsCondKernelCDF.le_one](declarations/iscondkernelcdf-le-one.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [IsCondKernelCDF.integral](declarations/iscondkernelcdf-integral.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [IsCondKernelCDF.setLIntegral](declarations/iscondkernelcdf-setlintegral.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [IsCondKernelCDF.lintegral](declarations/iscondkernelcdf-lintegral.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [isCondKernelCDF_stieltjesOfMeasurableRat](declarations/iscondkernelcdf-stieltjesofmeasurablerat.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [IsCondKernelCDF.toKernel](declarations/iscondkernelcdf-tokernel.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [IsCondKernelCDF.toKernel_apply](declarations/iscondkernelcdf-tokernel-apply.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [instIsMarkovKernel_toKernel](declarations/instismarkovkernel-tokernel.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [IsCondKernelCDF.toKernel_Iic](declarations/iscondkernelcdf-tokernel-iic.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [setLIntegral_toKernel_Iic](declarations/setlintegral-tokernel-iic.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [setLIntegral_toKernel_univ](declarations/setlintegral-tokernel-univ.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [lintegral_toKernel_univ](declarations/lintegral-tokernel-univ.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [setLIntegral_toKernel_prod](declarations/setlintegral-tokernel-prod.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [lintegral_toKernel_mem](declarations/lintegral-tokernel-mem.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [compProd_toKernel](declarations/compprod-tokernel.md) | 612 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a5e88cc3294369fbce5f24be9b6ba6a2bae6d3bd9c0ed50eaf8b2eee4edcbf21 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/CDFToKernel/Variant849360d552757c37943a0f7b34e37fb172a4e82984327716da7b43eb6e5db4c0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
