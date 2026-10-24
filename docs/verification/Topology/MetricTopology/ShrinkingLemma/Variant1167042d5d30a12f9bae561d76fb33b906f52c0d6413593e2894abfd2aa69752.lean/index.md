# Verification target: GRWTSK.Topology.MetricTopology.ShrinkingLemma.Variant1167042d5d30a12f9bae561d76fb33b906f52c0d6413593e2894abfd2aa69752

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b7b081e3fb55d3dc0d0930daaa872e2fb717f56a",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/ShrinkingLemma/Variant1167042d5d30a12f9bae561d76fb33b906f52c0d6413593e2894abfd2aa69752.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/ShrinkingLemma/Variant1167042d5d30a12f9bae561d76fb33b906f52c0d6413593e2894abfd2aa69752.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/ShrinkingLemma/Variant1167042d5d30a12f9bae561d76fb33b906f52c0d6413593e2894abfd2aa69752.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b7b081e3fb55d3dc0d0930daaa872e2fb717f56a`.

Source path: `GRWTSK/Topology/MetricTopology/ShrinkingLemma/Variant1167042d5d30a12f9bae561d76fb33b906f52c0d6413593e2894abfd2aa69752.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/ShrinkingLemma/Variant1167042d5d30a12f9bae561d76fb33b906f52c0d6413593e2894abfd2aa69752.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.EMetricSpace.Paracompact` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.ProperSpace.Lemmas` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ShrinkingLemma` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_subset_iUnion_ball_radius_lt](../../../../../mathematics/Topology/MetricTopology/ShrinkingLemma/Variant1167042d5d30a12f9bae561d76fb33b906f52c0d6413593e2894abfd2aa69752.lean/declarations/exists-subset-iunion-ball-radius-lt--4690042f8acd92d111f7e59e.md) | 37 | `result-track:4690042f8acd92d111f7e59e755231a3452157f151bce88f71f77fc1cad3308b` |
| 2 | `theorem` | [exists_iUnion_ball_eq_radius_lt](../../../../../mathematics/Topology/MetricTopology/ShrinkingLemma/Variant1167042d5d30a12f9bae561d76fb33b906f52c0d6413593e2894abfd2aa69752.lean/declarations/exists-iunion-ball-eq-radius-lt--91292b708313a63a1db38c7c.md) | 49 | `result-track:91292b708313a63a1db38c7c51a1c675c31fc519cf0d913df16824433f68ca6f` |
| 3 | `theorem` | [exists_subset_iUnion_ball_radius_pos_lt](../../../../../mathematics/Topology/MetricTopology/ShrinkingLemma/Variant1167042d5d30a12f9bae561d76fb33b906f52c0d6413593e2894abfd2aa69752.lean/declarations/exists-subset-iunion-ball-radius-pos-lt--253078a5972c3ba2e8b001e9.md) | 58 | `result-track:253078a5972c3ba2e8b001e96f1e99ba8bc5f63c6a0ff2ce5f89b88013c2626e` |
| 4 | `theorem` | [exists_iUnion_ball_eq_radius_pos_lt](../../../../../mathematics/Topology/MetricTopology/ShrinkingLemma/Variant1167042d5d30a12f9bae561d76fb33b906f52c0d6413593e2894abfd2aa69752.lean/declarations/exists-iunion-ball-eq-radius-pos-lt--f2406ef5430fbc00057968c2.md) | 70 | `result-track:f2406ef5430fbc00057968c20960710ea5884b3e0849ea2c665c4a8920f383d0` |
| 5 | `theorem` | [exists_locallyFinite_subset_iUnion_ball_radius_lt](../../../../../mathematics/Topology/MetricTopology/ShrinkingLemma/Variant1167042d5d30a12f9bae561d76fb33b906f52c0d6413593e2894abfd2aa69752.lean/declarations/exists-locallyfinite-subset-iunion-ball-radius-lt--675b58cf77eb77869e2199a9.md) | 88 | `result-track:675b58cf77eb77869e2199a9f1884bcf0ebc1d7b041399ed2d4d77e14246e36a` |
| 6 | `theorem` | [exists_locallyFinite_iUnion_eq_ball_radius_lt](../../../../../mathematics/Topology/MetricTopology/ShrinkingLemma/Variant1167042d5d30a12f9bae561d76fb33b906f52c0d6413593e2894abfd2aa69752.lean/declarations/exists-locallyfinite-iunion-eq-ball-radius-lt--c4189593f2dae05976fdde65.md) | 112 | `result-track:c4189593f2dae05976fdde65247d9a8a2912d0ae5b4c5996eeb2cd7048aa81bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
