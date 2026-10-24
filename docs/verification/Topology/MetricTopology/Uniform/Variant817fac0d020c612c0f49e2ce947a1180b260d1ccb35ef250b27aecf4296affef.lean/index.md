# Verification target: GRWTSK.Topology.MetricTopology.Uniform.Variant817fac0d020c612c0f49e2ce947a1180b260d1ccb35ef250b27aecf4296affef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e93aa3d31d8604811194bd3a8cba093a1ebd2c6d",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Uniform/Variant817fac0d020c612c0f49e2ce947a1180b260d1ccb35ef250b27aecf4296affef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Uniform/Variant817fac0d020c612c0f49e2ce947a1180b260d1ccb35ef250b27aecf4296affef.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Uniform/Variant817fac0d020c612c0f49e2ce947a1180b260d1ccb35ef250b27aecf4296affef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e93aa3d31d8604811194bd3a8cba093a1ebd2c6d`.

Source path: `GRWTSK/Topology/MetricTopology/Uniform/Variant817fac0d020c612c0f49e2ce947a1180b260d1ccb35ef250b27aecf4296affef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Uniform/Variant817fac0d020c612c0f49e2ce947a1180b260d1ccb35ef250b27aecf4296affef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.StrictConvexSpace` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [UniformConvexSpace](../../../../../mathematics/Topology/MetricTopology/Uniform/Variant817fac0d020c612c0f49e2ce947a1180b260d1ccb35ef250b27aecf4296affef.lean/declarations/uniformconvexspace--12666ac89d1f090ab8d135e6.md) | 48 | `declaration-track:12666ac89d1f090ab8d135e666a85cf719e9677de9791c8aedf154576bbf4832` |
| 2 | `theorem` | [exists_forall_sphere_dist_add_le_two_sub](../../../../../mathematics/Topology/MetricTopology/Uniform/Variant817fac0d020c612c0f49e2ce947a1180b260d1ccb35ef250b27aecf4296affef.lean/declarations/exists-forall-sphere-dist-add-le-two-sub--38bb5a9ea2a6485db5521bb7.md) | 58 | `result-track:38bb5a9ea2a6485db5521bb7e6fb79f938cc2e49f2e4ba208c12b13c24c9afc9` |
| 3 | `theorem` | [exists_forall_closed_ball_dist_add_le_two_sub](../../../../../mathematics/Topology/MetricTopology/Uniform/Variant817fac0d020c612c0f49e2ce947a1180b260d1ccb35ef250b27aecf4296affef.lean/declarations/exists-forall-closed-ball-dist-add-le-two-sub--f4fffe5547842cd0b84d1e99.md) | 64 | `result-track:f4fffe5547842cd0b84d1e997dfa9f45a043fc71b1a04323c33d1bf5f55050d8` |
| 4 | `theorem` | [exists_forall_closed_ball_dist_add_le_two_mul_sub](../../../../../mathematics/Topology/MetricTopology/Uniform/Variant817fac0d020c612c0f49e2ce947a1180b260d1ccb35ef250b27aecf4296affef.lean/declarations/exists-forall-closed-ball-dist-add-le-two-mul-sub--aeddaad979e0a6f73446f182.md) | 110 | `result-track:aeddaad979e0a6f73446f182f0dfea78913e0543dcfcbd60d35fb00465805031` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Uniform/Variant817fac0d020c612c0f49e2ce947a1180b260d1ccb35ef250b27aecf4296affef.lean/declarations/instance--1600859eab671ebb6d0e55ab.md) | 128 | `declaration-track:1600859eab671ebb6d0e55abc1c058dc1ec1b218b8baada6609f92ef0f04a83e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
