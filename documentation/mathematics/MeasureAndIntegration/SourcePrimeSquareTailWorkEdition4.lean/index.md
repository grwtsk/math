# Source Prime Square Tail Work Edition4

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**35 observed declarations and anonymous commands**, 25 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variant7b8974c71160b619fbb4ef3c333ec4c54797048f6f40c1a82f7f8a0ce0e75b8c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1094614db9115f5beeb671a900361db0245138b0`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/MeasureAndIntegration/SourcePrimeSquareTailWorkEdition4.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [squarePrefixCoefficient](declarations/squareprefixcoefficient.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [squarePrefixCoefficient_eq_slice](declarations/squareprefixcoefficient-eq-slice.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [squarePrefixCoefficient_summable](declarations/squareprefixcoefficient-summable.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [squarePrefixCoefficient_pos](declarations/squareprefixcoefficient-pos.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [squarePrefixBaseline](declarations/squareprefixbaseline.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [squarePrefix](declarations/squareprefix.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [squareTail](declarations/squaretail.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [squareTailWork](declarations/squaretailwork.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [squareTailNegativeMean](declarations/squaretailnegativemean.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [squareTailPairedWork](declarations/squaretailpairedwork.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [squarePrefixBaseline_nonneg](declarations/squareprefixbaseline-nonneg.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [squarePrefixBaseline_pos](declarations/squareprefixbaseline-pos.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [squarePrefixBaseline_le_higherBaseline](declarations/squareprefixbaseline-le-higherbaseline.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [squarePrefix_nonneg](declarations/squareprefix-nonneg.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [squarePrefix_le_baseline](declarations/squareprefix-le-baseline.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [squareTail_nonneg](declarations/squaretail-nonneg.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [squareTail_le_baseline](declarations/squaretail-le-baseline.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [squareTail_below_first_square](declarations/squaretail-below-first-square.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [squareTail_at_zero](declarations/squaretail-at-zero.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [squarePrefix_eq_steps](declarations/squareprefix-eq-steps.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [squarePrefix_mul_deriv_intervalIntegrable](declarations/squareprefix-mul-deriv-intervalintegrable.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [squareTail_mul_deriv_intervalIntegrable](declarations/squaretail-mul-deriv-intervalintegrable.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [squarePrefix_source_work](declarations/squareprefix-source-work.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [squareTailWork_eq](declarations/squaretailwork-eq.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [squareTail_intervalIntegrable](declarations/squaretail-intervalintegrable.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [squareTailPairedWork_eq_work_add_mean](declarations/squaretailpairedwork-eq-work-add-mean.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [squareTailNegativeMean_nonneg](declarations/squaretailnegativemean-nonneg.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [squareTailNegativeMean_le_baseline](declarations/squaretailnegativemean-le-baseline.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [squareRemovedPairedWork](declarations/squareremovedpairedwork.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [squareRemovedRemainder](declarations/squareremovedremainder.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [squareRemovedPairedWork_eq](declarations/squareremovedpairedwork-eq.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [mertensResidual_eq_squareRemoved](declarations/mertensresidual-eq-squareremoved.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [squareRemovedRemainder_uniformly_bounded](declarations/squareremovedremainder-uniformly-bounded.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [SquareRemovedPairedTailLowerBound](declarations/squareremovedpairedtaillowerbound.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [squareRemoved_tail_iff_residual_tail](declarations/squareremoved-tail-iff-residual-tail.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=99509191e3b3bb35f175ec1cba8362363646456323d9cd97f9fb2e8e39ea64c4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variant7b8974c71160b619fbb4ef3c333ec4c54797048f6f40c1a82f7f8a0ce0e75b8c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
