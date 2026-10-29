# Verification target: Attempt01 Edge Coordinate Bounds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "70d7b34d9d09eb33ebef2588169101c70d6ebb05",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant5aab459feb4aeec81f73bb1147038a5ce1783acb1fd555fb992e2021a8466426.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/Attempt01EdgeCoordinateBounds.lean/index.md) · [Full source](../../../../MeasureAndIntegration/Attempt01EdgeCoordinateBounds.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `70d7b34d9d09eb33ebef2588169101c70d6ebb05`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant5aab459feb4aeec81f73bb1147038a5ce1783acb1fd555fb992e2021a8466426.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant5aab459feb4aeec81f73bb1147038a5ce1783acb1fd555fb992e2021a8466426.lean.json)

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
| 1 | `theorem` | [edge_coordinate_bounds](../../../../MeasureAndIntegration/Attempt01EdgeCoordinateBounds.lean/declarations/edge-coordinate-bounds.md) | 24 | `result-track:b26ea47ca1631391891498e9c794b8ad93d8b8a64d51d6c62b849e121c59c2cd` |
| 2 | `theorem` | [actualEndpointPolynomial_edge_lower](../../../../MeasureAndIntegration/Attempt01EdgeCoordinateBounds.lean/declarations/actualendpointpolynomial-edge-lower.md) | 34 | `result-track:48f2801b525e598c72aab8df144acab9143c39f356e0ec48b673cc7db1fb4b07` |
| 3 | `theorem` | [actualEndpointDerivative_edge_lower](../../../../MeasureAndIntegration/Attempt01EdgeCoordinateBounds.lean/declarations/actualendpointderivative-edge-lower.md) | 59 | `result-track:415212d64598b82faa48991ec1a29fc9a3c32c88036c96381d6af5d5fe62af69` |
| 4 | `theorem` | [actualEndpointCritical_edge_upper](../../../../MeasureAndIntegration/Attempt01EdgeCoordinateBounds.lean/declarations/actualendpointcritical-edge-upper.md) | 97 | `result-track:0b826e5b1dbd4bfdc0ae2b3350603fec2a0755c563baf9e4c423dd1ba55e921f` |
| 5 | `theorem` | [overlap_moment](../../../../MeasureAndIntegration/Attempt01EdgeCoordinateBounds.lean/declarations/overlap-moment.md) | 107 | `result-track:061ebd576c396aa609d2c7699b457a8acfcf65cc94ffd5fc64fc191fa80b8bc1` |
| 6 | `theorem` | [actualCriticalKernel_edge_upper](../../../../MeasureAndIntegration/Attempt01EdgeCoordinateBounds.lean/declarations/actualcriticalkernel-edge-upper.md) | 120 | `result-track:1e27e4ff0733ddb6b184f608d011427441d6d4e66d12202a7d24a57d6cbb98a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cf9ea539540ab9555516b1c0ba98b6d4c8545937714ef8d3fb8bca5fa369117d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant5aab459feb4aeec81f73bb1147038a5ce1783acb1fd555fb992e2021a8466426.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant5aab459feb4aeec81f73bb1147038a5ce1783acb1fd555fb992e2021a8466426.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
