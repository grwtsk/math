# Canonical Square Tent Zeta Approximation

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**29 observed declarations and anonymous commands**, 16 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentZetaApproximation.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3df9bbf890802aec9ee57c246bb45b7e4703781c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/NumberTheory/ZetaAndLFunctionsAnalyticTheory/CanonicalSquareTentZetaApproximation.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [CanonicalSquareTentTest](declarations/canonicalsquaretenttest.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [sourceBinding](declarations/sourcebinding.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [testClassId](declarations/testclassid.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [testStage](declarations/teststage.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [testFunction](declarations/testfunction.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [zeroHeightCutoff](declarations/zeroheightcutoff.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [testStage_ge_two](declarations/teststage-ge-two.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [zeroHeightCutoff_ge_two](declarations/zeroheightcutoff-ge-two.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [zeroHeightCutoff_tendsto_atTop](declarations/zeroheightcutoff-tendsto-attop.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [finiteSpectralValue](declarations/finitespectralvalue.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [zetaTarget](declarations/zetatarget.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [finiteApproximant](declarations/finiteapproximant.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [lowerDefect](declarations/lowerdefect.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [finiteSpectralValue_sub_target_eq_residual](declarations/finitespectralvalue-sub-target-eq-residual.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [norm_finiteSpectralValue_sub_target_le](declarations/norm-finitespectralvalue-sub-target-le.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [zetaTarget_diagonal_eq_sourceGram](declarations/zetatarget-diagonal-eq-sourcegram.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [zetaTarget_diagonal_nonnegative](declarations/zetatarget-diagonal-nonnegative.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [abs_target_sub_finiteApproximant_le](declarations/abs-target-sub-finiteapproximant-le.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [lowerDefect_nonnegative](declarations/lowerdefect-nonnegative.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [finiteApproximant_diagonal_lower_bound](declarations/finiteapproximant-diagonal-lower-bound.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [lowerDefect_tendsto_zero](declarations/lowerdefect-tendsto-zero.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [vanishesAtInfinity_of_tendsto_zero](declarations/vanishesatinfinity-of-tendsto-zero.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [lowerDefect_vanishes](declarations/lowerdefect-vanishes.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [diagonalComparison_vanishes](declarations/diagonalcomparison-vanishes.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [comparison_vanishes](declarations/comparison-vanishes.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [approximatePositiveApproximation](declarations/approximatepositiveapproximation.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `structure` | [SourceBoundZetaApproximation](declarations/sourceboundzetaapproximation.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [sourceBoundZetaApproximation](declarations/sourceboundzetaapproximation-source-edition-2.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [offDiagonal_zero](declarations/offdiagonal-zero.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c934cf559f42a109e1ff0acd5c7e3525cbf1de8708dbdf386f00e0325442cb3b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentZetaApproximation.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
