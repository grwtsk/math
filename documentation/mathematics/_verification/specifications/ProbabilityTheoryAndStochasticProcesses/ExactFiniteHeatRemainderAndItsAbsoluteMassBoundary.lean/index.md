# Verification target: Exact Finite Heat Remainder And Its Absolute Mass Boundary

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "713359410b20ea65daf40908ff260b90aac19816",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHeatBoundaries/Variant9d3cb0ea13451423f7a68151626deb2e696412a1b069a20ea8a03544383bca97.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/ExactFiniteHeatRemainderAndItsAbsoluteMassBoundary.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/ExactFiniteHeatRemainderAndItsAbsoluteMassBoundary.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `713359410b20ea65daf40908ff260b90aac19816`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHeatBoundaries/Variant9d3cb0ea13451423f7a68151626deb2e696412a1b069a20ea8a03544383bca97.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHeatBoundaries/Variant9d3cb0ea13451423f7a68151626deb2e696412a1b069a20ea8a03544383bca97.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceSignedHeat` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceSignedPortControls` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [signedHeatRemainder_eq_filtered_integral](../../../../ProbabilityTheoryAndStochasticProcesses/ExactFiniteHeatRemainderAndItsAbsoluteMassBoundary.lean/declarations/signedheatremainder-eq-filtered-integral.md) | 26 | `result-track:28063d30cd0cbd60d7f07af78123cf1f34504d4b963f85e86221d6953a4d9ead` |
| 2 | `theorem` | [signedHeatRemainder_abs_le](../../../../ProbabilityTheoryAndStochasticProcesses/ExactFiniteHeatRemainderAndItsAbsoluteMassBoundary.lean/declarations/signedheatremainder-abs-le.md) | 43 | `result-track:4d63b537c558e510d401e1a17bdfc1f9f3e0f743e663549e9a7fe7b056cecbe4` |
| 3 | `theorem` | [sourceHeatRemainder_abs_le](../../../../ProbabilityTheoryAndStochasticProcesses/ExactFiniteHeatRemainderAndItsAbsoluteMassBoundary.lean/declarations/sourceheatremainder-abs-le.md) | 57 | `result-track:55fecf4dc22f41382fb29a95aa1181f9447223481a009f369f8a05a891cdbe0f` |
| 4 | `theorem` | [sourceSymbolBound_eq_coefficientVariation](../../../../ProbabilityTheoryAndStochasticProcesses/ExactFiniteHeatRemainderAndItsAbsoluteMassBoundary.lean/declarations/sourcesymbolbound-eq-coefficientvariation.md) | 64 | `result-track:9f72bc4f10eaf981d0630616980d0f60406d739efa73e6bc55522f79a4cd8ea7` |
| 5 | `theorem` | [sourceSymbolBound_lower](../../../../ProbabilityTheoryAndStochasticProcesses/ExactFiniteHeatRemainderAndItsAbsoluteMassBoundary.lean/declarations/sourcesymbolbound-lower.md) | 79 | `result-track:1ac19963e7ba3b8777b6c3f1d5f7583aa80903be9b56002d733bdcbe6472c774` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f488081ed7d9e9c55d58c97d3401dea3ac900869ab817c1aff30ae3d916632d7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHeatBoundaries/Variant9d3cb0ea13451423f7a68151626deb2e696412a1b069a20ea8a03544383bca97.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHeatBoundaries/Variant9d3cb0ea13451423f7a68151626deb2e696412a1b069a20ea8a03544383bca97.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
