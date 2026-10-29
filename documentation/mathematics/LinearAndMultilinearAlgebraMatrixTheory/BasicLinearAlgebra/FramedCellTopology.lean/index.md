# Framed Cell Topology

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**35 observed declarations and anonymous commands**, 14 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/FramedCellTopology/Variantf1bfe24731daebe95088b992810a95813f77f2180b64504bd76f3bfb6cdf541e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5c8fa42e417e587ad77b6c7d53062f838b315b60`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FramedCellTopology.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Pad1](declarations/pad1.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [total](declarations/total.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [IsBalancedTie](declarations/isbalancedtie.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [even](declarations/even.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [oddRight](declarations/oddright.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [oddLeft](declarations/oddleft.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [even_total](declarations/even-total.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [oddRight_total](declarations/oddright-total.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [oddLeft_total](declarations/oddleft-total.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [even_balanced](declarations/even-balanced.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [oddRight_balanced](declarations/oddright-balanced.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [oddLeft_balanced](declarations/oddleft-balanced.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [Pad2](declarations/pad2.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [vertical](declarations/vertical.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [horizontal](declarations/horizontal.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [verticalTotal](declarations/verticaltotal.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [horizontalTotal](declarations/horizontaltotal.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [IsBalancedTie](declarations/isbalancedtie-source-edition-2.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [ofAxisPads](declarations/ofaxispads.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [ofAxisPads_balanced](declarations/ofaxispads-balanced.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [FramedBinaryMatrix](declarations/framedbinarymatrix.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [rows_pos](declarations/rows-pos.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [cols_pos](declarations/cols-pos.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [ofBinaryMatrix](declarations/ofbinarymatrix.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [bit_ofBinaryMatrix](declarations/bit-ofbinarymatrix.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [centeredSingleton3x3](declarations/centeredsingleton3x3.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [centeredSingleton3x3_originLabel](declarations/centeredsingleton3x3-originlabel.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `structure` | [PeriodicBinaryMatrix](declarations/periodicbinarymatrix.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [fromFramed](declarations/fromframed.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `structure` | [SphericalBinaryPatch](declarations/sphericalbinarypatch.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [centeredOneCell](declarations/centeredonecell.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [centeredOneCell_boundaryVertices](declarations/centeredonecell-boundaryvertices.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [centeredOneCell_insideLabel](declarations/centeredonecell-insidelabel.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [centeredOneCell_outsideLabel](declarations/centeredonecell-outsidelabel.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `inductive` | [CellDistanceRegime](declarations/celldistanceregime.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=157486fd27ce43497a97e6362fdd295c81d65a147c4fc88922888a98671141c8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/FramedCellTopology/Variantf1bfe24731daebe95088b992810a95813f77f2180b64504bd76f3bfb6cdf541e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
