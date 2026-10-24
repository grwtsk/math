# Verification target: GRWTSK.Topology.GeneralTopology.Star.Variantc7849190431012bf414050bd78796113d49440f0400317ba47c0392772810a82

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da422ad4f2d29b26366a63c40b9183fc6529e0db",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Star/Variantc7849190431012bf414050bd78796113d49440f0400317ba47c0392772810a82.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Star/Variantc7849190431012bf414050bd78796113d49440f0400317ba47c0392772810a82.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Star/Variantc7849190431012bf414050bd78796113d49440f0400317ba47c0392772810a82.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da422ad4f2d29b26366a63c40b9183fc6529e0db`.

Source path: `GRWTSK/Topology/GeneralTopology/Star/Variantc7849190431012bf414050bd78796113d49440f0400317ba47c0392772810a82.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Star/Variantc7849190431012bf414050bd78796113d49440f0400317ba47c0392772810a82.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ContinuousStar](../../../../../mathematics/Topology/GeneralTopology/Star/Variantc7849190431012bf414050bd78796113d49440f0400317ba47c0392772810a82.lean/declarations/continuousstar--9420866f5e4874b1fc990b92.md) | 26 | `declaration-track:9420866f5e4874b1fc990b9270931c2be085c56a6893d1e5ae602b17d66d70cf` |
| 2 | `theorem` | [continuousOn_star](../../../../../mathematics/Topology/GeneralTopology/Star/Variantc7849190431012bf414050bd78796113d49440f0400317ba47c0392772810a82.lean/declarations/continuouson-star--35f4bf46bc4cd7c64e8b7f8e.md) | 36 | `result-track:35f4bf46bc4cd7c64e8b7f8e94eecb26315f4bf14f07ef6441aaa860e4a60cca` |
| 3 | `theorem` | [continuousWithinAt_star](../../../../../mathematics/Topology/GeneralTopology/Star/Variantc7849190431012bf414050bd78796113d49440f0400317ba47c0392772810a82.lean/declarations/continuouswithinat-star--543da802437c3cebc3dbacb7.md) | 39 | `result-track:543da802437c3cebc3dbacb7935d1b731111ba7ad6740627de9824e9c5b873ab` |
| 4 | `theorem` | [continuousAt_star](../../../../../mathematics/Topology/GeneralTopology/Star/Variantc7849190431012bf414050bd78796113d49440f0400317ba47c0392772810a82.lean/declarations/continuousat-star--914c8bb81870e0d4b81be2e6.md) | 42 | `result-track:914c8bb81870e0d4b81be2e6233a92db345abeb02a39dc049c3f7f7f525bd4de` |
| 5 | `theorem` | [tendsto_star](../../../../../mathematics/Topology/GeneralTopology/Star/Variantc7849190431012bf414050bd78796113d49440f0400317ba47c0392772810a82.lean/declarations/tendsto-star--468ab1716ff86ff4c88b2479.md) | 45 | `result-track:468ab1716ff86ff4c88b247980c5355984c1b0cb619733d76d83cb038cc66e97` |
| 6 | `theorem` | [Filter.Tendsto.star](../../../../../mathematics/Topology/GeneralTopology/Star/Variantc7849190431012bf414050bd78796113d49440f0400317ba47c0392772810a82.lean/declarations/filter-tendsto-star--49f4c1cf4de734347d77e96a.md) | 48 | `result-track:49f4c1cf4de734347d77e96a04bb2580a987fd2ae2864c188de60e36e65a5e8b` |
| 7 | `theorem` | [Continuous.star](../../../../../mathematics/Topology/GeneralTopology/Star/Variantc7849190431012bf414050bd78796113d49440f0400317ba47c0392772810a82.lean/declarations/continuous-star--51b79a392888d3b8b23932cb.md) | 55 | `result-track:51b79a392888d3b8b23932cbd5076b6cb51b779e10e494046dfedc5f8c61f47e` |
| 8 | `theorem` | [ContinuousAt.star](../../../../../mathematics/Topology/GeneralTopology/Star/Variantc7849190431012bf414050bd78796113d49440f0400317ba47c0392772810a82.lean/declarations/continuousat-star--1d835f8716dfd413c03b7642.md) | 59 | `result-track:1d835f8716dfd413c03b76422e9c1f8b5c5accf05ba3e993e5371e6170432088` |
| 9 | `theorem` | [ContinuousOn.star](../../../../../mathematics/Topology/GeneralTopology/Star/Variantc7849190431012bf414050bd78796113d49440f0400317ba47c0392772810a82.lean/declarations/continuouson-star--1301b06f14391f6f91fbade9.md) | 63 | `result-track:1301b06f14391f6f91fbade984abccf7a6b2637f309e33278d6ed4bf90e76e79` |
| 10 | `theorem` | [ContinuousWithinAt.star](../../../../../mathematics/Topology/GeneralTopology/Star/Variantc7849190431012bf414050bd78796113d49440f0400317ba47c0392772810a82.lean/declarations/continuouswithinat-star--86a877901b14f3e00dac7308.md) | 66 | `result-track:86a877901b14f3e00dac7308c15e50c85c0ebb00f05b6b283848af3b6f1c5fd9` |
| 11 | `def` | [starContinuousMap](../../../../../mathematics/Topology/GeneralTopology/Star/Variantc7849190431012bf414050bd78796113d49440f0400317ba47c0392772810a82.lean/declarations/starcontinuousmap--85e12e1b4ba1a8ad66a76177.md) | 72 | `declaration-track:85e12e1b4ba1a8ad66a7617751351a5c81228d3c15a94eed99d19f30803902f5` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Star/Variantc7849190431012bf414050bd78796113d49440f0400317ba47c0392772810a82.lean/declarations/instance--02ae7d3e79cc60ec14589eda.md) | 81 | `declaration-track:02ae7d3e79cc60ec14589eda7d3abcfe9113dc5f2c6cf9dd5fa352c0ebc22f99` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Star/Variantc7849190431012bf414050bd78796113d49440f0400317ba47c0392772810a82.lean/declarations/instance--8c3848926472617ca565e9fe.md) | 85 | `declaration-track:8c3848926472617ca565e9feab5cc1e32240438a69716f4a0c1df2f6e4a69c84` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Star/Variantc7849190431012bf414050bd78796113d49440f0400317ba47c0392772810a82.lean/declarations/instance--a8830e4efc49f2e930a23ab7.md) | 89 | `declaration-track:a8830e4efc49f2e930a23ab712c944224ce9e105bd59c29740c78dbce3b60503` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Star/Variantc7849190431012bf414050bd78796113d49440f0400317ba47c0392772810a82.lean/declarations/instance--c47c369d3ff81d6fc2602dd9.md) | 92 | `declaration-track:c47c369d3ff81d6fc2602dd911b8c645cdac02fd41aff75105597ff6fe7f6351` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
