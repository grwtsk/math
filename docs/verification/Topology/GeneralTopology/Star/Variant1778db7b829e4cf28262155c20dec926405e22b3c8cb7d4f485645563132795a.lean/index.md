# Verification target: GRWTSK.Topology.GeneralTopology.Star.Variant1778db7b829e4cf28262155c20dec926405e22b3c8cb7d4f485645563132795a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "11ec313906f1f3139817044dc7cccdff358f037a",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Star/Variant1778db7b829e4cf28262155c20dec926405e22b3c8cb7d4f485645563132795a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Star/Variant1778db7b829e4cf28262155c20dec926405e22b3c8cb7d4f485645563132795a.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Star/Variant1778db7b829e4cf28262155c20dec926405e22b3c8cb7d4f485645563132795a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `11ec313906f1f3139817044dc7cccdff358f037a`.

Source path: `GRWTSK/Topology/GeneralTopology/Star/Variant1778db7b829e4cf28262155c20dec926405e22b3c8cb7d4f485645563132795a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Star/Variant1778db7b829e4cf28262155c20dec926405e22b3c8cb7d4f485645563132795a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Star.Pi` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.Prod` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Constructions` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousFunction.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ContinuousStar](../../../../../mathematics/Topology/GeneralTopology/Star/Variant1778db7b829e4cf28262155c20dec926405e22b3c8cb7d4f485645563132795a.lean/declarations/continuousstar--06f306799cb7ca700c370d77.md) | 25 | `declaration-track:06f306799cb7ca700c370d77f025df648796053357bde78fd7db86061585488c` |
| 2 | `theorem` | [continuousOn_star](../../../../../mathematics/Topology/GeneralTopology/Star/Variant1778db7b829e4cf28262155c20dec926405e22b3c8cb7d4f485645563132795a.lean/declarations/continuouson-star--1b6d06fce7938dcb6afb5d20.md) | 36 | `result-track:1b6d06fce7938dcb6afb5d2008c56c634bca2951d7973d4f0a2a3a0f59ebb66f` |
| 3 | `theorem` | [continuousWithinAt_star](../../../../../mathematics/Topology/GeneralTopology/Star/Variant1778db7b829e4cf28262155c20dec926405e22b3c8cb7d4f485645563132795a.lean/declarations/continuouswithinat-star--d82cc0fac09cc27d1ab6ff76.md) | 40 | `result-track:d82cc0fac09cc27d1ab6ff76cd63c4e62452c8a636ff95546029052cd210c668` |
| 4 | `theorem` | [continuousAt_star](../../../../../mathematics/Topology/GeneralTopology/Star/Variant1778db7b829e4cf28262155c20dec926405e22b3c8cb7d4f485645563132795a.lean/declarations/continuousat-star--09531a6a96bb1420e7a333e0.md) | 44 | `result-track:09531a6a96bb1420e7a333e08a017e888c97b2200d004d5a3bea1a1f42d28d5e` |
| 5 | `theorem` | [tendsto_star](../../../../../mathematics/Topology/GeneralTopology/Star/Variant1778db7b829e4cf28262155c20dec926405e22b3c8cb7d4f485645563132795a.lean/declarations/tendsto-star--8d8563ca9e8d9bc488f0d5d2.md) | 48 | `result-track:8d8563ca9e8d9bc488f0d5d247cd5e0f11ee7aeb9ab0725dc9f5563e979375f4` |
| 6 | `theorem` | [Filter.Tendsto.star](../../../../../mathematics/Topology/GeneralTopology/Star/Variant1778db7b829e4cf28262155c20dec926405e22b3c8cb7d4f485645563132795a.lean/declarations/filter-tendsto-star--8378efc04e306f93baea5aab.md) | 52 | `result-track:8378efc04e306f93baea5aabe6c4914c2bc776b1010dae792b24fa624e0dfe31` |
| 7 | `theorem` | [Continuous.star](../../../../../mathematics/Topology/GeneralTopology/Star/Variant1778db7b829e4cf28262155c20dec926405e22b3c8cb7d4f485645563132795a.lean/declarations/continuous-star--103fc6a89aed003dbe8be660.md) | 60 | `result-track:103fc6a89aed003dbe8be660a98171d421b7089c0e82d067ea1161394f59a130` |
| 8 | `theorem` | [ContinuousAt.star](../../../../../mathematics/Topology/GeneralTopology/Star/Variant1778db7b829e4cf28262155c20dec926405e22b3c8cb7d4f485645563132795a.lean/declarations/continuousat-star--3db4c91091fd9096243eab39.md) | 64 | `result-track:3db4c91091fd9096243eab398824b69b23a5d8e419e9a9071adf0d114bfe9a5d` |
| 9 | `theorem` | [ContinuousOn.star](../../../../../mathematics/Topology/GeneralTopology/Star/Variant1778db7b829e4cf28262155c20dec926405e22b3c8cb7d4f485645563132795a.lean/declarations/continuouson-star--244010565706b805ec6434f2.md) | 68 | `result-track:244010565706b805ec6434f2d2045b15c662f51c7835539f971f968082dae3f1` |
| 10 | `theorem` | [ContinuousWithinAt.star](../../../../../mathematics/Topology/GeneralTopology/Star/Variant1778db7b829e4cf28262155c20dec926405e22b3c8cb7d4f485645563132795a.lean/declarations/continuouswithinat-star--a8645d0c789057c3ee9c7569.md) | 72 | `result-track:a8645d0c789057c3ee9c75691f43a2159f66582763daad48db15f6a999f343dd` |
| 11 | `def` | [starContinuousMap](../../../../../mathematics/Topology/GeneralTopology/Star/Variant1778db7b829e4cf28262155c20dec926405e22b3c8cb7d4f485645563132795a.lean/declarations/starcontinuousmap--dfef048bbf379376205c68ba.md) | 79 | `declaration-track:dfef048bbf379376205c68ba8dbd1d264ec86ea903ca079e3f5967a815c7ea4f` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Star/Variant1778db7b829e4cf28262155c20dec926405e22b3c8cb7d4f485645563132795a.lean/declarations/instance--b5b9d78f9f20828df40c0c0e.md) | 87 | `declaration-track:b5b9d78f9f20828df40c0c0e780fbd3306131dcb6b8592cfca9458a9a70d578c` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Star/Variant1778db7b829e4cf28262155c20dec926405e22b3c8cb7d4f485645563132795a.lean/declarations/instance--9d5099ccb85649700dd7c592.md) | 91 | `declaration-track:9d5099ccb85649700dd7c59294c9959e352133025ebb77de16f4543247cd56b2` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Star/Variant1778db7b829e4cf28262155c20dec926405e22b3c8cb7d4f485645563132795a.lean/declarations/instance--bcb58c50ead59790917a0dc2.md) | 95 | `declaration-track:bcb58c50ead59790917a0dc21ac9871e41ee321a10029486bef53b1328b61b6f` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Star/Variant1778db7b829e4cf28262155c20dec926405e22b3c8cb7d4f485645563132795a.lean/declarations/instance--c1bf37d8c1b9d89f3c5ccc9e.md) | 98 | `declaration-track:c1bf37d8c1b9d89f3c5ccc9eb13304e1e9fe6a761d9b3f5e38721bee34d3ee33` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
