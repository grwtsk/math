# Verification target: Source Actual Riesz Zero Pole

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0f2456b37e3798be4484a6de9babc2e6ae27d318",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/10SourceActualRieszZeroPole/Variantb7bf4f01754bfffd1a07fb9409878662b7a58a5c46cc042a78c4c676e86f4ba0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualRieszZeroPole.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualRieszZeroPole.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0f2456b37e3798be4484a6de9babc2e6ae27d318`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/10SourceActualRieszZeroPole/Variantb7bf4f01754bfffd1a07fb9409878662b7a58a5c46cc042a78c4c676e86f4ba0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/10SourceActualRieszZeroPole/Variantb7bf4f01754bfffd1a07fb9409878662b7a58a5c46cc042a78c4c676e86f4ba0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualRieszCriticalCenter` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Meromorphic.Order` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [actual_zero_ne_one](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualRieszZeroPole.lean/declarations/actual-zero-ne-one.md) | 18 | `result-track:c3f24b3b41c40e2003caeb761c5d62b09a05dabba99ec2bf651171ddc494be86` |
| 2 | `theorem` | [actual_zero_finite_order](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualRieszZeroPole.lean/declarations/actual-zero-finite-order.md) | 25 | `result-track:21969b398a0b3476af1da42550d6b718ec4c616e3515f8c1d431d4ef581345d8` |
| 3 | `theorem` | [actualRiesz_zero_order_and_multiplicity](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualRieszZeroPole.lean/declarations/actualriesz-zero-order-and-multiplicity.md) | 33 | `result-track:8ac30ac3327d511013c17357a7bc01cf0c3c5f2e0e8f40c07e8be2a791aa7de5` |
| 4 | `theorem` | [actual_zeta_logDeriv_order](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualRieszZeroPole.lean/declarations/actual-zeta-logderiv-order.md) | 41 | `result-track:f4c9fb1384cb6500286417baee076dcafa6684bf79acdd80cb0524abb88cba56` |
| 5 | `theorem` | [translated_neg_logDeriv_meromorphic](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualRieszZeroPole.lean/declarations/translated-neg-logderiv-meromorphic.md) | 54 | `result-track:38e61c498815bbd1a7c979507a49d5a00fb9893680ea0be50941781c6c99ad91` |
| 6 | `theorem` | [translated_neg_logDeriv_order](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualRieszZeroPole.lean/declarations/translated-neg-logderiv-order.md) | 68 | `result-track:97a636d3ca3a5eaeac4f4be412e38630426ed59389bb579cafe1f5eef687a281` |
| 7 | `theorem` | [rational_subtraction_analytic](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualRieszZeroPole.lean/declarations/rational-subtraction-analytic.md) | 79 | `result-track:53ba3ef234da4e5fa6d63d9f79e6b8130e111aa4f50468f75e3329f10d784b2c` |
| 8 | `theorem` | [numerator_meromorphic](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualRieszZeroPole.lean/declarations/numerator-meromorphic.md) | 90 | `result-track:3f5633698673d9a084ffaee33a0e3e6ae39eac9a2a970d925fdbce8de0e3bc24` |
| 9 | `theorem` | [actualRieszCriticalNumerator_order_at_actual_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualRieszZeroPole.lean/declarations/actualrieszcriticalnumerator-order-at-actual-zero.md) | 98 | `result-track:7a4d0dbccd687c8be0eb1ccbf888efc82bdfc508747c74f4d1047e29e4e5ad42` |
| 10 | `theorem` | [actualRieszCriticalNumerator_no_extension_at_actual_right_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualRieszZeroPole.lean/declarations/actualrieszcriticalnumerator-no-extension-at-actual-right-zero.md) | 118 | `result-track:8a11da27b321ae01c44763fe2a4f9a20f7b7e3803d9fd2e03065e31dd8b32f56` |
| 11 | `theorem` | [actual_right_point_ne_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualRieszZeroPole.lean/declarations/actual-right-point-ne-zero.md) | 132 | `result-track:c056e1930a7914470c643c8ea473193ee598f0cc94bb76b1a5c9e46c3222a0f7` |
| 12 | `theorem` | [centered_numerator_meromorphic](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualRieszZeroPole.lean/declarations/centered-numerator-meromorphic.md) | 140 | `result-track:60cc227086518e3b8954443a2969435866248754f5ada0c8cde83a3e00ea6161` |
| 13 | `theorem` | [centered_numerator_order](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualRieszZeroPole.lean/declarations/centered-numerator-order.md) | 147 | `result-track:04c96114f160fa4436d91031074f07defb222eaaecd82102c7939d4665ca4b49` |
| 14 | `theorem` | [regularization_eventually_eq](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualRieszZeroPole.lean/declarations/regularization-eventually-eq.md) | 172 | `result-track:d3d5aecc35088e5770da8c99d4dc268247751a324698491dc702f760f264b46c` |
| 15 | `theorem` | [regularization_meromorphic](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualRieszZeroPole.lean/declarations/regularization-meromorphic.md) | 182 | `result-track:12c26084b0d08d7d61bf2e9df7c0bc8c4fb75f86bfcad24730598c81ea178012` |
| 16 | `theorem` | [actualRieszCriticalRegularization_order_at_actual_right_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualRieszZeroPole.lean/declarations/actualrieszcriticalregularization-order-at-actual-right-zero.md) | 190 | `result-track:8e85ccd9798961656210749984e292682b15d408765c44090c1e59cb4e79b73c` |
| 17 | `theorem` | [actualRieszCriticalRegularization_no_extension_at_actual_right_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualRieszZeroPole.lean/declarations/actualrieszcriticalregularization-no-extension-at-actual-right-zero.md) | 206 | `result-track:35c81e0a2a3141914dd5840ed54915864ef2182bab08e48c715fbc453647cbd2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6b510675d8e9c0e35f60af08b9b8693a4a6cfb9626937fb5e74b33239adc2f1c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/10SourceActualRieszZeroPole/Variantb7bf4f01754bfffd1a07fb9409878662b7a58a5c46cc042a78c4c676e86f4ba0.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/10SourceActualRieszZeroPole/Variantb7bf4f01754bfffd1a07fb9409878662b7a58a5c46cc042a78c4c676e86f4ba0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
