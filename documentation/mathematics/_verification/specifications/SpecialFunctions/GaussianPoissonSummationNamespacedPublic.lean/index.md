# Verification target: Gaussian Poisson Summation Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b309481910fddf6f1f10264dc24e42a82300858d",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/PoissonSummation/Variant0c5183f6acc8ee864c601c52f80c58dbf81bc6cdc19b5dc236f62576bc82a5ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/GaussianPoissonSummationNamespacedPublic.lean/index.md) · [Full source](../../../../SpecialFunctions/GaussianPoissonSummationNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b309481910fddf6f1f10264dc24e42a82300858d`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/PoissonSummation/Variant0c5183f6acc8ee864c601c52f80c58dbf81bc6cdc19b5dc236f62576bc82a5ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/PoissonSummation/Variant0c5183f6acc8ee864c601c52f80c58dbf81bc6cdc19b5dc236f62576bc82a5ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [rexp_neg_quadratic_isLittleO_rpow_atTop](../../../../SpecialFunctions/GaussianPoissonSummationNamespacedPublic.lean/declarations/rexp-neg-quadratic-islittleo-rpow-attop.md) | 45 | `result-track:0c9ee0ae60f7359a394ac5c67009ef57861d9874e28b14f1625bb14abcf1e085` |
| 2 | `lemma` | [cexp_neg_quadratic_isLittleO_rpow_atTop](../../../../SpecialFunctions/GaussianPoissonSummationNamespacedPublic.lean/declarations/cexp-neg-quadratic-islittleo-rpow-attop.md) | 57 | `result-track:ec532e6283caa52a087f2ce38b734e4138bcf45d3394a996fd26cf000ae6e17c` |
| 3 | `lemma` | [cexp_neg_quadratic_isLittleO_abs_rpow_cocompact](../../../../SpecialFunctions/GaussianPoissonSummationNamespacedPublic.lean/declarations/cexp-neg-quadratic-islittleo-abs-rpow-cocompact.md) | 64 | `result-track:bb463bf98c5ff7369c3ac96214376a652a69bd7384e67d515051f23e8c188533` |
| 4 | `theorem` | [tendsto_rpow_abs_mul_exp_neg_mul_sq_cocompact](../../../../SpecialFunctions/GaussianPoissonSummationNamespacedPublic.lean/declarations/tendsto-rpow-abs-mul-exp-neg-mul-sq-cocompact.md) | 76 | `result-track:ec16d92e78ce9678c8ba99d041f3a5c5998d1803140965880ed4da19ed2e18e3` |
| 5 | `theorem` | [isLittleO_exp_neg_mul_sq_cocompact](../../../../SpecialFunctions/GaussianPoissonSummationNamespacedPublic.lean/declarations/islittleo-exp-neg-mul-sq-cocompact.md) | 86 | `result-track:833595ab4a750e3536b607e896ee23e12de9da2e87a81afd8691658585e13c6b` |
| 6 | `theorem` | [Complex.tsum_exp_neg_quadratic](../../../../SpecialFunctions/GaussianPoissonSummationNamespacedPublic.lean/declarations/complex-tsum-exp-neg-quadratic.md) | 94 | `result-track:dfeefb1ad9f7083c817d43b39402581127d7d7ec62c648a2b0adab23d330419b` |
| 7 | `theorem` | [Complex.tsum_exp_neg_mul_int_sq](../../../../SpecialFunctions/GaussianPoissonSummationNamespacedPublic.lean/declarations/complex-tsum-exp-neg-mul-int-sq.md) | 125 | `result-track:a3178cdf3eaffa8cc56273ee5f043ce2b4c3e01a77814e5a96a9959ff5066923` |
| 8 | `theorem` | [Real.tsum_exp_neg_mul_int_sq](../../../../SpecialFunctions/GaussianPoissonSummationNamespacedPublic.lean/declarations/real-tsum-exp-neg-mul-int-sq.md) | 130 | `result-track:e40e6e8b0c2c3379fe7f218da38d5d8c48939cc1209bd30feb69f14e3b9fb530` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c5b54ffb8b0dc3900195221e052f860d2819079aa0ce30250387dfeb05ea0810 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/PoissonSummation/Variant0c5183f6acc8ee864c601c52f80c58dbf81bc6cdc19b5dc236f62576bc82a5ac.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/PoissonSummation/Variant0c5183f6acc8ee864c601c52f80c58dbf81bc6cdc19b5dc236f62576bc82a5ac.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
