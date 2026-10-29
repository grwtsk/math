# Cond CDF

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**43 observed declarations and anonymous commands**, 39 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/MeasureTheory/CondCDF/Variant512d252a96eb2549c54b7a81190ce34134be23375e1c5069c5040858ed8a34e7.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1c4f8a5713ed453f8fd3b0b855f3545e4a6afc3c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/ProbabilityTheoryAndStochasticProcesses/CondCDF.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IicSnd](declarations/iicsnd.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [IicSnd_apply](declarations/iicsnd-apply.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [IicSnd_univ](declarations/iicsnd-univ.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [IicSnd_mono](declarations/iicsnd-mono.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [IicSnd_le_fst](declarations/iicsnd-le-fst.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [IicSnd_ac_fst](declarations/iicsnd-ac-fst.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [IsFiniteMeasure.IicSnd](declarations/isfinitemeasure-iicsnd.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [iInf_IicSnd_gt](declarations/iinf-iicsnd-gt.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [tendsto_IicSnd_atTop](declarations/tendsto-iicsnd-attop.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [tendsto_IicSnd_atBot](declarations/tendsto-iicsnd-atbot.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [preCDF](declarations/precdf.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [measurable_preCDF](declarations/measurable-precdf-source-edition-2.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [measurable_preCDF'](declarations/measurable-precdf.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [withDensity_preCDF](declarations/withdensity-precdf.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [setLIntegral_preCDF_fst](declarations/setlintegral-precdf-fst.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [lintegral_preCDF_fst](declarations/lintegral-precdf-fst.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [monotone_preCDF](declarations/monotone-precdf.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [preCDF_le_one](declarations/precdf-le-one.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [setIntegral_preCDF_fst](declarations/setintegral-precdf-fst.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [integral_preCDF_fst](declarations/integral-precdf-fst.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [integrable_preCDF](declarations/integrable-precdf.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [isRatCondKernelCDFAux_preCDF](declarations/isratcondkernelcdfaux-precdf.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [isRatCondKernelCDF_preCDF](declarations/isratcondkernelcdf-precdf.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [condCDF](declarations/condcdf.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [condCDF_eq_stieltjesOfMeasurableRat_unit_prod](declarations/condcdf-eq-stieltjesofmeasurablerat-unit-prod.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [isCondKernelCDF_condCDF](declarations/iscondkernelcdf-condcdf.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [condCDF_nonneg](declarations/condcdf-nonneg.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [condCDF_le_one](declarations/condcdf-le-one.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [tendsto_condCDF_atBot](declarations/tendsto-condcdf-atbot.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [tendsto_condCDF_atTop](declarations/tendsto-condcdf-attop.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [condCDF_ae_eq](declarations/condcdf-ae-eq.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [ofReal_condCDF_ae_eq](declarations/ofreal-condcdf-ae-eq.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [measurable_condCDF](declarations/measurable-condcdf.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [stronglyMeasurable_condCDF](declarations/stronglymeasurable-condcdf.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [setLIntegral_condCDF](declarations/setlintegral-condcdf.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [lintegral_condCDF](declarations/lintegral-condcdf.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [integrable_condCDF](declarations/integrable-condcdf.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [setIntegral_condCDF](declarations/setintegral-condcdf.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [integral_condCDF](declarations/integral-condcdf.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [measure_condCDF_Iic](declarations/measure-condcdf-iic.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [measure_condCDF_univ](declarations/measure-condcdf-univ.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [instIsProbabilityMeasureCondCDF](declarations/instisprobabilitymeasurecondcdf.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [measurable_measure_condCDF](declarations/measurable-measure-condcdf.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2e01b49125ac234a53915304f9c9f8b8fb5d398ac13d91c9561a2eee022bef1a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/CondCDF/Variant512d252a96eb2549c54b7a81190ce34134be23375e1c5069c5040858ed8a34e7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
