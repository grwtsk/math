# Giry Monad Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**49 observed declarations and anonymous commands**, 45 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/MeasureTheory/GiryMonad/Variant14712081b715a8d7eb0cc9a8d776f38fecf493020cdd553c6e1643e485d3984c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6e7ae7b53a019fd5b5af650a77118dc1428dd2e5`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/GiryMonadPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [instMeasurableSpace](declarations/instmeasurablespace.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [measurable_coe](declarations/measurable-coe.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [measurable_of_measurable_coe](declarations/measurable-of-measurable-coe.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [instMeasurableAdd₂](declarations/instmeasurableadd.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [_root_.Measurable.smul_measure](declarations/root-measurable-smul-measure.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [measurable_measure](declarations/measurable-measure.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [_root_.Measurable.measure_of_isPiSystem](declarations/root-measurable-measure-of-ispisystem.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [_root_.Measurable.measure_of_isPiSystem_of_isProbabilityMeasure](declarations/root-measurable-measure-of-ispisystem-of-isprobabilitymeasure.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [measurable_map](declarations/measurable-map.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [measurable_dirac](declarations/measurable-dirac.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [measurable_lintegral](declarations/measurable-lintegral.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [join](declarations/join.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [join_apply](declarations/join-apply.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [le_join_apply](declarations/le-join-apply.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [join_smul](declarations/join-smul.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [join_sum](declarations/join-sum.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [join_dirac](declarations/join-dirac.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [le_ae_join](declarations/le-ae-join.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [ae_ae_of_ae_join](declarations/ae-ae-of-ae-join.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [_root_.AEMeasurable.ae_of_join](declarations/root-aemeasurable-ae-of-join.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [aemeasurable_lintegral](declarations/aemeasurable-lintegral.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [join_zero](declarations/join-zero.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [measurable_join](declarations/measurable-join.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [lintegral_join](declarations/lintegral-join.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [lintegral_join_le](declarations/lintegral-join-le.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [bind](declarations/bind.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [bind_zero_left](declarations/bind-zero-left.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [bind_apply](declarations/bind-apply.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [bind_apply_le](declarations/bind-apply-le.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [ae_ae_of_ae_bind](declarations/ae-ae-of-ae-bind.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [_root_.AEMeasurable.ae_of_bind](declarations/root-aemeasurable-ae-of-bind.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [bind_congr_right](declarations/bind-congr-right.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [bind_const](declarations/bind-const.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [bind_zero_right'](declarations/bind-zero-right.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [bind_zero_right](declarations/bind-zero-right-source-edition-2.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [measurable_bind'](declarations/measurable-bind.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [aemeasurable_bind](declarations/aemeasurable-bind.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [bind_sum](declarations/bind-sum.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [bind_smul](declarations/bind-smul.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [lintegral_bind](declarations/lintegral-bind.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [lintegral_bind_le](declarations/lintegral-bind-le.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [bind_bind](declarations/bind-bind.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [dirac_bind](declarations/dirac-bind.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [bind_dirac](declarations/bind-dirac.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [bind_dirac_eq_map](declarations/bind-dirac-eq-map.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [join_eq_bind](declarations/join-eq-bind.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [join_map_map](declarations/join-map-map.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [join_map_join](declarations/join-map-join.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [join_map_dirac](declarations/join-map-dirac.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1ba84c729383bce308269dea01e85ec55499e743b87a5ab5eabcf61ab4a5c359 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/GiryMonad/Variant14712081b715a8d7eb0cc9a8d776f38fecf493020cdd553c6e1643e485d3984c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
