# Verification target: Finite Common JTransport Fixtures

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ebd32b284023769991b30d977406822a1bba75ed",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/FiniteCommonJTransportFixtures/Variant107642bcaa1df3f07b1eb1ebdea61e1e8e314c0576ffe29427d45d659b691f18.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteCommonJTransportFixtures.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteCommonJTransportFixtures.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ebd32b284023769991b30d977406822a1bba75ed`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/FiniteCommonJTransportFixtures/Variant107642bcaa1df3f07b1eb1ebdea61e1e8e314c0576ffe29427d45d659b691f18.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/FiniteCommonJTransportFixtures/Variant107642bcaa1df3f07b1eb1ebdea61e1e8e314c0576ffe29427d45d659b691f18.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Spectral.FiniteCommonJTransport` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [forwardTriangle](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteCommonJTransportFixtures.lean/declarations/forwardtriangle.md) | 23 | `declaration-track:995175db1213378cdcda981ec1c230a3532189d69853611a3e21850362dab944` |
| 2 | `instance` | [forwardTriangleDecidable](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteCommonJTransportFixtures.lean/declarations/forwardtriangledecidable.md) | 27 | `declaration-track:a1b4d81fee5fd44d78c7e186fbe09eea936b2328f89c79c432d37ddd4111a0f3` |
| 3 | `def` | [triangleEdge](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteCommonJTransportFixtures.lean/declarations/triangleedge.md) | 31 | `declaration-track:ff4b6910c39bedd4eee23d5123d841cafa0862042229f04bf74820902820d6bf` |
| 4 | `theorem` | [triangleEdge_reverse](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteCommonJTransportFixtures.lean/declarations/triangleedge-reverse.md) | 35 | `result-track:bb50941f15b0662923152f4e925b6d4f26abef3459f16af412234c4369fd92cb` |
| 5 | `theorem` | [triangleEdge_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteCommonJTransportFixtures.lean/declarations/triangleedge-diagonal.md) | 39 | `result-track:b8f71d4dae183deac7ea798c50239b39194bf1edc1e3c58675cc487e32a31f5b` |
| 6 | `theorem` | [triangle_backtrack_loop_identity](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteCommonJTransportFixtures.lean/declarations/triangle-backtrack-loop-identity.md) | 43 | `result-track:c93230a87e6dae4ad06faea75e31c74c264e90a4bcaf66fc214e89528613cc47` |
| 7 | `def` | [triangleSites](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteCommonJTransportFixtures.lean/declarations/trianglesites.md) | 48 | `declaration-track:6b1e0cd77fd8f78cb7abd6f0a97fd10647495527cb6f43edaa5968d270dc9e06` |
| 8 | `theorem` | [triangleSites_closed](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteCommonJTransportFixtures.lean/declarations/trianglesites-closed.md) | 52 | `result-track:7556fb0af800832060a71d5dd7e53147e10eba447e02153e7ac14f99e02c5d07` |
| 9 | `theorem` | [triangle_loop_nonidentity](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteCommonJTransportFixtures.lean/declarations/triangle-loop-nonidentity.md) | 56 | `result-track:f1e509173c19f8c85a07edfd6ed021588980e363f045efee69427c9c8923f9f2` |
| 10 | `theorem` | [triangle_gauge_basepoint](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteCommonJTransportFixtures.lean/declarations/triangle-gauge-basepoint.md) | 65 | `result-track:a79318b3b2c472414c2fc305781aed0f1fd0c2dd92c0b22ccfb4171f4b7fbf57` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dfd02a23efb132c24e5560f1653c2eeb7f066360e996930e73a175e1994f92ab -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/FiniteCommonJTransportFixtures/Variant107642bcaa1df3f07b1eb1ebdea61e1e8e314c0576ffe29427d45d659b691f18.lean","GRWTSK/_verification/specifications/Geometry/ClassicalGeometry/EuclideanGeometry/FiniteCommonJTransportFixtures/Variant107642bcaa1df3f07b1eb1ebdea61e1e8e314c0576ffe29427d45d659b691f18.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
