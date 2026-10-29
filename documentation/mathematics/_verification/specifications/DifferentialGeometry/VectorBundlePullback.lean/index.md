# Verification target: Vector Bundle Pullback

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e40c7b3b2028472132dc568e2b2bd8e3b9fb7a65",
  "lexical_observation_count": 1,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/Pullback/Variant6be75e11f88127c7d62576a54d4bba2e6a85dc2b7cc956711e3b666746ef5260.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/VectorBundlePullback.lean/index.md) · [Full source](../../../../DifferentialGeometry/VectorBundlePullback.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e40c7b3b2028472132dc568e2b2bd8e3b9fb7a65`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/Pullback/Variant6be75e11f88127c7d62576a54d4bba2e6a85dc2b7cc956711e3b666746ef5260.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/Pullback/Variant6be75e11f88127c7d62576a54d4bba2e6a85dc2b7cc956711e3b666746ef5260.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.ContMDiffMap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.VectorBundle.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [ContMDiffVectorBundle.pullback](../../../../DifferentialGeometry/VectorBundlePullback.lean/declarations/contmdiffvectorbundle-pullback.md) | 35 | `declaration-track:0577423fe797260d672e21872a2f2571e4648f99d2669b62b6ca4f31e630a023` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=774c202a4990c1b5ca8603d519c0b9e20a757960ce8665e5ed58e423d86eb3f8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/DifferentialGeometry/Pullback/Variant6be75e11f88127c7d62576a54d4bba2e6a85dc2b7cc956711e3b666746ef5260.lean","GRWTSK/_verification/specifications/Geometry/DifferentialGeometry/Pullback/Variant6be75e11f88127c7d62576a54d4bba2e6a85dc2b7cc956711e3b666746ef5260.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
