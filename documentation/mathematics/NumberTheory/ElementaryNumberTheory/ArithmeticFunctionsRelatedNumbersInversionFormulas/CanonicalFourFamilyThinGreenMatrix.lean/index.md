# Canonical Four Family Thin Green Matrix

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**25 observed declarations and anonymous commands**, 11 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyThinGreenMatrix.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f71dbe475e99bce6b8ea8c633f320b118d69b6d5`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalFourFamilyThinGreenMatrix.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [CanonicalFourFamily](declarations/canonicalfourfamily.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [canonicalFourFamilyShiftSet](declarations/canonicalfourfamilyshiftset.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [canonicalFourFamilyEndpointParity](declarations/canonicalfourfamilyendpointparity.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [canonicalFourFamilyOfAnchor](declarations/canonicalfourfamilyofanchor.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [canonicalFourFamilyEndpointParity_of_anchor](declarations/canonicalfourfamilyendpointparity-of-anchor.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [canonicalFourFamily_selected_shift_mem](declarations/canonicalfourfamily-selected-shift-mem.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [canonicalFourFamily_anchor_center_mem_range](declarations/canonicalfourfamily-anchor-center-mem-range.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [canonicalFourFamilyCenteredData](declarations/canonicalfourfamilycentereddata.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [canonicalFourFamily_anchor_cell_minus_other_eq_coefficient](declarations/canonicalfourfamily-anchor-cell-minus-other-eq-coefficient.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [canonicalFourFamilyGreenMatrixEntry](declarations/canonicalfourfamilygreenmatrixentry.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [canonicalFourFamilyGreenMatrixApply](declarations/canonicalfourfamilygreenmatrixapply.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [canonicalFourFamily_oneHot](declarations/canonicalfourfamily-onehot.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [canonicalFourFamilyGreenMatrixApply_eq_divisor](declarations/canonicalfourfamilygreenmatrixapply-eq-divisor.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [canonicalFourFamilyOtherShiftDivisor](declarations/canonicalfourfamilyothershiftdivisor.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [canonicalFourFamilyMatrix_minus_other_eq_positiveAnchored](declarations/canonicalfourfamilymatrix-minus-other-eq-positiveanchored.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [canonicalFourFamilyZeroShiftBoundary](declarations/canonicalfourfamilyzeroshiftboundary.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [vonMangoldt_eq_canonicalFourFamilyMatrix_corrected](declarations/vonmangoldt-eq-canonicalfourfamilymatrix-corrected.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [canonicalFourFamilyFourierMatrixEntry](declarations/canonicalfourfamilyfouriermatrixentry.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [canonicalFourFamilyThinFourierCoordinate](declarations/canonicalfourfamilythinfouriercoordinate.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [canonicalFourFamilyThinFourierCoordinate_eq_thinGreen](declarations/canonicalfourfamilythinfouriercoordinate-eq-thingreen.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [canonicalFourFamilyThinFourierShell](declarations/canonicalfourfamilythinfouriershell.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [canonicalFourFamilyThinFourierHead](declarations/canonicalfourfamilythinfourierhead.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [originalThinGreenFourierHead](declarations/originalthingreenfourierhead.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [canonicalFourFamilyThinFourierHead_eq_originalThinHead](declarations/canonicalfourfamilythinfourierhead-eq-originalthinhead.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [canonicalFourFamilyThinFourierHead_nonneg](declarations/canonicalfourfamilythinfourierhead-nonneg.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6cae0f123610400ca876c536e4bc1208cc6da2ee14b7c527f1864709b663f568 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyThinGreenMatrix.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
