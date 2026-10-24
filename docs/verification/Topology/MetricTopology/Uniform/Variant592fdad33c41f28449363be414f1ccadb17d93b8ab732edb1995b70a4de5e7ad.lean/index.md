# Verification target: GRWTSK.Topology.MetricTopology.Uniform.Variant592fdad33c41f28449363be414f1ccadb17d93b8ab732edb1995b70a4de5e7ad

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c0511976660ccce031d73403e8fe95a781de358",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Uniform/Variant592fdad33c41f28449363be414f1ccadb17d93b8ab732edb1995b70a4de5e7ad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Uniform/Variant592fdad33c41f28449363be414f1ccadb17d93b8ab732edb1995b70a4de5e7ad.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Uniform/Variant592fdad33c41f28449363be414f1ccadb17d93b8ab732edb1995b70a4de5e7ad.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c0511976660ccce031d73403e8fe95a781de358`.

Source path: `GRWTSK/Topology/MetricTopology/Uniform/Variant592fdad33c41f28449363be414f1ccadb17d93b8ab732edb1995b70a4de5e7ad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Uniform/Variant592fdad33c41f28449363be414f1ccadb17d93b8ab732edb1995b70a4de5e7ad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.StrictConvexSpace` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [UniformConvexSpace](../../../../../mathematics/Topology/MetricTopology/Uniform/Variant592fdad33c41f28449363be414f1ccadb17d93b8ab732edb1995b70a4de5e7ad.lean/declarations/uniformconvexspace--2184b04b224101684db18246.md) | 40 | `declaration-track:2184b04b224101684db1824660b82d7fee3fdc27c7a65798e37abf496ec7b7de` |
| 2 | `theorem` | [exists_forall_sphere_dist_add_le_two_sub](../../../../../mathematics/Topology/MetricTopology/Uniform/Variant592fdad33c41f28449363be414f1ccadb17d93b8ab732edb1995b70a4de5e7ad.lean/declarations/exists-forall-sphere-dist-add-le-two-sub--5d52b07f99182ae5277d33ce.md) | 50 | `result-track:5d52b07f99182ae5277d33ce9ba33cb62069e25825e79efb2f35e71be621208c` |
| 3 | `theorem` | [exists_forall_closed_ball_dist_add_le_two_sub](../../../../../mathematics/Topology/MetricTopology/Uniform/Variant592fdad33c41f28449363be414f1ccadb17d93b8ab732edb1995b70a4de5e7ad.lean/declarations/exists-forall-closed-ball-dist-add-le-two-sub--06adcca4608ad46643e24510.md) | 56 | `result-track:06adcca4608ad46643e24510bc080f5a3debc2bb4d4efe5101fb385cc5ebc6a1` |
| 4 | `theorem` | [exists_forall_closed_ball_dist_add_le_two_mul_sub](../../../../../mathematics/Topology/MetricTopology/Uniform/Variant592fdad33c41f28449363be414f1ccadb17d93b8ab732edb1995b70a4de5e7ad.lean/declarations/exists-forall-closed-ball-dist-add-le-two-mul-sub--af7189b49b9d06bb4451ddf6.md) | 102 | `result-track:af7189b49b9d06bb4451ddf6a4b572cf0a72abb625eba6ba62cd554c477e7838` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Uniform/Variant592fdad33c41f28449363be414f1ccadb17d93b8ab732edb1995b70a4de5e7ad.lean/declarations/instance--570497a038749f9c2e9d5d73.md) | 120 | `declaration-track:570497a038749f9c2e9d5d73fc0c3f62d9196a7415008aaeeafe8acfb63ad9ca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
