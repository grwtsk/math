# Verification target: Binomial Flip Braid Trace Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b6e2cd7345d5bd1c6a4b8c055c2f509e957198a",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BinomialFlipBraidTrace/Variant8b3f0eb72e3175023c910582163b824dd4a20e8da8fe9de61cd98aae277ee906.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTraceNamespaced.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTraceNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b6e2cd7345d5bd1c6a4b8c055c2f509e957198a`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BinomialFlipBraidTrace/Variant8b3f0eb72e3175023c910582163b824dd4a20e8da8fe9de61cd98aae277ee906.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BinomialFlipBraidTrace/Variant8b3f0eb72e3175023c910582163b824dd4a20e8da8fe9de61cd98aae277ee906.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Arithmetic.TorsionShellTraceClassBoundary` — import line 6; external provider; requires a separately pinned dependency.
- `Think.SourceTree.Legacy.Arithmetic.PoleSpinHilbertPolyaBoundary` — import line 7; external provider; requires a separately pinned dependency.
- `Think.SourceTree.Legacy.Arithmetic.BSDSourceDecomposition` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [SpinSign](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTraceNamespaced.lean/declarations/spinsign.md) | 33 | `declaration-track:57def399a3e1b7cb8f29aa5cb507e8faf75917db6a143ee17efbad7a1b9d21e3` |
| 2 | `def` | [SpinSign.act](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTraceNamespaced.lean/declarations/spinsign-act.md) | 40 | `declaration-track:c0fcdff6f10ab0eb56dcc7ad82884ee3b02d96808a216ff9bd5e622c2895e652` |
| 3 | `def` | [SpinSign.weight](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTraceNamespaced.lean/declarations/spinsign-weight.md) | 45 | `declaration-track:dad2fb491328a1513b4817663b1cd99cc9dca7e7868b655b06b8cede7a835033` |
| 4 | `theorem` | [minus_spin_involutive](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTraceNamespaced.lean/declarations/minus-spin-involutive.md) | 50 | `result-track:b73e18548674186ae54c262bab421b664448f6b31a7f477b0269b349be2fed3a` |
| 5 | `theorem` | [plus_spin_identity](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTraceNamespaced.lean/declarations/plus-spin-identity.md) | 55 | `result-track:bfde55a2b993efb56b4c98e980b14d52f6544eced4a03fa4198a8f0658b44901` |
| 6 | `structure` | [BinomialFlipTerm](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTraceNamespaced.lean/declarations/binomialflipterm.md) | 61 | `declaration-track:f7b480460354da1b7af34dd51cf77cf75d7f367f3a2d58c185ccc63baff35b1e` |
| 7 | `def` | [plusBinomialFlipTerm](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTraceNamespaced.lean/declarations/plusbinomialflipterm.md) | 73 | `declaration-track:4bb8107a72e404ace025280f6e5e004307f5adc42d0b61a5c2fe40356f1fb2dc` |
| 8 | `def` | [minusBinomialFlipTerm](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTraceNamespaced.lean/declarations/minusbinomialflipterm.md) | 87 | `declaration-track:3794bb0efdb38051cc5d3118748922092b1c83432e040d1269ad98934b0cfefd` |
| 9 | `theorem` | [plus_binomial_flip_preserves_spin](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTraceNamespaced.lean/declarations/plus-binomial-flip-preserves-spin.md) | 101 | `result-track:1d4a8bbdc0b03305408c9dfdbf6010c867fedf472fa3aaa4a42083a4f14463bd` |
| 10 | `theorem` | [minus_binomial_flip_flips_spin](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTraceNamespaced.lean/declarations/minus-binomial-flip-flips-spin.md) | 107 | `result-track:d95b4d70cbdc6d84abe64238649fbcf4bd0958c5ca643afec220bf0ca351e428` |
| 11 | `structure` | [MonomialSpinOperator](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTraceNamespaced.lean/declarations/monomialspinoperator.md) | 114 | `declaration-track:d1f8ce81901f21cb4206357ec8bc86f930ac5575ea093e31a57e87ec8a073e66` |
| 12 | `abbrev` | [OrderedSpinMonomial](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTraceNamespaced.lean/declarations/orderedspinmonomial.md) | 130 | `declaration-track:f5f07a637693afff0f759d9ce6dc41a3b68601ff090573f0cfe5ce04516b1994` |
| 13 | `def` | [plusMonomialSpinOperator](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTraceNamespaced.lean/declarations/plusmonomialspinoperator.md) | 133 | `declaration-track:7b8c9f22fcfd88a7aeb4ee8e0b38a0bb2afd942dd0d30eb50097c08fea6595b0` |
| 14 | `def` | [minusMonomialSpinOperator](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTraceNamespaced.lean/declarations/minusmonomialspinoperator.md) | 150 | `declaration-track:94a2f925b34410db21c8df6511c9e40500901c6dafb7052222dae59b522f89fc` |
| 15 | `def` | [plusSpinMonomial](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTraceNamespaced.lean/declarations/plusspinmonomial.md) | 167 | `declaration-track:e76caee1c6a46b23b7cd42a9ca4b47ffad7614963c3123b91cd529a4a04ddb6c` |
| 16 | `def` | [minusSpinMonomial](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTraceNamespaced.lean/declarations/minusspinmonomial.md) | 173 | `declaration-track:8f2f0673b30defea352d19bbe11a2abeec82bc2624be91d65c9d4a900c712d40` |
| 17 | `theorem` | [plus_monomial_spin_preserves_spin](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTraceNamespaced.lean/declarations/plus-monomial-spin-preserves-spin.md) | 179 | `result-track:657056af5d7e2d4fe6a490d2ce184233e8e2f764a1d515077f585f930d822244` |
| 18 | `theorem` | [minus_monomial_spin_flips_spin](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTraceNamespaced.lean/declarations/minus-monomial-spin-flips-spin.md) | 187 | `result-track:e47b63dfbd1b99c70c76bb477da4d6fae45f47243f771a6138a527f152e65089` |
| 19 | `theorem` | [plus_spin_monomial_preserves_spin](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTraceNamespaced.lean/declarations/plus-spin-monomial-preserves-spin.md) | 195 | `result-track:fd4118b88837a118c96b7af4faa77bbfc44230cec8f50b8c9ca87980f27a7290` |
| 20 | `theorem` | [minus_spin_monomial_flips_spin](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTraceNamespaced.lean/declarations/minus-spin-monomial-flips-spin.md) | 203 | `result-track:28da36ad874b507c2958485e00c5f49c73202bb9d62524261294dc9b638f2522` |
| 21 | `structure` | [BinomialFlipExpansion](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTraceNamespaced.lean/declarations/binomialflipexpansion.md) | 211 | `declaration-track:19f5d562ef83eb78a697a5f642284350d7a042249d13f1abece038cfae21050d` |
| 22 | `def` | [minimalBinomialFlipExpansion](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTraceNamespaced.lean/declarations/minimalbinomialflipexpansion.md) | 227 | `declaration-track:a52b7b31d2e4fe569f8e1abd29b3b58e3e7f3445fcec8b4cad41429dc4306171` |
| 23 | `theorem` | [minimal_binomial_flip_expansion_is_finite_nonanalytic](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTraceNamespaced.lean/declarations/minimal-binomial-flip-expansion-is-finite-nonanalytic.md) | 248 | `result-track:a11fb044c2eee7e4809d0d4675bf0835fa2663b13d0c5122bcc121e1c6c6f059` |
| 24 | `structure` | [BraidTraceLedger](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTraceNamespaced.lean/declarations/braidtraceledger.md) | 256 | `declaration-track:87949800665cbcbae62226051e273bd0c96e5c4b698b7f93e26dfa524052b20f` |
| 25 | `def` | [minimalBraidTraceLedger](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTraceNamespaced.lean/declarations/minimalbraidtraceledger.md) | 274 | `declaration-track:2abd6afba8e7c0943b74e156dec374f8124d35e349706b91928fa7cad9663e4d` |
| 26 | `theorem` | [minimal_braid_trace_is_finite_cancellation_not_bsd](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTraceNamespaced.lean/declarations/minimal-braid-trace-is-finite-cancellation-not-bsd.md) | 291 | `result-track:1d455ba8d94ec364a7afe442a27a1809c54bdc78e7e844c3961cf52abba61f4b` |
| 27 | `structure` | [BinomialFlipBraidTraceBoundary](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTraceNamespaced.lean/declarations/binomialflipbraidtraceboundary.md) | 302 | `declaration-track:3820119db846ebdb93784239fd41875993c8d92f1bc649810732d1d3606adf5c` |
| 28 | `def` | [defaultBinomialFlipBraidTraceBoundary](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTraceNamespaced.lean/declarations/defaultbinomialflipbraidtraceboundary.md) | 331 | `declaration-track:72dc8565c054fc3c45feb3b0152aa5893591678188d34e86b7b7dffdc4fd3335` |
| 29 | `def` | [completedBinomialFlipBraidTraceBoundary](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTraceNamespaced.lean/declarations/completedbinomialflipbraidtraceboundary.md) | 352 | `declaration-track:843f159b32db777abe28ca32b5c5eab5432d397b20cb0b8ba7204ef7926356b4` |
| 30 | `theorem` | [binomial_flip_over_monomial_spin_feeds_braid_trace](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTraceNamespaced.lean/declarations/binomial-flip-over-monomial-spin-feeds-braid-trace.md) | 372 | `result-track:9abb6a7c9ecbb1fa747a02e12f756bb85c0882e583d28a9f2360c9e02f6f3d14` |
| 31 | `theorem` | [binomial_flip_braid_trace_feeds_determinant_trace](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTraceNamespaced.lean/declarations/binomial-flip-braid-trace-feeds-determinant-trace.md) | 388 | `result-track:522b986ba980ed5091846fb1464302d0f8b5aa20ac8f4a848b2a2d5b0ab5c1b8` |
| 32 | `theorem` | [binomial_expansion_alone_does_not_feed_trace](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTraceNamespaced.lean/declarations/binomial-expansion-alone-does-not-feed-trace.md) | 404 | `result-track:87324bdd6d6530bf02be98f4c5f447b5eb4d1a8b8db0dcbd31093d1c3fc823ad` |
| 33 | `theorem` | [monomial_spin_alone_does_not_feed_trace](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTraceNamespaced.lean/declarations/monomial-spin-alone-does-not-feed-trace.md) | 411 | `result-track:f3fb37d1ddc851210a1879bd163984ea94fff88c199041c673a2e0b311cf313e` |
| 34 | `theorem` | [completed_braid_trace_feeds_determinant_trace](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTraceNamespaced.lean/declarations/completed-braid-trace-feeds-determinant-trace.md) | 419 | `result-track:75a0d8881a1db4cb8c4c1c7e3b678dd4b528c1a38635e6a05237ea69a4bd8dae` |
| 35 | `theorem` | [completed_braid_trace_does_not_claim_bsd](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTraceNamespaced.lean/declarations/completed-braid-trace-does-not-claim-bsd.md) | 424 | `result-track:07cb35cc386a82c24a5527ca05b46bb2f0c600e6b5e6922a7c28c1ec229d2250` |
| 36 | `theorem` | [completed_braid_trace_uses_trace_and_spin_boundaries](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTraceNamespaced.lean/declarations/completed-braid-trace-uses-trace-and-spin-boundaries.md) | 431 | `result-track:7f54a16e8cec34ffdbb58e141d8b02024032fd58cfcdf5a406ce6efd69b2dac7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7c3a2dc92d51833c4509c6d3db6a9e65d88963f3dca8216f229e2f6faf706f9e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BinomialFlipBraidTrace/Variant8b3f0eb72e3175023c910582163b824dd4a20e8da8fe9de61cd98aae277ee906.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BinomialFlipBraidTrace/Variant8b3f0eb72e3175023c910582163b824dd4a20e8da8fe9de61cd98aae277ee906.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
