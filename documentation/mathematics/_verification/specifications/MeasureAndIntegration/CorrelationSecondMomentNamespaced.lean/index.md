# Verification target: Correlation Second Moment Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a8041cdcdf6a31390ab8fd5217d84508df9639a",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CorrelationSecondMoment/Variant3883425871a36d7bcce1c4c73a4639c0b554e866731a1cc752980d809810372b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/CorrelationSecondMomentNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/CorrelationSecondMomentNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a8041cdcdf6a31390ab8fd5217d84508df9639a`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CorrelationSecondMoment/Variant3883425871a36d7bcce1c4c73a4639c0b554e866731a1cc752980d809810372b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CorrelationSecondMoment/Variant3883425871a36d7bcce1c4c73a4639c0b554e866731a1cc752980d809810372b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationMoment` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [normalizedTest_even](../../../../MeasureAndIntegration/CorrelationSecondMomentNamespaced.lean/declarations/normalizedtest-even.md) | 28 | `result-track:becdf9a4257260f607f4288ba0fa2ea0de85337de35b2cb673a3815ecb957872` |
| 2 | `theorem` | [secondMoment_convolution](../../../../MeasureAndIntegration/CorrelationSecondMomentNamespaced.lean/declarations/secondmoment-convolution.md) | 40 | `result-track:5829ec8c55a2cc2faad07f65579ffe05c715655db56a8f4651479e2d90d171b9` |
| 3 | `theorem` | [secondMoment_convolution_integral](../../../../MeasureAndIntegration/CorrelationSecondMomentNamespaced.lean/declarations/secondmoment-convolution-integral.md) | 66 | `result-track:d2cfcc98db1fab813fbfe908c75397b42281cf4438aabc46c19e7f966aade2e9` |
| 4 | `theorem` | [weighted_normalizedTest_firstMoment_integrable](../../../../MeasureAndIntegration/CorrelationSecondMomentNamespaced.lean/declarations/weighted-normalizedtest-firstmoment-integrable.md) | 96 | `result-track:8406fe5602914822c649e548f4988b5a52200d5ab411b1ed34d3a7b89fcac1c3` |
| 5 | `theorem` | [weighted_correlation_secondMoment_integrable](../../../../MeasureAndIntegration/CorrelationSecondMomentNamespaced.lean/declarations/weighted-correlation-secondmoment-integrable.md) | 104 | `result-track:eb02fd7c83f0764884128c1822a63145ffe64db92d6e3f0049a737896663afbd` |
| 6 | `theorem` | [full_correlation_secondMoment_eq_square](../../../../MeasureAndIntegration/CorrelationSecondMomentNamespaced.lean/declarations/full-correlation-secondmoment-eq-square.md) | 112 | `result-track:0ef9cc43dfb82f0962d3917529b89fb2ebd86db2288adf51b3b940b89084d688` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9f57899e4a9513ac4ceaaea3d4a979cd6a9af96fc4a3b9ed2be5a69a95ca40bf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/CorrelationSecondMoment/Variant3883425871a36d7bcce1c4c73a4639c0b554e866731a1cc752980d809810372b.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/CorrelationSecondMoment/Variant3883425871a36d7bcce1c4c73a4639c0b554e866731a1cc752980d809810372b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
