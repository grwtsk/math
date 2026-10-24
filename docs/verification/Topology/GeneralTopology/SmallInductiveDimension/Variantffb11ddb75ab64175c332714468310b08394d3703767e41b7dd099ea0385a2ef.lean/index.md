# Verification target: GRWTSK.Topology.GeneralTopology.SmallInductiveDimension.Variantffb11ddb75ab64175c332714468310b08394d3703767e41b7dd099ea0385a2ef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "266080d76e16da8d8d3b09ba309f76a53522b584",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SmallInductiveDimension/Variantffb11ddb75ab64175c332714468310b08394d3703767e41b7dd099ea0385a2ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/SmallInductiveDimension/Variantffb11ddb75ab64175c332714468310b08394d3703767e41b7dd099ea0385a2ef.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/SmallInductiveDimension/Variantffb11ddb75ab64175c332714468310b08394d3703767e41b7dd099ea0385a2ef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `266080d76e16da8d8d3b09ba309f76a53522b584`.

Source path: `GRWTSK/Topology/GeneralTopology/SmallInductiveDimension/Variantffb11ddb75ab64175c332714468310b08394d3703767e41b7dd099ea0385a2ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SmallInductiveDimension/Variantffb11ddb75ab64175c332714468310b08394d3703767e41b7dd099ea0385a2ef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Cast.Order.Basic` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [inductive](../../../../../mathematics/Topology/GeneralTopology/SmallInductiveDimension/Variantffb11ddb75ab64175c332714468310b08394d3703767e41b7dd099ea0385a2ef.lean/declarations/inductive--7a2c1fff7a17070ca6117e20.md) | 54 | `declaration-track:7a2c1fff7a17070ca6117e203738cd1229fb7c416ddbe5ddce482b9f54c614a5` |
| 2 | `abbrev` | [HasSmallInductiveDimensionLE](../../../../../mathematics/Topology/GeneralTopology/SmallInductiveDimension/Variantffb11ddb75ab64175c332714468310b08394d3703767e41b7dd099ea0385a2ef.lean/declarations/hassmallinductivedimensionle--48dfb6aca10dfb5a70fa1227.md) | 65 | `declaration-track:48dfb6aca10dfb5a70fa1227b09d94626c1fdef1c52ad03f51eafdd30efa8395` |
| 3 | `theorem` | [hasSmallInductiveDimensionLT_zero_iff](../../../../../mathematics/Topology/GeneralTopology/SmallInductiveDimension/Variantffb11ddb75ab64175c332714468310b08394d3703767e41b7dd099ea0385a2ef.lean/declarations/hassmallinductivedimensionlt-zero-iff--c06e508d30a0fea5e8f75087.md) | 69 | `result-track:c06e508d30a0fea5e8f75087769a8900611e17c40c8e545ab07d9d3cf42ac380` |
| 4 | `lemma` | [hasSmallInductiveDimensionLT_one_iff](../../../../../mathematics/Topology/GeneralTopology/SmallInductiveDimension/Variantffb11ddb75ab64175c332714468310b08394d3703767e41b7dd099ea0385a2ef.lean/declarations/hassmallinductivedimensionlt-one-iff--0d5facca4b13846d6d794516.md) | 75 | `result-track:0d5facca4b13846d6d794516ebc9d6e796bc56312c9f45aa4386352381c20f38` |
| 5 | `theorem` | [HasSmallInductiveDimensionLT.mono](../../../../../mathematics/Topology/GeneralTopology/SmallInductiveDimension/Variantffb11ddb75ab64175c332714468310b08394d3703767e41b7dd099ea0385a2ef.lean/declarations/hassmallinductivedimensionlt-mono--b201c8935217e859a244c227.md) | 88 | `result-track:b201c8935217e859a244c227dcd5485c74c2c20f9581d388a42aa3ea2b5caf9b` |
| 6 | `theorem` | [HasSmallInductiveDimensionLE.mono](../../../../../mathematics/Topology/GeneralTopology/SmallInductiveDimension/Variantffb11ddb75ab64175c332714468310b08394d3703767e41b7dd099ea0385a2ef.lean/declarations/hassmallinductivedimensionle-mono--07da8b9637eec43187763f41.md) | 99 | `result-track:07da8b9637eec43187763f41c6d36864004c4e457d5e06628588a3112f5c2bcd` |
| 7 | `theorem` | [HasSmallInductiveDimensionLT.hasSmallInductiveDimensionLE](../../../../../mathematics/Topology/GeneralTopology/SmallInductiveDimension/Variantffb11ddb75ab64175c332714468310b08394d3703767e41b7dd099ea0385a2ef.lean/declarations/hassmallinductivedimensionlt-hassmallinductivedimensionle--fbe3351956c0486383a3e614.md) | 104 | `result-track:fbe3351956c0486383a3e614e7527f4be2704e939e17d655cf7ea1dbc52b3b5e` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/SmallInductiveDimension/Variantffb11ddb75ab64175c332714468310b08394d3703767e41b7dd099ea0385a2ef.lean/declarations/instance--38ff6b29621188f55f0528c8.md) | 108 | `declaration-track:38ff6b29621188f55f0528c8c90faaa13b5647a5fd6286f8b51dcacaf80cdafd` |
| 9 | `def` | [smallInductiveDimension](../../../../../mathematics/Topology/GeneralTopology/SmallInductiveDimension/Variantffb11ddb75ab64175c332714468310b08394d3703767e41b7dd099ea0385a2ef.lean/declarations/smallinductivedimension--229b5ce3b39aa16ab9a9cc97.md) | 115 | `declaration-track:229b5ce3b39aa16ab9a9cc978982fbc89581096e6fd4b0721ddc19e513034b4d` |
| 10 | `theorem` | [hasSmallInductiveDimensionLT_of_smallInductiveDimension_lt](../../../../../mathematics/Topology/GeneralTopology/SmallInductiveDimension/Variantffb11ddb75ab64175c332714468310b08394d3703767e41b7dd099ea0385a2ef.lean/declarations/hassmallinductivedimensionlt-of-smallinductivedimension-lt--f4d55335273967fa63f03b65.md) | 118 | `result-track:f4d55335273967fa63f03b65c481d98c3ad566fdfb3cae229421fc07662607a4` |
| 11 | `theorem` | [hasSmallInductiveDimensionLE_of_smallInductiveDimension_le](../../../../../mathematics/Topology/GeneralTopology/SmallInductiveDimension/Variantffb11ddb75ab64175c332714468310b08394d3703767e41b7dd099ea0385a2ef.lean/declarations/hassmallinductivedimensionle-of-smallinductivedimension-le--1c42097e5edbe68f34254e82.md) | 126 | `result-track:1c42097e5edbe68f34254e8237302dbd536dae901b6c9e6ecb88a91bc2c332d0` |
| 12 | `theorem` | [smallInductiveDimension_le_iff](../../../../../mathematics/Topology/GeneralTopology/SmallInductiveDimension/Variantffb11ddb75ab64175c332714468310b08394d3703767e41b7dd099ea0385a2ef.lean/declarations/smallinductivedimension-le-iff--8fa471649fd39e98f9a3ecb6.md) | 131 | `result-track:8fa471649fd39e98f9a3ecb69d6f40772186dbc8adb3b002ca4bdc061d4d3bde` |
| 13 | `theorem` | [smallInductiveDimension_lt_iff](../../../../../mathematics/Topology/GeneralTopology/SmallInductiveDimension/Variantffb11ddb75ab64175c332714468310b08394d3703767e41b7dd099ea0385a2ef.lean/declarations/smallinductivedimension-lt-iff--fa8c16aa2feedfb632ff679b.md) | 136 | `result-track:fa8c16aa2feedfb632ff679b59250892a8f0f888aa11c9680077a31ba18323b9` |
| 14 | `theorem` | [smallInductiveDimension_le](../../../../../mathematics/Topology/GeneralTopology/SmallInductiveDimension/Variantffb11ddb75ab64175c332714468310b08394d3703767e41b7dd099ea0385a2ef.lean/declarations/smallinductivedimension-le--00a594e9c215275211cabea8.md) | 150 | `result-track:00a594e9c215275211cabea8e83dc0977c8e04335357e1385047c84339440627` |
| 15 | `theorem` | [smallInductiveDimension_lt](../../../../../mathematics/Topology/GeneralTopology/SmallInductiveDimension/Variantffb11ddb75ab64175c332714468310b08394d3703767e41b7dd099ea0385a2ef.lean/declarations/smallinductivedimension-lt--5b6abf37f248dc1ac2e269a4.md) | 155 | `result-track:5b6abf37f248dc1ac2e269a479a74cf0d75fcff2895c1b0e25ecaecee0d1889a` |
| 16 | `theorem` | [smallInductiveDimension_eq](../../../../../mathematics/Topology/GeneralTopology/SmallInductiveDimension/Variantffb11ddb75ab64175c332714468310b08394d3703767e41b7dd099ea0385a2ef.lean/declarations/smallinductivedimension-eq--e65bf526353a9075ebb90041.md) | 159 | `result-track:e65bf526353a9075ebb900415b27540b216aae49ce855966c1a533c44929f4d8` |
| 17 | `theorem` | [smallInductiveDimension_eq_bot](../../../../../mathematics/Topology/GeneralTopology/SmallInductiveDimension/Variantffb11ddb75ab64175c332714468310b08394d3703767e41b7dd099ea0385a2ef.lean/declarations/smallinductivedimension-eq-bot--4821be28571f776f00fc1aa0.md) | 166 | `result-track:4821be28571f776f00fc1aa03197ff89309daa334e708787aac943aa977a31da` |
| 18 | `theorem` | [smallInductiveDimension_of_isEmpty](../../../../../mathematics/Topology/GeneralTopology/SmallInductiveDimension/Variantffb11ddb75ab64175c332714468310b08394d3703767e41b7dd099ea0385a2ef.lean/declarations/smallinductivedimension-of-isempty--c37136b831af91ba745a39d6.md) | 172 | `result-track:c37136b831af91ba745a39d67758aeca513637ba15055c8407bbc47a4cfe2804` |
| 19 | `theorem` | [Topology.IsInducing.hasSmallInductiveDimensionLT](../../../../../mathematics/Topology/GeneralTopology/SmallInductiveDimension/Variantffb11ddb75ab64175c332714468310b08394d3703767e41b7dd099ea0385a2ef.lean/declarations/topology-isinducing-hassmallinductivedimensionlt--ba7024aeab70239c3dbe4f84.md) | 175 | `result-track:ba7024aeab70239c3dbe4f840a37ac7cd9ddd510ad82f8b8095f419166a34a47` |
| 20 | `theorem` | [Topology.IsInducing.hasSmallInductiveDimensionLE](../../../../../mathematics/Topology/GeneralTopology/SmallInductiveDimension/Variantffb11ddb75ab64175c332714468310b08394d3703767e41b7dd099ea0385a2ef.lean/declarations/topology-isinducing-hassmallinductivedimensionle--5f7fe0c98dce5aac698c2209.md) | 184 | `result-track:5f7fe0c98dce5aac698c22096cf2df64178a367ed0b459b4820a96055b2caf93` |
| 21 | `theorem` | [Topology.IsInducing.smallInductiveDimension_le](../../../../../mathematics/Topology/GeneralTopology/SmallInductiveDimension/Variantffb11ddb75ab64175c332714468310b08394d3703767e41b7dd099ea0385a2ef.lean/declarations/topology-isinducing-smallinductivedimension-le--132c4cddb7958b12b3ffe0bb.md) | 189 | `result-track:132c4cddb7958b12b3ffe0bb70754ed8f708b844f8fb5a489c55cf52f11cdc00` |
| 22 | `theorem` | [smallInductiveDimension_subtype_le](../../../../../mathematics/Topology/GeneralTopology/SmallInductiveDimension/Variantffb11ddb75ab64175c332714468310b08394d3703767e41b7dd099ea0385a2ef.lean/declarations/smallinductivedimension-subtype-le--94b3294572873a9903563a50.md) | 194 | `result-track:94b3294572873a9903563a5044561086716f24e5331f292229cde57b26c0ef43` |
| 23 | `theorem` | [Homeomorph.hasSmallInductiveDimensionLT](../../../../../mathematics/Topology/GeneralTopology/SmallInductiveDimension/Variantffb11ddb75ab64175c332714468310b08394d3703767e41b7dd099ea0385a2ef.lean/declarations/homeomorph-hassmallinductivedimensionlt--54108b4a233ad8befc7612e8.md) | 198 | `result-track:54108b4a233ad8befc7612e80a5569db2198ee8d700fd74de9cf9fd8a9d29c7a` |
| 24 | `theorem` | [Homeomorph.hasSmallInductiveDimensionLE](../../../../../mathematics/Topology/GeneralTopology/SmallInductiveDimension/Variantffb11ddb75ab64175c332714468310b08394d3703767e41b7dd099ea0385a2ef.lean/declarations/homeomorph-hassmallinductivedimensionle--481c250b5a836978f9a7b011.md) | 202 | `result-track:481c250b5a836978f9a7b011663a89d1acb11d8ac330209c0078a2861c112000` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/SmallInductiveDimension/Variantffb11ddb75ab64175c332714468310b08394d3703767e41b7dd099ea0385a2ef.lean/declarations/instance--f40f7b4e6d84d3a43279983d.md) | 206 | `declaration-track:f40f7b4e6d84d3a43279983d59874f2ea0186d9e652a60bd716f6e8aa0dc7748` |
| 26 | `theorem` | [Homeomorph.smallInductiveDimension_congr](../../../../../mathematics/Topology/GeneralTopology/SmallInductiveDimension/Variantffb11ddb75ab64175c332714468310b08394d3703767e41b7dd099ea0385a2ef.lean/declarations/homeomorph-smallinductivedimension-congr--8da983b2609bf0aebb097608.md) | 211 | `result-track:8da983b2609bf0aebb0976082903cfd07ebbadfdb2051a8796a895bdefca98fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
