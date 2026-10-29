# Riemann Witness Registry Core

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**28 observed declarations and anonymous commands**, 8 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Zeta/Riemann/RiemannWitnessRegistryCore.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7a91b53b39555bb9f166dc6580144f27c0d51495`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/NumberTheory/ZetaAndLFunctionsAnalyticTheory/RiemannWitnessRegistryCore.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [WitnessId](declarations/witnessid.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [NodeKind](declarations/nodekind.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [WitnessScope](declarations/witnessscope.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `inductive` | [SourceAvailability](declarations/sourceavailability.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `inductive` | [EvidenceState](declarations/evidencestate.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `inductive` | [RelationKind](declarations/relationkind.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [RelationKind.permitsImplication](declarations/relationkind-permitsimplication.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `inductive` | [EdgeAuthority](declarations/edgeauthority.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [EdgeAuthority.proofBearing](declarations/edgeauthority-proofbearing.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `structure` | [SourceRef](declarations/sourceref.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [ConsumerRef](declarations/consumerref.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [WitnessNode](declarations/witnessnode.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [WitnessEdge](declarations/witnessedge.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [traversable](declarations/traversable.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [traversable_iff](declarations/traversable-iff.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [noProvedConnection_not_traversable](declarations/noprovedconnection-not-traversable.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [relevantOnly_not_traversable](declarations/relevantonly-not-traversable.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [refutesAtScope_not_traversable](declarations/refutesatscope-not-traversable.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [externalSource_not_traversable](declarations/externalsource-not-traversable.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `structure` | [WitnessRegistry](declarations/witnessregistry.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [nodeIds](declarations/nodeids.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [findNode?](declarations/findnode.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `structure` | [LocalClaimBinding](declarations/localclaimbinding.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [canonicalRectangleEdgeBinding](declarations/canonicalrectangleedgebinding.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [rectangleConjectureJunctionBinding](declarations/rectangleconjecturejunctionbinding.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [external_authority_is_not_proof](declarations/external-authority-is-not-proof.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [prose_authority_is_not_proof](declarations/prose-authority-is-not-proof.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [unresolved_authority_is_not_proof](declarations/unresolved-authority-is-not-proof.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5fa42d31efa0516f56a9ce931bbfab466c35b28603cb60d6747f7f0b86aba616 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/RiemannWitnessRegistryCore.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
