# Verification target: Actual Laurent Slope Attempt01 Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a5cb971df5a41d6501b4713ad1e0e81b0f1bbc39",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt01/Variant206465d7b271e96959791652777978ba7d7c76e6434f2e806294f72d9089ac7d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ActualLaurentSlopeAttempt01SourceEdition1.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ActualLaurentSlopeAttempt01SourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a5cb971df5a41d6501b4713ad1e0e81b0f1bbc39`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt01/Variant206465d7b271e96959791652777978ba7d7c76e6434f2e806294f72d9089ac7d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt01/Variant206465d7b271e96959791652777978ba7d7c76e6434f2e806294f72d9089ac7d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Harmonic.ZetaAsymp` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Slope` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [regularNegativeLogDerivative](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ActualLaurentSlopeAttempt01SourceEdition1.lean/declarations/regularnegativelogderivative.md) | 11 | `declaration-track:61c137ddc62ef87b52c0b0bcef9be67c54825527aa0fedb4b5b3e1871b3f8ab6` |
| 2 | `theorem` | [actual_regular_zeta_derivative](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ActualLaurentSlopeAttempt01SourceEdition1.lean/declarations/actual-regular-zeta-derivative.md) | 14 | `result-track:9ed77c5606f6b2dfb47b0af6ccce971759fbb05fc4c505704ee2ecc121e74314` |
| 3 | `theorem` | [actual_regular_zeta_second_derivative_at_one](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ActualLaurentSlopeAttempt01SourceEdition1.lean/declarations/actual-regular-zeta-second-derivative-at-one.md) | 20 | `result-track:7cc19c0ef47341e0281985d0c1afe9bc1a72124e87b84a2695a1f48a7ac7a985` |
| 4 | `theorem` | [actual_regular_negative_value](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ActualLaurentSlopeAttempt01SourceEdition1.lean/declarations/actual-regular-negative-value.md) | 31 | `result-track:b2b4b214a088d90d200264503c7e78aa6592783a15aa9c42999b6374e98bed5e` |
| 5 | `theorem` | [actual_regular_negative_derivative](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ActualLaurentSlopeAttempt01SourceEdition1.lean/declarations/actual-regular-negative-derivative.md) | 35 | `result-track:75d3494fe2c646a4dc553b5838e25fce32e2882e52432649c583098bb577a121` |
| 6 | `theorem` | [actual_regular_negative_slope](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ActualLaurentSlopeAttempt01SourceEdition1.lean/declarations/actual-regular-negative-slope.md) | 45 | `result-track:e6191457418629d96423ddf65c49ff928ff9ed1cd04889b98793e62984cb9b54` |
| 7 | `theorem` | [actual_negative_log_regularization](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ActualLaurentSlopeAttempt01SourceEdition1.lean/declarations/actual-negative-log-regularization.md) | 53 | `result-track:3e825a0a8c857ad928bb4461af9199bf0798024f02646ed53cc3c24c961b867a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=746900c6822892aab3925a95690166b8d14c19cc5d8498aef50708b0c1b91d75 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt01/Variant206465d7b271e96959791652777978ba7d7c76e6434f2e806294f72d9089ac7d.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt01/Variant206465d7b271e96959791652777978ba7d7c76e6434f2e806294f72d9089ac7d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
