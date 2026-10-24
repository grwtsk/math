# Verification target: GRWTSK.Topology.GeneralTopology.ZeroAtInfty.Variant3b4a83bf9d0a65e319a85bf48dff74836046b1802dfa4602a7c78d72c5bb5e03

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "825bb7c7941a62eaef82c780f8debbd9cfd603f6",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ZeroAtInfty/Variant3b4a83bf9d0a65e319a85bf48dff74836046b1802dfa4602a7c78d72c5bb5e03.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ZeroAtInfty/Variant3b4a83bf9d0a65e319a85bf48dff74836046b1802dfa4602a7c78d72c5bb5e03.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ZeroAtInfty/Variant3b4a83bf9d0a65e319a85bf48dff74836046b1802dfa4602a7c78d72c5bb5e03.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `825bb7c7941a62eaef82c780f8debbd9cfd603f6`.

Source path: `GRWTSK/Topology/GeneralTopology/ZeroAtInfty/Variant3b4a83bf9d0a65e319a85bf48dff74836046b1802dfa4602a7c78d72c5bb5e03.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ZeroAtInfty/Variant3b4a83bf9d0a65e319a85bf48dff74836046b1802dfa4602a7c78d72c5bb5e03.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.ContinuousMap.ZeroAtInfty` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ZeroAtInftyContinuousMapClass.norm_le](../../../../../mathematics/Topology/GeneralTopology/ZeroAtInfty/Variant3b4a83bf9d0a65e319a85bf48dff74836046b1802dfa4602a7c78d72c5bb5e03.lean/declarations/zeroatinftycontinuousmapclass-norm-le--66e192f2b33ffabc6eaf4c39.md) | 24 | `result-track:66e192f2b33ffabc6eaf4c39d91804c6576718a4ece8ef2a66e133b3b1ae2e63` |
| 2 | `theorem` | [zero_at_infty_of_norm_le](../../../../../mathematics/Topology/GeneralTopology/ZeroAtInfty/Variant3b4a83bf9d0a65e319a85bf48dff74836046b1802dfa4602a7c78d72c5bb5e03.lean/declarations/zero-at-infty-of-norm-le--b212a2541d42fc320ff938dd.md) | 38 | `result-track:b212a2541d42fc320ff938dd29e31a21b22e8db70603c5bec3b9608965da3b88` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
