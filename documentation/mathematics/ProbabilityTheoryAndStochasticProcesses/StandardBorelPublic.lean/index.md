# Standard Borel Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 10 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/MeasureTheory/StandardBorel/Variant2ba362e3f5477b5019d559125e98e4e025217953a096b375db0a75b176c496f3.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b52361ba85600d66244b4c96c55f6dd9ae3c9955`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/ProbabilityTheoryAndStochasticProcesses/StandardBorelPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `lemma` | [isRatCondKernelCDFAux_density_Iic](declarations/isratcondkernelcdfaux-density-iic.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [isRatCondKernelCDF_density_Iic](declarations/isratcondkernelcdf-density-iic.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [condKernelCDF](declarations/condkernelcdf.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [isCondKernelCDF_condKernelCDF](declarations/iscondkernelcdf-condkernelcdf.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [condKernelReal](declarations/condkernelreal.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [instIsMarkovKernelCondKernelReal](declarations/instismarkovkernelcondkernelreal.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [compProd_fst_condKernelReal](declarations/compprod-fst-condkernelreal.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [condKernelUnitReal](declarations/condkernelunitreal.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [instIsMarkovKernelCondKernelUnitReal](declarations/instismarkovkernelcondkernelunitreal.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [condKernelUnitReal.instIsCondKernel](declarations/condkernelunitreal-instiscondkernel.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [borelMarkovFromReal](declarations/borelmarkovfromreal.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [borelMarkovFromReal_apply](declarations/borelmarkovfromreal-apply-source-edition-2.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [borelMarkovFromReal_apply'](declarations/borelmarkovfromreal-apply.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [instIsSFiniteKernelBorelMarkovFromReal](declarations/instissfinitekernelborelmarkovfromreal.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [instIsFiniteKernelBorelMarkovFromReal](declarations/instisfinitekernelborelmarkovfromreal.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [instIsMarkovKernelBorelMarkovFromReal](declarations/instismarkovkernelborelmarkovfromreal.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [compProd_fst_borelMarkovFromReal_eq_comapRight_compProd](declarations/compprod-fst-borelmarkovfromreal-eq-comapright-compprod.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [compProd_fst_borelMarkovFromReal](declarations/compprod-fst-borelmarkovfromreal.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [condKernelBorel](declarations/condkernelborel.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [instIsMarkovKernelCondKernelBorel](declarations/instismarkovkernelcondkernelborel.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [condKernelBorel.instIsCondKernel](declarations/condkernelborel-instiscondkernel.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [condKernelUnitBorel](declarations/condkernelunitborel.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [instIsMarkovKernelCondKernelUnitBorel](declarations/instismarkovkernelcondkernelunitborel.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [condKernelUnitBorel.instIsCondKernel](declarations/condkernelunitborel-instiscondkernel.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [_root_.MeasureTheory.Measure.condKernel_apply](declarations/root-measuretheory-measure-condkernel-apply.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [_root_.MeasureTheory.Measure.condKernel.instIsCondKernel](declarations/root-measuretheory-measure-condkernel-instiscondkernel.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [_root_.MeasureTheory.Measure.instIsMarkovKernelCondKernel](declarations/root-measuretheory-measure-instismarkovkernelcondkernel.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [_root_.MeasureTheory.Measure.condKernel_apply_of_ne_zero](declarations/root-measuretheory-measure-condkernel-apply-of-ne-zero.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [instIsMarkovKernelCondKernel](declarations/instismarkovkernelcondkernel.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [condKernel.instIsCondKernel](declarations/condkernel-instiscondkernel.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1bcf3ca9595fd8186ffa5221441ae737b621ffd7cefc37b2670be50d8c372271 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/StandardBorel/Variant2ba362e3f5477b5019d559125e98e4e025217953a096b375db0a75b176c496f3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
