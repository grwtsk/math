# Vector Measure Decomposition Lebesgue Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**37 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/MeasureTheory/Lebesgue/Variant2ff867e934d4727000758ca7a44461477a6e727afe7b5f3630b014f493bbba8e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9bb96252bae541dc36dfd476ae8e77bb951a6cd0`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureDecompositionLebesgueNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [HaveLebesgueDecomposition](declarations/havelebesguedecomposition.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [not_haveLebesgueDecomposition_iff](declarations/not-havelebesguedecomposition-iff.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [haveLebesgueDecomposition_neg](declarations/havelebesguedecomposition-neg.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [haveLebesgueDecomposition_smul](declarations/havelebesguedecomposition-smul.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [haveLebesgueDecomposition_smul_real](declarations/havelebesguedecomposition-smul-real.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [singularPart](declarations/singularpart.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [singularPart_mutuallySingular](declarations/singularpart-mutuallysingular.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [singularPart_totalVariation](declarations/singularpart-totalvariation.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [mutuallySingular_singularPart](declarations/mutuallysingular-singularpart.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [rnDeriv](declarations/rnderiv.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [rnDeriv_def](declarations/rnderiv-def.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [measurable_rnDeriv](declarations/measurable-rnderiv.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [integrable_rnDeriv](declarations/integrable-rnderiv.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [singularPart_add_withDensity_rnDeriv_eq](declarations/singularpart-add-withdensity-rnderiv-eq.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [jordanDecomposition_add_withDensity_mutuallySingular](declarations/jordandecomposition-add-withdensity-mutuallysingular.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [toJordanDecomposition_eq_of_eq_add_withDensity](declarations/tojordandecomposition-eq-of-eq-add-withdensity.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [haveLebesgueDecomposition_mk'](declarations/havelebesguedecomposition-mk.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [haveLebesgueDecomposition_mk](declarations/havelebesguedecomposition-mk-source-edition-2.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [eq_singularPart'](declarations/eq-singularpart-source-edition-2.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [eq_singularPart](declarations/eq-singularpart.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [singularPart_zero](declarations/singularpart-zero.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [singularPart_neg](declarations/singularpart-neg.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [singularPart_smul_nnreal](declarations/singularpart-smul-nnreal.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [singularPart_smul](declarations/singularpart-smul.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [singularPart_add](declarations/singularpart-add.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [singularPart_sub](declarations/singularpart-sub.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [eq_rnDeriv](declarations/eq-rnderiv.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [rnDeriv_neg](declarations/rnderiv-neg.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [rnDeriv_smul](declarations/rnderiv-smul.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [rnDeriv_add](declarations/rnderiv-add.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [rnDeriv_sub](declarations/rnderiv-sub.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `class` | [HaveLebesgueDecomposition](declarations/havelebesguedecomposition-source-edition-2.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [singularPart](declarations/singularpart-source-edition-2.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [rnDeriv](declarations/rnderiv-source-edition-2.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [integrable_rnDeriv](declarations/integrable-rnderiv-source-edition-2.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [singularPart_add_withDensity_rnDeriv_eq](declarations/singularpart-add-withdensity-rnderiv-eq-source-edition-2.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fbc3265d50e77c5d6a44527f124016a4dcfb4cf58d569cb776c72c36a05cd77b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Lebesgue/Variant2ff867e934d4727000758ca7a44461477a6e727afe7b5f3630b014f493bbba8e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
