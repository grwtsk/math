# Verification target: GRWTSK.Topology.GeneralTopology.Radon.Variant668e1df3d5b05b012f81bdecf5818083bb9716d121a8a68963b5064076135540

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d524ec0082946efc805e7f60082d26201a17a034",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Radon/Variant668e1df3d5b05b012f81bdecf5818083bb9716d121a8a68963b5064076135540.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Radon/Variant668e1df3d5b05b012f81bdecf5818083bb9716d121a8a68963b5064076135540.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Radon/Variant668e1df3d5b05b012f81bdecf5818083bb9716d121a8a68963b5064076135540.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d524ec0082946efc805e7f60082d26201a17a034`.

Source path: `GRWTSK/Topology/GeneralTopology/Radon/Variant668e1df3d5b05b012f81bdecf5818083bb9716d121a8a68963b5064076135540.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Radon/Variant668e1df3d5b05b012f81bdecf5818083bb9716d121a8a68963b5064076135540.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Combination` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Card` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.FiniteDimensional` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.Hausdorff` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [radon_partition](../../../../../mathematics/Topology/GeneralTopology/Radon/Variant668e1df3d5b05b012f81bdecf5818083bb9716d121a8a68963b5064076135540.lean/declarations/radon-partition--1afd1ccaffaff2ad751a3e15.md) | 42 | `result-track:1afd1ccaffaff2ad751a3e15aba5cb48389a5923097b9b889586198c59e004e4` |
| 2 | `lemma` | [helly_theorem_corner](../../../../../mathematics/Topology/GeneralTopology/Radon/Variant668e1df3d5b05b012f81bdecf5818083bb9716d121a8a68963b5064076135540.lean/declarations/helly-theorem-corner--6093ab22ccb29af3d8b5a71b.md) | 72 | `result-track:6093ab22ccb29af3d8b5a71be532b82b58cc9e99a1ebadc5daa04710d4f8458b` |
| 3 | `theorem` | [helly_theorem'](../../../../../mathematics/Topology/GeneralTopology/Radon/Variant668e1df3d5b05b012f81bdecf5818083bb9716d121a8a68963b5064076135540.lean/declarations/helly-theorem--3a870251e091ff3adaec109a.md) | 83 | `result-track:3a870251e091ff3adaec109a06253c1db5c029c62f234f4aa0c34d6208e14d6b` |
| 4 | `theorem` | [helly_theorem](../../../../../mathematics/Topology/GeneralTopology/Radon/Variant668e1df3d5b05b012f81bdecf5818083bb9716d121a8a68963b5064076135540.lean/declarations/helly-theorem--cc0c64ef82e26e20b8d16806.md) | 143 | `result-track:cc0c64ef82e26e20b8d1680667327dde6a811cc8f7ac9e93a8f82eee883113f9` |
| 5 | `theorem` | [helly_theorem_set'](../../../../../mathematics/Topology/GeneralTopology/Radon/Variant668e1df3d5b05b012f81bdecf5818083bb9716d121a8a68963b5064076135540.lean/declarations/helly-theorem-set--281e1e8252cc3cd565e3220c.md) | 158 | `result-track:281e1e8252cc3cd565e3220c1ce5dfad31a2dff5a0a7c5fa006625995a809467` |
| 6 | `theorem` | [helly_theorem_set](../../../../../mathematics/Topology/GeneralTopology/Radon/Variant668e1df3d5b05b012f81bdecf5818083bb9716d121a8a68963b5064076135540.lean/declarations/helly-theorem-set--eebdc0ae219c290c470e4f1b.md) | 174 | `result-track:eebdc0ae219c290c470e4f1b5c7bda730e6aa3639ede802e732f3b70521d57b4` |
| 7 | `theorem` | [helly_theorem_compact'](../../../../../mathematics/Topology/GeneralTopology/Radon/Variant668e1df3d5b05b012f81bdecf5818083bb9716d121a8a68963b5064076135540.lean/declarations/helly-theorem-compact--2126d40ace78730319cfe74e.md) | 190 | `result-track:2126d40ace78730319cfe74ed97de796990df77ab3ff1ab10d20e2d5757c0cc9` |
| 8 | `theorem` | [helly_theorem_compact](../../../../../mathematics/Topology/GeneralTopology/Radon/Variant668e1df3d5b05b012f81bdecf5818083bb9716d121a8a68963b5064076135540.lean/declarations/helly-theorem-compact--a2f3866e042206ba78e1a36c.md) | 218 | `result-track:a2f3866e042206ba78e1a36c9e5db1d099ae65c2257a34bb95aa451497ecbe2a` |
| 9 | `theorem` | [helly_theorem_set_compact'](../../../../../mathematics/Topology/GeneralTopology/Radon/Variant668e1df3d5b05b012f81bdecf5818083bb9716d121a8a68963b5064076135540.lean/declarations/helly-theorem-set-compact--bfb9a5916c391f75a1668e68.md) | 241 | `result-track:bfb9a5916c391f75a1668e68d11f70e2b8668bf2d7e9a5d963d71d055a322ccd` |
| 10 | `theorem` | [helly_theorem_set_compact](../../../../../mathematics/Topology/GeneralTopology/Radon/Variant668e1df3d5b05b012f81bdecf5818083bb9716d121a8a68963b5064076135540.lean/declarations/helly-theorem-set-compact--7dfd534a3b5d79e801efd757.md) | 263 | `result-track:7dfd534a3b5d79e801efd75729276ed2569c99147d797b719903ef112033a6ef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
