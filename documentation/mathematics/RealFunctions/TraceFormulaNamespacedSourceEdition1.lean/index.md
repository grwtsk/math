# Trace Formula Namespaced Source Edition1

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 15 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/TraceFormula/Variantf8ecde30df584b6de44b6cfad94311dc1e84fd694a196bbc72e9afb2ee2e585a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5e35417765d0f67d10df9bfde04115defe717287`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/RealFunctions/TraceFormulaNamespacedSourceEdition1.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [PlaceKind](declarations/placekind.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [LocalPlaceData](declarations/localplacedata.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [FiniteSpectralTestFunction](declarations/finitespectraltestfunction.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [OrbitalIntegralRow](declarations/orbitalintegralrow.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [FiniteOrbitalIntegralTable](declarations/finiteorbitalintegraltable.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [SpectralTraceRow](declarations/spectraltracerow.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [TruncatedTraceTable](declarations/truncatedtracetable.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [FiniteTraceFormulaPayload](declarations/finitetraceformulapayload.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [local_place_data_sound](declarations/local-place-data-sound.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [finite_spectral_test_function_sound](declarations/finite-spectral-test-function-sound.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [orbital_integral_row_sound](declarations/orbital-integral-row-sound.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [finite_orbital_integral_table_sound](declarations/finite-orbital-integral-table-sound.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [spectral_trace_row_sound](declarations/spectral-trace-row-sound.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [truncated_trace_table_sound](declarations/truncated-trace-table-sound.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [finite_trace_formula_payload_sound](declarations/finite-trace-formula-payload-sound.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [FinitePayloadOwnsGlobalTraceFormula](declarations/finitepayloadownsglobaltraceformula.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [FinitePayloadOwnsTraceFormulaConvergence](declarations/finitepayloadownstraceformulaconvergence.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [FinitePayloadOwnsSpectralSideInterpretation](declarations/finitepayloadownsspectralsideinterpretation.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [FinitePayloadOwnsGeometricSideInterpretation](declarations/finitepayloadownsgeometricsideinterpretation.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [FinitePayloadOwnsSpectralGeometricEquality](declarations/finitepayloadownsspectralgeometricequality.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [FinitePayloadOwnsPositivityConsequence](declarations/finitepayloadownspositivityconsequence.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [FinitePayloadOwnsZeroLocationConsequence](declarations/finitepayloadownszerolocationconsequence.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [finite_payload_not_global_trace_formula](declarations/finite-payload-not-global-trace-formula.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [finite_payload_not_trace_formula_convergence](declarations/finite-payload-not-trace-formula-convergence.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [finite_payload_not_spectral_side_interpretation](declarations/finite-payload-not-spectral-side-interpretation.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [finite_payload_not_geometric_side_interpretation](declarations/finite-payload-not-geometric-side-interpretation.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [finite_payload_not_spectral_geometric_equality](declarations/finite-payload-not-spectral-geometric-equality.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [finite_payload_not_positivity_consequence](declarations/finite-payload-not-positivity-consequence.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [finite_payload_not_zero_location_consequence](declarations/finite-payload-not-zero-location-consequence.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [finite_trace_formula_payload_boundary_summary](declarations/finite-trace-formula-payload-boundary-summary.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cd08eacda3280b6892b7f169f50a3c15bf39f437484f5d55c7167ecea648ed3a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/TraceFormula/Variantf8ecde30df584b6de44b6cfad94311dc1e84fd694a196bbc72e9afb2ee2e585a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
