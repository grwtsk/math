# Measure Theory Decomposition Lebesgue

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**77 observed declarations and anonymous commands**, 55 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/MeasureTheory/Lebesgue/Variante374d80d29410c755b77d58f410fa0899fae82a9ea9368fead8edf3d3d1266f2.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `566c66a8c4a9766999291f456377c6f8b9f0ab90`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/MeasureTheoryDecompositionLebesgue.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [HaveLebesgueDecomposition](declarations/havelebesguedecomposition-source-edition-3.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [haveLebesgueDecomposition_spec](declarations/havelebesguedecomposition-spec.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [haveLebesgueDecomposition_add](declarations/havelebesguedecomposition-add.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [haveLebesgueDecomposition_smul](declarations/havelebesguedecomposition-smul.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [measurable_rnDeriv](declarations/measurable-rnderiv.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [mutuallySingular_singularPart](declarations/mutuallysingular-singularpart-source-edition-2.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [singularPart_le](declarations/singularpart-le.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [withDensity_rnDeriv_le](declarations/withdensity-rnderiv-le.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [singularPart.instIsFiniteMeasure](declarations/singularpart-instisfinitemeasure.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [singularPart.instSigmaFinite](declarations/singularpart-instsigmafinite.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [singularPart.instIsLocallyFiniteMeasure](declarations/singularpart-instislocallyfinitemeasure.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [withDensity.instIsFiniteMeasure](declarations/withdensity-instisfinitemeasure.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [withDensity.instSigmaFinite](declarations/withdensity-instsigmafinite.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [withDensity.instIsLocallyFiniteMeasure](declarations/withdensity-instislocallyfinitemeasure.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [lintegral_rnDeriv_lt_top_of_measure_ne_top](declarations/lintegral-rnderiv-lt-top-of-measure-ne-top.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [lintegral_rnDeriv_lt_top](declarations/lintegral-rnderiv-lt-top.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [rnDeriv_lt_top](declarations/rnderiv-lt-top.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [eq_singularPart](declarations/eq-singularpart-source-edition-2.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [singularPart_zero](declarations/singularpart-zero.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [singularPart_smul](declarations/singularpart-smul.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [singularPart_add](declarations/singularpart-add-source-edition-2.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [singularPart_withDensity](declarations/singularpart-withdensity.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [eq_withDensity_rnDeriv](declarations/eq-withdensity-rnderiv.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [eq_rnDeriv](declarations/eq-rnderiv.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [rnDeriv_withDensity](declarations/rnderiv-withdensity.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [rnDeriv_restrict](declarations/rnderiv-restrict.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [exists_positive_of_not_mutuallySingular](declarations/exists-positive-of-not-mutuallysingular.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [measurableLE](declarations/measurablele.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [zero_mem_measurableLE](declarations/zero-mem-measurablele.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [sup_mem_measurableLE](declarations/sup-mem-measurablele.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [iSup_succ_eq_sup](declarations/isup-succ-eq-sup.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [iSup_mem_measurableLE](declarations/isup-mem-measurablele-source-edition-2.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [iSup_mem_measurableLE'](declarations/isup-mem-measurablele.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [iSup_monotone](declarations/isup-monotone.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [iSup_monotone'](declarations/isup-monotone-source-edition-2.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [iSup_le_le](declarations/isup-le-le.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [measurableLEEval](declarations/measurableleeval.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [haveLebesgueDecomposition_of_finiteMeasure](declarations/havelebesguedecomposition-of-finitemeasure.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [restrict.instIsFiniteMeasure](declarations/restrict-instisfinitemeasure.md) | 657 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [(anonymous)](declarations/instance.md) | 666 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `class` | [HaveLebesgueDecomposition](declarations/havelebesguedecomposition-source-edition-2.md) | 775 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [not_haveLebesgueDecomposition_iff](declarations/not-havelebesguedecomposition-iff.md) | 786 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 795 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [haveLebesgueDecomposition_neg](declarations/havelebesguedecomposition-neg.md) | 801 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `instance` | [haveLebesgueDecomposition_smul](declarations/havelebesguedecomposition-smul-source-edition-2.md) | 811 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [haveLebesgueDecomposition_smul_real](declarations/havelebesguedecomposition-smul-real.md) | 821 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [singularPart](declarations/singularpart.md) | 839 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [singularPart_mutuallySingular](declarations/singularpart-mutuallysingular.md) | 846 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [singularPart_totalVariation](declarations/singularpart-totalvariation.md) | 864 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [mutuallySingular_singularPart](declarations/mutuallysingular-singularpart.md) | 878 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [rnDeriv](declarations/rnderiv-source-edition-2.md) | 894 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [rnDeriv_def](declarations/rnderiv-def.md) | 901 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [measurable_rnDeriv](declarations/measurable-rnderiv-source-edition-2.md) | 911 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [integrable_rnDeriv](declarations/integrable-rnderiv-source-edition-2.md) | 916 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [singularPart_add_withDensity_rnDeriv_eq](declarations/singularpart-add-withdensity-rnderiv-eq-source-edition-2.md) | 930 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [jordanDecomposition_add_withDensity_mutuallySingular](declarations/jordandecomposition-add-withdensity-mutuallysingular.md) | 955 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [toJordanDecomposition_eq_of_eq_add_withDensity](declarations/tojordandecomposition-eq-of-eq-add-withdensity.md) | 971 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [haveLebesgueDecomposition_mk'](declarations/havelebesguedecomposition-mk-source-edition-2.md) | 997 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [haveLebesgueDecomposition_mk](declarations/havelebesguedecomposition-mk.md) | 1014 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [eq_singularPart'](declarations/eq-singularpart.md) | 1024 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [eq_singularPart](declarations/eq-singularpart-source-edition-3.md) | 1047 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [singularPart_zero](declarations/singularpart-zero-source-edition-2.md) | 1058 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [singularPart_neg](declarations/singularpart-neg.md) | 1063 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [singularPart_smul_nnreal](declarations/singularpart-smul-nnreal.md) | 1078 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [singularPart_smul](declarations/singularpart-smul-source-edition-2.md) | 1089 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [singularPart_add](declarations/singularpart-add.md) | 1108 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [singularPart_sub](declarations/singularpart-sub.md) | 1121 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [eq_rnDeriv](declarations/eq-rnderiv-source-edition-2.md) | 1130 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [rnDeriv_neg](declarations/rnderiv-neg.md) | 1143 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [rnDeriv_smul](declarations/rnderiv-smul.md) | 1152 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [rnDeriv_add](declarations/rnderiv-add.md) | 1164 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [rnDeriv_sub](declarations/rnderiv-sub.md) | 1177 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `class` | [HaveLebesgueDecomposition](declarations/havelebesguedecomposition.md) | 1191 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [singularPart](declarations/singularpart-source-edition-2.md) | 1205 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [rnDeriv](declarations/rnderiv.md) | 1210 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [integrable_rnDeriv](declarations/integrable-rnderiv.md) | 1216 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [singularPart_add_withDensity_rnDeriv_eq](declarations/singularpart-add-withdensity-rnderiv-eq.md) | 1223 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a6543522240dfe9fbc680c794a1dd932beb97a3236b35faff8f9d371fe0a5f8a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Lebesgue/Variante374d80d29410c755b77d58f410fa0899fae82a9ea9368fead8edf3d3d1266f2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
