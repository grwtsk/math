# Verification target: GRWTSK.Topology.GeneralTopology.TotallyDisconnected.Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "756ada11aa156d1ddcb36dd5ccaf9a28f9687895",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/TotallyDisconnected/Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `756ada11aa156d1ddcb36dd5ccaf9a28f9687895`.

Source path: `GRWTSK/Topology/GeneralTopology/TotallyDisconnected/Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/TotallyDisconnected/Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Connected.Clopen` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsTotallyDisconnected](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean/declarations/istotallydisconnected--ee609713bb2e5f4c312d91bf.md) | 32 | `declaration-track:ee609713bb2e5f4c312d91bf2223a12f2b536f344f348b53835d1e02a960c05e` |
| 2 | `theorem` | [isTotallyDisconnected_empty](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean/declarations/istotallydisconnected-empty--08f64ba888f0ffbf31a88101.md) | 35 | `result-track:08f64ba888f0ffbf31a881012cb7d53a1e04d1eb0ac6338ec121c5bc6e420907` |
| 3 | `theorem` | [isTotallyDisconnected_singleton](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean/declarations/istotallydisconnected-singleton--3af50659ff0482b492937fbc.md) | 38 | `result-track:3af50659ff0482b492937fbc20a8f03b44b4ff2bea154be7ad8a896eeb0e1326` |
| 4 | `class` | [TotallyDisconnectedSpace](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean/declarations/totallydisconnectedspace--8f9cc09d5aac9167cbc2c3f7.md) | 43 | `declaration-track:8f9cc09d5aac9167cbc2c3f71927cccce5e2087462d45c57056775dfdb99e9a7` |
| 5 | `theorem` | [IsPreconnected.subsingleton](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean/declarations/ispreconnected-subsingleton--104e79c1f1ef6960054db110.md) | 47 | `result-track:104e79c1f1ef6960054db110734535cc015c1115b06efef5ecc0a990945c85c8` |
| 6 | `instance` | [Pi.totallyDisconnectedSpace](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean/declarations/pi-totallydisconnectedspace--423df1d64b571d5f29713248.md) | 51 | `declaration-track:423df1d64b571d5f2971324853405777d569ce6bf67543d912e13e71c92662b1` |
| 7 | `instance` | [Prod.totallyDisconnectedSpace](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean/declarations/prod-totallydisconnectedspace--bee5dca8cb8adcdeaa62734f.md) | 59 | `declaration-track:bee5dca8cb8adcdeaa62734f943a888285497c6d44bd8f415d58adee868c8b85` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean/declarations/instance--7bc4614a94bc0dd6826c9070.md) | 68 | `declaration-track:7bc4614a94bc0dd6826c9070fe1e7a635cd8022fb26370d5391af785005cb397` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean/declarations/instance--8ba1512462f1525ed3a10ada.md) | 75 | `declaration-track:8ba1512462f1525ed3a10adaccf26bd7fcb3102f749b500c8bae470423b11dfc` |
| 10 | `theorem` | [totallyDisconnectedSpace_iff_connectedComponent_subsingleton](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean/declarations/totallydisconnectedspace-iff-connectedcomponent-subsingleton--94f3451e4268b73791696b15.md) | 84 | `result-track:94f3451e4268b73791696b158cd0428c870206982c1ff0a00ff78ab3d3adc73f` |
| 11 | `theorem` | [totallyDisconnectedSpace_iff_connectedComponent_singleton](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean/declarations/totallydisconnectedspace-iff-connectedcomponent-singleton--9f1aec26021d6e0bd64d3dc6.md) | 98 | `result-track:9f1aec26021d6e0bd64d3dc6724b16331aa28fd9c4a5fb8e548f72ac4c7665fd` |
| 12 | `theorem` | [connectedComponent_eq_singleton](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean/declarations/connectedcomponent-eq-singleton--277b1cd77c6a72f14b19487c.md) | 105 | `result-track:277b1cd77c6a72f14b19487ce1f99dcbfd4a5700f66e3431b177626500274d60` |
| 13 | `theorem` | [Continuous.image_connectedComponent_eq_singleton](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean/declarations/continuous-image-connectedcomponent-eq-singleton--0be81c4ecffb884ad265300d.md) | 111 | `result-track:0be81c4ecffb884ad265300d71c21b72b746e0e84c1c72c2aecd698bf56a84f1` |
| 14 | `theorem` | [isTotallyDisconnected_of_totallyDisconnectedSpace](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean/declarations/istotallydisconnected-of-totallydisconnectedspace--3f459c875e6d7e869695a5d5.md) | 117 | `result-track:3f459c875e6d7e869695a5d55eb735c43ff446703ba71d6718bacb2d68a54796` |
| 15 | `lemma` | [TotallyDisconnectedSpace.eq_of_continuous](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean/declarations/totallydisconnectedspace-eq-of-continuous--e9dd3843294e9143480deb3c.md) | 121 | `result-track:e9dd3843294e9143480deb3c58e88a04e356a3fc19aa01564f5422865678a0ee` |
| 16 | `theorem` | [isTotallyDisconnected_of_image](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean/declarations/istotallydisconnected-of-image--52f85c8da56185dffff32b61.md) | 126 | `result-track:52f85c8da56185dffff32b61a5b526df321f2698c2f72bdc92cc8fef3dfd717b` |
| 17 | `lemma` | [Topology.IsEmbedding.isTotallyDisconnected](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean/declarations/topology-isembedding-istotallydisconnected--b477f648885022ca9d1a08b6.md) | 133 | `result-track:b477f648885022ca9d1a08b6022d70e056841025fbf14ed8b5dae9e02f537858` |
| 18 | `lemma` | [Topology.IsEmbedding.isTotallyDisconnected_image](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean/declarations/topology-isembedding-istotallydisconnected-image--127d9b81a3e671607d21e4fe.md) | 140 | `result-track:127d9b81a3e671607d21e4fe410ee98f6b71a4ab3b3b30ebce5fb177957253aa` |
| 19 | `lemma` | [Topology.IsEmbedding.isTotallyDisconnected_range](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean/declarations/topology-isembedding-istotallydisconnected-range--fb876e12134523ed574af590.md) | 151 | `result-track:fb876e12134523ed574af59031ea9c601a570f16578fe7aefea5e61044ecef85` |
| 20 | `lemma` | [totallyDisconnectedSpace_subtype_iff](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean/declarations/totallydisconnectedspace-subtype-iff--ab38b0893ad383f4858c8f70.md) | 158 | `result-track:ab38b0893ad383f4858c8f707eb38be0e197c0b1a471afccfcbb46d849ed0fba` |
| 21 | `instance` | [Subtype.totallyDisconnectedSpace](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean/declarations/subtype-totallydisconnectedspace--1f3617eb6396a2189bd3d03f.md) | 162 | `declaration-track:1f3617eb6396a2189bd3d03f282f22f3ec0de2139d3c8cf162d5fc83e27be6be` |
| 22 | `def` | [IsTotallySeparated](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean/declarations/istotallyseparated--38dc4129571bf9824a7b6234.md) | 172 | `declaration-track:38dc4129571bf9824a7b623424775fb9e8724199d7639d03cad5d98f5802b80d` |
| 23 | `theorem` | [isTotallySeparated_empty](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean/declarations/istotallyseparated-empty--06a94528218893856ae0605b.md) | 176 | `result-track:06a94528218893856ae0605b8509432401b9f8d430334a35fd650ab994f15d87` |
| 24 | `theorem` | [isTotallySeparated_singleton](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean/declarations/istotallyseparated-singleton--3ec445c2062fdbaf8295768b.md) | 178 | `result-track:3ec445c2062fdbaf8295768bb7742f15c265db75d82e58ce139d5e415305b16c` |
| 25 | `theorem` | [isTotallyDisconnected_of_isTotallySeparated](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean/declarations/istotallydisconnected-of-istotallyseparated--152be825b1668da5d1bc2ad0.md) | 181 | `result-track:152be825b1668da5d1bc2ad0f05eff5ffd76871ca63c5eb47cd7d86f4d0a75e2` |
| 26 | `class` | [TotallySeparatedSpace](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean/declarations/totallyseparatedspace--a12d7d91175df2692a4a2f5f.md) | 196 | `declaration-track:a12d7d91175df2692a4a2f5f78e0aa7fdd3ff7e260d8ab89a80b353443b802b1` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean/declarations/instance--2736b2f5b931d49ff0b12412.md) | 201 | `declaration-track:2736b2f5b931d49ff0b12412a01ab242c26d6459ecb436148ba45348c5070f1f` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean/declarations/instance--c82fb8aca66da711c0263675.md) | 206 | `declaration-track:c82fb8aca66da711c026367597d7588d59339e744c1499d598bd2267e55612ad` |
| 29 | `theorem` | [totallySeparatedSpace_iff_exists_isClopen](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean/declarations/totallyseparatedspace-iff-exists-isclopen--1caa5c0a7581f1e8263d828e.md) | 211 | `result-track:1caa5c0a7581f1e8263d828e1defa83c32a3f8fa5202f184abc6a7b15058b284` |
| 30 | `theorem` | [exists_isClopen_of_totally_separated](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean/declarations/exists-isclopen-of-totally-separated--b4b07e2d5b32c771b39f72bf.md) | 220 | `result-track:b4b07e2d5b32c771b39f72bf9a7fb6c0a6d21706ef2df22955c0e134c7cf9e78` |
| 31 | `theorem` | [isTotallyDisconnected_of_isClopen_set](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean/declarations/istotallydisconnected-of-isclopen-set--e0947cda0943610229379887.md) | 227 | `result-track:e0947cda0943610229379887e42bd2bfa8d266ae3237dda2ddc9278d5a3d3803` |
| 32 | `theorem` | [Continuous.image_eq_of_connectedComponent_eq](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean/declarations/continuous-image-eq-of-connectedcomponent-eq--a4ca93de66321b3bc68eb337.md) | 238 | `result-track:a4ca93de66321b3bc68eb337bfc999189a209a01e25477fa4e44e51b241c9864` |
| 33 | `def` | [Continuous.connectedComponentsLift](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean/declarations/continuous-connectedcomponentslift--eea9c90ecc839364f3a0fc49.md) | 247 | `declaration-track:eea9c90ecc839364f3a0fc49a5dfb4c588cd740cc16ee3c8955b41d71d29f1a8` |
| 34 | `theorem` | [Continuous.connectedComponentsLift_continuous](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean/declarations/continuous-connectedcomponentslift-continuous--dba9479c3acd5ded2004b7c2.md) | 251 | `result-track:dba9479c3acd5ded2004b7c2ac62749e6c9a20a2189d48fc14783a69afdeb244` |
| 35 | `theorem` | [Continuous.connectedComponentsLift_apply_coe](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean/declarations/continuous-connectedcomponentslift-apply-coe--7bd81b5d679c611273836b91.md) | 256 | `result-track:7bd81b5d679c611273836b91971d147d41f0073281987dc881c499ed11db845d` |
| 36 | `theorem` | [Continuous.connectedComponentsLift_comp_coe](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean/declarations/continuous-connectedcomponentslift-comp-coe--d82b359ab11688170c4b3d46.md) | 261 | `result-track:d82b359ab11688170c4b3d462f0fcde6f273d476fbdc8b24bb9f5abae4ca4303` |
| 37 | `theorem` | [connectedComponents_lift_unique'](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean/declarations/connectedcomponents-lift-unique--2470bc5d3f4d8ed81beaedf5.md) | 265 | `result-track:2470bc5d3f4d8ed81beaedf5bd68322cf8b8882dc6158f739fef418a36728b5e` |
| 38 | `theorem` | [Continuous.connectedComponentsLift_unique](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean/declarations/continuous-connectedcomponentslift-unique--b7a66c9c9e381a04376b4683.md) | 269 | `result-track:b7a66c9c9e381a04376b468343fc2c48e85240a8cb0a1bce1e39fcba987687c6` |
| 39 | `instance` | [ConnectedComponents.totallyDisconnectedSpace](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean/declarations/connectedcomponents-totallydisconnectedspace--a3da5bf7a06f457a87c3771e.md) | 273 | `declaration-track:a3da5bf7a06f457a87c3771e252b4cd50a741307b5ecaa4be53c1e1812b554da` |
| 40 | `def` | [Continuous.connectedComponentsMap](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean/declarations/continuous-connectedcomponentsmap--eee103851f70b18f012574e8.md) | 284 | `declaration-track:eee103851f70b18f012574e815bbe09fdfb04955db01da4ee551fb0b20f2549e` |
| 41 | `theorem` | [Continuous.connectedComponentsMap_continuous](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean/declarations/continuous-connectedcomponentsmap-continuous--90bab1b3828016652a1e0811.md) | 288 | `result-track:90bab1b3828016652a1e0811571f8d41d9dee3ed00fb0743ea29de0bb5fbc65f` |
| 42 | `theorem` | [IsPreconnected.constant](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean/declarations/ispreconnected-constant--60415491578545cb07a324c3.md) | 294 | `result-track:60415491578545cb07a324c39a369f303a48cc23fec1131d7fd3aaeb64ac651a` |
| 43 | `theorem` | [PreconnectedSpace.constant](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean/declarations/preconnectedspace-constant--13ebc9f4ed58f35415d54779.md) | 300 | `result-track:13ebc9f4ed58f35415d5477938896e1d3120cd75511f00834e3620192137cb51` |
| 44 | `theorem` | [IsPreconnected.constant_of_mapsTo](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean/declarations/ispreconnected-constant-of-mapsto--9697090f5492a4d4a595d143.md) | 306 | `result-track:9697090f5492a4d4a595d1435ed3579e2fb10db12e17a15ba3e79365da100ce5` |
| 45 | `theorem` | [IsPreconnected.eqOn_const_of_mapsTo](../../../../../mathematics/Topology/GeneralTopology/TotallyDisconnected/Variant3a8b5f40b0c2882c8687ab92c1798b9b62c11de18709ee907230b47ef12fbfde.lean/declarations/ispreconnected-eqon-const-of-mapsto--40f367d1428319d43afbe0de.md) | 315 | `result-track:40f367d1428319d43afbe0dee2d0868e644087abd155fe92fb76143fe6cd2415` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
