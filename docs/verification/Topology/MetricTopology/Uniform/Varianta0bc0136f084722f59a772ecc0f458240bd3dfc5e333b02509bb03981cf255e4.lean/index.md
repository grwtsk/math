# Verification target: GRWTSK.Topology.MetricTopology.Uniform.Varianta0bc0136f084722f59a772ecc0f458240bd3dfc5e333b02509bb03981cf255e4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "57a43a45025e37eca448a7ebc2c1b8a4afd43db1",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Uniform/Varianta0bc0136f084722f59a772ecc0f458240bd3dfc5e333b02509bb03981cf255e4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Uniform/Varianta0bc0136f084722f59a772ecc0f458240bd3dfc5e333b02509bb03981cf255e4.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Uniform/Varianta0bc0136f084722f59a772ecc0f458240bd3dfc5e333b02509bb03981cf255e4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `57a43a45025e37eca448a7ebc2c1b8a4afd43db1`.

Source path: `GRWTSK/Topology/MetricTopology/Uniform/Varianta0bc0136f084722f59a772ecc0f458240bd3dfc5e333b02509bb03981cf255e4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Uniform/Varianta0bc0136f084722f59a772ecc0f458240bd3dfc5e333b02509bb03981cf255e4.lean.json)

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
| 1 | `class` | [UniformConvexSpace](../../../../../mathematics/Topology/MetricTopology/Uniform/Varianta0bc0136f084722f59a772ecc0f458240bd3dfc5e333b02509bb03981cf255e4.lean/declarations/uniformconvexspace--0e54a028b50c531a461a8ff7.md) | 47 | `declaration-track:0e54a028b50c531a461a8ff703287adc992bd08e10cffc6280f259d723c6daa9` |
| 2 | `theorem` | [exists_forall_sphere_dist_add_le_two_sub](../../../../../mathematics/Topology/MetricTopology/Uniform/Varianta0bc0136f084722f59a772ecc0f458240bd3dfc5e333b02509bb03981cf255e4.lean/declarations/exists-forall-sphere-dist-add-le-two-sub--2e9a21cef4e6ddf1e05fd1cd.md) | 57 | `result-track:2e9a21cef4e6ddf1e05fd1cd4ce39041eeabce31b52f85b40133a591ec087ddf` |
| 3 | `theorem` | [exists_forall_closed_ball_dist_add_le_two_sub](../../../../../mathematics/Topology/MetricTopology/Uniform/Varianta0bc0136f084722f59a772ecc0f458240bd3dfc5e333b02509bb03981cf255e4.lean/declarations/exists-forall-closed-ball-dist-add-le-two-sub--4fa4ad722c6aa3a664fe5e1a.md) | 63 | `result-track:4fa4ad722c6aa3a664fe5e1a843af1d34c8c34eb277ee44a3ccd65298b47bbc6` |
| 4 | `theorem` | [exists_forall_closed_ball_dist_add_le_two_mul_sub](../../../../../mathematics/Topology/MetricTopology/Uniform/Varianta0bc0136f084722f59a772ecc0f458240bd3dfc5e333b02509bb03981cf255e4.lean/declarations/exists-forall-closed-ball-dist-add-le-two-mul-sub--3606ebf6d2063ffc72e01aec.md) | 110 | `result-track:3606ebf6d2063ffc72e01aece44774a935e473394029ae5c93752df58acbfec7` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Uniform/Varianta0bc0136f084722f59a772ecc0f458240bd3dfc5e333b02509bb03981cf255e4.lean/declarations/instance--4075be44089bfc0e44994900.md) | 128 | `declaration-track:4075be44089bfc0e44994900e81f9241cdbd36a05a5d71f5b0e9ca037d785b5f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
