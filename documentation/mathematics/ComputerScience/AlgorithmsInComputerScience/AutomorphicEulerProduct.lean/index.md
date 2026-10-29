# Automorphic Euler Product

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 14 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AutomorphicEulerProduct/Variantb0ac5761e4bec941effe5e6bba3e7434ca82d722dc7e17e916e98395a3260ea8.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `64f76de3127e6aef059f7f6c9715d66b9934004c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/AutomorphicEulerProduct.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [AutomorphicGroupLabel](declarations/automorphicgrouplabel.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [AutomorphicRepresentationIndex](declarations/automorphicrepresentationindex.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [AutomorphicRepresentationIndex.toLFunctionIndex](declarations/automorphicrepresentationindex-tolfunctionindex.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [LocalSatakeParameterPacket](declarations/localsatakeparameterpacket.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [HeckeEigenvaluePacket](declarations/heckeeigenvaluepacket.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [FinitePlaceRamificationData](declarations/finiteplaceramificationdata.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [ArchimedeanLabel](declarations/archimedeanlabel.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [FiniteAutomorphicEulerPayload](declarations/finiteautomorphiceulerpayload.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [local_satake_packet_sound](declarations/local-satake-packet-sound.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [hecke_eigenvalue_packet_sound](declarations/hecke-eigenvalue-packet-sound.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [finite_place_ramification_data_sound](declarations/finite-place-ramification-data-sound.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [archimedean_label_sound](declarations/archimedean-label-sound.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [finite_automorphic_euler_payload_sound](declarations/finite-automorphic-euler-payload-sound.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [FinitePayloadConstructsGlobalAutomorphicRepresentation](declarations/finitepayloadconstructsglobalautomorphicrepresentation.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [FinitePayloadOwnsAutomorphy](declarations/finitepayloadownsautomorphy.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [FinitePayloadOwnsCuspidality](declarations/finitepayloadownscuspidality.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [FinitePayloadOwnsUnitarity](declarations/finitepayloadownsunitarity.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [FinitePayloadOwnsTemperedness](declarations/finitepayloadownstemperedness.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [FinitePayloadOwnsEulerProductConvergence](declarations/finitepayloadownseulerproductconvergence.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [FinitePayloadOwnsLanglandsFunctorialTransfer](declarations/finitepayloadownslanglandsfunctorialtransfer.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [FinitePayloadOwnsTraceFormulaComparison](declarations/finitepayloadownstraceformulacomparison.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [finite_payload_not_global_automorphic_representation](declarations/finite-payload-not-global-automorphic-representation.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [finite_payload_not_automorphy](declarations/finite-payload-not-automorphy.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [finite_payload_not_cuspidality](declarations/finite-payload-not-cuspidality.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [finite_payload_not_unitarity](declarations/finite-payload-not-unitarity.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [finite_payload_not_temperedness](declarations/finite-payload-not-temperedness.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [finite_payload_not_euler_product_convergence](declarations/finite-payload-not-euler-product-convergence.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [finite_payload_not_langlands_functorial_transfer](declarations/finite-payload-not-langlands-functorial-transfer.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [finite_payload_not_trace_formula_comparison](declarations/finite-payload-not-trace-formula-comparison.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [finite_automorphic_euler_payload_boundary_summary](declarations/finite-automorphic-euler-payload-boundary-summary.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7bd45e90fb705bacae2a30c56d975933fe9674fd2c2c5cd2ee85415d9a8ce9f1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AutomorphicEulerProduct/Variantb0ac5761e4bec941effe5e6bba3e7434ca82d722dc7e17e916e98395a3260ea8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
