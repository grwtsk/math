# Binomial Flip Braid Trace

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**36 observed declarations and anonymous commands**, 17 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BinomialFlipBraidTrace/Variant8c80c697fb825455441030b027ca2748cc6ada2f694ba6b9b21734d3dcb7f166.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ebe8f66fede5a169592982d5d42c0a95c19ee22b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTrace.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [SpinSign](declarations/spinsign.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [SpinSign.act](declarations/spinsign-act.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [SpinSign.weight](declarations/spinsign-weight.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [minus_spin_involutive](declarations/minus-spin-involutive.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [plus_spin_identity](declarations/plus-spin-identity.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [BinomialFlipTerm](declarations/binomialflipterm.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [plusBinomialFlipTerm](declarations/plusbinomialflipterm.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [minusBinomialFlipTerm](declarations/minusbinomialflipterm.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [plus_binomial_flip_preserves_spin](declarations/plus-binomial-flip-preserves-spin.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [minus_binomial_flip_flips_spin](declarations/minus-binomial-flip-flips-spin.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [MonomialSpinOperator](declarations/monomialspinoperator.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `abbrev` | [OrderedSpinMonomial](declarations/orderedspinmonomial.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [plusMonomialSpinOperator](declarations/plusmonomialspinoperator.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [minusMonomialSpinOperator](declarations/minusmonomialspinoperator.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [plusSpinMonomial](declarations/plusspinmonomial.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [minusSpinMonomial](declarations/minusspinmonomial.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [plus_monomial_spin_preserves_spin](declarations/plus-monomial-spin-preserves-spin.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [minus_monomial_spin_flips_spin](declarations/minus-monomial-spin-flips-spin.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [plus_spin_monomial_preserves_spin](declarations/plus-spin-monomial-preserves-spin.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [minus_spin_monomial_flips_spin](declarations/minus-spin-monomial-flips-spin.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [BinomialFlipExpansion](declarations/binomialflipexpansion.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [minimalBinomialFlipExpansion](declarations/minimalbinomialflipexpansion.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [minimal_binomial_flip_expansion_is_finite_nonanalytic](declarations/minimal-binomial-flip-expansion-is-finite-nonanalytic.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `structure` | [BraidTraceLedger](declarations/braidtraceledger.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [minimalBraidTraceLedger](declarations/minimalbraidtraceledger.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [minimal_braid_trace_is_finite_cancellation_not_bsd](declarations/minimal-braid-trace-is-finite-cancellation-not-bsd.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `structure` | [BinomialFlipBraidTraceBoundary](declarations/binomialflipbraidtraceboundary.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [defaultBinomialFlipBraidTraceBoundary](declarations/defaultbinomialflipbraidtraceboundary.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [completedBinomialFlipBraidTraceBoundary](declarations/completedbinomialflipbraidtraceboundary.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [binomial_flip_over_monomial_spin_feeds_braid_trace](declarations/binomial-flip-over-monomial-spin-feeds-braid-trace.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [binomial_flip_braid_trace_feeds_determinant_trace](declarations/binomial-flip-braid-trace-feeds-determinant-trace.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [binomial_expansion_alone_does_not_feed_trace](declarations/binomial-expansion-alone-does-not-feed-trace.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [monomial_spin_alone_does_not_feed_trace](declarations/monomial-spin-alone-does-not-feed-trace.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [completed_braid_trace_feeds_determinant_trace](declarations/completed-braid-trace-feeds-determinant-trace.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [completed_braid_trace_does_not_claim_bsd](declarations/completed-braid-trace-does-not-claim-bsd.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [completed_braid_trace_uses_trace_and_spin_boundaries](declarations/completed-braid-trace-uses-trace-and-spin-boundaries.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1c905ddd23c8b4def8388d718724f51fb2adab6202856bbb3c9f3ea5fc2087a3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BinomialFlipBraidTrace/Variant8c80c697fb825455441030b027ca2748cc6ada2f694ba6b9b21734d3dcb7f166.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
