# Verification target: GRWTSK.Algebra.QuarticAdjacencyDiscriminantCriterion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66d689764f22c49e516093b06f9d98986177da7f",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/QuarticAdjacencyDiscriminantCriterion.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Algebra/QuarticAdjacencyDiscriminantCriterion.lean/index.md) · [Full source](../../../../Algebra/QuarticAdjacencyDiscriminantCriterion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66d689764f22c49e516093b06f9d98986177da7f`.

Source path: `GRWTSK/Algebra/QuarticAdjacencyDiscriminantCriterion.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/QuarticAdjacencyDiscriminantCriterion.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.QuarticAdjacencyDiscriminant`](../../../../Algebra/QuarticAdjacencyDiscriminant.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [adjacencyVandermonde_ne_zero_iff](../../../../Algebra/QuarticAdjacencyDiscriminantCriterion.lean/declarations/adjacencyvandermonde-ne-zero-iff--ea838cfcaa6a96a10ccaf97b.md) | 22 | `result-track:ea838cfcaa6a96a10ccaf97bea3ae297e2adee466e78c8b58cc8419a1aaf3a06` |
| 2 | `theorem` | [adjacencyVandermonde_span_eq](../../../../Algebra/QuarticAdjacencyDiscriminantCriterion.lean/declarations/adjacencyvandermonde-span-eq--9d4226f79560c2cfd3c13939.md) | 30 | `result-track:9d4226f79560c2cfd3c139393f8b73943450902f8196bede7004fbc275188c41` |
| 3 | `theorem` | [adjacencyVandermonde_isUnit_iff](../../../../Algebra/QuarticAdjacencyDiscriminantCriterion.lean/declarations/adjacencyvandermonde-isunit-iff--fbedb1f413d9cbd665bee7be.md) | 38 | `result-track:fbedb1f413d9cbd665bee7bef41d990d26a6bdf197fb69af9be3a63ae547d941` |
| 4 | `theorem` | [adjacency_discriminant_product_isUnit_iff](../../../../Algebra/QuarticAdjacencyDiscriminantCriterion.lean/declarations/adjacency-discriminant-product-isunit-iff--14057bb070c05cb06e4d7549.md) | 45 | `result-track:14057bb070c05cb06e4d75498657f95882a152f6aa3ac32cbe074ca851841e8d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ed6fef735b0b649bb420182654767b7eefb0aa1ccd0bf0796aff5562c1e8d89d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/QuarticAdjacencyDiscriminantCriterion.lean","GRWTSK/_verification/specifications/Algebra/QuarticAdjacencyDiscriminantCriterion.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
