# Verification target: Attempt03 Namespaced Edge Coordinate Bounds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e081d908ba0eb813c2ccb2b89cf649ff29294b7f",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variant4b5eb946a85cd3b95dd1f5b5d6f1e9ad102a5d15a4fc19d64fa3a9939e8a8f60.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/Attempt03NamespacedEdgeCoordinateBounds.lean/index.md) · [Full source](../../../../MeasureAndIntegration/Attempt03NamespacedEdgeCoordinateBounds.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e081d908ba0eb813c2ccb2b89cf649ff29294b7f`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variant4b5eb946a85cd3b95dd1f5b5d6f1e9ad102a5d15a4fc19d64fa3a9939e8a8f60.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variant4b5eb946a85cd3b95dd1f5b5d6f1e9ad102a5d15a4fc19d64fa3a9939e8a8f60.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualMovingCriticalIncrement` — import line 6; external provider; requires a separately pinned dependency.
- `SourceActualEdgeCorrelationDerivative` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [edge_coordinate_bounds](../../../../MeasureAndIntegration/Attempt03NamespacedEdgeCoordinateBounds.lean/declarations/edge-coordinate-bounds.md) | 32 | `result-track:471148f21a92e174c6da1fd4585a409201b743761fcd63bbc9e50ffd579f631a` |
| 2 | `theorem` | [actualEndpointPolynomial_edge_lower](../../../../MeasureAndIntegration/Attempt03NamespacedEdgeCoordinateBounds.lean/declarations/actualendpointpolynomial-edge-lower.md) | 42 | `result-track:e0d48a5d88c84876148210174fbb047df81c4aae537921730b737e2e64bd4145` |
| 3 | `theorem` | [actualEndpointDerivative_edge_lower](../../../../MeasureAndIntegration/Attempt03NamespacedEdgeCoordinateBounds.lean/declarations/actualendpointderivative-edge-lower.md) | 67 | `result-track:5e9cb0f6cbead85c074037d2ba27c76d37379b0177b9c2eaea43545716b76356` |
| 4 | `theorem` | [actualEndpointCritical_edge_upper](../../../../MeasureAndIntegration/Attempt03NamespacedEdgeCoordinateBounds.lean/declarations/actualendpointcritical-edge-upper.md) | 107 | `result-track:c3e30b96bbc710d768535e8fc9878db457d6d73590f7a5706df3286c5dfc2c02` |
| 5 | `theorem` | [overlap_moment](../../../../MeasureAndIntegration/Attempt03NamespacedEdgeCoordinateBounds.lean/declarations/overlap-moment.md) | 117 | `result-track:e3323953bb21de659366ae17086eab374f3574211f3309691a9a5c46a45403f5` |
| 6 | `theorem` | [actualCriticalKernel_edge_upper](../../../../MeasureAndIntegration/Attempt03NamespacedEdgeCoordinateBounds.lean/declarations/actualcriticalkernel-edge-upper.md) | 131 | `result-track:aa803855879687cbc12ae97e185ee7135fd3d5588a7c350d7d03d6ba672505d3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d3cbdb5d16780bdb223fa0ea1996bf9acfad95d47c959794e8546ec8e2211953 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variant4b5eb946a85cd3b95dd1f5b5d6f1e9ad102a5d15a4fc19d64fa3a9939e8a8f60.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variant4b5eb946a85cd3b95dd1f5b5d6f1e9ad102a5d15a4fc19d64fa3a9939e8a8f60.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
