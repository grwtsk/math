# Dyadic Triangular Kernel

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**23 observed declarations and anonymous commands**, 17 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Moebius/DyadicTriangularKernel.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `29207a118760feb5bf47b46b80ce9bdcd0702d94`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DyadicTriangularKernel.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [mertensTriangularAtom](declarations/mertenstriangularatom.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [weightedMertensDyadicTriangularBoundary](declarations/weightedmertensdyadictriangularboundary.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [weightedMertensDyadicTriangularLocal](declarations/weightedmertensdyadictriangularlocal.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [weightedMertensDyadicTriangularKernel](declarations/weightedmertensdyadictriangularkernel.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [weightedMertensDyadicBoundarySquare](declarations/weightedmertensdyadicboundarysquare.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [SubpolynomialDyadicTriangularKernel](declarations/subpolynomialdyadictriangularkernel.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [finite_tail_abel](declarations/finite-tail-abel.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [two_mul_sum_mul_sub_const](declarations/two-mul-sum-mul-sub-const.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [dyadic_reciprocal_cell](declarations/dyadic-reciprocal-cell.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [mertensPrefixTriangularCorrelation_sub_pred](declarations/mertensprefixtriangularcorrelation-sub-pred.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [weightedMertensDyadicTriangularCorrelation_eq_range](declarations/weightedmertensdyadictriangularcorrelation-eq-range.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [weightedMertensDyadicTriangularLocal_eq_range](declarations/weightedmertensdyadictriangularlocal-eq-range.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [dyadic_left_inv_eq_two_mul_right_inv](declarations/dyadic-left-inv-eq-two-mul-right-inv.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [two_mul_sum_atom_range_eq_triangular_sub](declarations/two-mul-sum-atom-range-eq-triangular-sub.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [weightedMertensDyadicTriangularCorrelation_eq_kernel](declarations/weightedmertensdyadictriangularcorrelation-eq-kernel.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [weightedMertensDyadicTriangularBoundary_eq_square_sub_diagonal](declarations/weightedmertensdyadictriangularboundary-eq-square-sub-diagonal.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [weightedMertensDyadicTriangularBoundary_le_boundarySquare](declarations/weightedmertensdyadictriangularboundary-le-boundarysquare.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [subpolynomialDyadicTriangularKernel_iff_triangular](declarations/subpolynomialdyadictriangularkernel-iff-triangular.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [subpolynomialDyadicTriangularKernel_iff_orderedPair](declarations/subpolynomialdyadictriangularkernel-iff-orderedpair.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [subpolynomialDyadicTriangularKernel_iff_block](declarations/subpolynomialdyadictriangularkernel-iff-block.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [subpolynomialDyadicTriangularKernel_iff_cumulative](declarations/subpolynomialdyadictriangularkernel-iff-cumulative.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [subpolynomialDyadicTriangularKernel_iff_allPositiveWeightedMertensSquare](declarations/subpolynomialdyadictriangularkernel-iff-allpositiveweightedmertenssquare.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [riemannHypothesis_of_subpolynomialDyadicTriangularKernel](declarations/riemannhypothesis-of-subpolynomialdyadictriangularkernel.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=462a409455bd797ea742733f24e6f081adce1ec223b68d956432d383a0e667ac -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/DyadicTriangularKernel.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
