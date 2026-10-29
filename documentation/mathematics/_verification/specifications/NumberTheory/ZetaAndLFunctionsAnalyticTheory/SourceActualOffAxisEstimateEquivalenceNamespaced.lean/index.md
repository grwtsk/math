# Verification target: Source Actual Off Axis Estimate Equivalence Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ad5777de3991533cd8f499519cdfdb8234184cc",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualOffAxisEstimateEquivalence/Variant1296d1676410e681d52ba780d7924387a84e47d163e138addba5003ede2f0431.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualOffAxisEstimateEquivalenceNamespaced.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualOffAxisEstimateEquivalenceNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ad5777de3991533cd8f499519cdfdb8234184cc`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualOffAxisEstimateEquivalence/Variant1296d1676410e681d52ba780d7924387a84e47d163e138addba5003ede2f0431.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualOffAxisEstimateEquivalence/Variant1296d1676410e681d52ba780d7924387a84e47d163e138addba5003ede2f0431.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualNegativeDefect` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ActualSourceNegativeDefectTailBound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualOffAxisEstimateEquivalenceNamespaced.lean/declarations/actualsourcenegativedefecttailbound.md) | 30 | `declaration-track:1a418f76f2f8961f330a5bf20e41f513f9bad38d054628f3bab30c7b77cc4120` |
| 2 | `def` | [ActualReducedOffAxisNegativeDefectTailBound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualOffAxisEstimateEquivalenceNamespaced.lean/declarations/actualreducedoffaxisnegativedefecttailbound.md) | 35 | `declaration-track:893565ad8cb959d0be29182f4b18184e0fbea7bea77d5dc4bc8b72846a797acd` |
| 3 | `theorem` | [actualSourceNegativeDefectTailBound_iff_estimate](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualOffAxisEstimateEquivalenceNamespaced.lean/declarations/actualsourcenegativedefecttailbound-iff-estimate.md) | 40 | `result-track:2677bb6ba2f221f1aa0e89f20c03f210b5ef56671c0e0f9173ef69e8d676a5ba` |
| 4 | `theorem` | [actualReducedOffAxisNegativeDefectTailBound_iff_source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualOffAxisEstimateEquivalenceNamespaced.lean/declarations/actualreducedoffaxisnegativedefecttailbound-iff-source.md) | 67 | `result-track:c23cb20a17d2a1d2c60680809e908a31169cfa551a5bdb5cadc88bdf625e0d2f` |
| 5 | `theorem` | [actualReducedOffAxisNegativeDefectTailBound_iff_estimate](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualOffAxisEstimateEquivalenceNamespaced.lean/declarations/actualreducedoffaxisnegativedefecttailbound-iff-estimate.md) | 91 | `result-track:26ad05ae58c5492ead5a65490197b0a63f31990ac011145d1fcb4dabeb975e78` |
| 6 | `theorem` | [actualReducedOffAxisHeadLowerTail_iff_estimate](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualOffAxisEstimateEquivalenceNamespaced.lean/declarations/actualreducedoffaxisheadlowertail-iff-estimate.md) | 97 | `result-track:8e0bd1407c74239e3f1d5646d4883d217cc37faaecfc6557120bee606045a6d5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8fc626a66bd82c179ec5a399e4b227f596d8daccc61a1307e1d637df83b398e7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualOffAxisEstimateEquivalence/Variant1296d1676410e681d52ba780d7924387a84e47d163e138addba5003ede2f0431.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualOffAxisEstimateEquivalence/Variant1296d1676410e681d52ba780d7924387a84e47d163e138addba5003ede2f0431.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
