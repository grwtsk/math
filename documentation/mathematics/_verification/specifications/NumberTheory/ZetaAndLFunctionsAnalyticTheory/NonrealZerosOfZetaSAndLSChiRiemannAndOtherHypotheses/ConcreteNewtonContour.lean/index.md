# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonContour

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad5f0a6f9f5f70da1032bca9b35aa6b614a1eb77",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonContour.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ConcreteNewtonContour.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ConcreteNewtonContour.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad5f0a6f9f5f70da1032bca9b35aa6b614a1eb77`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonContour.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ConcreteNewtonContour.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonRegularPart`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ConcreteNewtonRegularPart.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Complex.IsolatedSimpleZeroContour`](../../../../../../FunctionsOfAComplexVariable/IsolatedSimpleZeroContour.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [inner_root_in_outer_ball](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ConcreteNewtonContour.lean/declarations/inner-root-in-outer-ball.md) | 37 | `result-track:db0649044eb74e03cd4d71f4e46e15cf5c457f6e75dc035404a0586eeb5827d4` |
| 2 | `theorem` | [outer_nonzero_away](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ConcreteNewtonContour.lean/declarations/outer-nonzero-away.md) | 47 | `result-track:23b5e462bd97960d2c2a0597a3fd19646735873346207289ed17b686bf0721ad` |
| 3 | `theorem` | [local_zero_with_analytic_regularPart](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ConcreteNewtonContour.lean/declarations/local-zero-with-analytic-regularpart.md) | 58 | `result-track:fee927df5ad49d515638c2582d4fe481c74f3469947114cd096f19dff9fc50ac` |
| 4 | `theorem` | [outer_log_derivative_circleIntegral](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ConcreteNewtonContour.lean/declarations/outer-log-derivative-circleintegral.md) | 90 | `result-track:45855d1300b66ee6caf9ae75b61357bdec9822ce365dff9b52562656a548c2fe` |
| 5 | `theorem` | [normalized_outer_index](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ConcreteNewtonContour.lean/declarations/normalized-outer-index.md) | 102 | `result-track:34a5b2f5748fed4687c29c69514c0456330abb4ab641cb1e25eddc9ef8c9a99f` |
| 6 | `theorem` | [centered_comparison_circleIntegral_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ConcreteNewtonContour.lean/declarations/centered-comparison-circleintegral-zero.md) | 112 | `result-track:d43cb08c554958c6711e31ec315a8b02c316d70e6177271b1d5ab2493cbead96` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a07f2a3e08ed5eb411ff95291b544fcec10173821b97229020a085322101e6b4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonContour.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/ConcreteNewtonContour.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
