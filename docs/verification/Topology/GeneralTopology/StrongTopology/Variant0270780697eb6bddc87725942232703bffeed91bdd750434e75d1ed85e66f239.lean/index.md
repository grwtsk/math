# Verification target: GRWTSK.Topology.GeneralTopology.StrongTopology.Variant0270780697eb6bddc87725942232703bffeed91bdd750434e75d1ed85e66f239

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1e8774a5f0d2c2e152e7d43549b4bebded232ff",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/StrongTopology/Variant0270780697eb6bddc87725942232703bffeed91bdd750434e75d1ed85e66f239.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/StrongTopology/Variant0270780697eb6bddc87725942232703bffeed91bdd750434e75d1ed85e66f239.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/StrongTopology/Variant0270780697eb6bddc87725942232703bffeed91bdd750434e75d1ed85e66f239.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1e8774a5f0d2c2e152e7d43549b4bebded232ff`.

Source path: `GRWTSK/Topology/GeneralTopology/StrongTopology/Variant0270780697eb6bddc87725942232703bffeed91bdd750434e75d1ed85e66f239.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/StrongTopology/Variant0270780697eb6bddc87725942232703bffeed91bdd750434e75d1ed85e66f239.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Module.StrongTopology` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.LocallyConvex` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [locallyConvexSpace](../../../../../mathematics/Topology/GeneralTopology/StrongTopology/Variant0270780697eb6bddc87725942232703bffeed91bdd750434e75d1ed85e66f239.lean/declarations/locallyconvexspace--7be75d8e8518f38685f92087.md) | 53 | `result-track:7be75d8e8518f38685f92087b596b10fe8a8bb356b41c5df96663a78ace8226a` |
| 2 | `instance` | [instLocallyConvexSpace](../../../../../mathematics/Topology/GeneralTopology/StrongTopology/Variant0270780697eb6bddc87725942232703bffeed91bdd750434e75d1ed85e66f239.lean/declarations/instlocallyconvexspace--3ce64e7b8fb1f8cf4c4f0f07.md) | 74 | `declaration-track:3ce64e7b8fb1f8cf4c4f0f070811c46fdcf2e5c928bc6281d2cada7cb9fbf51c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
