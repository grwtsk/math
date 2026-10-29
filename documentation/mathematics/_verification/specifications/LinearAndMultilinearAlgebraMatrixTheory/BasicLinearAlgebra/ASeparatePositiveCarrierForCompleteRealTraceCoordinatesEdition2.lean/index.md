# Verification target: ASeparate Positive Carrier For Complete Real Trace Coordinates Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c940b36da20d639da1a04a16588bb113d95f5604",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracePositiveCarrier/Varianta4d35f5700deaf26c10b3e5eaceabf176b7da1918b0f0b6398056574cfb9cd24.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ASeparatePositiveCarrierForCompleteRealTraceCoordinatesEdition2.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ASeparatePositiveCarrierForCompleteRealTraceCoordinatesEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c940b36da20d639da1a04a16588bb113d95f5604`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracePositiveCarrier/Varianta4d35f5700deaf26c10b3e5eaceabf176b7da1918b0f0b6398056574cfb9cd24.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracePositiveCarrier/Varianta4d35f5700deaf26c10b3e5eaceabf176b7da1918b0f0b6398056574cfb9cd24.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.TraceDual` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [realGram](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ASeparatePositiveCarrierForCompleteRealTraceCoordinatesEdition2.lean/declarations/realgram.md) | 24 | `declaration-track:04b91092a74ad323518ea5ada21ba74733f1915bfe7ca7a55f16e0313cc57a32` |
| 2 | `def` | [realGramInverse](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ASeparatePositiveCarrierForCompleteRealTraceCoordinatesEdition2.lean/declarations/realgraminverse.md) | 25 | `declaration-track:dfb55c077b16109709bbd7af7863fb9ea65747340d6929ef06ffd525d2e3ca59` |
| 3 | `theorem` | [real_inverse_mul_gram](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ASeparatePositiveCarrierForCompleteRealTraceCoordinatesEdition2.lean/declarations/real-inverse-mul-gram.md) | 27 | `result-track:7bc572b1746e831e52dc74939255f736cb9d27df55abfab1c547f63620d5b74a` |
| 4 | `theorem` | [real_gram_mul_inverse](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ASeparatePositiveCarrierForCompleteRealTraceCoordinatesEdition2.lean/declarations/real-gram-mul-inverse.md) | 31 | `result-track:ca823deb17479bf33a73632f0f6bb9ef63593e6474a8f24441f976fe097b77de` |
| 5 | `theorem` | [real_trace_dual_recovers_all](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ASeparatePositiveCarrierForCompleteRealTraceCoordinatesEdition2.lean/declarations/real-trace-dual-recovers-all.md) | 35 | `result-track:25618da444ea89c2bc14c56ade32edac3b314f3998d2039913d0b312f3ec325a` |
| 6 | `theorem` | [real_trace_moments_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ASeparatePositiveCarrierForCompleteRealTraceCoordinatesEdition2.lean/declarations/real-trace-moments-injective.md) | 39 | `result-track:cfe3011e47ba272ef947c8f0838b9afeb15a3b4dabcfe77948d534881e75ea93` |
| 7 | `def` | [positiveMomentEnergy](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ASeparatePositiveCarrierForCompleteRealTraceCoordinatesEdition2.lean/declarations/positivemomentenergy.md) | 44 | `declaration-track:0bbaebac51b6e9c896d5dcf93b77ce78fa723225a639070f2afa893738c9e59d` |
| 8 | `theorem` | [positiveMomentEnergy_nonneg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ASeparatePositiveCarrierForCompleteRealTraceCoordinatesEdition2.lean/declarations/positivemomentenergy-nonneg.md) | 46 | `result-track:b758ab53def84e937f93ef49b2fef86745ebc38fb807f02a102ada3722a4ea26` |
| 9 | `theorem` | [positiveMomentEnergy_eq_zero_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ASeparatePositiveCarrierForCompleteRealTraceCoordinatesEdition2.lean/declarations/positivemomentenergy-eq-zero-iff.md) | 50 | `result-track:8124c7a859ce81474d4e31c6f061abcf4326dce807906f5de10cf187749efd45` |
| 10 | `theorem` | [positiveMomentEnergy_pos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ASeparatePositiveCarrierForCompleteRealTraceCoordinatesEdition2.lean/declarations/positivemomentenergy-pos.md) | 66 | `result-track:9262e72925ef2223df1b6917083ed317acb93264132b5477b1a2cc84786c5e34` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=77db7fddacee29a8f37720fae2512de9344dfb353270b08869184a2a341cf4cc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracePositiveCarrier/Varianta4d35f5700deaf26c10b3e5eaceabf176b7da1918b0f0b6398056574cfb9cd24.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TracePositiveCarrier/Varianta4d35f5700deaf26c10b3e5eaceabf176b7da1918b0f0b6398056574cfb9cd24.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
