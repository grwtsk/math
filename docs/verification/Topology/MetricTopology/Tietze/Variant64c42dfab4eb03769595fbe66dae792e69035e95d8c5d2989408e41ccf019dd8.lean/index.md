# Verification target: GRWTSK.Topology.MetricTopology.Tietze.Variant64c42dfab4eb03769595fbe66dae792e69035e95d8c5d2989408e41ccf019dd8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "801c9a21c4027a679ff374fd1253df3e97900b04",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Tietze/Variant64c42dfab4eb03769595fbe66dae792e69035e95d8c5d2989408e41ccf019dd8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Tietze/Variant64c42dfab4eb03769595fbe66dae792e69035e95d8c5d2989408e41ccf019dd8.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Tietze/Variant64c42dfab4eb03769595fbe66dae792e69035e95d8c5d2989408e41ccf019dd8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `801c9a21c4027a679ff374fd1253df3e97900b04`.

Source path: `GRWTSK/Topology/MetricTopology/Tietze/Variant64c42dfab4eb03769595fbe66dae792e69035e95d8c5d2989408e41ccf019dd8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Tietze/Variant64c42dfab4eb03769595fbe66dae792e69035e95d8c5d2989408e41ccf019dd8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.RCLike.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.TietzeExtension` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.HomeomorphBall` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.RCLike` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [TietzeExtension.of_tvs](../../../../../mathematics/Topology/MetricTopology/Tietze/Variant64c42dfab4eb03769595fbe66dae792e69035e95d8c5d2989408e41ccf019dd8.lean/declarations/tietzeextension-of-tvs--8620b3ac442856fa30be0ec5.md) | 35 | `result-track:8620b3ac442856fa30be0ec5deb1dc67f52fbbe5fd5540aaf5f373c0226b9f47` |
| 2 | `instance` | [Complex.instTietzeExtension](../../../../../mathematics/Topology/MetricTopology/Tietze/Variant64c42dfab4eb03769595fbe66dae792e69035e95d8c5d2989408e41ccf019dd8.lean/declarations/complex-insttietzeextension--41ad1d89ee4e2eda0a3130a2.md) | 41 | `declaration-track:41ad1d89ee4e2eda0a3130a221f3f18e22939b1786381e9efc263526cfc78f39` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Tietze/Variant64c42dfab4eb03769595fbe66dae792e69035e95d8c5d2989408e41ccf019dd8.lean/declarations/instance--45eeb223a6a6918e746e2bfc.md) | 44 | `declaration-track:45eeb223a6a6918e746e2bfc518fa82f844706470486b68f10b4a664c7cd1afa` |
| 4 | `instance` | [RCLike.instTietzeExtensionTVS](../../../../../mathematics/Topology/MetricTopology/Tietze/Variant64c42dfab4eb03769595fbe66dae792e69035e95d8c5d2989408e41ccf019dd8.lean/declarations/rclike-insttietzeextensiontvs--8d695ff060ba64ef7dc60636.md) | 47 | `declaration-track:8d695ff060ba64ef7dc606367e2d02dcbd102fa967c1a774e58b1c9fcdc86640` |
| 5 | `instance` | [Set.instTietzeExtensionUnitBall](../../../../../mathematics/Topology/MetricTopology/Tietze/Variant64c42dfab4eb03769595fbe66dae792e69035e95d8c5d2989408e41ccf019dd8.lean/declarations/set-insttietzeextensionunitball--53fdbf4f63f0965d14262a28.md) | 53 | `declaration-track:53fdbf4f63f0965d14262a2897bfb1acceb6e80cbe8e5690528edc7262febaea` |
| 6 | `instance` | [Set.instTietzeExtensionUnitClosedBall](../../../../../mathematics/Topology/MetricTopology/Tietze/Variant64c42dfab4eb03769595fbe66dae792e69035e95d8c5d2989408e41ccf019dd8.lean/declarations/set-insttietzeextensionunitclosedball--05dc37b08d0cbe74525f6783.md) | 59 | `declaration-track:05dc37b08d0cbe74525f678365ce30ebcd8106a9b4229656f387891667fe4199` |
| 7 | `theorem` | [Metric.instTietzeExtensionBall](../../../../../mathematics/Topology/MetricTopology/Tietze/Variant64c42dfab4eb03769595fbe66dae792e69035e95d8c5d2989408e41ccf019dd8.lean/declarations/metric-insttietzeextensionball--699ad222d035b98eb38bef71.md) | 83 | `result-track:699ad222d035b98eb38bef718709ec250585c8cf9132c85f1ec7b596dfa01c50` |
| 8 | `theorem` | [Metric.instTietzeExtensionClosedBall](../../../../../mathematics/Topology/MetricTopology/Tietze/Variant64c42dfab4eb03769595fbe66dae792e69035e95d8c5d2989408e41ccf019dd8.lean/declarations/metric-insttietzeextensionclosedball--3b2dd560234d0cb619fc26fe.md) | 90 | `result-track:3b2dd560234d0cb619fc26fe366f1c54ca04fe581199441353071798beeaeca9` |
| 9 | `theorem` | [exists_norm_eq_restrict_eq](../../../../../mathematics/Topology/MetricTopology/Tietze/Variant64c42dfab4eb03769595fbe66dae792e69035e95d8c5d2989408e41ccf019dd8.lean/declarations/exists-norm-eq-restrict-eq--278dbdd7b80b20c05c5b68ee.md) | 114 | `result-track:278dbdd7b80b20c05c5b68eeba5db071d5d9cd6a10db5f0e7a60247a752ba420` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
