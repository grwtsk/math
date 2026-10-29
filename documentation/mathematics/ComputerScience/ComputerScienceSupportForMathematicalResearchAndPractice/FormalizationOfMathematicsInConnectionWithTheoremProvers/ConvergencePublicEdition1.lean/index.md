# Convergence Public Edition1

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**28 observed declarations and anonymous commands**, 12 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convergence/Variant04d2f45f3e31fa7364e04273b3091196b7409a83e1e402682433e16a78464999.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0c2358fde374166ec62f19f199a1f9303f4c17d6`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConvergencePublicEdition1.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [GlobalRegisters](declarations/globalregisters.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [DeliveryEvent](declarations/deliveryevent.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [applyEvent](declarations/applyevent.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [Execution](declarations/execution.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [UniqueMaximalAdmitted](declarations/uniquemaximaladmitted.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [latestAdmitted_unique](declarations/latestadmitted-unique.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [InitialRegistersAdmitted](declarations/initialregistersadmitted.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [EveryDeliveryAdmitted](declarations/everydeliveryadmitted.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [EventuallyDeliversLatest](declarations/eventuallydeliverslatest.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [QuiescentAboveLatest](declarations/quiescentabovelatest.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [DeliveriesPreserveLatestRevision](declarations/deliveriespreservelatestrevision.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [MaximalDeliveriesPreservePayload](declarations/maximaldeliveriespreservepayload.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [NoAcceptedEqualRevisionConflict](declarations/noacceptedequalrevisionconflict.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [DeterministicMerge](declarations/deterministicmerge.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [fixedMerge_is_deterministic](declarations/fixedmerge-is-deterministic.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [RevisionBounded](declarations/revisionbounded.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [revisionedXYZ_eq](declarations/revisionedxyz-eq.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [apply_preserves_revisionBounded](declarations/apply-preserves-revisionbounded.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [execution_revisions_bounded](declarations/execution-revisions-bounded.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [apply_latest_of_bounded_and_compatible](declarations/apply-latest-of-bounded-and-compatible.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [delivered_latest_is_installed](declarations/delivered-latest-is-installed.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [installed_latest_stays_installed](declarations/installed-latest-stays-installed.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [finite_delivery_times_have_upper_bound](declarations/finite-delivery-times-have-upper-bound.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [eventual_convergence_to_latestAdmitted](declarations/eventual-convergence-to-latestadmitted.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [RoutePayloadPreserving](declarations/routepayloadpreserving.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [RoutePathIndependent](declarations/routepathindependent.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [payload_preserving_routes_are_path_independent](declarations/payload-preserving-routes-are-path-independent.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [edge_transforming_routes_require_confluence](declarations/edge-transforming-routes-require-confluence.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a7edb463627b24568495c1388df73b4b5bd29136ff6168d7b2e807b2521ef545 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convergence/Variant04d2f45f3e31fa7364e04273b3091196b7409a83e1e402682433e16a78464999.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
