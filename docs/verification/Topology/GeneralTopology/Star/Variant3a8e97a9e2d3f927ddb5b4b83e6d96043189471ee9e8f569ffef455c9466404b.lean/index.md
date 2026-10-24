# Verification target: GRWTSK.Topology.GeneralTopology.Star.Variant3a8e97a9e2d3f927ddb5b4b83e6d96043189471ee9e8f569ffef455c9466404b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "71e524f53622d48fd3cfe620cf099c6aee2dfee4",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Star/Variant3a8e97a9e2d3f927ddb5b4b83e6d96043189471ee9e8f569ffef455c9466404b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Star/Variant3a8e97a9e2d3f927ddb5b4b83e6d96043189471ee9e8f569ffef455c9466404b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Star/Variant3a8e97a9e2d3f927ddb5b4b83e6d96043189471ee9e8f569ffef455c9466404b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `71e524f53622d48fd3cfe620cf099c6aee2dfee4`.

Source path: `GRWTSK/Topology/GeneralTopology/Star/Variant3a8e97a9e2d3f927ddb5b4b83e6d96043189471ee9e8f569ffef455c9466404b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Star/Variant3a8e97a9e2d3f927ddb5b4b83e6d96043189471ee9e8f569ffef455c9466404b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Star.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.Prod` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Constructions` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Defs` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ContinuousStar](../../../../../mathematics/Topology/GeneralTopology/Star/Variant3a8e97a9e2d3f927ddb5b4b83e6d96043189471ee9e8f569ffef455c9466404b.lean/declarations/continuousstar--35a3dd0cb836b5404b6d8264.md) | 29 | `declaration-track:35a3dd0cb836b5404b6d8264d37beb109e919bfe4f2af97f05945a665591e6e1` |
| 2 | `theorem` | [continuousOn_star](../../../../../mathematics/Topology/GeneralTopology/Star/Variant3a8e97a9e2d3f927ddb5b4b83e6d96043189471ee9e8f569ffef455c9466404b.lean/declarations/continuouson-star--da7be9c553c68c35eaffee47.md) | 39 | `result-track:da7be9c553c68c35eaffee47b6fa6551800e99af6c7508ce60fd0ca38c84dda4` |
| 3 | `theorem` | [continuousWithinAt_star](../../../../../mathematics/Topology/GeneralTopology/Star/Variant3a8e97a9e2d3f927ddb5b4b83e6d96043189471ee9e8f569ffef455c9466404b.lean/declarations/continuouswithinat-star--15f8bc3eb9b7bcf6f9daa732.md) | 42 | `result-track:15f8bc3eb9b7bcf6f9daa732f2eaf557e273aae94bcb42e3996bfc512da32b43` |
| 4 | `theorem` | [continuousAt_star](../../../../../mathematics/Topology/GeneralTopology/Star/Variant3a8e97a9e2d3f927ddb5b4b83e6d96043189471ee9e8f569ffef455c9466404b.lean/declarations/continuousat-star--8ad9372c4a408b0daff6f550.md) | 45 | `result-track:8ad9372c4a408b0daff6f550ac0bd0cd1e12c412ad4d00278f52db2c3968d5d7` |
| 5 | `theorem` | [tendsto_star](../../../../../mathematics/Topology/GeneralTopology/Star/Variant3a8e97a9e2d3f927ddb5b4b83e6d96043189471ee9e8f569ffef455c9466404b.lean/declarations/tendsto-star--9f91d702a93ac3348affd6e6.md) | 48 | `result-track:9f91d702a93ac3348affd6e6e36b4740c34439c92615d4dd28443c6a02061efa` |
| 6 | `theorem` | [Filter.Tendsto.star](../../../../../mathematics/Topology/GeneralTopology/Star/Variant3a8e97a9e2d3f927ddb5b4b83e6d96043189471ee9e8f569ffef455c9466404b.lean/declarations/filter-tendsto-star--601e391ece9c1c80d925fefd.md) | 51 | `result-track:601e391ece9c1c80d925fefd7729838b9daa3128fc575627ea1c85d153043de5` |
| 7 | `theorem` | [Continuous.star](../../../../../mathematics/Topology/GeneralTopology/Star/Variant3a8e97a9e2d3f927ddb5b4b83e6d96043189471ee9e8f569ffef455c9466404b.lean/declarations/continuous-star--18ba76fe33368b49078468d0.md) | 58 | `result-track:18ba76fe33368b49078468d092b7c4b6b8de6377b13a21429081696dc1a904e8` |
| 8 | `theorem` | [ContinuousAt.star](../../../../../mathematics/Topology/GeneralTopology/Star/Variant3a8e97a9e2d3f927ddb5b4b83e6d96043189471ee9e8f569ffef455c9466404b.lean/declarations/continuousat-star--7e616df15df18f784c9673ee.md) | 62 | `result-track:7e616df15df18f784c9673ee677d92f0eafec642db0de945297e49eb0f06899f` |
| 9 | `theorem` | [ContinuousOn.star](../../../../../mathematics/Topology/GeneralTopology/Star/Variant3a8e97a9e2d3f927ddb5b4b83e6d96043189471ee9e8f569ffef455c9466404b.lean/declarations/continuouson-star--a4c5da6c04a4809139dc7e59.md) | 66 | `result-track:a4c5da6c04a4809139dc7e59e1124ac6b708dc5e3e57d977efdd8bb0e955e418` |
| 10 | `theorem` | [ContinuousWithinAt.star](../../../../../mathematics/Topology/GeneralTopology/Star/Variant3a8e97a9e2d3f927ddb5b4b83e6d96043189471ee9e8f569ffef455c9466404b.lean/declarations/continuouswithinat-star--32360417e354b38b4fbf1a71.md) | 69 | `result-track:32360417e354b38b4fbf1a7115b30b72bd0acd3f3e7381e9425f39f83d5c6b68` |
| 11 | `def` | [starContinuousMap](../../../../../mathematics/Topology/GeneralTopology/Star/Variant3a8e97a9e2d3f927ddb5b4b83e6d96043189471ee9e8f569ffef455c9466404b.lean/declarations/starcontinuousmap--7a41a9c905bf17fe983dd8ad.md) | 75 | `declaration-track:7a41a9c905bf17fe983dd8ad5a8b001ad0cd33c93b5a00fb7c586af49113af1a` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Star/Variant3a8e97a9e2d3f927ddb5b4b83e6d96043189471ee9e8f569ffef455c9466404b.lean/declarations/instance--42a2c92ca6f8b2c5b15bb25e.md) | 84 | `declaration-track:42a2c92ca6f8b2c5b15bb25e429b2646240fe7151403903da5df0801dec06511` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Star/Variant3a8e97a9e2d3f927ddb5b4b83e6d96043189471ee9e8f569ffef455c9466404b.lean/declarations/instance--90d421ca69633d6051dec88a.md) | 88 | `declaration-track:90d421ca69633d6051dec88a83ae7b36d6af36c5b951cb2ae928f6c48d3940a2` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Star/Variant3a8e97a9e2d3f927ddb5b4b83e6d96043189471ee9e8f569ffef455c9466404b.lean/declarations/instance--6705349aa056c678baa274f0.md) | 92 | `declaration-track:6705349aa056c678baa274f0e7e7c3ebe82ae47df97e4f5606710fc29aa79206` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Star/Variant3a8e97a9e2d3f927ddb5b4b83e6d96043189471ee9e8f569ffef455c9466404b.lean/declarations/instance--78054aea03875b09536988ac.md) | 95 | `declaration-track:78054aea03875b09536988ac7a6d27e23874ece62b0cfa8e5a2e51580a17e306` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
