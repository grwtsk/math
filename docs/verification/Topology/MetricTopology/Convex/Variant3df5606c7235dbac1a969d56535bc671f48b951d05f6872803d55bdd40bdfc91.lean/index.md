# Verification target: GRWTSK.Topology.MetricTopology.Convex.Variant3df5606c7235dbac1a969d56535bc671f48b951d05f6872803d55bdd40bdfc91

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b17d04d81672d182136cad03c1bb2a56ce72a2d5",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Convex/Variant3df5606c7235dbac1a969d56535bc671f48b951d05f6872803d55bdd40bdfc91.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Convex/Variant3df5606c7235dbac1a969d56535bc671f48b951d05f6872803d55bdd40bdfc91.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Convex/Variant3df5606c7235dbac1a969d56535bc671f48b951d05f6872803d55bdd40bdfc91.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b17d04d81672d182136cad03c1bb2a56ce72a2d5`.

Source path: `GRWTSK/Topology/MetricTopology/Convex/Variant3df5606c7235dbac1a969d56535bc671f48b951d05f6872803d55bdd40bdfc91.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Convex/Variant3df5606c7235dbac1a969d56535bc671f48b951d05f6872803d55bdd40bdfc91.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Between` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Affine.AddTorsorBases` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Convex` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Wbtw.dist_add_dist](../../../../../mathematics/Topology/MetricTopology/Convex/Variant3df5606c7235dbac1a969d56535bc671f48b951d05f6872803d55bdd40bdfc91.lean/declarations/wbtw-dist-add-dist--d8d543a88e8ce5cde6468f7d.md) | 27 | `result-track:d8d543a88e8ce5cde6468f7d68bfa6bdc73e55f9f9c8415e39e6c21fa7565824` |
| 2 | `theorem` | [dist_add_dist_of_mem_segment](../../../../../mathematics/Topology/MetricTopology/Convex/Variant3df5606c7235dbac1a969d56535bc671f48b951d05f6872803d55bdd40bdfc91.lean/declarations/dist-add-dist-of-mem-segment--87e6ae60fbdc8cd70c8d6422.md) | 32 | `result-track:87e6ae60fbdc8cd70c8d6422225b39d607f355e4b8be0860c5916f761c154816` |
| 3 | `lemma` | [exists_mem_interior_convexHull_affineBasis](../../../../../mathematics/Topology/MetricTopology/Convex/Variant3df5606c7235dbac1a969d56535bc671f48b951d05f6872803d55bdd40bdfc91.lean/declarations/exists-mem-interior-convexhull-affinebasis--b2297791b6c4ac8e8659856a.md) | 42 | `result-track:b2297791b6c4ac8e8659856aebfc6656d8e0583d8c0638345e315ef813bbb494` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
