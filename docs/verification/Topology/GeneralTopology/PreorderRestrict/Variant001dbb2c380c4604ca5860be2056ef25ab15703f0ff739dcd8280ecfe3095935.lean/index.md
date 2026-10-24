# Verification target: GRWTSK.Topology.GeneralTopology.PreorderRestrict.Variant001dbb2c380c4604ca5860be2056ef25ab15703f0ff739dcd8280ecfe3095935

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1aaee2396490044301db7d753a7c40a043e3f75",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/PreorderRestrict/Variant001dbb2c380c4604ca5860be2056ef25ab15703f0ff739dcd8280ecfe3095935.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/PreorderRestrict/Variant001dbb2c380c4604ca5860be2056ef25ab15703f0ff739dcd8280ecfe3095935.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/PreorderRestrict/Variant001dbb2c380c4604ca5860be2056ef25ab15703f0ff739dcd8280ecfe3095935.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1aaee2396490044301db7d753a7c40a043e3f75`.

Source path: `GRWTSK/Topology/GeneralTopology/PreorderRestrict/Variant001dbb2c380c4604ca5860be2056ef25ab15703f0ff739dcd8280ecfe3095935.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/PreorderRestrict/Variant001dbb2c380c4604ca5860be2056ef25ab15703f0ff739dcd8280ecfe3095935.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Restriction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Constructions` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [continuous_restrictLe](../../../../../mathematics/Topology/GeneralTopology/PreorderRestrict/Variant001dbb2c380c4604ca5860be2056ef25ab15703f0ff739dcd8280ecfe3095935.lean/declarations/continuous-restrictle--c915c965234a02aa0e412597.md) | 21 | `result-track:c915c965234a02aa0e4125978fd94ff9768f1c8b6480607e9469d2f9d6794956` |
| 2 | `theorem` | [continuous_restrictLe₂](../../../../../mathematics/Topology/GeneralTopology/PreorderRestrict/Variant001dbb2c380c4604ca5860be2056ef25ab15703f0ff739dcd8280ecfe3095935.lean/declarations/continuous-restrictle--019323eae6a46880bd1778f2.md) | 25 | `result-track:019323eae6a46880bd1778f2b965ebf9519f7ef86c8fafa9fc3f46d0fc7c399d` |
| 3 | `theorem` | [continuous_frestrictLe](../../../../../mathematics/Topology/GeneralTopology/PreorderRestrict/Variant001dbb2c380c4604ca5860be2056ef25ab15703f0ff739dcd8280ecfe3095935.lean/declarations/continuous-frestrictle--4c67a9b787f83d8ef6295573.md) | 31 | `result-track:4c67a9b787f83d8ef629557397a68c63c8637346ffd7de3bb1bcdb40374c43a2` |
| 4 | `theorem` | [continuous_frestrictLe₂](../../../../../mathematics/Topology/GeneralTopology/PreorderRestrict/Variant001dbb2c380c4604ca5860be2056ef25ab15703f0ff739dcd8280ecfe3095935.lean/declarations/continuous-frestrictle--48dd4b166b91c82e8f6d77ed.md) | 35 | `result-track:48dd4b166b91c82e8f6d77ed945c15fe382bab1ba6207c87cded1fcda3fcb8ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
