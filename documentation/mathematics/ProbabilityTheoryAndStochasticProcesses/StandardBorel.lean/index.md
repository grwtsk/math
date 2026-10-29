# Standard Borel

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 10 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/MeasureTheory/StandardBorel/Variant6cf6290e0c5867d393367b47f2bdf98c499a1e2e30add73c21eb4deb316cdf73.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c447608fc4db3467930c248d2790b9f48795cf7d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/ProbabilityTheoryAndStochasticProcesses/StandardBorel.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `lemma` | [isRatCondKernelCDFAux_density_Iic](declarations/isratcondkernelcdfaux-density-iic.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [isRatCondKernelCDF_density_Iic](declarations/isratcondkernelcdf-density-iic.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [condKernelCDF](declarations/condkernelcdf.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [isCondKernelCDF_condKernelCDF](declarations/iscondkernelcdf-condkernelcdf.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [condKernelReal](declarations/condkernelreal.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [instIsMarkovKernelCondKernelReal](declarations/instismarkovkernelcondkernelreal.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [compProd_fst_condKernelReal](declarations/compprod-fst-condkernelreal.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [condKernelUnitReal](declarations/condkernelunitreal.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [instIsMarkovKernelCondKernelUnitReal](declarations/instismarkovkernelcondkernelunitreal.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [condKernelUnitReal.instIsCondKernel](declarations/condkernelunitreal-instiscondkernel.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [borelMarkovFromReal](declarations/borelmarkovfromreal.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [borelMarkovFromReal_apply](declarations/borelmarkovfromreal-apply-source-edition-2.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [borelMarkovFromReal_apply'](declarations/borelmarkovfromreal-apply.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [instIsSFiniteKernelBorelMarkovFromReal](declarations/instissfinitekernelborelmarkovfromreal.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [instIsFiniteKernelBorelMarkovFromReal](declarations/instisfinitekernelborelmarkovfromreal.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [instIsMarkovKernelBorelMarkovFromReal](declarations/instismarkovkernelborelmarkovfromreal.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [compProd_fst_borelMarkovFromReal_eq_comapRight_compProd](declarations/compprod-fst-borelmarkovfromreal-eq-comapright-compprod.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [compProd_fst_borelMarkovFromReal](declarations/compprod-fst-borelmarkovfromreal.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [condKernelBorel](declarations/condkernelborel.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [instIsMarkovKernelCondKernelBorel](declarations/instismarkovkernelcondkernelborel.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [condKernelBorel.instIsCondKernel](declarations/condkernelborel-instiscondkernel.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [condKernelUnitBorel](declarations/condkernelunitborel.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [instIsMarkovKernelCondKernelUnitBorel](declarations/instismarkovkernelcondkernelunitborel.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [condKernelUnitBorel.instIsCondKernel](declarations/condkernelunitborel-instiscondkernel.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [_root_.MeasureTheory.Measure.condKernel_apply](declarations/root-measuretheory-measure-condkernel-apply.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [_root_.MeasureTheory.Measure.condKernel.instIsCondKernel](declarations/root-measuretheory-measure-condkernel-instiscondkernel.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [_root_.MeasureTheory.Measure.instIsMarkovKernelCondKernel](declarations/root-measuretheory-measure-instismarkovkernelcondkernel.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [_root_.MeasureTheory.Measure.condKernel_apply_of_ne_zero](declarations/root-measuretheory-measure-condkernel-apply-of-ne-zero.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [instIsMarkovKernelCondKernel](declarations/instismarkovkernelcondkernel.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [condKernel.instIsCondKernel](declarations/condkernel-instiscondkernel.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eacf6ce98825ba6764ca7643abbdea2cca1ce808f490d4d02c75e4ab5242cd87 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/StandardBorel/Variant6cf6290e0c5867d393367b47f2bdf98c499a1e2e30add73c21eb4deb316cdf73.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
