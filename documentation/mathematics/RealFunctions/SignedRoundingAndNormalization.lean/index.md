# Signed Rounding And Normalization

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**23 observed declarations and anonymous commands**, 12 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/RealFunctions/ExactRationalRounding/Variant03d73452c99c6fd3/SignedRoundingAndNormalization.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `201ec1edefe87aef531ed47a39063015aeb278ba`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/RealFunctions/SignedRoundingAndNormalization.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [RasterRounding](declarations/rasterrounding.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [RasterRounding.round](declarations/rasterrounding-round.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [round_positive_tie](declarations/round-positive-tie.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [round_negative_tie](declarations/round-negative-tie.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [round_zero](declarations/round-zero.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [SignedInteger](declarations/signedinteger.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [RasterRounding.roundSigned](declarations/rasterrounding-roundsigned.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [RasterRounding.roundSigned_value](declarations/rasterrounding-roundsigned-value.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [roundSigned_negative_tie_value](declarations/roundsigned-negative-tie-value.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [roundSigned_negative_tie_sign](declarations/roundsigned-negative-tie-sign.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [roundSigned_positive_tie_sign](declarations/roundsigned-positive-tie-sign.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `inductive` | [AxisDirection](declarations/axisdirection.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [SignedRational](declarations/signedrational.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [normalizeSignedInteger](declarations/normalizesignedinteger.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [normalizeSignedRasterCoordinate](declarations/normalizesignedrastercoordinate.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [normalizeSigned_negative_tie_value](declarations/normalizesigned-negative-tie-value.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [normalizeSigned_negative_tie_sign](declarations/normalizesigned-negative-tie-sign.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [normalizeSigned_negative_tie_decreasing](declarations/normalizesigned-negative-tie-decreasing.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [normalizeRasterCoordinate](declarations/normalizerastercoordinate.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [normalizeRasterCoordinate_decreasing](declarations/normalizerastercoordinate-decreasing.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `inductive` | [RoundingScalarSign](declarations/roundingscalarsign.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [roundingScalarSign](declarations/roundingscalarsign-source-edition-2.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [roundingScalarSign_zero](declarations/roundingscalarsign-zero.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=57c6a07d175897349da49678e8bd687c797565f9a33ba1b51695c6eed33e05de -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/RealFunctions/ExactRationalRounding/Variant03d73452c99c6fd3/SignedRoundingAndNormalization.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
