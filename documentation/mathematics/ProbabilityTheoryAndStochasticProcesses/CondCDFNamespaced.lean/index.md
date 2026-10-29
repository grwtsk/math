# Cond CDFNamespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**43 observed declarations and anonymous commands**, 39 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/MeasureTheory/CondCDF/Variante9f87fd986454def9f2429a4e1fbf764e8afbcfc59c273b3f9a57d6b53d90035.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bd149b39a23f97725d9f6f82209f8dace9845ea5`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/ProbabilityTheoryAndStochasticProcesses/CondCDFNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IicSnd](declarations/iicsnd.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [IicSnd_apply](declarations/iicsnd-apply.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [IicSnd_univ](declarations/iicsnd-univ.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [IicSnd_mono](declarations/iicsnd-mono.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [IicSnd_le_fst](declarations/iicsnd-le-fst.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [IicSnd_ac_fst](declarations/iicsnd-ac-fst.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [IsFiniteMeasure.IicSnd](declarations/isfinitemeasure-iicsnd.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [iInf_IicSnd_gt](declarations/iinf-iicsnd-gt.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [tendsto_IicSnd_atTop](declarations/tendsto-iicsnd-attop.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [tendsto_IicSnd_atBot](declarations/tendsto-iicsnd-atbot.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [preCDF](declarations/precdf.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [measurable_preCDF](declarations/measurable-precdf.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [measurable_preCDF'](declarations/measurable-precdf-source-edition-2.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [withDensity_preCDF](declarations/withdensity-precdf.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [setLIntegral_preCDF_fst](declarations/setlintegral-precdf-fst.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [lintegral_preCDF_fst](declarations/lintegral-precdf-fst.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [monotone_preCDF](declarations/monotone-precdf.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [preCDF_le_one](declarations/precdf-le-one.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [setIntegral_preCDF_fst](declarations/setintegral-precdf-fst.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [integral_preCDF_fst](declarations/integral-precdf-fst.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [integrable_preCDF](declarations/integrable-precdf.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [isRatCondKernelCDFAux_preCDF](declarations/isratcondkernelcdfaux-precdf.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [isRatCondKernelCDF_preCDF](declarations/isratcondkernelcdf-precdf.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [condCDF](declarations/condcdf.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [condCDF_eq_stieltjesOfMeasurableRat_unit_prod](declarations/condcdf-eq-stieltjesofmeasurablerat-unit-prod.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [isCondKernelCDF_condCDF](declarations/iscondkernelcdf-condcdf.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [condCDF_nonneg](declarations/condcdf-nonneg.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [condCDF_le_one](declarations/condcdf-le-one.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [tendsto_condCDF_atBot](declarations/tendsto-condcdf-atbot.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [tendsto_condCDF_atTop](declarations/tendsto-condcdf-attop.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [condCDF_ae_eq](declarations/condcdf-ae-eq.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [ofReal_condCDF_ae_eq](declarations/ofreal-condcdf-ae-eq.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [measurable_condCDF](declarations/measurable-condcdf.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [stronglyMeasurable_condCDF](declarations/stronglymeasurable-condcdf.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [setLIntegral_condCDF](declarations/setlintegral-condcdf.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [lintegral_condCDF](declarations/lintegral-condcdf.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [integrable_condCDF](declarations/integrable-condcdf.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [setIntegral_condCDF](declarations/setintegral-condcdf.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [integral_condCDF](declarations/integral-condcdf.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [measure_condCDF_Iic](declarations/measure-condcdf-iic.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [measure_condCDF_univ](declarations/measure-condcdf-univ.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [instIsProbabilityMeasureCondCDF](declarations/instisprobabilitymeasurecondcdf.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [measurable_measure_condCDF](declarations/measurable-measure-condcdf.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f42e6c6c677e92a5816b7f5134416ae3415189df36ed419fc16abc75ab9ad3ec -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/CondCDF/Variante9f87fd986454def9f2429a4e1fbf764e8afbcfc59c273b3f9a57d6b53d90035.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
