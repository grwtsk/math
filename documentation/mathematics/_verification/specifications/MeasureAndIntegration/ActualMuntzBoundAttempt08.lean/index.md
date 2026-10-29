# Verification target: Actual Muntz Bound Attempt08

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a984526e9a1cc5a0f2dfa5009eaeda806c4ef7ba",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMuntzBoundAttempt08/Variantc9c842b0896fe545cd3cfd42456525460abd0169e545aed2ea7e59d25fc51017.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ActualMuntzBoundAttempt08.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ActualMuntzBoundAttempt08.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a984526e9a1cc5a0f2dfa5009eaeda806c4ef7ba`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualMuntzBoundAttempt08/Variantc9c842b0896fe545cd3cfd42456525460abd0169e545aed2ea7e59d25fc51017.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualMuntzBoundAttempt08/Variantc9c842b0896fe545cd3cfd42456525460abd0169e545aed2ea7e59d25fc51017.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualMuntzInventory` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.AbelSummation` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [actual_source_interval_integral_zero](../../../../MeasureAndIntegration/ActualMuntzBoundAttempt08.lean/declarations/actual-source-interval-integral-zero.md) | 13 | `result-track:aa1dbbe8c4cf94eb150b42631f82eb1f65d96b7bcd1690fcf120b1e2cce1c4b6` |
| 2 | `theorem` | [scaled_source_interval_integral_zero](../../../../MeasureAndIntegration/ActualMuntzBoundAttempt08.lean/declarations/scaled-source-interval-integral-zero.md) | 37 | `result-track:ec9b3949020a54508f03e35e74b573a56deb4e3ef8cfae9d846b807bc985a636` |
| 3 | `theorem` | [actual_scaled_Abel](../../../../MeasureAndIntegration/ActualMuntzBoundAttempt08.lean/declarations/actual-scaled-abel.md) | 42 | `result-track:493a855fd28a56825a4786cd8594f8ea3ca47deee887dca35b35a51c4ae58e78` |
| 4 | `theorem` | [actual_scaled_linear_derivative_integral_zero](../../../../MeasureAndIntegration/ActualMuntzBoundAttempt08.lean/declarations/actual-scaled-linear-derivative-integral-zero.md) | 69 | `result-track:b7540897eeee417991d76f46c67c24bfd4b513510be3884020ed1d4733bd114b` |
| 5 | `def` | [eulerWeight](../../../../MeasureAndIntegration/ActualMuntzBoundAttempt08.lean/declarations/eulerweight.md) | 89 | `declaration-track:8cd01599d9e49bb2f996a8280dd04c63efcb664c26f5b4cd2eaf00971e7d7aa5` |
| 6 | `theorem` | [eulerWeight_abs_le_one](../../../../MeasureAndIntegration/ActualMuntzBoundAttempt08.lean/declarations/eulerweight-abs-le-one.md) | 91 | `result-track:efc25468eab1797102eeb00a7e8e464cac6242a95526f87a4240379d2cc73e8a` |
| 7 | `theorem` | [scaled_residual_integrable](../../../../MeasureAndIntegration/ActualMuntzBoundAttempt08.lean/declarations/scaled-residual-integrable.md) | 98 | `result-track:90ca9fe14445c4877c1f87348b3d95243f9ca08b260b4da059a4f55deb0b4b5d` |
| 8 | `theorem` | [actual_scaled_Euler](../../../../MeasureAndIntegration/ActualMuntzBoundAttempt08.lean/declarations/actual-scaled-euler.md) | 117 | `result-track:8192fb8897086cd2bfdb303ca7d0a1ba9203d6acf7ee25468198ff2db9a68a5d` |
| 9 | `theorem` | [actualMuntz_abs_le_scaled_derivative](../../../../MeasureAndIntegration/ActualMuntzBoundAttempt08.lean/declarations/actualmuntz-abs-le-scaled-derivative.md) | 140 | `result-track:c87aceb2b230474b1c2225fa36041cb189d1c22009a4b7d572f82fd32ef59394` |
| 10 | `def` | [derivativeBudget](../../../../MeasureAndIntegration/ActualMuntzBoundAttempt08.lean/declarations/derivativebudget.md) | 160 | `declaration-track:7024d1f5aa2b04ab3ffaaacd70c23568e7602166579dfc43ff77e379ca7e387f` |
| 11 | `theorem` | [actual_derivative_abs_integrable](../../../../MeasureAndIntegration/ActualMuntzBoundAttempt08.lean/declarations/actual-derivative-abs-integrable.md) | 162 | `result-track:a07538c01d3766a0c39e8349437c068d73873ff8289d45929ce07736bf0cf609` |
| 12 | `theorem` | [derivativeBudget_nonneg](../../../../MeasureAndIntegration/ActualMuntzBoundAttempt08.lean/declarations/derivativebudget-nonneg.md) | 167 | `result-track:a480363254d6a89679f3b5de4df52475412695a81b48b64dfd06c720f92159d8` |
| 13 | `theorem` | [scaled_derivative_integral_eq](../../../../MeasureAndIntegration/ActualMuntzBoundAttempt08.lean/declarations/scaled-derivative-integral-eq.md) | 170 | `result-track:7c82de345c606390338e4c1d0dbc9354a4fbde140251c15715ebe7490ace176c` |
| 14 | `theorem` | [actualMuntz_abs_le_budget](../../../../MeasureAndIntegration/ActualMuntzBoundAttempt08.lean/declarations/actualmuntz-abs-le-budget.md) | 186 | `result-track:febde4a6ef2b67e94ece3573407b5a9a8c90e20cdfaa8edc85e47b7374e3d1d7` |
| 15 | `theorem` | [actualMuntz_memLp_global](../../../../MeasureAndIntegration/ActualMuntzBoundAttempt08.lean/declarations/actualmuntz-memlp-global.md) | 197 | `result-track:0fab64d17783cab4f802e3a1f0c15e90ab53f5705547321bdf09650025140832` |
| 16 | `theorem` | [actualMuntz_memLp_positive](../../../../MeasureAndIntegration/ActualMuntzBoundAttempt08.lean/declarations/actualmuntz-memlp-positive.md) | 217 | `result-track:6612fad8993abb1d13bb817132dc3785c8c55fc3de8c81b2abc7b9162e5cc3f4` |
| 17 | `theorem` | [actualMuntz_square_integrable](../../../../MeasureAndIntegration/ActualMuntzBoundAttempt08.lean/declarations/actualmuntz-square-integrable.md) | 221 | `result-track:1a04b16251c320170a6c70ee5f6164364e31cd6b545e5b347c62aea7e9ae564f` |
| 18 | `def` | [actualMuntzL2](../../../../MeasureAndIntegration/ActualMuntzBoundAttempt08.lean/declarations/actualmuntzl2.md) | 226 | `declaration-track:bb47edc1e4643086265c45fb0aab757d303cb239d9f4a0943995fc26f9ab43af` |
| 19 | `theorem` | [actualMuntzL2_ae](../../../../MeasureAndIntegration/ActualMuntzBoundAttempt08.lean/declarations/actualmuntzl2-ae.md) | 229 | `result-track:76059ce2c4a15539edd4558af3e13e0c0be8b2203e3cfa61f38c0db1873c97d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ce36855487e37f069e2b33eb2663af5daa12f11b06348ee18bcd28a0a5550147 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/ActualMuntzBoundAttempt08/Variantc9c842b0896fe545cd3cfd42456525460abd0169e545aed2ea7e59d25fc51017.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/ActualMuntzBoundAttempt08/Variantc9c842b0896fe545cd3cfd42456525460abd0169e545aed2ea7e59d25fc51017.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
