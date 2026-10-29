# Binomial Flip Braid Trace Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**36 observed declarations and anonymous commands**, 17 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BinomialFlipBraidTrace/Variant8b3f0eb72e3175023c910582163b824dd4a20e8da8fe9de61cd98aae277ee906.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6b6e2cd7345d5bd1c6a4b8c055c2f509e957198a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTraceNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [SpinSign](declarations/spinsign.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [SpinSign.act](declarations/spinsign-act.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [SpinSign.weight](declarations/spinsign-weight.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [minus_spin_involutive](declarations/minus-spin-involutive.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [plus_spin_identity](declarations/plus-spin-identity.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [BinomialFlipTerm](declarations/binomialflipterm.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [plusBinomialFlipTerm](declarations/plusbinomialflipterm.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [minusBinomialFlipTerm](declarations/minusbinomialflipterm.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [plus_binomial_flip_preserves_spin](declarations/plus-binomial-flip-preserves-spin.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [minus_binomial_flip_flips_spin](declarations/minus-binomial-flip-flips-spin.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [MonomialSpinOperator](declarations/monomialspinoperator.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `abbrev` | [OrderedSpinMonomial](declarations/orderedspinmonomial.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [plusMonomialSpinOperator](declarations/plusmonomialspinoperator.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [minusMonomialSpinOperator](declarations/minusmonomialspinoperator.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [plusSpinMonomial](declarations/plusspinmonomial.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [minusSpinMonomial](declarations/minusspinmonomial.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [plus_monomial_spin_preserves_spin](declarations/plus-monomial-spin-preserves-spin.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [minus_monomial_spin_flips_spin](declarations/minus-monomial-spin-flips-spin.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [plus_spin_monomial_preserves_spin](declarations/plus-spin-monomial-preserves-spin.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [minus_spin_monomial_flips_spin](declarations/minus-spin-monomial-flips-spin.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [BinomialFlipExpansion](declarations/binomialflipexpansion.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [minimalBinomialFlipExpansion](declarations/minimalbinomialflipexpansion.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [minimal_binomial_flip_expansion_is_finite_nonanalytic](declarations/minimal-binomial-flip-expansion-is-finite-nonanalytic.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `structure` | [BraidTraceLedger](declarations/braidtraceledger.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [minimalBraidTraceLedger](declarations/minimalbraidtraceledger.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [minimal_braid_trace_is_finite_cancellation_not_bsd](declarations/minimal-braid-trace-is-finite-cancellation-not-bsd.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `structure` | [BinomialFlipBraidTraceBoundary](declarations/binomialflipbraidtraceboundary.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [defaultBinomialFlipBraidTraceBoundary](declarations/defaultbinomialflipbraidtraceboundary.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [completedBinomialFlipBraidTraceBoundary](declarations/completedbinomialflipbraidtraceboundary.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [binomial_flip_over_monomial_spin_feeds_braid_trace](declarations/binomial-flip-over-monomial-spin-feeds-braid-trace.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [binomial_flip_braid_trace_feeds_determinant_trace](declarations/binomial-flip-braid-trace-feeds-determinant-trace.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [binomial_expansion_alone_does_not_feed_trace](declarations/binomial-expansion-alone-does-not-feed-trace.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [monomial_spin_alone_does_not_feed_trace](declarations/monomial-spin-alone-does-not-feed-trace.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [completed_braid_trace_feeds_determinant_trace](declarations/completed-braid-trace-feeds-determinant-trace.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [completed_braid_trace_does_not_claim_bsd](declarations/completed-braid-trace-does-not-claim-bsd.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [completed_braid_trace_uses_trace_and_spin_boundaries](declarations/completed-braid-trace-uses-trace-and-spin-boundaries.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d89f4b33ace1c95efbf813670a8cdb538c8ad7a87b17d604284690ac14e03c03 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BinomialFlipBraidTrace/Variant8b3f0eb72e3175023c910582163b824dd4a20e8da8fe9de61cd98aae277ee906.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
