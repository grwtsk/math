# Verification target: GRWTSK.Topology.MetricTopology.ControlledMap.Variant6ca912c1a8c359d501aa06d2e5d37c4543d6200987abb4f7d4c32908087698cd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9320cb5c844d3d7834639ed6d586e4e43a3bf2c2",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/ControlledMap/Variant6ca912c1a8c359d501aa06d2e5d37c4543d6200987abb4f7d4c32908087698cd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/ControlledMap/Variant6ca912c1a8c359d501aa06d2e5d37c4543d6200987abb4f7d4c32908087698cd.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/ControlledMap/Variant6ca912c1a8c359d501aa06d2e5d37c4543d6200987abb4f7d4c32908087698cd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9320cb5c844d3d7834639ed6d586e4e43a3bf2c2`.

Source path: `GRWTSK/Topology/MetricTopology/ControlledMap/Variant6ca912c1a8c359d501aa06d2e5d37c4543d6200987abb4f7d4c32908087698cd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/ControlledMap/Variant6ca912c1a8c359d501aa06d2e5d37c4543d6200987abb4f7d4c32908087698cd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Attention.ErrorTransform` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ControlledMap](../../../../../mathematics/Topology/MetricTopology/ControlledMap/Variant6ca912c1a8c359d501aa06d2e5d37c4543d6200987abb4f7d4c32908087698cd.lean/declarations/controlledmap--8545d66a3a5ba8841ea5db6a.md) | 18 | `declaration-track:8545d66a3a5ba8841ea5db6a3750e353aed3bac994069e638aefed09d7bf0335` |
| 2 | `def` | [identity](../../../../../mathematics/Topology/MetricTopology/ControlledMap/Variant6ca912c1a8c359d501aa06d2e5d37c4543d6200987abb4f7d4c32908087698cd.lean/declarations/identity--13ed0e1c90e4f70319356e04.md) | 25 | `declaration-track:13ed0e1c90e4f70319356e048c65f4cb20f3245012e83ce815286d81ce37264e` |
| 3 | `def` | [comp](../../../../../mathematics/Topology/MetricTopology/ControlledMap/Variant6ca912c1a8c359d501aa06d2e5d37c4543d6200987abb4f7d4c32908087698cd.lean/declarations/comp--78a3de3d2b56e175116f8b2a.md) | 30 | `declaration-track:78a3de3d2b56e175116f8b2a0a7520972a9a52009d5700dadf9b0fd50dbe3c18` |
| 4 | `theorem` | [comp_sound](../../../../../mathematics/Topology/MetricTopology/ControlledMap/Variant6ca912c1a8c359d501aa06d2e5d37c4543d6200987abb4f7d4c32908087698cd.lean/declarations/comp-sound--f87eee5fecc726ae93c35bad.md) | 38 | `result-track:f87eee5fecc726ae93c35baddaf80c2b1f2c979872081772a8d992bcc4ead16e` |
| 5 | `theorem` | [comp_assoc_behavior](../../../../../mathematics/Topology/MetricTopology/ControlledMap/Variant6ca912c1a8c359d501aa06d2e5d37c4543d6200987abb4f7d4c32908087698cd.lean/declarations/comp-assoc-behavior--7a80bdefe6d101956987ce6b.md) | 54 | `result-track:7a80bdefe6d101956987ce6bc3ae08b5635bacb61185af01afd894fb73879fd8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
