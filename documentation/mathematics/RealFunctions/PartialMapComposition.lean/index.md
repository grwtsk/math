# Partial Map Composition

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**44 observed declarations and anonymous commands**, 31 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/ErrorBounds/PartialMapComposition.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ea337082650adaf7beae43ae8e04413979be4a07`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/RealFunctions/PartialMapComposition.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [EndpointIdentity](declarations/endpointidentity.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [FrameAddress](declarations/frameaddress.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [FiberEndpoint](declarations/fiberendpoint.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [FramedPort](declarations/framedport.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [defect_bound](declarations/defect-bound.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [comp](declarations/comp.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [mem_comp_domain](declarations/mem-comp-domain.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [comp_map](declarations/comp-map.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [comp_residual](declarations/comp-residual.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [comp_errorBudget](declarations/comp-errorbudget.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [composition_observation](declarations/composition-observation.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [comp_defect_bound](declarations/comp-defect-bound.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [identity](declarations/identity.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [identity_domain](declarations/identity-domain.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [identity_map](declarations/identity-map.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [identity_residual](declarations/identity-residual.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [identity_errorBudget](declarations/identity-errorbudget.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [comp_identity_domain](declarations/comp-identity-domain.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [identity_comp_domain](declarations/identity-comp-domain.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [comp_identity_map](declarations/comp-identity-map.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [identity_comp_map](declarations/identity-comp-map.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [comp_identity_residual](declarations/comp-identity-residual.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [identity_comp_residual](declarations/identity-comp-residual.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [comp_identity_errorBudget](declarations/comp-identity-errorbudget.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [identity_comp_errorBudget](declarations/identity-comp-errorbudget.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [comp_domain_assoc](declarations/comp-domain-assoc.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [comp_map_assoc](declarations/comp-map-assoc.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [comp_residual_assoc](declarations/comp-residual-assoc.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [comp_errorBudget_assoc](declarations/comp-errorbudget-assoc.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [observe_eq_of_zero_residual](declarations/observe-eq-of-zero-residual.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [residual_eq_zero_of_zero_budget](declarations/residual-eq-zero-of-zero-budget.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [observe_eq_of_zero_budget](declarations/observe-eq-of-zero-budget.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `structure` | [InvertibleFrameChange](declarations/invertibleframechange.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [toPort](declarations/toport.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [reconstruct](declarations/reconstruct.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `structure` | [RankLosingReduction](declarations/ranklosingreduction.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [packet](declarations/packet.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [reconstruct_packet_exact](declarations/reconstruct-packet-exact.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [packet_injective](declarations/packet-injective.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [reduce_not_injective](declarations/reduce-not-injective.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [recover_source_observe](declarations/recover-source-observe.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `structure` | [PortGram](declarations/portgram.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [GramTransport](declarations/gramtransport.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [SignedFormTransport](declarations/signedformtransport.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=975d22ebebe08e5c6cb0a09a1d59714503ceda1d07f22ebbf1ca94a37edad624 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ErrorBounds/PartialMapComposition.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
