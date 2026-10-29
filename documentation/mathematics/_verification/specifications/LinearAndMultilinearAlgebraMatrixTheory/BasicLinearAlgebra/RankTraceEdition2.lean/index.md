# Verification target: Rank Trace Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "abc3f005da0c5daf59e22884d7d03757bfb27856",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTrace/Variant960a7b4e4f1091bf7fce2efe1135e52aa4e16c9d1c389aca382a1f1795c8a9c5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RankTraceEdition2.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RankTraceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `abc3f005da0c5daf59e22884d7d03757bfb27856`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTrace/Variant960a7b4e4f1091bf7fce2efe1135e52aa4e16c9d1c389aca382a1f1795c8a9c5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTrace/Variant960a7b4e4f1091bf7fce2efe1135e52aa4e16c9d1c389aca382a1f1795c8a9c5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.LinAlg.PosIndex` — import line 13; external provider; requires a separately pinned dependency.
- `Zeta23.LinAlg.VonNeumann` — import line 14; external provider; requires a separately pinned dependency.
- `Zeta23.LinAlg.HermitianPosPart` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [sq_ge_linear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RankTraceEdition2.lean/declarations/sq-ge-linear.md) | 52 | `result-track:43971e57aeb4f45d876e2dc8c310c3ae04c8db6d681c53effe59d560ed3eca68` |
| 2 | `lemma` | [sq_ge_linear'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RankTraceEdition2.lean/declarations/sq-ge-linear-source-edition-2.md) | 56 | `result-track:eac9b6fa4774da8187ebcbf03c1f2157c348cc7189dd7467066051a4964e0eca` |
| 3 | `lemma` | [sum_sq_diff_lower](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RankTraceEdition2.lean/declarations/sum-sq-diff-lower.md) | 62 | `result-track:d0883d9f2a28596eb6e16919b8f8bf8fbd90015f098eb2bf999483b05f8d7668` |
| 4 | `lemma` | [sum_sq_lower_of_card_pos_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RankTraceEdition2.lean/declarations/sum-sq-lower-of-card-pos-le.md) | 87 | `result-track:a41b50478a861e3e941b56d0e17dc0e5e225d6fedabbbfa7edaed6308f0d46cd` |
| 5 | `lemma` | [trace_mul_nonneg_of_posSemidef](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RankTraceEdition2.lean/declarations/trace-mul-nonneg-of-possemidef.md) | 114 | `result-track:b9b1e2b7f310d98f8d58e067b395c0875f9ec1d255062de6542e8990aed04518` |
| 6 | `lemma` | [re_trace_mul_comm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RankTraceEdition2.lean/declarations/re-trace-mul-comm.md) | 132 | `result-track:a48e3ca4044f0f2e9460850e6a1e8f777da3495e103f08e0f4f94c1ac76770d8` |
| 7 | `lemma` | [frobSq_add_hermitian](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RankTraceEdition2.lean/declarations/frobsq-add-hermitian.md) | 138 | `result-track:6cd8073f261acc34401c9101b3a197af6f3b84ce12eec1751cf2ba0331cc783c` |
| 8 | `lemma` | [rtrace_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RankTraceEdition2.lean/declarations/rtrace-add.md) | 148 | `result-track:ad1cea718c9c022a66904640bf6c9d7df4538ee51fe8c6a2148fae2587601a06` |
| 9 | `lemma` | [rtrace_sub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RankTraceEdition2.lean/declarations/rtrace-sub.md) | 152 | `result-track:816204f9517f7cacae5ead86c9410688faac13bf640905ab7f075b68398528ca` |
| 10 | `theorem` | [rank_trace_ineq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RankTraceEdition2.lean/declarations/rank-trace-ineq.md) | 163 | `result-track:5ff847e3872688081daf5aaa4126107a8443a5778bda01b3fd2d4a593eea185c` |
| 11 | `theorem` | [rank_trace_ineq_two](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RankTraceEdition2.lean/declarations/rank-trace-ineq-two.md) | 260 | `result-track:af8bbae30dc4154ecab8ed11c048627f89fd8ba1d9fd281946023b237a1aadb4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=759325551d21822beeb814508231484cba0c620f30138679c8220a420519035a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTrace/Variant960a7b4e4f1091bf7fce2efe1135e52aa4e16c9d1c389aca382a1f1795c8a9c5.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTrace/Variant960a7b4e4f1091bf7fce2efe1135e52aa4e16c9d1c389aca382a1f1795c8a9c5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
