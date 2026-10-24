# Verification target: GRWTSK.Topology.MetricTopology.Equicontinuity.Variant7ec539313e3f262a6e5405467ee9f8bf39f27cd74074ad2d6da761c8aab36796

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "739d79e612d3dbbae5b489fb5940984a34bf1a2e",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Equicontinuity/Variant7ec539313e3f262a6e5405467ee9f8bf39f27cd74074ad2d6da761c8aab36796.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Equicontinuity/Variant7ec539313e3f262a6e5405467ee9f8bf39f27cd74074ad2d6da761c8aab36796.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Equicontinuity/Variant7ec539313e3f262a6e5405467ee9f8bf39f27cd74074ad2d6da761c8aab36796.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `739d79e612d3dbbae5b489fb5940984a34bf1a2e`.

Source path: `GRWTSK/Topology/MetricTopology/Equicontinuity/Variant7ec539313e3f262a6e5405467ee9f8bf39f27cd74074ad2d6da761c8aab36796.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Equicontinuity/Variant7ec539313e3f262a6e5405467ee9f8bf39f27cd74074ad2d6da761c8aab36796.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.UniformSpace.Equicontinuity` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Pseudo.Lemmas` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [equicontinuousAt_iff_right](../../../../../mathematics/Topology/MetricTopology/Equicontinuity/Variant7ec539313e3f262a6e5405467ee9f8bf39f27cd74074ad2d6da761c8aab36796.lean/declarations/equicontinuousat-iff-right--36353de4ede3daa44a141274.md) | 51 | `result-track:36353de4ede3daa44a141274abe0bacd1082c1ef05fa998827d3ea3eb0d94874` |
| 2 | `theorem` | [equicontinuousAt_iff](../../../../../mathematics/Topology/MetricTopology/Equicontinuity/Variant7ec539313e3f262a6e5405467ee9f8bf39f27cd74074ad2d6da761c8aab36796.lean/declarations/equicontinuousat-iff--090555474cb14a70f6f98fe2.md) | 56 | `result-track:090555474cb14a70f6f98fe2bc243f48f890b0aed5894303fc17a924fe196bc0` |
| 3 | `theorem` | [equicontinuousAt_iff_pair](../../../../../mathematics/Topology/MetricTopology/Equicontinuity/Variant7ec539313e3f262a6e5405467ee9f8bf39f27cd74074ad2d6da761c8aab36796.lean/declarations/equicontinuousat-iff-pair--88a1e89206bbbfc469faf574.md) | 62 | `result-track:88a1e89206bbbfc469faf574d1bda93609dbc397704d26aaa3c0eacbfef4834e` |
| 4 | `theorem` | [uniformEquicontinuous_iff_right](../../../../../mathematics/Topology/MetricTopology/Equicontinuity/Variant7ec539313e3f262a6e5405467ee9f8bf39f27cd74074ad2d6da761c8aab36796.lean/declarations/uniformequicontinuous-iff-right--f19a568ad02b5e81a7d6e12d.md) | 77 | `result-track:f19a568ad02b5e81a7d6e12d3e92fc8e11eea9b18a712b629ed524f0a928d768` |
| 5 | `theorem` | [uniformEquicontinuous_iff](../../../../../mathematics/Topology/MetricTopology/Equicontinuity/Variant7ec539313e3f262a6e5405467ee9f8bf39f27cd74074ad2d6da761c8aab36796.lean/declarations/uniformequicontinuous-iff--9bd0fd442a9beb235d320324.md) | 83 | `result-track:9bd0fd442a9beb235d320324cd9eb0988e4fe61221ee419c11c75103b9cceacd` |
| 6 | `theorem` | [equicontinuousAt_of_continuity_modulus](../../../../../mathematics/Topology/MetricTopology/Equicontinuity/Variant7ec539313e3f262a6e5405467ee9f8bf39f27cd74074ad2d6da761c8aab36796.lean/declarations/equicontinuousat-of-continuity-modulus--acd81227612ee0460f61e163.md) | 91 | `result-track:acd81227612ee0460f61e1630264685cdbc31a02c6cfd416db4959443c7d7b66` |
| 7 | `theorem` | [uniformEquicontinuous_of_continuity_modulus](../../../../../mathematics/Topology/MetricTopology/Equicontinuity/Variant7ec539313e3f262a6e5405467ee9f8bf39f27cd74074ad2d6da761c8aab36796.lean/declarations/uniformequicontinuous-of-continuity-modulus--9d5f34091dafec87d6f2129c.md) | 103 | `result-track:9d5f34091dafec87d6f2129c33a09626d961052e20b22c5fda0301bba2a3be47` |
| 8 | `theorem` | [equicontinuous_of_continuity_modulus](../../../../../mathematics/Topology/MetricTopology/Equicontinuity/Variant7ec539313e3f262a6e5405467ee9f8bf39f27cd74074ad2d6da761c8aab36796.lean/declarations/equicontinuous-of-continuity-modulus--becd5f84401676701672c42a.md) | 118 | `result-track:becd5f84401676701672c42a9dfb9b3c6c38282465c95f292a454abdb494800f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
