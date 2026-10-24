# Verification target: GRWTSK.Topology.GeneralTopology.Star.Variant0e5976a0ba9d6eb5f82ab1c81ddec7f236268b072cab3dd6db953fbff1d45984

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0fdc6263f24f79fe983bbf56c2ca87838a6d50ed",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Star/Variant0e5976a0ba9d6eb5f82ab1c81ddec7f236268b072cab3dd6db953fbff1d45984.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Star/Variant0e5976a0ba9d6eb5f82ab1c81ddec7f236268b072cab3dd6db953fbff1d45984.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Star/Variant0e5976a0ba9d6eb5f82ab1c81ddec7f236268b072cab3dd6db953fbff1d45984.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0fdc6263f24f79fe983bbf56c2ca87838a6d50ed`.

Source path: `GRWTSK/Topology/GeneralTopology/Star/Variant0e5976a0ba9d6eb5f82ab1c81ddec7f236268b072cab3dd6db953fbff1d45984.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Star/Variant0e5976a0ba9d6eb5f82ab1c81ddec7f236268b072cab3dd6db953fbff1d45984.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Star.Pi` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.Prod` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Constructions` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Defs` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ContinuousStar](../../../../../mathematics/Topology/GeneralTopology/Star/Variant0e5976a0ba9d6eb5f82ab1c81ddec7f236268b072cab3dd6db953fbff1d45984.lean/declarations/continuousstar--86c55919aef09f8645f78358.md) | 21 | `declaration-track:86c55919aef09f8645f78358832d0e61d1416d8ac4b2591bda5deb441b1b30cc` |
| 2 | `theorem` | [continuousOn_star](../../../../../mathematics/Topology/GeneralTopology/Star/Variant0e5976a0ba9d6eb5f82ab1c81ddec7f236268b072cab3dd6db953fbff1d45984.lean/declarations/continuouson-star--38291a765e79e8284ffff578.md) | 31 | `result-track:38291a765e79e8284ffff578f25f3793c7feafc6085652e7959fdfe8d0482320` |
| 3 | `theorem` | [continuousWithinAt_star](../../../../../mathematics/Topology/GeneralTopology/Star/Variant0e5976a0ba9d6eb5f82ab1c81ddec7f236268b072cab3dd6db953fbff1d45984.lean/declarations/continuouswithinat-star--24aa6db0987591a7df3749f8.md) | 34 | `result-track:24aa6db0987591a7df3749f897cd3ca285a58174327ab758ac932578439635e6` |
| 4 | `theorem` | [continuousAt_star](../../../../../mathematics/Topology/GeneralTopology/Star/Variant0e5976a0ba9d6eb5f82ab1c81ddec7f236268b072cab3dd6db953fbff1d45984.lean/declarations/continuousat-star--8d07db73d17987da18655515.md) | 37 | `result-track:8d07db73d17987da1865551533a18a55347a66630077d4a2a2c86abc409c128e` |
| 5 | `theorem` | [tendsto_star](../../../../../mathematics/Topology/GeneralTopology/Star/Variant0e5976a0ba9d6eb5f82ab1c81ddec7f236268b072cab3dd6db953fbff1d45984.lean/declarations/tendsto-star--5921ae20a59a5eddaf2ef5a3.md) | 40 | `result-track:5921ae20a59a5eddaf2ef5a3f14a4f051f672df389bdc113cb6d5476dd819995` |
| 6 | `theorem` | [Filter.Tendsto.star](../../../../../mathematics/Topology/GeneralTopology/Star/Variant0e5976a0ba9d6eb5f82ab1c81ddec7f236268b072cab3dd6db953fbff1d45984.lean/declarations/filter-tendsto-star--b4b47896ee89088510ef1093.md) | 43 | `result-track:b4b47896ee89088510ef10938adc94492b9b1fead8329de42b0787f4895007bc` |
| 7 | `theorem` | [Continuous.star](../../../../../mathematics/Topology/GeneralTopology/Star/Variant0e5976a0ba9d6eb5f82ab1c81ddec7f236268b072cab3dd6db953fbff1d45984.lean/declarations/continuous-star--90f3f7053bb7a9be62c3bb63.md) | 50 | `result-track:90f3f7053bb7a9be62c3bb632e66f9fa6fa548131c2370cd13a4971a9c3c5c02` |
| 8 | `theorem` | [ContinuousAt.star](../../../../../mathematics/Topology/GeneralTopology/Star/Variant0e5976a0ba9d6eb5f82ab1c81ddec7f236268b072cab3dd6db953fbff1d45984.lean/declarations/continuousat-star--c86734f0d39200aba67c6a3c.md) | 54 | `result-track:c86734f0d39200aba67c6a3cbf5e9e0aac48fc2d53e84a475d80d239084c97d7` |
| 9 | `theorem` | [ContinuousOn.star](../../../../../mathematics/Topology/GeneralTopology/Star/Variant0e5976a0ba9d6eb5f82ab1c81ddec7f236268b072cab3dd6db953fbff1d45984.lean/declarations/continuouson-star--47c91f3a38fc5345ac65d13c.md) | 58 | `result-track:47c91f3a38fc5345ac65d13cd5c682338221916bb7663f1949660a230af63e69` |
| 10 | `theorem` | [ContinuousWithinAt.star](../../../../../mathematics/Topology/GeneralTopology/Star/Variant0e5976a0ba9d6eb5f82ab1c81ddec7f236268b072cab3dd6db953fbff1d45984.lean/declarations/continuouswithinat-star--f46bce46e03aebd6cb8e65ef.md) | 61 | `result-track:f46bce46e03aebd6cb8e65ef2b16bd7d5e349fae9eab4d8299ed529f8e3bdec7` |
| 11 | `def` | [starContinuousMap](../../../../../mathematics/Topology/GeneralTopology/Star/Variant0e5976a0ba9d6eb5f82ab1c81ddec7f236268b072cab3dd6db953fbff1d45984.lean/declarations/starcontinuousmap--5a34274db27d5f1bda8f51dc.md) | 67 | `declaration-track:5a34274db27d5f1bda8f51dcdbce9cc6285989db512fc2effcf38b9898dc941d` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Star/Variant0e5976a0ba9d6eb5f82ab1c81ddec7f236268b072cab3dd6db953fbff1d45984.lean/declarations/instance--a516e55047d1e7651a272340.md) | 76 | `declaration-track:a516e55047d1e7651a272340708bb8674c8b9fc9a9c0e6b427116680801d3884` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Star/Variant0e5976a0ba9d6eb5f82ab1c81ddec7f236268b072cab3dd6db953fbff1d45984.lean/declarations/instance--337b3eda62eb5199dd1c485e.md) | 80 | `declaration-track:337b3eda62eb5199dd1c485e8f30d408662f34331caf2013e58b00c32dd8f31d` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Star/Variant0e5976a0ba9d6eb5f82ab1c81ddec7f236268b072cab3dd6db953fbff1d45984.lean/declarations/instance--ebd46b9c87aa13b4fd678801.md) | 84 | `declaration-track:ebd46b9c87aa13b4fd678801d8ffc1a51b8c1383ad9d2361f491e96510b6897e` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Star/Variant0e5976a0ba9d6eb5f82ab1c81ddec7f236268b072cab3dd6db953fbff1d45984.lean/declarations/instance--6a415dde6b0821b72069536b.md) | 87 | `declaration-track:6a415dde6b0821b72069536b3c767ccfe09f96fe277113dc3434471e49e82e51` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
