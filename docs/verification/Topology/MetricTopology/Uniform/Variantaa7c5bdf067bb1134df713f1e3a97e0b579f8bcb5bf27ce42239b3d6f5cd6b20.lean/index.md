# Verification target: GRWTSK.Topology.MetricTopology.Uniform.Variantaa7c5bdf067bb1134df713f1e3a97e0b579f8bcb5bf27ce42239b3d6f5cd6b20

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d66e274f5bcc8ebb9831c207a719033dffa2a60",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Uniform/Variantaa7c5bdf067bb1134df713f1e3a97e0b579f8bcb5bf27ce42239b3d6f5cd6b20.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Uniform/Variantaa7c5bdf067bb1134df713f1e3a97e0b579f8bcb5bf27ce42239b3d6f5cd6b20.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Uniform/Variantaa7c5bdf067bb1134df713f1e3a97e0b579f8bcb5bf27ce42239b3d6f5cd6b20.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d66e274f5bcc8ebb9831c207a719033dffa2a60`.

Source path: `GRWTSK/Topology/MetricTopology/Uniform/Variantaa7c5bdf067bb1134df713f1e3a97e0b579f8bcb5bf27ce42239b3d6f5cd6b20.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Uniform/Variantaa7c5bdf067bb1134df713f1e3a97e0b579f8bcb5bf27ce42239b3d6f5cd6b20.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [UniformConvexSpace](../../../../../mathematics/Topology/MetricTopology/Uniform/Variantaa7c5bdf067bb1134df713f1e3a97e0b579f8bcb5bf27ce42239b3d6f5cd6b20.lean/declarations/uniformconvexspace--3e5712b5dbb8a35af31aaf38.md) | 39 | `declaration-track:3e5712b5dbb8a35af31aaf38ceaa46bd916be09e653e0241486ede45b201d61c` |
| 2 | `theorem` | [exists_forall_sphere_dist_add_le_two_sub](../../../../../mathematics/Topology/MetricTopology/Uniform/Variantaa7c5bdf067bb1134df713f1e3a97e0b579f8bcb5bf27ce42239b3d6f5cd6b20.lean/declarations/exists-forall-sphere-dist-add-le-two-sub--c50fca91fa0b3e7b13803f17.md) | 49 | `result-track:c50fca91fa0b3e7b13803f17afc3d6d539f90baaaa746da28b56b88b6741c384` |
| 3 | `theorem` | [exists_forall_closed_ball_dist_add_le_two_sub](../../../../../mathematics/Topology/MetricTopology/Uniform/Variantaa7c5bdf067bb1134df713f1e3a97e0b579f8bcb5bf27ce42239b3d6f5cd6b20.lean/declarations/exists-forall-closed-ball-dist-add-le-two-sub--363e75481ebb20b4dca4bc54.md) | 55 | `result-track:363e75481ebb20b4dca4bc547274a483e9cdcda32021d58ace37bd9cf8b83823` |
| 4 | `theorem` | [exists_forall_closed_ball_dist_add_le_two_mul_sub](../../../../../mathematics/Topology/MetricTopology/Uniform/Variantaa7c5bdf067bb1134df713f1e3a97e0b579f8bcb5bf27ce42239b3d6f5cd6b20.lean/declarations/exists-forall-closed-ball-dist-add-le-two-mul-sub--bce957d445bb4820f3c45da2.md) | 102 | `result-track:bce957d445bb4820f3c45da2f81e6312701c84da6b3d67986ee3eee3cf53333f` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Uniform/Variantaa7c5bdf067bb1134df713f1e3a97e0b579f8bcb5bf27ce42239b3d6f5cd6b20.lean/declarations/instance--94c329cc37151564b66d27c9.md) | 120 | `declaration-track:94c329cc37151564b66d27c9d3251f18a512efe05d3c170bc14ab5e046f6c75d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
