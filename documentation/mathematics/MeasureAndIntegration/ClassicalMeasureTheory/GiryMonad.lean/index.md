# Giry Monad

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**45 observed declarations and anonymous commands**, 41 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/MeasureTheory/GiryMonad/Variant5f8164ec3f96c21535da1263c590cde05ca4906b9b980ff1c204ae2a32963970.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `182b175228f46bfb9e2cb54537f8272323d29455`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/GiryMonad.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [instMeasurableSpace](declarations/instmeasurablespace.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [measurable_coe](declarations/measurable-coe.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [measurable_of_measurable_coe](declarations/measurable-of-measurable-coe.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [instMeasurableAdd₂](declarations/instmeasurableadd.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [measurable_measure](declarations/measurable-measure.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [_root_.Measurable.measure_of_isPiSystem](declarations/root-measurable-measure-of-ispisystem.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [_root_.Measurable.measure_of_isPiSystem_of_isProbabilityMeasure](declarations/root-measurable-measure-of-ispisystem-of-isprobabilitymeasure.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [measurable_map](declarations/measurable-map.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [measurable_dirac](declarations/measurable-dirac.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [measurable_lintegral](declarations/measurable-lintegral.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [join](declarations/join.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [join_apply](declarations/join-apply.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [le_join_apply](declarations/le-join-apply.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [join_smul](declarations/join-smul.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [join_dirac](declarations/join-dirac.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [le_ae_join](declarations/le-ae-join.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [ae_ae_of_ae_join](declarations/ae-ae-of-ae-join.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [_root_.AEMeasurable.ae_of_join](declarations/root-aemeasurable-ae-of-join.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [aemeasurable_lintegral](declarations/aemeasurable-lintegral.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [join_zero](declarations/join-zero.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [measurable_join](declarations/measurable-join.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [lintegral_join](declarations/lintegral-join.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [lintegral_join_le](declarations/lintegral-join-le.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [bind](declarations/bind.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [bind_zero_left](declarations/bind-zero-left.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [bind_apply](declarations/bind-apply.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [bind_apply_le](declarations/bind-apply-le.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [ae_ae_of_ae_bind](declarations/ae-ae-of-ae-bind.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [_root_.AEMeasurable.ae_of_bind](declarations/root-aemeasurable-ae-of-bind.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [bind_congr_right](declarations/bind-congr-right.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [bind_const](declarations/bind-const.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [bind_zero_right'](declarations/bind-zero-right.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [bind_zero_right](declarations/bind-zero-right-source-edition-2.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [measurable_bind'](declarations/measurable-bind.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [aemeasurable_bind](declarations/aemeasurable-bind.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [lintegral_bind](declarations/lintegral-bind.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [lintegral_bind_le](declarations/lintegral-bind-le.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [bind_bind](declarations/bind-bind.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [dirac_bind](declarations/dirac-bind.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [bind_dirac](declarations/bind-dirac.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [bind_dirac_eq_map](declarations/bind-dirac-eq-map.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [join_eq_bind](declarations/join-eq-bind.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [join_map_map](declarations/join-map-map.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [join_map_join](declarations/join-map-join.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [join_map_dirac](declarations/join-map-dirac.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=590231564b0710ee7dadc9b4b477f4155ab17bdff7c2c2300fb68acc81bdb07f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/GiryMonad/Variant5f8164ec3f96c21535da1263c590cde05ca4906b9b980ff1c204ae2a32963970.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
