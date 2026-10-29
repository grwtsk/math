# Acoustic Waveform

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**38 observed declarations and anonymous commands**, 31 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/AcousticWaveform/Variantb47153cd97255304ae0df0cbd6fa0cce9d3648f34d3b302936a8be139e6e8a5c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `11eca7b2cf811baab5e0a310d19108edbe815d76`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/MeasureAndIntegration/AcousticWaveform.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [volumePressure](declarations/volumepressure.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [retardedPressure](declarations/retardedpressure.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [sphereVolumeHistory](declarations/spherevolumehistory.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [retarded_time_lt](declarations/retarded-time-lt.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [pressure_coefficient_ne_zero](declarations/pressure-coefficient-ne-zero.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [second_derivative_continuous](declarations/second-derivative-continuous.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [sphereVolumeHistory_derivative](declarations/spherevolumehistory-derivative.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [sphereVolumeHistory_second_derivative](declarations/spherevolumehistory-second-derivative.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [sphere_volume_pressure](declarations/sphere-volume-pressure.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [sphere_retarded_pressure](declarations/sphere-retarded-pressure.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [reconstruction_kernel_integrable](declarations/reconstruction-kernel-integrable.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [reconstruction_primitive_derivative](declarations/reconstruction-primitive-derivative.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [history_reconstruction](declarations/history-reconstruction.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [pressure_reconstruction_kernel_integrable](declarations/pressure-reconstruction-kernel-integrable.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [history_reconstruction_from_pressure](declarations/history-reconstruction-from-pressure.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [equilibrium_history_reconstruction](declarations/equilibrium-history-reconstruction.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [retarded_compensation](declarations/retarded-compensation.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [history_reconstruction_from_retarded_pressure](declarations/history-reconstruction-from-retarded-pressure.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [add_affine_derivative](declarations/add-affine-derivative.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [volumePressure_add_affine](declarations/volumepressure-add-affine.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [volumePressure_eq_iff_second_derivative_eq](declarations/volumepressure-eq-iff-second-derivative-eq.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [same_waveform_iff_affine_difference](declarations/same-waveform-iff-affine-difference.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [volumePressure_constant](declarations/volumepressure-constant.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [zero_waveform_iff_affine](declarations/zero-waveform-iff-affine.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [history_eq_of_waveform_initial_data](declarations/history-eq-of-waveform-initial-data.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [same_retarded_waveform_iff](declarations/same-retarded-waveform-iff.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [same_retarded_waveform_iff_affine_difference](declarations/same-retarded-waveform-iff-affine-difference.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [history_eq_of_retarded_waveform_initial_data](declarations/history-eq-of-retarded-waveform-initial-data.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [sphereVolumeHistory_contDiff](declarations/spherevolumehistory-contdiff.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [retarded_reconstruction_kernel_integrable](declarations/retarded-reconstruction-kernel-integrable.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `abbrev` | [PositiveC2History](declarations/positivec2history.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [constantHistory](declarations/constanthistory.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [constantHistory_retarded_pressure](declarations/constanthistory-retarded-pressure.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [waveformHistoryObstruction](declarations/waveformhistoryobstruction.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [waveformInitialVolumeObstruction](declarations/waveforminitialvolumeobstruction.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [no_waveform_history_decoder](declarations/no-waveform-history-decoder.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [no_waveform_initial_volume_decoder](declarations/no-waveform-initial-volume-decoder.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [waveform_initial_data_descends](declarations/waveform-initial-data-descends.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=654153da3a3296730c75ed64ff820e95597b3acfecdfc9d56766f16797f82496 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/AcousticWaveform/Variantb47153cd97255304ae0df0cbd6fa0cce9d3648f34d3b302936a8be139e6e8a5c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
