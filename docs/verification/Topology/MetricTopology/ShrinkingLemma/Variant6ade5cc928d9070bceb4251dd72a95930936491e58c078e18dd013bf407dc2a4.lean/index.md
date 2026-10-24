# Verification target: GRWTSK.Topology.MetricTopology.ShrinkingLemma.Variant6ade5cc928d9070bceb4251dd72a95930936491e58c078e18dd013bf407dc2a4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f55553959a87363bec29bc98c78e3254496267bb",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/ShrinkingLemma/Variant6ade5cc928d9070bceb4251dd72a95930936491e58c078e18dd013bf407dc2a4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/ShrinkingLemma/Variant6ade5cc928d9070bceb4251dd72a95930936491e58c078e18dd013bf407dc2a4.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/ShrinkingLemma/Variant6ade5cc928d9070bceb4251dd72a95930936491e58c078e18dd013bf407dc2a4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f55553959a87363bec29bc98c78e3254496267bb`.

Source path: `GRWTSK/Topology/MetricTopology/ShrinkingLemma/Variant6ade5cc928d9070bceb4251dd72a95930936491e58c078e18dd013bf407dc2a4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/ShrinkingLemma/Variant6ade5cc928d9070bceb4251dd72a95930936491e58c078e18dd013bf407dc2a4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.EMetricSpace.Paracompact` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.ProperSpace.Lemmas` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ShrinkingLemma` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_subset_iUnion_ball_radius_lt](../../../../../mathematics/Topology/MetricTopology/ShrinkingLemma/Variant6ade5cc928d9070bceb4251dd72a95930936491e58c078e18dd013bf407dc2a4.lean/declarations/exists-subset-iunion-ball-radius-lt--197efd5910983617aaf70d00.md) | 45 | `result-track:197efd5910983617aaf70d00e7dc85b79ff555a6f0b6f9e24c8a8b08b05b00a9` |
| 2 | `theorem` | [exists_iUnion_ball_eq_radius_lt](../../../../../mathematics/Topology/MetricTopology/ShrinkingLemma/Variant6ade5cc928d9070bceb4251dd72a95930936491e58c078e18dd013bf407dc2a4.lean/declarations/exists-iunion-ball-eq-radius-lt--1931f8d14638b2754a3486a4.md) | 57 | `result-track:1931f8d14638b2754a3486a420fe0b207c5a890fe4254e5a2ba27e12a4f45192` |
| 3 | `theorem` | [exists_subset_iUnion_ball_radius_pos_lt](../../../../../mathematics/Topology/MetricTopology/ShrinkingLemma/Variant6ade5cc928d9070bceb4251dd72a95930936491e58c078e18dd013bf407dc2a4.lean/declarations/exists-subset-iunion-ball-radius-pos-lt--ad8964e36cfbfd74adbe564f.md) | 66 | `result-track:ad8964e36cfbfd74adbe564fca38cb54f007a87843e2abd5149fbbfc36f90818` |
| 4 | `theorem` | [exists_iUnion_ball_eq_radius_pos_lt](../../../../../mathematics/Topology/MetricTopology/ShrinkingLemma/Variant6ade5cc928d9070bceb4251dd72a95930936491e58c078e18dd013bf407dc2a4.lean/declarations/exists-iunion-ball-eq-radius-pos-lt--1bb54f4b299f4c68f869d861.md) | 78 | `result-track:1bb54f4b299f4c68f869d861b75711aef582735fe9bbde4e9fb28d99253d86c8` |
| 5 | `theorem` | [exists_locallyFinite_subset_iUnion_ball_radius_lt](../../../../../mathematics/Topology/MetricTopology/ShrinkingLemma/Variant6ade5cc928d9070bceb4251dd72a95930936491e58c078e18dd013bf407dc2a4.lean/declarations/exists-locallyfinite-subset-iunion-ball-radius-lt--e267b74413d0e8f32d50946a.md) | 96 | `result-track:e267b74413d0e8f32d50946a3a872a152224b5bb09fdfc6989d4e94742f02e3c` |
| 6 | `theorem` | [exists_locallyFinite_iUnion_eq_ball_radius_lt](../../../../../mathematics/Topology/MetricTopology/ShrinkingLemma/Variant6ade5cc928d9070bceb4251dd72a95930936491e58c078e18dd013bf407dc2a4.lean/declarations/exists-locallyfinite-iunion-eq-ball-radius-lt--3a121bd62fc8076b4fe48214.md) | 120 | `result-track:3a121bd62fc8076b4fe482142e8061c807a37546188a13a16dceb54781106da3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
