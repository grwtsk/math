# Verification target: GRWTSK.Topology.MetricTopology.FixedPointSeparation.Variant8d5401e24557f85f4c04239924642f4fd9c4eb87049e3aabf1e5814abcdd9739

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "97b8044e3efd3b2c5ccef1a0fe230aff96b970bd",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/FixedPointSeparation/Variant8d5401e24557f85f4c04239924642f4fd9c4eb87049e3aabf1e5814abcdd9739.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/FixedPointSeparation/Variant8d5401e24557f85f4c04239924642f4fd9c4eb87049e3aabf1e5814abcdd9739.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/FixedPointSeparation/Variant8d5401e24557f85f4c04239924642f4fd9c4eb87049e3aabf1e5814abcdd9739.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `97b8044e3efd3b2c5ccef1a0fe230aff96b970bd`.

Source path: `GRWTSK/Topology/MetricTopology/FixedPointSeparation/Variant8d5401e24557f85f4c04239924642f4fd9c4eb87049e3aabf1e5814abcdd9739.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/FixedPointSeparation/Variant8d5401e24557f85f4c04239924642f4fd9c4eb87049e3aabf1e5814abcdd9739.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Operational.DiscreteFixedPoint` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [SeparationClassification](../../../../../mathematics/Topology/MetricTopology/FixedPointSeparation/Variant8d5401e24557f85f4c04239924642f4fd9c4eb87049e3aabf1e5814abcdd9739.lean/declarations/separationclassification--8dbf55b58a9635f944383ec0.md) | 16 | `declaration-track:8dbf55b58a9635f944383ec01263bd6bf91b8cc106872f34237c37b47fbf615c` |
| 2 | `structure` | [FixedFamilySeparationCertificate](../../../../../mathematics/Topology/MetricTopology/FixedPointSeparation/Variant8d5401e24557f85f4c04239924642f4fd9c4eb87049e3aabf1e5814abcdd9739.lean/declarations/fixedfamilyseparationcertificate--f1bf1e0c472cd39dcc223d04.md) | 28 | `declaration-track:f1bf1e0c472cd39dcc223d04edf3618c735237c3eda930dab2408e880070c44f` |
| 3 | `structure` | [UniformFixedFamilySeparationCertificate](../../../../../mathematics/Topology/MetricTopology/FixedPointSeparation/Variant8d5401e24557f85f4c04239924642f4fd9c4eb87049e3aabf1e5814abcdd9739.lean/declarations/uniformfixedfamilyseparationcertificate--c13363e84169ac5542822560.md) | 44 | `declaration-track:c13363e84169ac5542822560cc8788cfaf7eff96cec985c7c9884c5cf860fcb7` |
| 4 | `structure` | [ProfileUniformSeparationCertificate](../../../../../mathematics/Topology/MetricTopology/FixedPointSeparation/Variant8d5401e24557f85f4c04239924642f4fd9c4eb87049e3aabf1e5814abcdd9739.lean/declarations/profileuniformseparationcertificate--be9d9d671a030bdf53dd5793.md) | 61 | `declaration-track:be9d9d671a030bdf53dd579324a36717cbb1f63c58d4a62b036c6d08760e65af` |
| 5 | `theorem` | [dist_positive](../../../../../mathematics/Topology/MetricTopology/FixedPointSeparation/Variant8d5401e24557f85f4c04239924642f4fd9c4eb87049e3aabf1e5814abcdd9739.lean/declarations/dist-positive--3454448f7e4fe80eb926fdf8.md) | 76 | `result-track:3454448f7e4fe80eb926fdf81881597f1bb70ee482ff7c2bdaff1f1bb1b6d9f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
