# Source Prime Square Tail Work Edition1

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 24 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variant06f90d006416d512a1e7db5460a313cef8d64972e62fc517c6b35dcc6fcb99cf.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `249e5b021001fb28d46133fde900f992b8d8a3af`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/MeasureAndIntegration/SourcePrimeSquareTailWorkEdition1.lean/index.md).

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
| 16 | `theorem` | [squareTail_nonneg](declarations/squaretail-nonneg.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [squareTail_le_baseline](declarations/squaretail-le-baseline.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [squareTail_below_first_square](declarations/squaretail-below-first-square.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [squareTail_at_zero](declarations/squaretail-at-zero.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [squarePrefix_eq_steps](declarations/squareprefix-eq-steps.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [squarePrefix_mul_deriv_intervalIntegrable](declarations/squareprefix-mul-deriv-intervalintegrable.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [squareTail_mul_deriv_intervalIntegrable](declarations/squaretail-mul-deriv-intervalintegrable.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [squarePrefix_source_work](declarations/squareprefix-source-work.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [squareTailWork_eq](declarations/squaretailwork-eq.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [squareTail_intervalIntegrable](declarations/squaretail-intervalintegrable.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [squareTailPairedWork_eq_work_add_mean](declarations/squaretailpairedwork-eq-work-add-mean.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [squareTailNegativeMean_nonneg](declarations/squaretailnegativemean-nonneg.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [squareTailNegativeMean_le_baseline](declarations/squaretailnegativemean-le-baseline.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [squareRemovedPairedWork](declarations/squareremovedpairedwork.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [squareRemovedRemainder](declarations/squareremovedremainder.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [squareRemovedPairedWork_eq](declarations/squareremovedpairedwork-eq.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [mertensResidual_eq_squareRemoved](declarations/mertensresidual-eq-squareremoved.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [squareRemovedRemainder_uniformly_bounded](declarations/squareremovedremainder-uniformly-bounded.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7cb707bbc3c6823b1e81797f355795a1651761a4d9fcf7865c88c4b98c0409bb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variant06f90d006416d512a1e7db5460a313cef8d64972e62fc517c6b35dcc6fcb99cf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
