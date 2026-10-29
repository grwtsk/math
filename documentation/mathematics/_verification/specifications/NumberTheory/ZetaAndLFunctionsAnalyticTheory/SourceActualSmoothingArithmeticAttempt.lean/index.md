# Verification target: Source Actual Smoothing Arithmetic Attempt

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "21e52f984dd6f68006d266d7135a2c15fefb7bc7",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSmoothingArithmeticAttempt/Variantd0477e94345f9fd859eb78f5389779ec7b13896105bfa43b5baae0b28ce7a045.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualSmoothingArithmeticAttempt.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualSmoothingArithmeticAttempt.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `21e52f984dd6f68006d266d7135a2c15fefb7bc7`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSmoothingArithmeticAttempt/Variantd0477e94345f9fd859eb78f5389779ec7b13896105bfa43b5baae0b28ce7a045.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSmoothingArithmeticAttempt/Variantd0477e94345f9fd859eb78f5389779ec7b13896105bfa43b5baae0b28ce7a045.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualClosedXiSignedMoment` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualSmoothingCompanion](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualSmoothingArithmeticAttempt.lean/declarations/actualsmoothingcompanion.md) | 21 | `declaration-track:635b74a239c1adaa93ab893d9cd4c84234ebf8b28e8d44ad7904227b48a73918` |
| 2 | `theorem` | [actual_gamma_boundary_bounds](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualSmoothingArithmeticAttempt.lean/declarations/actual-gamma-boundary-bounds.md) | 26 | `result-track:64673b4c19f89546e788ee10d7f3767afd42397292e7482d04293bd3fad167ac` |
| 3 | `theorem` | [actual_moment_eq_residual_add_companion](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualSmoothingArithmeticAttempt.lean/declarations/actual-moment-eq-residual-add-companion.md) | 58 | `result-track:60ddf3ae9e6c7180b3e7c24cd2f30ca3f6c2de244100003c668a52d8c84f828b` |
| 4 | `theorem` | [actual_moment_eq_boundary_sub_Mangoldt_work](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualSmoothingArithmeticAttempt.lean/declarations/actual-moment-eq-boundary-sub-mangoldt-work.md) | 68 | `result-track:1761a8df309119ca96b77347ca617d4c5b5e43d4d7cbdc3a0326dc5784601cb1` |
| 5 | `theorem` | [actual_smoothing_companion_bounds](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualSmoothingArithmeticAttempt.lean/declarations/actual-smoothing-companion-bounds.md) | 78 | `result-track:c2f2c4fcb4fa72d2a2345be12b3addeb219cac11a22cd999d83fb5e56ab4d62d` |
| 6 | `theorem` | [actual_moment_residual_comparison](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualSmoothingArithmeticAttempt.lean/declarations/actual-moment-residual-comparison.md) | 91 | `result-track:f9f88e20c56e5158e076653fd63799a10ae12832d33e201ae96bb66daa12e877` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6f0f4b5618d5f9bcd3f8464caf8df9d05109cba05ad9c8624ee528a03216c147 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSmoothingArithmeticAttempt/Variantd0477e94345f9fd859eb78f5389779ec7b13896105bfa43b5baae0b28ce7a045.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSmoothingArithmeticAttempt/Variantd0477e94345f9fd859eb78f5389779ec7b13896105bfa43b5baae0b28ce7a045.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
