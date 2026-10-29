# Automorphic Euler Product Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 14 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AutomorphicEulerProduct/Variant5efb02667acd17864c87a5e396189ceaf9a75ceb39f94f95f99459bf8aa55f54.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9dd6560dc35ac16e20c55b923aecdc02d48d19dd`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/AutomorphicEulerProductNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [AutomorphicGroupLabel](declarations/automorphicgrouplabel.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [AutomorphicRepresentationIndex](declarations/automorphicrepresentationindex.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [AutomorphicRepresentationIndex.toLFunctionIndex](declarations/automorphicrepresentationindex-tolfunctionindex.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [LocalSatakeParameterPacket](declarations/localsatakeparameterpacket.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [HeckeEigenvaluePacket](declarations/heckeeigenvaluepacket.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [FinitePlaceRamificationData](declarations/finiteplaceramificationdata.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [ArchimedeanLabel](declarations/archimedeanlabel.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [FiniteAutomorphicEulerPayload](declarations/finiteautomorphiceulerpayload.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [local_satake_packet_sound](declarations/local-satake-packet-sound.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [hecke_eigenvalue_packet_sound](declarations/hecke-eigenvalue-packet-sound.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [finite_place_ramification_data_sound](declarations/finite-place-ramification-data-sound.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [archimedean_label_sound](declarations/archimedean-label-sound.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [finite_automorphic_euler_payload_sound](declarations/finite-automorphic-euler-payload-sound.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [FinitePayloadConstructsGlobalAutomorphicRepresentation](declarations/finitepayloadconstructsglobalautomorphicrepresentation.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [FinitePayloadOwnsAutomorphy](declarations/finitepayloadownsautomorphy.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [FinitePayloadOwnsCuspidality](declarations/finitepayloadownscuspidality.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [FinitePayloadOwnsUnitarity](declarations/finitepayloadownsunitarity.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [FinitePayloadOwnsTemperedness](declarations/finitepayloadownstemperedness.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [FinitePayloadOwnsEulerProductConvergence](declarations/finitepayloadownseulerproductconvergence.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [FinitePayloadOwnsLanglandsFunctorialTransfer](declarations/finitepayloadownslanglandsfunctorialtransfer.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [FinitePayloadOwnsTraceFormulaComparison](declarations/finitepayloadownstraceformulacomparison.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [finite_payload_not_global_automorphic_representation](declarations/finite-payload-not-global-automorphic-representation.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [finite_payload_not_automorphy](declarations/finite-payload-not-automorphy.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [finite_payload_not_cuspidality](declarations/finite-payload-not-cuspidality.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [finite_payload_not_unitarity](declarations/finite-payload-not-unitarity.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [finite_payload_not_temperedness](declarations/finite-payload-not-temperedness.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [finite_payload_not_euler_product_convergence](declarations/finite-payload-not-euler-product-convergence.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [finite_payload_not_langlands_functorial_transfer](declarations/finite-payload-not-langlands-functorial-transfer.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [finite_payload_not_trace_formula_comparison](declarations/finite-payload-not-trace-formula-comparison.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [finite_automorphic_euler_payload_boundary_summary](declarations/finite-automorphic-euler-payload-boundary-summary.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a9de686cec075a017df5b881a72098c491e0644494672607b79360e42dbcd757 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AutomorphicEulerProduct/Variant5efb02667acd17864c87a5e396189ceaf9a75ceb39f94f95f99459bf8aa55f54.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
