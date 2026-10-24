# Verification target: GRWTSK.Topology.MetricTopology.Antilipschitz.Variantc4a91d576e4cf12a75a0abf93c9f135f2082f141bca0cb84a6a52b7e1d993876

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "23afad6d697bd19418537c0171eba14f232979e3",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Antilipschitz/Variantc4a91d576e4cf12a75a0abf93c9f135f2082f141bca0cb84a6a52b7e1d993876.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variantc4a91d576e4cf12a75a0abf93c9f135f2082f141bca0cb84a6a52b7e1d993876.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variantc4a91d576e4cf12a75a0abf93c9f135f2082f141bca0cb84a6a52b7e1d993876.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `23afad6d697bd19418537c0171eba14f232979e3`.

Source path: `GRWTSK/Topology/MetricTopology/Antilipschitz/Variantc4a91d576e4cf12a75a0abf93c9f135f2082f141bca0cb84a6a52b7e1d993876.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Antilipschitz/Variantc4a91d576e4cf12a75a0abf93c9f135f2082f141bca0cb84a6a52b7e1d993876.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Lipschitz` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.CompleteSeparated` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AntilipschitzWith](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variantc4a91d576e4cf12a75a0abf93c9f135f2082f141bca0cb84a6a52b7e1d993876.lean/declarations/antilipschitzwith--1c1086605aed12d56a48d0f0.md) | 33 | `declaration-track:1c1086605aed12d56a48d0f00b1f264c060cab414c16f16710fdf430cd73a816` |
| 2 | `theorem` | [AntilipschitzWith.edist_lt_top](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variantc4a91d576e4cf12a75a0abf93c9f135f2082f141bca0cb84a6a52b7e1d993876.lean/declarations/antilipschitzwith-edist-lt-top--f09a49669dbdd25c42f2078c.md) | 37 | `result-track:f09a49669dbdd25c42f2078cb5fcde40198e95e60fe5f1ebeb56faa715d06f2c` |
| 3 | `theorem` | [AntilipschitzWith.edist_ne_top](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variantc4a91d576e4cf12a75a0abf93c9f135f2082f141bca0cb84a6a52b7e1d993876.lean/declarations/antilipschitzwith-edist-ne-top--bc70525cbcd4963c26f30639.md) | 42 | `result-track:bc70525cbcd4963c26f306399ef1eb8da8f712fbdef46ca84b026ca287dc98d3` |
| 4 | `theorem` | [antilipschitzWith_iff_le_mul_nndist](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variantc4a91d576e4cf12a75a0abf93c9f135f2082f141bca0cb84a6a52b7e1d993876.lean/declarations/antilipschitzwith-iff-le-mul-nndist--5f8a7bae367dc6075c3a841d.md) | 51 | `result-track:5f8a7bae367dc6075c3a841d7c4c3d7ac923258de655ea67931c343fe2080225` |
| 5 | `theorem` | [antilipschitzWith_iff_le_mul_dist](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variantc4a91d576e4cf12a75a0abf93c9f135f2082f141bca0cb84a6a52b7e1d993876.lean/declarations/antilipschitzwith-iff-le-mul-dist--03b2b1e2f3424e707392808e.md) | 62 | `result-track:03b2b1e2f3424e707392808e0df418a732d76322c43458631aa8d4c27d0a6c2a` |
| 6 | `theorem` | [mul_le_nndist](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variantc4a91d576e4cf12a75a0abf93c9f135f2082f141bca0cb84a6a52b7e1d993876.lean/declarations/mul-le-nndist--17ec0822ea923df1ddab23e9.md) | 75 | `result-track:17ec0822ea923df1ddab23e9a522bce842dae211d3908cffcbf5fbbd577f0fc0` |
| 7 | `theorem` | [mul_le_dist](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variantc4a91d576e4cf12a75a0abf93c9f135f2082f141bca0cb84a6a52b7e1d993876.lean/declarations/mul-le-dist--60799db19934c22456efbf6f.md) | 80 | `result-track:60799db19934c22456efbf6f20bf5fdd1236da8b265f18c917b3a38b0e3ebd0e` |
| 8 | `def` | [k](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variantc4a91d576e4cf12a75a0abf93c9f135f2082f141bca0cb84a6a52b7e1d993876.lean/declarations/k--768acf518947a56915d49a53.md) | 100 | `declaration-track:768acf518947a56915d49a53253f47c3a52c1190759d7649acd4d34c036f23e2` |
| 9 | `theorem` | [injective](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variantc4a91d576e4cf12a75a0abf93c9f135f2082f141bca0cb84a6a52b7e1d993876.lean/declarations/injective--5447ec028dca1229e843efe2.md) | 104 | `result-track:5447ec028dca1229e843efe28aeb90653f24bb42bac450f645068b62ba974f4f` |
| 10 | `theorem` | [mul_le_edist](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variantc4a91d576e4cf12a75a0abf93c9f135f2082f141bca0cb84a6a52b7e1d993876.lean/declarations/mul-le-edist--aab355fdaee9969f4bbefdf2.md) | 109 | `result-track:aab355fdaee9969f4bbefdf25eeabde6831362dc72e73a9a44d52e90a53c5fb1` |
| 11 | `theorem` | [ediam_preimage_le](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variantc4a91d576e4cf12a75a0abf93c9f135f2082f141bca0cb84a6a52b7e1d993876.lean/declarations/ediam-preimage-le--839d3344660ec698832d42ea.md) | 115 | `result-track:839d3344660ec698832d42ea6070f42b6903bacb9f889f5d8aa08522b3e53c3e` |
| 12 | `theorem` | [le_mul_ediam_image](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variantc4a91d576e4cf12a75a0abf93c9f135f2082f141bca0cb84a6a52b7e1d993876.lean/declarations/le-mul-ediam-image--799ba2ef440e7053172ada50.md) | 120 | `result-track:799ba2ef440e7053172ada502b851787bc37f42d1cbc0ed2b3b5dd908d8bcf55` |
| 13 | `theorem` | [id](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variantc4a91d576e4cf12a75a0abf93c9f135f2082f141bca0cb84a6a52b7e1d993876.lean/declarations/id--fd085edeb0ca50365ad8266e.md) | 124 | `result-track:fd085edeb0ca50365ad8266e8ef8ea4f0421979ed3c5bdce70948e2f85082d3e` |
| 14 | `theorem` | [comp](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variantc4a91d576e4cf12a75a0abf93c9f135f2082f141bca0cb84a6a52b7e1d993876.lean/declarations/comp--6fa570d7ca6b46fbceb18054.md) | 128 | `result-track:6fa570d7ca6b46fbceb18054f6247ad0182b7ee6c7f2b04751c60f31f12f2285` |
| 15 | `theorem` | [restrict](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variantc4a91d576e4cf12a75a0abf93c9f135f2082f141bca0cb84a6a52b7e1d993876.lean/declarations/restrict--ded9da319f46227be8532d8d.md) | 136 | `result-track:ded9da319f46227be8532d8d5cfbc9717e1eb828a3d0c3cf164a1565b8d190c1` |
| 16 | `theorem` | [codRestrict](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variantc4a91d576e4cf12a75a0abf93c9f135f2082f141bca0cb84a6a52b7e1d993876.lean/declarations/codrestrict--9c5e6285f12e5a9a21f311f8.md) | 140 | `result-track:9c5e6285f12e5a9a21f311f8ce62ea929928eb9b21cbd63bb63df990a7907e67` |
| 17 | `theorem` | [to_rightInvOn'](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variantc4a91d576e4cf12a75a0abf93c9f135f2082f141bca0cb84a6a52b7e1d993876.lean/declarations/to-rightinvon--ab4e4c790a835e87eb0802a1.md) | 144 | `result-track:ab4e4c790a835e87eb0802a1758f5375b954db9fcdb65ce791e0d10fc34f2ebd` |
| 18 | `theorem` | [to_rightInvOn](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variantc4a91d576e4cf12a75a0abf93c9f135f2082f141bca0cb84a6a52b7e1d993876.lean/declarations/to-rightinvon--cd8940ec21573d6b9a17e539.md) | 151 | `result-track:cd8940ec21573d6b9a17e539fa7cf341478174ed6ae81a196a666abda9a599e7` |
| 19 | `theorem` | [to_rightInverse](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variantc4a91d576e4cf12a75a0abf93c9f135f2082f141bca0cb84a6a52b7e1d993876.lean/declarations/to-rightinverse--60fc719911d18802334a13f0.md) | 156 | `result-track:60fc719911d18802334a13f0bdf2023c1886cf54d9bdb65dc3b11550621b982a` |
| 20 | `theorem` | [comap_uniformity_le](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variantc4a91d576e4cf12a75a0abf93c9f135f2082f141bca0cb84a6a52b7e1d993876.lean/declarations/comap-uniformity-le--8718b89443c6d197c9a9cca1.md) | 163 | `result-track:8718b89443c6d197c9a9cca1efaf04e9d040c2890d55e00d96c4621260b98eeb` |
| 21 | `theorem` | [uniformInducing](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variantc4a91d576e4cf12a75a0abf93c9f135f2082f141bca0cb84a6a52b7e1d993876.lean/declarations/uniforminducing--ca3cadaf399d97235278c00e.md) | 172 | `result-track:ca3cadaf399d97235278c00e001f62c9c45a3b3d9a0c107b40a12cc15dcfb98f` |
| 22 | `theorem` | [uniformEmbedding](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variantc4a91d576e4cf12a75a0abf93c9f135f2082f141bca0cb84a6a52b7e1d993876.lean/declarations/uniformembedding--70853b2f19ab511b103c92c0.md) | 177 | `result-track:70853b2f19ab511b103c92c0cdd7cfc00ac5d1c90d530e63b6bf2a0ef292500e` |
| 23 | `theorem` | [isComplete_range](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variantc4a91d576e4cf12a75a0abf93c9f135f2082f141bca0cb84a6a52b7e1d993876.lean/declarations/iscomplete-range--a5aad6c30fd93cfe7c4b3400.md) | 183 | `result-track:a5aad6c30fd93cfe7c4b340079fbc0e6fcf4e7e2becea760f9bc1ac658200bb4` |
| 24 | `theorem` | [isClosed_range](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variantc4a91d576e4cf12a75a0abf93c9f135f2082f141bca0cb84a6a52b7e1d993876.lean/declarations/isclosed-range--5e87061fe923ac61d77ef28c.md) | 188 | `result-track:5e87061fe923ac61d77ef28c8725de75c52ab7054daa29732777f5a1236ad60c` |
| 25 | `theorem` | [closedEmbedding](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variantc4a91d576e4cf12a75a0abf93c9f135f2082f141bca0cb84a6a52b7e1d993876.lean/declarations/closedembedding--26d19e23f107b8ae819f4ae8.md) | 194 | `result-track:26d19e23f107b8ae819f4ae8f8f7be792dc98010d2e29760e14221fae490087c` |
| 26 | `theorem` | [subtype_coe](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variantc4a91d576e4cf12a75a0abf93c9f135f2082f141bca0cb84a6a52b7e1d993876.lean/declarations/subtype-coe--1e20a519723f3a720c006f7b.md) | 200 | `result-track:1e20a519723f3a720c006f7bd4948891bf13dc840d20c88917738787f2c8488c` |
| 27 | `theorem` | [of_subsingleton](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variantc4a91d576e4cf12a75a0abf93c9f135f2082f141bca0cb84a6a52b7e1d993876.lean/declarations/of-subsingleton--0851b4b2e13d7958961a3002.md) | 205 | `result-track:0851b4b2e13d7958961a300243096b741bdb1082a755ef79c0e8acd6663c6647` |
| 28 | `theorem` | [subsingleton](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variantc4a91d576e4cf12a75a0abf93c9f135f2082f141bca0cb84a6a52b7e1d993876.lean/declarations/subsingleton--c844e4d20742a629b06ef06c.md) | 210 | `result-track:c844e4d20742a629b06ef06c1481eed6b751aeda0df7b893a80c27d430666ab9` |
| 29 | `theorem` | [bounded_preimage](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variantc4a91d576e4cf12a75a0abf93c9f135f2082f141bca0cb84a6a52b7e1d993876.lean/declarations/bounded-preimage--c8f123e7d96bac9a88231782.md) | 223 | `result-track:c8f123e7d96bac9a882317827f18ded8b6dd4f904e37602fccf2abcbc59d0879` |
| 30 | `theorem` | [tendsto_cobounded](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variantc4a91d576e4cf12a75a0abf93c9f135f2082f141bca0cb84a6a52b7e1d993876.lean/declarations/tendsto-cobounded--27b60d8a017a114b1e2314f8.md) | 231 | `result-track:27b60d8a017a114b1e2314f86649064bca15f6aa818335c3644f392246a89d27` |
| 31 | `theorem` | [properSpace](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variantc4a91d576e4cf12a75a0abf93c9f135f2082f141bca0cb84a6a52b7e1d993876.lean/declarations/properspace--f46dfaf68e9082886b505ba4.md) | 237 | `result-track:f46dfaf68e9082886b505ba4475221e8d4822badb875eb071efd60e2376f2654` |
| 32 | `theorem` | [LipschitzWith.to_rightInverse](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variantc4a91d576e4cf12a75a0abf93c9f135f2082f141bca0cb84a6a52b7e1d993876.lean/declarations/lipschitzwith-to-rightinverse--7f7ea480ec31634c5075a6e2.md) | 251 | `result-track:7f7ea480ec31634c5075a6e2d6b2ce34b022365f0b664ce71efd552241d33760` |
| 33 | `theorem` | [LipschitzWith.properSpace](../../../../../mathematics/Topology/MetricTopology/Antilipschitz/Variantc4a91d576e4cf12a75a0abf93c9f135f2082f141bca0cb84a6a52b7e1d993876.lean/declarations/lipschitzwith-properspace--961fca1a5517232da0c361ba.md) | 257 | `result-track:961fca1a5517232da0c361ba3358e37baa8f5cb4c6e701f79e40a1521c54e64b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
