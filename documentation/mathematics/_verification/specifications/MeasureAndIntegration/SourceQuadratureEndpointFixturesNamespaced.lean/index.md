# Verification target: Source Quadrature Endpoint Fixtures Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b85148de42d50efebb9f9a81c9760d9f65d04ad",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceQuadratureEndpointFixtures/Variantfb2b0ebac729f255f44a9298ffbf51712c4c28581e3a8da168c54418b78f3fad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceQuadratureEndpointFixturesNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceQuadratureEndpointFixturesNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b85148de42d50efebb9f9a81c9760d9f65d04ad`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceQuadratureEndpointFixtures/Variantfb2b0ebac729f255f44a9298ffbf51712c4c28581e3a8da168c54418b78f3fad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceQuadratureEndpointFixtures/Variantfb2b0ebac729f255f44a9298ffbf51712c4c28581e3a8da168c54418b78f3fad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceFractionalQuadrature` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cellInterior](../../../../MeasureAndIntegration/SourceQuadratureEndpointFixturesNamespaced.lean/declarations/cellinterior.md) | 30 | `declaration-track:6d99b6047bca470d12e61ed08e4a87e5733cee15f51880dc9a9ed65648c7a645` |
| 2 | `theorem` | [cellInterior_endpoints](../../../../MeasureAndIntegration/SourceQuadratureEndpointFixturesNamespaced.lean/declarations/cellinterior-endpoints.md) | 32 | `result-track:076b6ba71a548156f85cf84dbe3a8ca8601a3e6508d041cd93dc3cb9518db74e` |
| 3 | `theorem` | [cellInterior_integral](../../../../MeasureAndIntegration/SourceQuadratureEndpointFixturesNamespaced.lean/declarations/cellinterior-integral.md) | 35 | `result-track:61171311889af27804a59296b38344c2e0ef3971b4cc1b552cd2ceb96f524dff` |
| 4 | `theorem` | [zero_endpoints_do_not_erase_continuous_tail](../../../../MeasureAndIntegration/SourceQuadratureEndpointFixturesNamespaced.lean/declarations/zero-endpoints-do-not-erase-continuous-tail.md) | 53 | `result-track:52543e2cf94d660df4248ebf52605c720d27071c021e5e6b64de394c9231d3e6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=19154a6b5ede5c5e72b8d341c232a54a5bb37f5892d5ef7f52047cda49b3c41c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceQuadratureEndpointFixtures/Variantfb2b0ebac729f255f44a9298ffbf51712c4c28581e3a8da168c54418b78f3fad.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceQuadratureEndpointFixtures/Variantfb2b0ebac729f255f44a9298ffbf51712c4c28581e3a8da168c54418b78f3fad.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
