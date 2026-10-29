# Verification target: Every Fixed Exponential Loss Does Not Imply AFixed Polynomial Loss Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e6cb8d55094a38ebbd0c0b1f5c8b945d2000afb0",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SubexponentialCountermodel/Variantdb843002d63abc9ffc1d29f687b3155f0640cdcb0ed3388b737b91f99cbf9e01.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/EveryFixedExponentialLossDoesNotImplyAFixedPolynomialLossEdition2.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/EveryFixedExponentialLossDoesNotImplyAFixedPolynomialLossEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e6cb8d55094a38ebbd0c0b1f5c8b945d2000afb0`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SubexponentialCountermodel/Variantdb843002d63abc9ffc1d29f687b3155f0640cdcb0ed3388b737b91f99cbf9e01.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SubexponentialCountermodel/Variantdb843002d63abc9ffc1d29f687b3155f0640cdcb0ed3388b737b91f99cbf9e01.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.PolynomialMertensReduction` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [comparisonProfile](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/EveryFixedExponentialLossDoesNotImplyAFixedPolynomialLossEdition2.lean/declarations/comparisonprofile.md) | 23 | `declaration-track:2686c2f13a1e24e373f4e6dc558274861d63a8f67e61d027086384bbdb3003f0` |
| 2 | `theorem` | [explicit_exponential_loss](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/EveryFixedExponentialLossDoesNotImplyAFixedPolynomialLossEdition2.lean/declarations/explicit-exponential-loss.md) | 25 | `result-track:39385f86e4b2a69352586291a79a410cd9b2f2da105d000680fcf0291412c282` |
| 3 | `theorem` | [powered_profile_epsilon_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/EveryFixedExponentialLossDoesNotImplyAFixedPolynomialLossEdition2.lean/declarations/powered-profile-epsilon-bound.md) | 37 | `result-track:ef200504c380307e9966648dffb3534e0e2702e8e95bc034499d11fa096579ea` |
| 4 | `theorem` | [every_fixed_exponential_loss](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/EveryFixedExponentialLossDoesNotImplyAFixedPolynomialLossEdition2.lean/declarations/every-fixed-exponential-loss.md) | 52 | `result-track:0ea36a688d002f06490f943b6841c6dbe2f0e504efd20468428f652d7e3200c1` |
| 5 | `theorem` | [exceeds_every_polynomial](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/EveryFixedExponentialLossDoesNotImplyAFixedPolynomialLossEdition2.lean/declarations/exceeds-every-polynomial.md) | 71 | `result-track:5e3a56787e46b70a14fac50f4f79d40fed84ea0be480b97f91f5709ab8e461de` |
| 6 | `theorem` | [no_eventual_polynomial_upper](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/EveryFixedExponentialLossDoesNotImplyAFixedPolynomialLossEdition2.lean/declarations/no-eventual-polynomial-upper.md) | 90 | `result-track:e27d6071ac27649a418d370f2f604528efb4e82d2fa48dcf08ec9ebed319f6f2` |
| 7 | `theorem` | [exceeds_every_real_power](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/EveryFixedExponentialLossDoesNotImplyAFixedPolynomialLossEdition2.lean/declarations/exceeds-every-real-power.md) | 95 | `result-track:db2f6ce1822939d10ff73f8dd8956c2ed6aa4dd3bfc0ae26e1208d47646be8a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=294ab6af963a17aba4bb08bc50bd3a1e9ffea1dea855abd477ea1c1e44bda6ed -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SubexponentialCountermodel/Variantdb843002d63abc9ffc1d29f687b3155f0640cdcb0ed3388b737b91f99cbf9e01.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SubexponentialCountermodel/Variantdb843002d63abc9ffc1d29f687b3155f0640cdcb0ed3388b737b91f99cbf9e01.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
