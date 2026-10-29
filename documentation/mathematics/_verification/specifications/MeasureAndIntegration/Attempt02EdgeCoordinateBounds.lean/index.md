# Verification target: Attempt02 Edge Coordinate Bounds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d340867e8700553426f0d897a96f481a32bb65e",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant680d00e0b9c653ea462637c26a332d08f468e37ee6d9a7dfa0ccdd18fccca038.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/Attempt02EdgeCoordinateBounds.lean/index.md) · [Full source](../../../../MeasureAndIntegration/Attempt02EdgeCoordinateBounds.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d340867e8700553426f0d897a96f481a32bb65e`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant680d00e0b9c653ea462637c26a332d08f468e37ee6d9a7dfa0ccdd18fccca038.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant680d00e0b9c653ea462637c26a332d08f468e37ee6d9a7dfa0ccdd18fccca038.lean.json)

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
| 1 | `theorem` | [edge_coordinate_bounds](../../../../MeasureAndIntegration/Attempt02EdgeCoordinateBounds.lean/declarations/edge-coordinate-bounds.md) | 24 | `result-track:9545f7426c247e60d249152ea4a5c2e7e8dc99e5097ddcc65c3115ded954817f` |
| 2 | `theorem` | [actualEndpointPolynomial_edge_lower](../../../../MeasureAndIntegration/Attempt02EdgeCoordinateBounds.lean/declarations/actualendpointpolynomial-edge-lower.md) | 34 | `result-track:9564af613da08e57707c9bdb42cc74f8e256f5c995811ae6c6d1c66f21b9db6f` |
| 3 | `theorem` | [actualEndpointDerivative_edge_lower](../../../../MeasureAndIntegration/Attempt02EdgeCoordinateBounds.lean/declarations/actualendpointderivative-edge-lower.md) | 59 | `result-track:3c45cb46ed1c7732d053b27eaca3642650e3df6940bbe21f6f853175e165bb9b` |
| 4 | `theorem` | [actualEndpointCritical_edge_upper](../../../../MeasureAndIntegration/Attempt02EdgeCoordinateBounds.lean/declarations/actualendpointcritical-edge-upper.md) | 99 | `result-track:182dd8e173fbdd2eb3998bb6880bfe0d88d90eb97a14c633489a57ba5028649d` |
| 5 | `theorem` | [overlap_moment](../../../../MeasureAndIntegration/Attempt02EdgeCoordinateBounds.lean/declarations/overlap-moment.md) | 109 | `result-track:965371bd8462651a4323dc22703607192e960a461b3e60407f526a2ef34d6ee2` |
| 6 | `theorem` | [actualCriticalKernel_edge_upper](../../../../MeasureAndIntegration/Attempt02EdgeCoordinateBounds.lean/declarations/actualcriticalkernel-edge-upper.md) | 123 | `result-track:b3494b74c6396147ecebab36534589f63ad1f6370d9324d20137217eb4b2937c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4d48640ced402e43bb5fdd11b9dcb74da19dab812b915a610c196e45aa674ed6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant680d00e0b9c653ea462637c26a332d08f468e37ee6d9a7dfa0ccdd18fccca038.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant680d00e0b9c653ea462637c26a332d08f468e37ee6d9a7dfa0ccdd18fccca038.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
