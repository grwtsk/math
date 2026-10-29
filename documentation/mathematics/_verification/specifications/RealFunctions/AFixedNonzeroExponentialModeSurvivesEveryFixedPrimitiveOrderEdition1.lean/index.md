# Verification target: AFixed Nonzero Exponential Mode Survives Every Fixed Primitive Order Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0216c0b6e5bbdddc1f34e6a45d5647e28d359ac0",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FixedModePrimitives/Variant577ade4d3cee93ff645781fb3be155ed6d744e5084bd706a3899c33f2a148224.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/AFixedNonzeroExponentialModeSurvivesEveryFixedPrimitiveOrderEdition1.lean/index.md) · [Full source](../../../../RealFunctions/AFixedNonzeroExponentialModeSurvivesEveryFixedPrimitiveOrderEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0216c0b6e5bbdddc1f34e6a45d5647e28d359ac0`.

Source path: `GRWTSK/Analysis/FixedModePrimitives/Variant577ade4d3cee93ff645781fb3be155ed6d744e5084bd706a3899c33f2a148224.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FixedModePrimitives/Variant577ade4d3cee93ff645781fb3be155ed6d744e5084bd706a3899c33f2a148224.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.FiniteMobiusJet` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primitive](../../../../RealFunctions/AFixedNonzeroExponentialModeSurvivesEveryFixedPrimitiveOrderEdition1.lean/declarations/primitive.md) | 27 | `declaration-track:ec1a764f18278b70a990f5f7631b8e0622523bb0f40395d5532639b11fbda79b` |
| 2 | `theorem` | [order_zero](../../../../RealFunctions/AFixedNonzeroExponentialModeSurvivesEveryFixedPrimitiveOrderEdition1.lean/declarations/order-zero.md) | 29 | `result-track:f4bb4b1629dea63516a3b85d44e8af0286935f1edc49a2cf1f5bcd19cb30c788` |
| 3 | `theorem` | [primitive_derivative](../../../../RealFunctions/AFixedNonzeroExponentialModeSurvivesEveryFixedPrimitiveOrderEdition1.lean/declarations/primitive-derivative.md) | 32 | `result-track:10a1aaf1cc72be5adc093b2bb4931ee36231817b6c9d6859ed75cf88033f8f63` |
| 4 | `theorem` | [exact_real_time_norm](../../../../RealFunctions/AFixedNonzeroExponentialModeSurvivesEveryFixedPrimitiveOrderEdition1.lean/declarations/exact-real-time-norm.md) | 41 | `result-track:5c405226437d0552fa39a70c9c027b7b27ffc29160fa20df4d9a7ea96845ad7e` |
| 5 | `theorem` | [unchanged_exponential_rate](../../../../RealFunctions/AFixedNonzeroExponentialModeSurvivesEveryFixedPrimitiveOrderEdition1.lean/declarations/unchanged-exponential-rate.md) | 45 | `result-track:1c1eec4a02c885438ddb6b1f262d546677c742e335712b4dbd26f0f1a3604255` |
| 6 | `theorem` | [faster_exponential_comparison](../../../../RealFunctions/AFixedNonzeroExponentialModeSurvivesEveryFixedPrimitiveOrderEdition1.lean/declarations/faster-exponential-comparison.md) | 49 | `result-track:41734622280614296cb4e63ef864db695b64be00ae7689c6babc421fca46b0f2` |
| 7 | `theorem` | [no_eventual_smaller_rate_cap](../../../../RealFunctions/AFixedNonzeroExponentialModeSurvivesEveryFixedPrimitiveOrderEdition1.lean/declarations/no-eventual-smaller-rate-cap.md) | 63 | `result-track:5f3fff88854887b05631fbad08217dbc8f2ef1cf8a272a6f28924d362a84224c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=36d49f2fc523a8919ac80b70d33e5fcadf75426a52f93d428a8b6ca040ca311b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FixedModePrimitives/Variant577ade4d3cee93ff645781fb3be155ed6d744e5084bd706a3899c33f2a148224.lean","GRWTSK/_verification/specifications/Analysis/FixedModePrimitives/Variant577ade4d3cee93ff645781fb3be155ed6d744e5084bd706a3899c33f2a148224.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
