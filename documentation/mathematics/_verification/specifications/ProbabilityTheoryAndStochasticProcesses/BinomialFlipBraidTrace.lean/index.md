# Verification target: Binomial Flip Braid Trace

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ebe8f66fede5a169592982d5d42c0a95c19ee22b",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BinomialFlipBraidTrace/Variant8c80c697fb825455441030b027ca2748cc6ada2f694ba6b9b21734d3dcb7f166.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTrace.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTrace.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ebe8f66fede5a169592982d5d42c0a95c19ee22b`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BinomialFlipBraidTrace/Variant8c80c697fb825455441030b027ca2748cc6ada2f694ba6b9b21734d3dcb7f166.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BinomialFlipBraidTrace/Variant8c80c697fb825455441030b027ca2748cc6ada2f694ba6b9b21734d3dcb7f166.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Arithmetic.TorsionShellTraceClassBoundary` — import line 1; external provider; requires a separately pinned dependency.
- `Think.SourceTree.Legacy.Arithmetic.PoleSpinHilbertPolyaBoundary` — import line 2; external provider; requires a separately pinned dependency.
- `Think.SourceTree.Legacy.Arithmetic.BSDSourceDecomposition` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [SpinSign](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTrace.lean/declarations/spinsign.md) | 25 | `declaration-track:310e33d02643afacbef8d211557ab5428671bb79003f03a97a24c081eb99e205` |
| 2 | `def` | [SpinSign.act](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTrace.lean/declarations/spinsign-act.md) | 32 | `declaration-track:be435660fcf915644fbe59751e4dbbda2bfac04aa457a8438d081a4a34e20aa1` |
| 3 | `def` | [SpinSign.weight](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTrace.lean/declarations/spinsign-weight.md) | 37 | `declaration-track:2666b66728029b25664f21644c73e8bb83161e31ba9cc987476b02ab0765b7f8` |
| 4 | `theorem` | [minus_spin_involutive](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTrace.lean/declarations/minus-spin-involutive.md) | 42 | `result-track:4683aa564b3373747c9d9b980f4ac9a1e8c81ade3d71d89580ac21ef3d2819d1` |
| 5 | `theorem` | [plus_spin_identity](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTrace.lean/declarations/plus-spin-identity.md) | 47 | `result-track:3a5feb8fa715db69bbc3763ff3fac8ef196c7828a89e8aa65b085368f9263330` |
| 6 | `structure` | [BinomialFlipTerm](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTrace.lean/declarations/binomialflipterm.md) | 53 | `declaration-track:b1699db941ddd68477fe6f349651f8a82d3b0d414a053ef863df7e6d5b1ad5c3` |
| 7 | `def` | [plusBinomialFlipTerm](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTrace.lean/declarations/plusbinomialflipterm.md) | 65 | `declaration-track:3c097fccf9c989802856d20d9eab69dbca7f05287ae06a574aa9c448b6281ac1` |
| 8 | `def` | [minusBinomialFlipTerm](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTrace.lean/declarations/minusbinomialflipterm.md) | 79 | `declaration-track:b28ce4fff04d6562c35a445ac917d145f73d07e6795f3037d9209745003b43e5` |
| 9 | `theorem` | [plus_binomial_flip_preserves_spin](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTrace.lean/declarations/plus-binomial-flip-preserves-spin.md) | 93 | `result-track:77251ce38bd302cc55357d3229e7ae51c98613489a6d2e594e218e5ce768156f` |
| 10 | `theorem` | [minus_binomial_flip_flips_spin](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTrace.lean/declarations/minus-binomial-flip-flips-spin.md) | 99 | `result-track:6aebbc9eed4885304cc3d7e47d3548010031513ecf98a87eee839ed3c8956ee4` |
| 11 | `structure` | [MonomialSpinOperator](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTrace.lean/declarations/monomialspinoperator.md) | 106 | `declaration-track:d535d8b285db23af9466744ae0dc2202c2bcd1fd7348447b17776b5a5c072138` |
| 12 | `abbrev` | [OrderedSpinMonomial](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTrace.lean/declarations/orderedspinmonomial.md) | 122 | `declaration-track:b831d435edbe95f1eba40007075d99ef7d7fb530a5358ec9d1208e5370729ac7` |
| 13 | `def` | [plusMonomialSpinOperator](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTrace.lean/declarations/plusmonomialspinoperator.md) | 125 | `declaration-track:bd5a60c61ebaa42d7aa588ca82227ba7cdb308c9cebc2e37a4f4ede7f2def2ef` |
| 14 | `def` | [minusMonomialSpinOperator](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTrace.lean/declarations/minusmonomialspinoperator.md) | 142 | `declaration-track:22dac4bcaf41650f3b95ae1aa8cf1bc01cc632027171d7a402a0592171d217d1` |
| 15 | `def` | [plusSpinMonomial](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTrace.lean/declarations/plusspinmonomial.md) | 159 | `declaration-track:ceb079b2d25d969fa5fa8f9e369c000b5e654aa7477a45914f469096018fb78c` |
| 16 | `def` | [minusSpinMonomial](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTrace.lean/declarations/minusspinmonomial.md) | 165 | `declaration-track:f36f395f0ab5104f72bc4438751659aaacd2af8be58478e39c4a6a8b333d0bdf` |
| 17 | `theorem` | [plus_monomial_spin_preserves_spin](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTrace.lean/declarations/plus-monomial-spin-preserves-spin.md) | 171 | `result-track:367df42bf3a407667dc1d45598efec2669d38c19cb0d415e6ff6e592882bf168` |
| 18 | `theorem` | [minus_monomial_spin_flips_spin](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTrace.lean/declarations/minus-monomial-spin-flips-spin.md) | 179 | `result-track:4b7c8807702f661acc9cd7c7018e585f03a1f67a7e3600c43f17559e26803d07` |
| 19 | `theorem` | [plus_spin_monomial_preserves_spin](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTrace.lean/declarations/plus-spin-monomial-preserves-spin.md) | 187 | `result-track:b616c181e18d2c1dd10bc4f83be95f3f0fa7474591a1a41dea22bfb30a91c6e1` |
| 20 | `theorem` | [minus_spin_monomial_flips_spin](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTrace.lean/declarations/minus-spin-monomial-flips-spin.md) | 195 | `result-track:d5db109dd3a398e7d57bbc0cd48c40b4ac1d98a2226977bde05bdfb010c42a41` |
| 21 | `structure` | [BinomialFlipExpansion](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTrace.lean/declarations/binomialflipexpansion.md) | 203 | `declaration-track:d4ef2c7190802d01a8dc8fedf030531a683b22a7ce9d7aa752d526958a1cc2de` |
| 22 | `def` | [minimalBinomialFlipExpansion](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTrace.lean/declarations/minimalbinomialflipexpansion.md) | 219 | `declaration-track:c593bd286080839782787f8c8d2bf70bb88ed24a01cf844d688f7f46dfb423e6` |
| 23 | `theorem` | [minimal_binomial_flip_expansion_is_finite_nonanalytic](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTrace.lean/declarations/minimal-binomial-flip-expansion-is-finite-nonanalytic.md) | 240 | `result-track:d4ab5edd387e226da03267fcfb8c9974594f22939ab306fddf9b535da32c32c9` |
| 24 | `structure` | [BraidTraceLedger](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTrace.lean/declarations/braidtraceledger.md) | 248 | `declaration-track:f1f263c5868682ee5b86c566dd5f92b96e438afab92cc857771d259ce37edfdb` |
| 25 | `def` | [minimalBraidTraceLedger](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTrace.lean/declarations/minimalbraidtraceledger.md) | 266 | `declaration-track:442bb595b6b131fbf852aecd15d345bcedd1e5afefa2f7ca4f64d23f8ed6145d` |
| 26 | `theorem` | [minimal_braid_trace_is_finite_cancellation_not_bsd](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTrace.lean/declarations/minimal-braid-trace-is-finite-cancellation-not-bsd.md) | 283 | `result-track:bae6f7de80466ec9250b36699a0e7ff807436ff43962aa8836cbb38d2cb0687b` |
| 27 | `structure` | [BinomialFlipBraidTraceBoundary](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTrace.lean/declarations/binomialflipbraidtraceboundary.md) | 294 | `declaration-track:58925729c0f0e1fc4e638a124dcb69ff8c80eb551530645ab66a21b053ed9f4e` |
| 28 | `def` | [defaultBinomialFlipBraidTraceBoundary](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTrace.lean/declarations/defaultbinomialflipbraidtraceboundary.md) | 323 | `declaration-track:3cfe40548b454d73880eb159811371350410b63a8b20c5402c6548bf692c058e` |
| 29 | `def` | [completedBinomialFlipBraidTraceBoundary](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTrace.lean/declarations/completedbinomialflipbraidtraceboundary.md) | 344 | `declaration-track:3fe580defefd25e085656e84fa08075abc24282d495b9d346e72144065d04f5c` |
| 30 | `theorem` | [binomial_flip_over_monomial_spin_feeds_braid_trace](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTrace.lean/declarations/binomial-flip-over-monomial-spin-feeds-braid-trace.md) | 364 | `result-track:67208c0e45cfb14553ee4c9c464ca1427a33a657492e8f9b2dd17e8299f67387` |
| 31 | `theorem` | [binomial_flip_braid_trace_feeds_determinant_trace](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTrace.lean/declarations/binomial-flip-braid-trace-feeds-determinant-trace.md) | 380 | `result-track:94a9e0da9fda4a1cbc53a81be6ca981327ae26bbcf8cf57f450b63533633f788` |
| 32 | `theorem` | [binomial_expansion_alone_does_not_feed_trace](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTrace.lean/declarations/binomial-expansion-alone-does-not-feed-trace.md) | 396 | `result-track:58744d529ef82b5a224eaf309c2b29b68ccc51e6398ac5ef8aa3dee64df6816f` |
| 33 | `theorem` | [monomial_spin_alone_does_not_feed_trace](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTrace.lean/declarations/monomial-spin-alone-does-not-feed-trace.md) | 403 | `result-track:e5c7e4da88413a27725699531d4ef210c9bb2150b4e16bf7ce188e7a6853af68` |
| 34 | `theorem` | [completed_braid_trace_feeds_determinant_trace](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTrace.lean/declarations/completed-braid-trace-feeds-determinant-trace.md) | 411 | `result-track:db5a90cc20e7fead0ea72e8238654acee1bff0b8ef450e135703f451924a1b7f` |
| 35 | `theorem` | [completed_braid_trace_does_not_claim_bsd](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTrace.lean/declarations/completed-braid-trace-does-not-claim-bsd.md) | 416 | `result-track:49c6a401604c080aedc65ef0c93e6676a464945e49a6c61d019ae4c4dce8cb41` |
| 36 | `theorem` | [completed_braid_trace_uses_trace_and_spin_boundaries](../../../../ProbabilityTheoryAndStochasticProcesses/BinomialFlipBraidTrace.lean/declarations/completed-braid-trace-uses-trace-and-spin-boundaries.md) | 423 | `result-track:0a17abb227a1ec3a42a8da5edc1f9b863444e98151d1235823794cd552290745` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4220514bde63bbebd036e4498eb29bfc97a84e8453a872bdaf925df0762feab3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BinomialFlipBraidTrace/Variant8c80c697fb825455441030b027ca2748cc6ada2f694ba6b9b21734d3dcb7f166.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/BinomialFlipBraidTrace/Variant8c80c697fb825455441030b027ca2748cc6ada2f694ba6b9b21734d3dcb7f166.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
