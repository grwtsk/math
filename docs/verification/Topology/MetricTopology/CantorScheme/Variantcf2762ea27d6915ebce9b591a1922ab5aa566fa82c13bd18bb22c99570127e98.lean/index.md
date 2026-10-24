# Verification target: GRWTSK.Topology.MetricTopology.CantorScheme.Variantcf2762ea27d6915ebce9b591a1922ab5aa566fa82c13bd18bb22c99570127e98

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d0623de93499838c49ac0a8971fffd382e418f2a",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/CantorScheme/Variantcf2762ea27d6915ebce9b591a1922ab5aa566fa82c13bd18bb22c99570127e98.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/CantorScheme/Variantcf2762ea27d6915ebce9b591a1922ab5aa566fa82c13bd18bb22c99570127e98.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/CantorScheme/Variantcf2762ea27d6915ebce9b591a1922ab5aa566fa82c13bd18bb22c99570127e98.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d0623de93499838c49ac0a8971fffd382e418f2a`.

Source path: `GRWTSK/Topology/MetricTopology/CantorScheme/Variantcf2762ea27d6915ebce9b591a1922ab5aa566fa82c13bd18bb22c99570127e98.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/CantorScheme/Variantcf2762ea27d6915ebce9b591a1922ab5aa566fa82c13bd18bb22c99570127e98.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.PiNat` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [inducedMap](../../../../../mathematics/Topology/MetricTopology/CantorScheme/Variantcf2762ea27d6915ebce9b591a1922ab5aa566fa82c13bd18bb22c99570127e98.lean/declarations/inducedmap--2b796eb2c5afe1ef4d5d9bf9.md) | 59 | `declaration-track:2b796eb2c5afe1ef4d5d9bf92fe75bf0f388ffd576569d053057412ee1aa6ce3` |
| 2 | `def` | [Antitone](../../../../../mathematics/Topology/MetricTopology/CantorScheme/Variantcf2762ea27d6915ebce9b591a1922ab5aa566fa82c13bd18bb22c99570127e98.lean/declarations/antitone--b321c58bea1467a55466bde3.md) | 65 | `declaration-track:b321c58bea1467a55466bde3d31a3b26b540ba29d4ef221664b753f9dba80926` |
| 3 | `def` | [ClosureAntitone](../../../../../mathematics/Topology/MetricTopology/CantorScheme/Variantcf2762ea27d6915ebce9b591a1922ab5aa566fa82c13bd18bb22c99570127e98.lean/declarations/closureantitone--8da179319f1016e75d7b91ef.md) | 70 | `declaration-track:8da179319f1016e75d7b91ef992fcb4f724cdce6197ab133431f0fd6ba681096` |
| 4 | `def` | [Disjoint](../../../../../mathematics/Topology/MetricTopology/CantorScheme/Variantcf2762ea27d6915ebce9b591a1922ab5aa566fa82c13bd18bb22c99570127e98.lean/declarations/disjoint--5706683a899ede3dfe0386bd.md) | 74 | `declaration-track:5706683a899ede3dfe0386bdc8f2691e2a5e0f46bf478c5a2704f8ef72de8a3c` |
| 5 | `theorem` | [map_mem](../../../../../mathematics/Topology/MetricTopology/CantorScheme/Variantcf2762ea27d6915ebce9b591a1922ab5aa566fa82c13bd18bb22c99570127e98.lean/declarations/map-mem--4519237c2b98e31ca20176a8.md) | 81 | `result-track:4519237c2b98e31ca20176a8a52f10596d14d5c6970b9a245e6f00aa592fec8e` |
| 6 | `theorem` | [ClosureAntitone.antitone](../../../../../mathematics/Topology/MetricTopology/CantorScheme/Variantcf2762ea27d6915ebce9b591a1922ab5aa566fa82c13bd18bb22c99570127e98.lean/declarations/closureantitone-antitone--92d93e2871ae02ae0d17186f.md) | 86 | `result-track:92d93e2871ae02ae0d17186fa9090835e19473d4bf75822573060dccbf09beef` |
| 7 | `theorem` | [Antitone.closureAntitone](../../../../../mathematics/Topology/MetricTopology/CantorScheme/Variantcf2762ea27d6915ebce9b591a1922ab5aa566fa82c13bd18bb22c99570127e98.lean/declarations/antitone-closureantitone--8d4efaf1420ab1403072a7cc.md) | 89 | `result-track:8d4efaf1420ab1403072a7cc2f2136231b556492a900ff94588db48c66df9a14` |
| 8 | `theorem` | [Disjoint.map_injective](../../../../../mathematics/Topology/MetricTopology/CantorScheme/Variantcf2762ea27d6915ebce9b591a1922ab5aa566fa82c13bd18bb22c99570127e98.lean/declarations/disjoint-map-injective--fb92b4ed2cafcbfffc153587.md) | 94 | `result-track:fb92b4ed2cafcbfffc1535875c503bdbad088bbcca4b04579b966e8eaf4e2ad9` |
| 9 | `def` | [VanishingDiam](../../../../../mathematics/Topology/MetricTopology/CantorScheme/Variantcf2762ea27d6915ebce9b591a1922ab5aa566fa82c13bd18bb22c99570127e98.lean/declarations/vanishingdiam--ba88b7d60d7a41950ae872c5.md) | 121 | `declaration-track:ba88b7d60d7a41950ae872c50e85d57e02ddeb919a94b331a59335d1f8606709` |
| 10 | `theorem` | [VanishingDiam.dist_lt](../../../../../mathematics/Topology/MetricTopology/CantorScheme/Variantcf2762ea27d6915ebce9b591a1922ab5aa566fa82c13bd18bb22c99570127e98.lean/declarations/vanishingdiam-dist-lt--21262c746bf33f8c0a9f1cd4.md) | 126 | `result-track:21262c746bf33f8c0a9f1cd4f8bf3b87e08b7602f82def9502caea8385879cf0` |
| 11 | `theorem` | [VanishingDiam.map_continuous](../../../../../mathematics/Topology/MetricTopology/CantorScheme/Variantcf2762ea27d6915ebce9b591a1922ab5aa566fa82c13bd18bb22c99570127e98.lean/declarations/vanishingdiam-map-continuous--f4b17fe93e5b52a76e564496.md) | 141 | `result-track:f4b17fe93e5b52a76e564496faaf9e4e74745b921dab4f1d065bfba2421e514d` |
| 12 | `theorem` | [ClosureAntitone.map_of_vanishingDiam](../../../../../mathematics/Topology/MetricTopology/CantorScheme/Variantcf2762ea27d6915ebce9b591a1922ab5aa566fa82c13bd18bb22c99570127e98.lean/declarations/closureantitone-map-of-vanishingdiam--876b2ca38ca8f91b002d965f.md) | 160 | `result-track:876b2ca38ca8f91b002d965ffd7e3cd3c6114cc251a8ecbb88f1056fbe750ace` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
