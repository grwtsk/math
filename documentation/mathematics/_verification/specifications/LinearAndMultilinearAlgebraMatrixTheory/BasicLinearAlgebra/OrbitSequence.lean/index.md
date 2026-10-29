# Verification target: Orbit Sequence

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5af21fc4cbe30c6f84902f88cb711d4f4b8be365",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DynamicalSystems/NaturalIterationOnBooleanMatrices/Variant1f1f2efdeade9306/OrbitSequence.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrbitSequence.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrbitSequence.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5af21fc4cbe30c6f84902f88cb711d4f4b8be365`.

Source path: `GRWTSK/DynamicalSystems/NaturalIterationOnBooleanMatrices/Variant1f1f2efdeade9306/OrbitSequence.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DynamicalSystems/NaturalIterationOnBooleanMatrices/Variant1f1f2efdeade9306/OrbitSequence.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BooleanMatrix.Application.Core` — import line 21; external provider; requires a separately pinned dependency.
- [Finite Iteration](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteIteration.lean/index.md) — import line 22; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [orbit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrbitSequence.lean/declarations/orbit.md) | 32 | `declaration-track:3aa37c2ed43d88c31a980fdfe5e7079f9852dd3d39a7b3b4c42e03d5d3f5fec9` |
| 2 | `theorem` | [orbit_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrbitSequence.lean/declarations/orbit-zero.md) | 39 | `result-track:8ce3f55f385ed79225edea9a8a8fa74a597102ddbc3a95416c174c37b1f0371c` |
| 3 | `theorem` | [orbit_succ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrbitSequence.lean/declarations/orbit-succ.md) | 46 | `result-track:b3b95d84d3535b7125337fdad23bf85bfc3c013a29a9ded2802062509f6135aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7f0c2a852ad11857a6b55c93199f1ba1c2ab7fa7e4d8d889dd81430ff9cdb3fe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/DynamicalSystems/NaturalIterationOnBooleanMatrices/Variant1f1f2efdeade9306/OrbitSequence.lean","GRWTSK/_verification/specifications/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/NaturalIterationOnBooleanMatrices/Variant1f1f2efdeade9306/OrbitSequence.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
