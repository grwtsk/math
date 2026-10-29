# Probability Density Density Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**38 observed declarations and anonymous commands**, 35 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/MeasureTheory/Density/Variant78dff239a514043c89d151bcf5ad5293c5afdf77840cfd23d169f1108c290eeb.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `151d395115028de4b1d556ef23fa48df0042fa13`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/ProbabilityTheoryAndStochasticProcesses/ProbabilityDensityDensityPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [HasPDF](declarations/haspdf.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [hasPDF_iff](declarations/haspdf-iff.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [hasPDF_iff_of_aemeasurable](declarations/haspdf-iff-of-aemeasurable.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [HasPDF.aemeasurable](declarations/haspdf-aemeasurable.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [HasPDF.haveLebesgueDecomposition](declarations/haspdf-havelebesguedecomposition.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [HasPDF.absolutelyContinuous](declarations/haspdf-absolutelycontinuous.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [HasPDF.quasiMeasurePreserving_of_measurable](declarations/haspdf-quasimeasurepreserving-of-measurable.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [HasPDF.congr](declarations/haspdf-congr.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [HasPDF.congr_iff](declarations/haspdf-congr-iff.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [hasPDF_of_map_eq_withDensity](declarations/haspdf-of-map-eq-withdensity.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [pdf](declarations/pdf.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [pdf_def](declarations/pdf-def.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [pdf_of_not_haveLebesgueDecomposition](declarations/pdf-of-not-havelebesguedecomposition.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [measurable_pdf](declarations/measurable-pdf.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [withDensity_pdf_le_map](declarations/withdensity-pdf-le-map.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [setLIntegral_pdf_le_map](declarations/setlintegral-pdf-le-map.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [map_eq_withDensity_pdf](declarations/map-eq-withdensity-pdf.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [map_eq_setLIntegral_pdf](declarations/map-eq-setlintegral-pdf.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [congr](declarations/congr.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [lintegral_eq_measure_univ](declarations/lintegral-eq-measure-univ.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [eq_of_map_eq_withDensity](declarations/eq-of-map-eq-withdensity.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [eq_of_map_eq_withDensity'](declarations/eq-of-map-eq-withdensity-source-edition-2.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [ae_lt_top](declarations/ae-lt-top.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [ofReal_toReal_ae_eq](declarations/ofreal-toreal-ae-eq.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [lintegral_pdf_mul](declarations/lintegral-pdf-mul.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [integrable_pdf_smul_iff](declarations/integrable-pdf-smul-iff.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [integral_pdf_smul](declarations/integral-pdf-smul.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [quasiMeasurePreserving_hasPDF](declarations/quasimeasurepreserving-haspdf-source-edition-2.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [quasiMeasurePreserving_hasPDF'](declarations/quasimeasurepreserving-haspdf.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [_root_.Real.hasPDF_iff](declarations/root-real-haspdf-iff.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [_root_.Real.hasPDF_iff_of_aemeasurable](declarations/root-real-haspdf-iff-of-aemeasurable.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [integral_mul_eq_integral](declarations/integral-mul-eq-integral.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [hasFiniteIntegral_mul](declarations/hasfiniteintegral-mul.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [indepFun_iff_pdf_prod_eq_pdf_mul_pdf](declarations/indepfun-iff-pdf-prod-eq-pdf-mul-pdf.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [IndepFun.mul_hasPDF'](declarations/indepfun-mul-haspdf-source-edition-2.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [IndepFun.mul_hasPDF](declarations/indepfun-mul-haspdf.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [IndepFun.pdf_mul_eq_mlconvolution_pdf'](declarations/indepfun-pdf-mul-eq-mlconvolution-pdf-source-edition-2.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [IndepFun.pdf_mul_eq_mlconvolution_pdf](declarations/indepfun-pdf-mul-eq-mlconvolution-pdf.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=03c06fd53c749b0e3826ec275ea4bfd9045ddb9a28d30437c0cc014b56c85d91 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Density/Variant78dff239a514043c89d151bcf5ad5293c5afdf77840cfd23d169f1108c290eeb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
