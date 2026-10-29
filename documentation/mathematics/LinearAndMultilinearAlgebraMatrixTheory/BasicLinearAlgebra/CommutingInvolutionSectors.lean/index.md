# Commuting Involution Sectors

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**24 observed declarations and anonymous commands**, 9 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/LinearAlgebra/LinearMap/CommutingInvolutionSectors.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eb0d65dd8cdbfc4b84fd5ad15224516874fafb64`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutionSectors.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Sign](declarations/sign.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Sign.scalar](declarations/sign-scalar.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [Sign.scalar_negative](declarations/sign-scalar-negative.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [Sign.scalar_positive](declarations/sign-scalar-positive.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `abbrev` | [Sector](declarations/sector.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [CommutingInvolutions](declarations/commutinginvolutions.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [CommutingInvolutions.InSector](declarations/commutinginvolutions-insector.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [Intertwiner](declarations/intertwiner.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [Intertwiner.maps_sector](declarations/intertwiner-maps-sector.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [SectorDecomposition](declarations/sectordecomposition.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [SectorDecomposition.reconstruct](declarations/sectordecomposition-reconstruct.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [ResolvedPencil](declarations/resolvedpencil.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [zeroSet](declarations/zeroset.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [sectorZeroSet](declarations/sectorzeroset.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [determinant_eq_zero_iff_sector](declarations/determinant-eq-zero-iff-sector.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [zeroSet_eq_iUnion_sectorZeroSet](declarations/zeroset-eq-iunion-sectorzeroset.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [operator_preserves_sector](declarations/operator-preserves-sector.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [conjugateOperator](declarations/conjugateoperator.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [det_conjugateOperator](declarations/det-conjugateoperator.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [det_conjugateOperator_eq_zero_iff](declarations/det-conjugateoperator-eq-zero-iff.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `structure` | [GeneralizedEigenvaluePencil](declarations/generalizedeigenvaluepencil.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [GeneralizedEigenvaluePencil.operator](declarations/generalizedeigenvaluepencil-operator.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [GeneralizedEigenvaluePencil.zeroSet](declarations/generalizedeigenvaluepencil-zeroset.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b84764f6223ac32aee3032f38c0c12ed6d55837b6bf4d2560c6e0356bd3b5aa2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/LinearMap/CommutingInvolutionSectors.lean","GRWTSK/LinearAlgebra/LinearMap/CommutingInvolutionSectors.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
