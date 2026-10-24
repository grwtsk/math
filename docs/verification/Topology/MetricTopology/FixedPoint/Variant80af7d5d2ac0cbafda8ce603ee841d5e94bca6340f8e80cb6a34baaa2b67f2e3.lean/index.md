# Verification target: GRWTSK.Topology.MetricTopology.FixedPoint.Variant80af7d5d2ac0cbafda8ce603ee841d5e94bca6340f8e80cb6a34baaa2b67f2e3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d9c1ca73773b728c797aa63317fc9e4476773520",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/FixedPoint/Variant80af7d5d2ac0cbafda8ce603ee841d5e94bca6340f8e80cb6a34baaa2b67f2e3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/FixedPoint/Variant80af7d5d2ac0cbafda8ce603ee841d5e94bca6340f8e80cb6a34baaa2b67f2e3.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/FixedPoint/Variant80af7d5d2ac0cbafda8ce603ee841d5e94bca6340f8e80cb6a34baaa2b67f2e3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d9c1ca73773b728c797aa63317fc9e4476773520`.

Source path: `GRWTSK/Topology/MetricTopology/FixedPoint/Variant80af7d5d2ac0cbafda8ce603ee841d5e94bca6340f8e80cb6a34baaa2b67f2e3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/FixedPoint/Variant80af7d5d2ac0cbafda8ce603ee841d5e94bca6340f8e80cb6a34baaa2b67f2e3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HasFixedPoint](../../../../../mathematics/Topology/MetricTopology/FixedPoint/Variant80af7d5d2ac0cbafda8ce603ee841d5e94bca6340f8e80cb6a34baaa2b67f2e3.lean/declarations/hasfixedpoint--b92ac1bb7c35ffc28c2d5e80.md) | 27 | `declaration-track:b92ac1bb7c35ffc28c2d5e80f48f0405dc9ad2f475a466f717ad30b247462b81` |
| 2 | `structure` | [HasUniqueFixedPoint](../../../../../mathematics/Topology/MetricTopology/FixedPoint/Variant80af7d5d2ac0cbafda8ce603ee841d5e94bca6340f8e80cb6a34baaa2b67f2e3.lean/declarations/hasuniquefixedpoint--ccc2eafefade65ad09d92242.md) | 31 | `declaration-track:ccc2eafefade65ad09d92242b39a324c6a800d7d9fb9a7be58c01fdedf3aeef6` |
| 3 | `structure` | [ContractiveFixedPointContract](../../../../../mathematics/Topology/MetricTopology/FixedPoint/Variant80af7d5d2ac0cbafda8ce603ee841d5e94bca6340f8e80cb6a34baaa2b67f2e3.lean/declarations/contractivefixedpointcontract--8a948f20776374b85877db34.md) | 35 | `declaration-track:8a948f20776374b85877db34d8d0326807feae2e43f953d9c5ca29f1a3a9ee63` |
| 4 | `theorem` | [fixed_point_is_fixed](../../../../../mathematics/Topology/MetricTopology/FixedPoint/Variant80af7d5d2ac0cbafda8ce603ee841d5e94bca6340f8e80cb6a34baaa2b67f2e3.lean/declarations/fixed-point-is-fixed--a4583fc7c960252e248afcba.md) | 43 | `result-track:a4583fc7c960252e248afcba3faa7bab76e41a3ed5fae5893375d05767f0d7fa` |
| 5 | `theorem` | [unique_fixed_point_eq](../../../../../mathematics/Topology/MetricTopology/FixedPoint/Variant80af7d5d2ac0cbafda8ce603ee841d5e94bca6340f8e80cb6a34baaa2b67f2e3.lean/declarations/unique-fixed-point-eq--51b67027ee40f2c49d8e92bb.md) | 48 | `result-track:51b67027ee40f2c49d8e92bb3a76e9d28011cab59aecb54fd1328a4da0cabedd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
