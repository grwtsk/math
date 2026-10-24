# Verification target: GRWTSK.Topology.MetricTopology.DiscreteTopologyNonDiscreteUniformity.Variant4e571328b1517be5cd11f8cfdb76979ee4af011515ab67f89bc75cc77d57185e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "36cb59bd12e925e0ecb775566bb819dc2f52ca77",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variant4e571328b1517be5cd11f8cfdb76979ee4af011515ab67f89bc75cc77d57185e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variant4e571328b1517be5cd11f8cfdb76979ee4af011515ab67f89bc75cc77d57185e.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variant4e571328b1517be5cd11f8cfdb76979ee4af011515ab67f89bc75cc77d57185e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `36cb59bd12e925e0ecb775566bb819dc2f52ca77`.

Source path: `GRWTSK/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variant4e571328b1517be5cd11f8cfdb76979ee4af011515ab67f89bc75cc77d57185e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variant4e571328b1517be5cd11f8cfdb76979ee4af011515ab67f89bc75cc77d57185e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecificLimits.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Pseudo.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Cauchy` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Cauchy` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variant4e571328b1517be5cd11f8cfdb76979ee4af011515ab67f89bc75cc77d57185e.lean/declarations/instance--215faebd7b032389d77c714e.md) | 91 | `declaration-track:215faebd7b032389d77c714ea369f675113d3d39055ab02a946de27891beadb9` |
| 2 | `lemma` | [dist_def](../../../../../mathematics/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variant4e571328b1517be5cd11f8cfdb76979ee4af011515ab67f89bc75cc77d57185e.lean/declarations/dist-def--f7da640c9d0fe348ef08ed78.md) | 98 | `result-track:f7da640c9d0fe348ef08ed78dd32f7a598ef9eee20b1a0301ea9e325fceef7e9` |
| 3 | `lemma` | [Int.eq_of_pow_sub_le](../../../../../mathematics/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variant4e571328b1517be5cd11f8cfdb76979ee4af011515ab67f89bc75cc77d57185e.lean/declarations/int-eq-of-pow-sub-le--afcd24772751a36cdc79025c.md) | 100 | `result-track:afcd24772751a36cdc79025c82edbdb9bb36596e319ff6d7e918a0a322e2b225` |
| 4 | `lemma` | [ball_eq_singleton](../../../../../mathematics/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variant4e571328b1517be5cd11f8cfdb76979ee4af011515ab67f89bc75cc77d57185e.lean/declarations/ball-eq-singleton--9f151a91c585469f26dfd42f.md) | 134 | `result-track:9f151a91c585469f26dfd42f156cf2dbe50e4fb73705359f1e1fbc5fce04c80f` |
| 5 | `theorem` | [TopIsDiscrete](../../../../../mathematics/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variant4e571328b1517be5cd11f8cfdb76979ee4af011515ab67f89bc75cc77d57185e.lean/declarations/topisdiscrete--277cdd23d82ce776cc4708fb.md) | 144 | `result-track:277cdd23d82ce776cc4708fb910ad3f0f678e023fc676bc1cde591a85f143787` |
| 6 | `lemma` | [idIsCauchy](../../../../../mathematics/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variant4e571328b1517be5cd11f8cfdb76979ee4af011515ab67f89bc75cc77d57185e.lean/declarations/idiscauchy--24687b38567d915cd0c06493.md) | 149 | `result-track:24687b38567d915cd0c064935b75c84031b54ece6a1a04d334748310bc7b332f` |
| 7 | `def` | [fundamentalEntourage](../../../../../mathematics/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variant4e571328b1517be5cd11f8cfdb76979ee4af011515ab67f89bc75cc77d57185e.lean/declarations/fundamentalentourage--c0c9b24f2645939ab89f1bf9.md) | 174 | `declaration-track:c0c9b24f2645939ab89f1bf9e562396598b02f3db0056533d14b02533e450e25` |
| 8 | `lemma` | [fundamentalEntourage_ext](../../../../../mathematics/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variant4e571328b1517be5cd11f8cfdb76979ee4af011515ab67f89bc75cc77d57185e.lean/declarations/fundamentalentourage-ext--9b6ff82758a194ae4653e1b1.md) | 178 | `result-track:9b6ff82758a194ae4653e1b11453c5aca4874af2811831e700f3b54a02029e5f` |
| 9 | `lemma` | [mem_range_fundamentalEntourage](../../../../../mathematics/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variant4e571328b1517be5cd11f8cfdb76979ee4af011515ab67f89bc75cc77d57185e.lean/declarations/mem-range-fundamentalentourage--562d7bb064c0f0025c31524b.md) | 182 | `result-track:562d7bb064c0f0025c31524b1a186fd8fec51be257f2b671f3b21efd6dff43f5` |
| 10 | `lemma` | [mem_fundamentalEntourage](../../../../../mathematics/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variant4e571328b1517be5cd11f8cfdb76979ee4af011515ab67f89bc75cc77d57185e.lean/declarations/mem-fundamentalentourage--069d0ad7ae005f002760e62d.md) | 186 | `result-track:069d0ad7ae005f002760e62d02361ae06581c7c7325d5947197c003bce672718` |
| 11 | `def` | [counterBasis](../../../../../mathematics/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variant4e571328b1517be5cd11f8cfdb76979ee4af011515ab67f89bc75cc77d57185e.lean/declarations/counterbasis--3494038c23faa480c8019861.md) | 205 | `declaration-track:3494038c23faa480c8019861a1bed2b2184574383baddab9c48620762b6918d7` |
| 12 | `lemma` | [mem_counterBasis_iff](../../../../../mathematics/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variant4e571328b1517be5cd11f8cfdb76979ee4af011515ab67f89bc75cc77d57185e.lean/declarations/mem-counterbasis-iff--5ce21ce50aa312d725946dfe.md) | 228 | `result-track:5ce21ce50aa312d725946dfe1e73921dd6bdd9b0a46b3d7a74bfc7d0c91200b0` |
| 13 | `def` | [counterCoreUniformity](../../../../../mathematics/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variant4e571328b1517be5cd11f8cfdb76979ee4af011515ab67f89bc75cc77d57185e.lean/declarations/countercoreuniformity--00347becb9cfbd8ab11e25cd.md) | 237 | `declaration-track:00347becb9cfbd8ab11e25cd64f8d01e5c3f88b929859f349a9a3f6861418a97` |
| 14 | `instance` | [counterTopology](../../../../../mathematics/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variant4e571328b1517be5cd11f8cfdb76979ee4af011515ab67f89bc75cc77d57185e.lean/declarations/countertopology--f577053e03ad7ecb8b5064eb.md) | 265 | `declaration-track:f577053e03ad7ecb8b5064ebc92e2942bc9bf4c57adcd4d53cd8acd0508c7cff` |
| 15 | `instance` | [counterUniformity](../../../../../mathematics/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variant4e571328b1517be5cd11f8cfdb76979ee4af011515ab67f89bc75cc77d57185e.lean/declarations/counteruniformity--d413e437e8e346cbd78fc1fe.md) | 268 | `declaration-track:d413e437e8e346cbd78fc1fe2898e6b84105d43e7dc14c5c14973d9cedac9ef2` |
| 16 | `lemma` | [HasBasis_counterUniformity](../../../../../mathematics/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variant4e571328b1517be5cd11f8cfdb76979ee4af011515ab67f89bc75cc77d57185e.lean/declarations/hasbasis-counteruniformity--539ef85549960190c26644f8.md) | 270 | `result-track:539ef85549960190c26644f8ad8202a2bb11398ab9c6b5bcf941842a6fe797d1` |
| 17 | `theorem` | [TopIsDiscrete'](../../../../../mathematics/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variant4e571328b1517be5cd11f8cfdb76979ee4af011515ab67f89bc75cc77d57185e.lean/declarations/topisdiscrete--7a52c9c87cefa29220c0efb3.md) | 280 | `result-track:7a52c9c87cefa29220c0efb33e3232872bbd572e57b062c584c0f13140f1d36a` |
| 18 | `lemma` | [atTopIsCauchy](../../../../../mathematics/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variant4e571328b1517be5cd11f8cfdb76979ee4af011515ab67f89bc75cc77d57185e.lean/declarations/attopiscauchy--f3813d4f963cad04647f9dda.md) | 305 | `result-track:f3813d4f963cad04647f9dda66ac29535988ddad56a353509030908678005dfa` |
| 19 | `lemma` | [idIsCauchy'](../../../../../mathematics/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variant4e571328b1517be5cd11f8cfdb76979ee4af011515ab67f89bc75cc77d57185e.lean/declarations/idiscauchy--9604528ed8af915a1b148eb3.md) | 313 | `result-track:9604528ed8af915a1b148eb39f49eeac4535a2ed9fe06aaeab60e09236615eda` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
