# Verification target: GRWTSK.Topology.GeneralTopology.Priestley.Variant82f3eebc586941987f1e13ff2aa0e89746f1baad16d0d99688a06ca70744b45e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b99d53a4cb4d04fa7498f8ea6bec0d1438a98095",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Priestley/Variant82f3eebc586941987f1e13ff2aa0e89746f1baad16d0d99688a06ca70744b45e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Priestley/Variant82f3eebc586941987f1e13ff2aa0e89746f1baad16d0d99688a06ca70744b45e.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Priestley/Variant82f3eebc586941987f1e13ff2aa0e89746f1baad16d0d99688a06ca70744b45e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b99d53a4cb4d04fa7498f8ea6bec0d1438a98095`.

Source path: `GRWTSK/Topology/GeneralTopology/Priestley/Variant82f3eebc586941987f1e13ff2aa0e89746f1baad16d0d99688a06ca70744b45e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Priestley/Variant82f3eebc586941987f1e13ff2aa0e89746f1baad16d0d99688a06ca70744b45e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.UpperLower.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [PriestleySpace](../../../../../mathematics/Topology/GeneralTopology/Priestley/Variant82f3eebc586941987f1e13ff2aa0e89746f1baad16d0d99688a06ca70744b45e.lean/declarations/priestleyspace--95e4ccea36ccd1b3621ff671.md) | 40 | `declaration-track:95e4ccea36ccd1b3621ff671e5c44c1e8c7a1f7390a5fe684bd2a3ee18e411cd` |
| 2 | `theorem` | [exists_clopen_upper_of_not_le](../../../../../mathematics/Topology/GeneralTopology/Priestley/Variant82f3eebc586941987f1e13ff2aa0e89746f1baad16d0d99688a06ca70744b45e.lean/declarations/exists-clopen-upper-of-not-le--5e342ba19be9035c341180c2.md) | 50 | `result-track:5e342ba19be9035c341180c2471e3b6295215c0af42bff3cc0215560d377e1fb` |
| 3 | `theorem` | [exists_clopen_lower_of_not_le](../../../../../mathematics/Topology/GeneralTopology/Priestley/Variant82f3eebc586941987f1e13ff2aa0e89746f1baad16d0d99688a06ca70744b45e.lean/declarations/exists-clopen-lower-of-not-le--ccc7b05e1ea1f9ab05d39e0b.md) | 55 | `result-track:ccc7b05e1ea1f9ab05d39e0b36b08915a09dd758ba61b6efd1886a7f01836382` |
| 4 | `theorem` | [exists_clopen_upper_or_lower_of_ne](../../../../../mathematics/Topology/GeneralTopology/Priestley/Variant82f3eebc586941987f1e13ff2aa0e89746f1baad16d0d99688a06ca70744b45e.lean/declarations/exists-clopen-upper-or-lower-of-ne--d0672d251db1e92a4504d506.md) | 67 | `result-track:d0672d251db1e92a4504d506c01618f4857943007105796f415df9dea194eb55` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Priestley/Variant82f3eebc586941987f1e13ff2aa0e89746f1baad16d0d99688a06ca70744b45e.lean/declarations/instance--c06c7a6112528faaae19c8bb.md) | 76 | `declaration-track:c06c7a6112528faaae19c8bb243f619685b570b71412e6b7b75356c21c45c4a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
