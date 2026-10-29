# Pole Surgery Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**42 observed declarations and anonymous commands**, 10 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/PoleSurgery/Variant0e699b94eb1f9d4576e8799cfdac9af4a797e7dbc38e1d1f5f73671ee7a7b172.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `339284319d4660fae50aa7d3099ae61fd49b809c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/PoleSurgeryNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [PoleKind](declarations/polekind.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [PoleCandidate](declarations/polecandidate.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [CertifiedPole](declarations/certifiedpole.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [poleId](declarations/poleid.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [stage](declarations/stage.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [point](declarations/point.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [kind](declarations/kind.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [neighborhoodId](declarations/neighborhoodid.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [boundaryId](declarations/boundaryid.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [invariantLedgerId](declarations/invariantledgerid.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [certificateId](declarations/certificateid.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [evidence_exact](declarations/evidence-exact.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [FinitePoleSystem](declarations/finitepolesystem.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [boundary](declarations/boundary.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `structure` | [FinitePoleSurgery](declarations/finitepolesurgery.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [carrier](declarations/carrier.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [pole_mem_carrier](declarations/pole-mem-carrier.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [realized_mem_carrier](declarations/realized-mem-carrier.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [carrier_isCompact](declarations/carrier-iscompact.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `structure` | [CertifiedBoundaryIsometry](declarations/certifiedboundaryisometry.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [isometry](declarations/isometry.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `abbrev` | [SurgeryPiece](declarations/surgerypiece.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `inductive` | [SurgeryBoundaryIdentification](declarations/surgeryboundaryidentification.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [surgeryGluingSetoid](declarations/surgerygluingsetoid.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `structure` | [FixedSurgeryData](declarations/fixedsurgerydata.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [finitePoleExterior](declarations/finitepoleexterior.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `structure` | [CertifiedFinitePoleSurgeryData](declarations/certifiedfinitepolesurgerydata.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `abbrev` | [SurgeryCarrier](declarations/surgerycarrier.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [exteriorPoint](declarations/exteriorpoint.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [capPoint](declarations/cappoint.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [boundary_identified](declarations/boundary-identified.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `structure` | [AdmissibleQuotientPseudometric](declarations/admissiblequotientpseudometric.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `structure` | [InducedQuotientLengthMetric](declarations/inducedquotientlengthmetric.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [distance_unique](declarations/distance-unique.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [RealizedCarrier](declarations/realizedcarrier.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [realizedMetric](declarations/realizedmetric.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [canonicalComparison](declarations/canonicalcomparison.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [fixedSurgeryData_unique](declarations/fixedsurgerydata-unique.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `structure` | [CertifiedPoleCoverTower](declarations/certifiedpolecovertower.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [compactification](declarations/compactification.md) | 559 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [pole_mem_compactification](declarations/pole-mem-compactification.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [compactification_isCompact](declarations/compactification-iscompact.md) | 572 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=68521011160aacba97a7681b05461694394a71f751aec35f91fb7ec2c9126692 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/PoleSurgery/Variant0e699b94eb1f9d4576e8799cfdac9af4a797e7dbc38e1d1f5f73671ee7a7b172.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
