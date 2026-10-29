# Pole Surgery

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**42 observed declarations and anonymous commands**, 10 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/PoleSurgery/Variant1331fd2abb78766cabffabcf40f6dcb7cf4520982fb89bc6b55215745c47c937.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fada495239ce8cc9d2cee3080c72f18a8c166511`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/PoleSurgery.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [PoleKind](declarations/polekind.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [PoleCandidate](declarations/polecandidate.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [CertifiedPole](declarations/certifiedpole.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [poleId](declarations/poleid.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [stage](declarations/stage.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [point](declarations/point.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [kind](declarations/kind.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [neighborhoodId](declarations/neighborhoodid.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [boundaryId](declarations/boundaryid.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [invariantLedgerId](declarations/invariantledgerid.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [certificateId](declarations/certificateid.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [evidence_exact](declarations/evidence-exact.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [FinitePoleSystem](declarations/finitepolesystem.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [boundary](declarations/boundary.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `structure` | [FinitePoleSurgery](declarations/finitepolesurgery.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [carrier](declarations/carrier.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [pole_mem_carrier](declarations/pole-mem-carrier.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [realized_mem_carrier](declarations/realized-mem-carrier.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [carrier_isCompact](declarations/carrier-iscompact.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `structure` | [CertifiedBoundaryIsometry](declarations/certifiedboundaryisometry.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [isometry](declarations/isometry.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `abbrev` | [SurgeryPiece](declarations/surgerypiece.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `inductive` | [SurgeryBoundaryIdentification](declarations/surgeryboundaryidentification.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [surgeryGluingSetoid](declarations/surgerygluingsetoid.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `structure` | [FixedSurgeryData](declarations/fixedsurgerydata.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [finitePoleExterior](declarations/finitepoleexterior.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `structure` | [CertifiedFinitePoleSurgeryData](declarations/certifiedfinitepolesurgerydata.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `abbrev` | [SurgeryCarrier](declarations/surgerycarrier.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [exteriorPoint](declarations/exteriorpoint.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [capPoint](declarations/cappoint.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [boundary_identified](declarations/boundary-identified.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `structure` | [AdmissibleQuotientPseudometric](declarations/admissiblequotientpseudometric.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `structure` | [InducedQuotientLengthMetric](declarations/inducedquotientlengthmetric.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [distance_unique](declarations/distance-unique.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [RealizedCarrier](declarations/realizedcarrier.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [realizedMetric](declarations/realizedmetric.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [canonicalComparison](declarations/canonicalcomparison.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [fixedSurgeryData_unique](declarations/fixedsurgerydata-unique.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `structure` | [CertifiedPoleCoverTower](declarations/certifiedpolecovertower.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [compactification](declarations/compactification.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [pole_mem_compactification](declarations/pole-mem-compactification.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [compactification_isCompact](declarations/compactification-iscompact.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=466a277918e6c8a43ee0fc5672ae58be33541b6127bb81ab18bf0d81dd9263ab -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/PoleSurgery/Variant1331fd2abb78766cabffabcf40f6dcb7cf4520982fb89bc6b55215745c47c937.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
