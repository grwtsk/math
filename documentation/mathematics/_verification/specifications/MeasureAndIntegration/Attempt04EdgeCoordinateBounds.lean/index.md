# Verification target: Attempt04 Edge Coordinate Bounds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "05114a9e07fb892463f837696c8557837b3fbee1",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt04/Variantf381c78fb8aa2e9bf77aeaf413cb73db1947a4e037f0bf4cf61e6a2a1c3737ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/Attempt04EdgeCoordinateBounds.lean/index.md) · [Full source](../../../../MeasureAndIntegration/Attempt04EdgeCoordinateBounds.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `05114a9e07fb892463f837696c8557837b3fbee1`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt04/Variantf381c78fb8aa2e9bf77aeaf413cb73db1947a4e037f0bf4cf61e6a2a1c3737ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt04/Variantf381c78fb8aa2e9bf77aeaf413cb73db1947a4e037f0bf4cf61e6a2a1c3737ca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualMovingCriticalIncrement` — import line 1; external provider; requires a separately pinned dependency.
- `SourceActualEdgeCorrelationDerivative` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [edge_coordinate_bounds](../../../../MeasureAndIntegration/Attempt04EdgeCoordinateBounds.lean/declarations/edge-coordinate-bounds.md) | 24 | `result-track:05372224995362bf429c379b56c9510ce99537c8c4ac06cdd4b0197966a78d15` |
| 2 | `theorem` | [actualEndpointPolynomial_edge_lower](../../../../MeasureAndIntegration/Attempt04EdgeCoordinateBounds.lean/declarations/actualendpointpolynomial-edge-lower.md) | 34 | `result-track:c995595258380cabeccff5904985c106d4f9d2cd8e6ceb2ccb5bda4f70af89e8` |
| 3 | `theorem` | [actualEndpointDerivative_edge_lower](../../../../MeasureAndIntegration/Attempt04EdgeCoordinateBounds.lean/declarations/actualendpointderivative-edge-lower.md) | 59 | `result-track:37e761237463415d42eeefbfb908ba7ea3a3356acf20aa31f5d05485496a040f` |
| 4 | `theorem` | [actualEndpointCritical_edge_upper](../../../../MeasureAndIntegration/Attempt04EdgeCoordinateBounds.lean/declarations/actualendpointcritical-edge-upper.md) | 99 | `result-track:55f5334f9ce855c8c29ab4f94f9296cab786ff31fbf0fc0a6ce2ae742bd63ebe` |
| 5 | `theorem` | [overlap_moment](../../../../MeasureAndIntegration/Attempt04EdgeCoordinateBounds.lean/declarations/overlap-moment.md) | 109 | `result-track:7d5b0f2dca3d5b16084a347ff308e449db597fb8be58ff62714c7695db772979` |
| 6 | `theorem` | [actualCriticalKernel_edge_upper](../../../../MeasureAndIntegration/Attempt04EdgeCoordinateBounds.lean/declarations/actualcriticalkernel-edge-upper.md) | 123 | `result-track:597f1e27f50c0c9f93f3a2df37b0f7037e94394010d2f198a5d9bca7f1bbc170` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3c41b33604524cf62147717b3708f47cc05d0c5df6e24bd445d32291a5b72975 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt04/Variantf381c78fb8aa2e9bf77aeaf413cb73db1947a4e037f0bf4cf61e6a2a1c3737ca.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt04/Variantf381c78fb8aa2e9bf77aeaf413cb73db1947a4e037f0bf4cf61e6a2a1c3737ca.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
