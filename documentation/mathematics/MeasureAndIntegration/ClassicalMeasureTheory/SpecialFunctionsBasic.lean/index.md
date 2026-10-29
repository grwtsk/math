# Special Functions Basic

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**55 observed declarations and anonymous commands**, 51 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8b967764edb4643c0031eba20633f71a3a5358f3`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/SpecialFunctionsBasic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [measurable_exp](declarations/measurable-exp.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [measurable_log](declarations/measurable-log-source-edition-2.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [measurable_of_measurable_exp](declarations/measurable-of-measurable-exp.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [aemeasurable_of_aemeasurable_exp](declarations/aemeasurable-of-aemeasurable-exp.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [aemeasurable_of_aemeasurable_exp_mul](declarations/aemeasurable-of-aemeasurable-exp-mul.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [measurable_sin](declarations/measurable-sin-source-edition-3.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [measurable_cos](declarations/measurable-cos-source-edition-2.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [measurable_sinh](declarations/measurable-sinh-source-edition-3.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [measurable_cosh](declarations/measurable-cosh-source-edition-3.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [measurable_arcsin](declarations/measurable-arcsin.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [measurable_arccos](declarations/measurable-arccos.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [measurable_re](declarations/measurable-re.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [measurable_im](declarations/measurable-im.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [measurable_ofReal](declarations/measurable-ofreal.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [measurable_exp](declarations/measurable-exp-source-edition-3.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [measurable_sin](declarations/measurable-sin.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [measurable_cos](declarations/measurable-cos-source-edition-3.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [measurable_sinh](declarations/measurable-sinh-source-edition-2.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [measurable_cosh](declarations/measurable-cosh.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [measurable_arg](declarations/measurable-arg.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [measurable_log](declarations/measurable-log-source-edition-3.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [Measurable.exp](declarations/measurable-exp-source-edition-2.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [Measurable.log](declarations/measurable-log.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [Measurable.cos](declarations/measurable-cos.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [Measurable.sin](declarations/measurable-sin-source-edition-2.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [Measurable.cosh](declarations/measurable-cosh-source-edition-2.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [Measurable.sinh](declarations/measurable-sinh.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [Measurable.sqrt](declarations/measurable-sqrt.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [AEMeasurable.exp](declarations/aemeasurable-exp.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [AEMeasurable.log](declarations/aemeasurable-log.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [AEMeasurable.cos](declarations/aemeasurable-cos.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [AEMeasurable.sin](declarations/aemeasurable-sin.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [AEMeasurable.cosh](declarations/aemeasurable-cosh.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [AEMeasurable.sinh](declarations/aemeasurable-sinh.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [AEMeasurable.sqrt](declarations/aemeasurable-sqrt.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [Measurable.cexp](declarations/measurable-cexp.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [Measurable.ccos](declarations/measurable-ccos.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [Measurable.csin](declarations/measurable-csin.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [Measurable.ccosh](declarations/measurable-ccosh.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [Measurable.csinh](declarations/measurable-csinh.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [Measurable.carg](declarations/measurable-carg.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [Measurable.clog](declarations/measurable-clog.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [AEMeasurable.cexp](declarations/aemeasurable-cexp.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [AEMeasurable.ccos](declarations/aemeasurable-ccos.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [AEMeasurable.csin](declarations/aemeasurable-csin.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [AEMeasurable.ccosh](declarations/aemeasurable-ccosh.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [AEMeasurable.csinh](declarations/aemeasurable-csinh.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [AEMeasurable.carg](declarations/aemeasurable-carg.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [AEMeasurable.clog](declarations/aemeasurable-clog.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [Measurable.complex_ofReal](declarations/measurable-complex-ofreal.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [AEMeasurable.complex_ofReal](declarations/aemeasurable-complex-ofreal.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `instance` | [Complex.hasMeasurablePow](declarations/complex-hasmeasurablepow.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [Real.hasMeasurablePow](declarations/real-hasmeasurablepow.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `instance` | [NNReal.hasMeasurablePow](declarations/nnreal-hasmeasurablepow.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [ENNReal.hasMeasurablePow](declarations/ennreal-hasmeasurablepow.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9d71f5ba21a70c32f39916dade1d5366313cd6e9999f7136e07772cb0eaa9aae -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
