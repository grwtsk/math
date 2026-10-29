# Verification target: Cross Product Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "58d25c143574f1d2aa918e05d879843336f9952d",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/CrossProduct/Variant7e3be83db965697c42737cda61b66f45b1decfab23a7fa1d9ab47b52dcd4b2fc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Geometry/RealAndComplexGeometry/CrossProductNamespaced.lean/index.md) · [Full source](../../../../../Geometry/RealAndComplexGeometry/CrossProductNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `58d25c143574f1d2aa918e05d879843336f9952d`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/CrossProduct/Variant7e3be83db965697c42737cda61b66f45b1decfab23a7fa1d9ab47b52dcd4b2fc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/CrossProduct/Variant7e3be83db965697c42737cda61b66f45b1decfab23a7fa1d9ab47b52dcd4b2fc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.PiL2` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.CrossProduct` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [norm_withLpEquiv_crossProduct](../../../../../Geometry/RealAndComplexGeometry/CrossProductNamespaced.lean/declarations/norm-withlpequiv-crossproduct.md) | 34 | `result-track:e9898d95630a9f78e19e897bb28ea9aa35212f73665279ce173541258ce474e7` |
| 2 | `theorem` | [norm_withLpEquiv_symm_crossProduct](../../../../../Geometry/RealAndComplexGeometry/CrossProductNamespaced.lean/declarations/norm-withlpequiv-symm-crossproduct.md) | 48 | `result-track:8be600629e2a6c6b926912df4c1e4aff016cde02e657d23faecb395f622486bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=437950b9c71d54670f9bd4b399caf0ae7d54fa9f5118734e59770c4a7ce0c75d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/CrossProduct/Variant7e3be83db965697c42737cda61b66f45b1decfab23a7fa1d9ab47b52dcd4b2fc.lean","GRWTSK/_verification/specifications/Geometry/ClassicalGeometry/EuclideanGeometry/CrossProduct/Variant7e3be83db965697c42737cda61b66f45b1decfab23a7fa1d9ab47b52dcd4b2fc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
