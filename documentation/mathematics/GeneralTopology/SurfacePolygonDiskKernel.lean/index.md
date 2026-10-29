# Surface Polygon Disk Kernel

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 19 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonDiskKernel.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9803601a0048b6c70d37aac3433d908f740013ef`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/SurfacePolygonDiskKernel.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [diskBoundaryPoint](declarations/diskboundarypoint.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [diskPerimeterBoundary](declarations/diskperimeterboundary.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [diskPerimeterBoundary_continuous](declarations/diskperimeterboundary-continuous.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [diskPerimeterBoundary_projection](declarations/diskperimeterboundary-projection.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [norm_diskBoundaryPoint](declarations/norm-diskboundarypoint.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [diskCharacteristic_boundaryPoint](declarations/diskcharacteristic-boundarypoint.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `inductive` | [DiskOuterPairStep](declarations/diskouterpairstep.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [DiskOuterConnected](declarations/diskouterconnected.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [diskOuterPairSetoid](declarations/diskouterpairsetoid.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [diskOuterStep_to_coneOuterConnected](declarations/diskouterstep-to-coneouterconnected.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [diskOuterConnected_to_coneOuterConnected](declarations/diskouterconnected-to-coneouterconnected.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [coneOuterStep_to_diskOuterConnected](declarations/coneouterstep-to-diskouterconnected.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [coneOuterConnected_to_diskOuterConnected](declarations/coneouterconnected-to-diskouterconnected.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [diskOuterConnected_iff_coneOuterConnected](declarations/diskouterconnected-iff-coneouterconnected.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [diskOuterStep_preserves_norm](declarations/diskouterstep-preserves-norm.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [diskOuterConnected_preserves_norm](declarations/diskouterconnected-preserves-norm.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [diskCharacteristic_eq_iff_diskOuterConnected](declarations/diskcharacteristic-eq-iff-diskouterconnected.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [diskCharacteristic_isQuotientMap](declarations/diskcharacteristic-isquotientmap.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [diskOuterPairedToFilled](declarations/diskouterpairedtofilled.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [diskOuterPairedToFilled_projection](declarations/diskouterpairedtofilled-projection.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [diskOuterPairedToFilled_surjective](declarations/diskouterpairedtofilled-surjective.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [diskOuterPairedToFilled_injective](declarations/diskouterpairedtofilled-injective.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [diskOuterPairedToFilled_bijective](declarations/diskouterpairedtofilled-bijective.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [diskOuterPairedToFilled_continuous](declarations/diskouterpairedtofilled-continuous.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [diskOuterPairedHomeomorph](declarations/diskouterpairedhomeomorph.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [genusTwo_diskCharacteristic_eq_iff](declarations/genustwo-diskcharacteristic-eq-iff.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [genusThree_diskOuterPairedHomeomorph](declarations/genusthree-diskouterpairedhomeomorph.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1c39739cb91f31c8de26de17ee89cb4c488bb6b647a20472ec35a0d2bc9d5533 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/AlgebraicTopology/SurfacePolygonDiskKernel.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
