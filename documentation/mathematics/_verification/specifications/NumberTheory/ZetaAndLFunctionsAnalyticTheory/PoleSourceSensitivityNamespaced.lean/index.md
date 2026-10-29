# Verification target: Pole Source Sensitivity Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "99dc36794dce7394ea5d7e17a1133dc411d277be",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleSourceSensitivity/Variantce38fb497b39187fda3836b50f214cd5a41f5b68ae5786714ae2af679c9302b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PoleSourceSensitivityNamespaced.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PoleSourceSensitivityNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `99dc36794dce7394ea5d7e17a1133dc411d277be`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleSourceSensitivity/Variantce38fb497b39187fda3836b50f214cd5a41f5b68ae5786714ae2af679c9302b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleSourceSensitivity/Variantce38fb497b39187fda3836b50f214cd5a41f5b68ae5786714ae2af679c9302b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceLaplaceEndpoint` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leadingCoefficient](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PoleSourceSensitivityNamespaced.lean/declarations/leadingcoefficient.md) | 30 | `declaration-track:10a5052916925815faf06eef94065d71dd6a1c9d5679d9ad32d3988600ddd2ba` |
| 2 | `theorem` | [leading_coefficient_ne_zero](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PoleSourceSensitivityNamespaced.lean/declarations/leading-coefficient-ne-zero.md) | 34 | `result-track:e1d8850af07a7b7fcdc47bb018404ec5e91cbc953fb011d45107bf4453d440e0` |
| 3 | `theorem` | [source_laplace_scaled_eventually_ge_half](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PoleSourceSensitivityNamespaced.lean/declarations/source-laplace-scaled-eventually-ge-half.md) | 41 | `result-track:5c9c3c380bcb4382d842b7012438398812bebec9ef2ef21ec9d6dc4934c722f1` |
| 4 | `theorem` | [source_laplace_exponential_lower_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PoleSourceSensitivityNamespaced.lean/declarations/source-laplace-exponential-lower-bound.md) | 56 | `result-track:888a92a50a117e14107ef386552f0c22b3e41855ad3c860ca7cfd73a4ad82fa0` |
| 5 | `theorem` | [source_laplace_even](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PoleSourceSensitivityNamespaced.lean/declarations/source-laplace-even.md) | 82 | `result-track:84059307a47d4038808e4203c90096918e886436bd4bb9ab24c784f79f90468b` |
| 6 | `theorem` | [source_laplace_left_exponential_lower_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PoleSourceSensitivityNamespaced.lean/declarations/source-laplace-left-exponential-lower-bound.md) | 89 | `result-track:29827429ae32cab506bf69f5c4656051568fe3d13b43ce4a54aefca5ad2b0a45` |
| 7 | `theorem` | [source_laplace_off_axis_exponential_lower_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PoleSourceSensitivityNamespaced.lean/declarations/source-laplace-off-axis-exponential-lower-bound.md) | 105 | `result-track:dcf693432cfd22d90f16e4c36771264e6346db4b350a11a08ec5e20398c1dc0a` |
| 8 | `theorem` | [right_pole_has_no_positive_exponential_lower_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PoleSourceSensitivityNamespaced.lean/declarations/right-pole-has-no-positive-exponential-lower-bound.md) | 120 | `result-track:31fc5e0170101caa7a536b57c3b99c002d3b540cd7d787ded26b8f1804a7c400` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1e4c98766182e4ff23a60a62de2478dec5468af8e50a3703f621107159cea131 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleSourceSensitivity/Variantce38fb497b39187fda3836b50f214cd5a41f5b68ae5786714ae2af679c9302b1.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PoleSourceSensitivity/Variantce38fb497b39187fda3836b50f214cd5a41f5b68ae5786714ae2af679c9302b1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
