# Verification target: GRWTSK.Topology.MetricTopology.Defs.Variant21667b010dad7e22904b270bfbef9a2cb12c9226a28fbe8781ff75458dee8fd2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7cdef65e104f15c2504ee3f9cdaf1bbfe505aaa6",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Defs/Variant21667b010dad7e22904b270bfbef9a2cb12c9226a28fbe8781ff75458dee8fd2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Defs/Variant21667b010dad7e22904b270bfbef9a2cb12c9226a28fbe8781ff75458dee8fd2.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Defs/Variant21667b010dad7e22904b270bfbef9a2cb12c9226a28fbe8781ff75458dee8fd2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7cdef65e104f15c2504ee3f9cdaf1bbfe505aaa6`.

Source path: `GRWTSK/Topology/MetricTopology/Defs/Variant21667b010dad7e22904b270bfbef9a2cb12c9226a28fbe8781ff75458dee8fd2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Defs/Variant21667b010dad7e22904b270bfbef9a2cb12c9226a28fbe8781ff75458dee8fd2.lean.json)

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
| 1 | `class` | [MetricSpace](../../../../../mathematics/Topology/MetricTopology/Defs/Variant21667b010dad7e22904b270bfbef9a2cb12c9226a28fbe8781ff75458dee8fd2.lean/declarations/metricspace--00bfc5c21cea45d68ea35430.md) | 78 | `declaration-track:00bfc5c21cea45d68ea3543083b60e6b32d20ff604073fa6548da885c44d43bf` |
| 2 | `theorem` | [MetricSpace.ext](../../../../../mathematics/Topology/MetricTopology/Defs/Variant21667b010dad7e22904b270bfbef9a2cb12c9226a28fbe8781ff75458dee8fd2.lean/declarations/metricspace-ext--5ee982185a5c41336afe28a5.md) | 83 | `result-track:5ee982185a5c41336afe28a516dbf4c1aa04445fcaade6bb8231363eee9f2208` |
| 3 | `def` | [MetricSpace.ofDistTopology](../../../../../mathematics/Topology/MetricTopology/Defs/Variant21667b010dad7e22904b270bfbef9a2cb12c9226a28fbe8781ff75458dee8fd2.lean/declarations/metricspace-ofdisttopology--b414f0774fd322013dfac00b.md) | 91 | `declaration-track:b414f0774fd322013dfac00bd81952849794a67cc4b6232192ff52667ed18a9d` |
| 4 | `theorem` | [eq_of_dist_eq_zero](../../../../../mathematics/Topology/MetricTopology/Defs/Variant21667b010dad7e22904b270bfbef9a2cb12c9226a28fbe8781ff75458dee8fd2.lean/declarations/eq-of-dist-eq-zero--f972010f69ed91134bf8d8ce.md) | 101 | `result-track:f972010f69ed91134bf8d8ce5aa83ddc55be7a6696793ee27bada85d96f4f695` |
| 5 | `theorem` | [dist_eq_zero](../../../../../mathematics/Topology/MetricTopology/Defs/Variant21667b010dad7e22904b270bfbef9a2cb12c9226a28fbe8781ff75458dee8fd2.lean/declarations/dist-eq-zero--8ffba71628621b3094be4fd5.md) | 105 | `result-track:8ffba71628621b3094be4fd5386431fd03fa73036ded297ed3097ef4fc6cd620` |
| 6 | `theorem` | [zero_eq_dist](../../../../../mathematics/Topology/MetricTopology/Defs/Variant21667b010dad7e22904b270bfbef9a2cb12c9226a28fbe8781ff75458dee8fd2.lean/declarations/zero-eq-dist--428d7c56e8c497c72de0bfab.md) | 109 | `result-track:428d7c56e8c497c72de0bfab94009aeee3e1908eaed88beda6df8fb03cdb45db` |
| 7 | `theorem` | [dist_ne_zero](../../../../../mathematics/Topology/MetricTopology/Defs/Variant21667b010dad7e22904b270bfbef9a2cb12c9226a28fbe8781ff75458dee8fd2.lean/declarations/dist-ne-zero--377be5bf30beae0471f4dfe7.md) | 111 | `result-track:377be5bf30beae0471f4dfe74b369915957f06cbb18fabc67557e0940b63d65d` |
| 8 | `theorem` | [dist_le_zero](../../../../../mathematics/Topology/MetricTopology/Defs/Variant21667b010dad7e22904b270bfbef9a2cb12c9226a28fbe8781ff75458dee8fd2.lean/declarations/dist-le-zero--7f3006388c7d92420bd7e819.md) | 115 | `result-track:7f3006388c7d92420bd7e819a788f1b2d9cf97ea93284e9c1876d992c3a33fa1` |
| 9 | `theorem` | [dist_pos](../../../../../mathematics/Topology/MetricTopology/Defs/Variant21667b010dad7e22904b270bfbef9a2cb12c9226a28fbe8781ff75458dee8fd2.lean/declarations/dist-pos--e559c8f3b878656a66ce79f6.md) | 119 | `result-track:e559c8f3b878656a66ce79f61069ad1dbeefe4660714111640b49bf62718e5fa` |
| 10 | `theorem` | [eq_of_forall_dist_le](../../../../../mathematics/Topology/MetricTopology/Defs/Variant21667b010dad7e22904b270bfbef9a2cb12c9226a28fbe8781ff75458dee8fd2.lean/declarations/eq-of-forall-dist-le--1da2c28be665ec64496f8858.md) | 122 | `result-track:1da2c28be665ec64496f8858681ba50e4d7757d930a04d93df000e24b378ffdc` |
| 11 | `theorem` | [eq_of_nndist_eq_zero](../../../../../mathematics/Topology/MetricTopology/Defs/Variant21667b010dad7e22904b270bfbef9a2cb12c9226a28fbe8781ff75458dee8fd2.lean/declarations/eq-of-nndist-eq-zero--2af0f4de2c360caf61fe3cea.md) | 126 | `result-track:2af0f4de2c360caf61fe3ceac615a8453fb2d854b987af18c8d468aea01c8d3f` |
| 12 | `theorem` | [nndist_eq_zero](../../../../../mathematics/Topology/MetricTopology/Defs/Variant21667b010dad7e22904b270bfbef9a2cb12c9226a28fbe8781ff75458dee8fd2.lean/declarations/nndist-eq-zero--9a573e5ff7f3cc4b2bb0edda.md) | 131 | `result-track:9a573e5ff7f3cc4b2bb0edda5ba57a811efc32950c2704085b94bb3bfb09ac5c` |
| 13 | `theorem` | [zero_eq_nndist](../../../../../mathematics/Topology/MetricTopology/Defs/Variant21667b010dad7e22904b270bfbef9a2cb12c9226a28fbe8781ff75458dee8fd2.lean/declarations/zero-eq-nndist--4a78ecee9d006e8fc2df1d20.md) | 135 | `result-track:4a78ecee9d006e8fc2df1d20ce3e28d5b6a029972662557d3af509c52d787133` |
| 14 | `theorem` | [closedBall_zero](../../../../../mathematics/Topology/MetricTopology/Defs/Variant21667b010dad7e22904b270bfbef9a2cb12c9226a28fbe8781ff75458dee8fd2.lean/declarations/closedball-zero--09fd949765daa8870de71ed3.md) | 142 | `result-track:09fd949765daa8870de71ed308525c3ddd5b9f45da5be1878cb7ede8fb9f47ff` |
| 15 | `theorem` | [sphere_zero](../../../../../mathematics/Topology/MetricTopology/Defs/Variant21667b010dad7e22904b270bfbef9a2cb12c9226a28fbe8781ff75458dee8fd2.lean/declarations/sphere-zero--58ab304152d0ee07c591a977.md) | 144 | `result-track:58ab304152d0ee07c591a977f19d2ec7f888f7d6be8db25f26139353bdac190a` |
| 16 | `theorem` | [subsingleton_closedBall](../../../../../mathematics/Topology/MetricTopology/Defs/Variant21667b010dad7e22904b270bfbef9a2cb12c9226a28fbe8781ff75458dee8fd2.lean/declarations/subsingleton-closedball--3c99236855e38071810302bd.md) | 146 | `result-track:3c99236855e38071810302bd17347430aca2c558b7c452bd61b0aa7fe77b9004` |
| 17 | `theorem` | [subsingleton_sphere](../../../../../mathematics/Topology/MetricTopology/Defs/Variant21667b010dad7e22904b270bfbef9a2cb12c9226a28fbe8781ff75458dee8fd2.lean/declarations/subsingleton-sphere--be11528174467dd1bd871529.md) | 153 | `result-track:be11528174467dd1bd871529557255eb48501872b3819f2cd5eaaf77d54d8074` |
| 18 | `abbrev` | [MetricSpace.replaceUniformity](../../../../../mathematics/Topology/MetricTopology/Defs/Variant21667b010dad7e22904b270bfbef9a2cb12c9226a28fbe8781ff75458dee8fd2.lean/declarations/metricspace-replaceuniformity--197df6d28b5e9120cc28fabd.md) | 163 | `declaration-track:197df6d28b5e9120cc28fabd49c49c4bf6bdc507143a029936c6b75c0991ef05` |
| 19 | `theorem` | [MetricSpace.replaceUniformity_eq](../../../../../mathematics/Topology/MetricTopology/Defs/Variant21667b010dad7e22904b270bfbef9a2cb12c9226a28fbe8781ff75458dee8fd2.lean/declarations/metricspace-replaceuniformity-eq--27b7fb439029d2aefdd326f3.md) | 168 | `result-track:27b7fb439029d2aefdd326f39e64266b02390d03423802393d574f2efcc0486e` |
| 20 | `abbrev` | [MetricSpace.replaceTopology](../../../../../mathematics/Topology/MetricTopology/Defs/Variant21667b010dad7e22904b270bfbef9a2cb12c9226a28fbe8781ff75458dee8fd2.lean/declarations/metricspace-replacetopology--5ba7b930b8188f44e30816d0.md) | 177 | `declaration-track:5ba7b930b8188f44e30816d04c37bc967d41da5e4a75caeb237542a7435c2cd6` |
| 21 | `theorem` | [MetricSpace.replaceTopology_eq](../../../../../mathematics/Topology/MetricTopology/Defs/Variant21667b010dad7e22904b270bfbef9a2cb12c9226a28fbe8781ff75458dee8fd2.lean/declarations/metricspace-replacetopology-eq--b915cb1609f0e17177db6e07.md) | 181 | `result-track:b915cb1609f0e17177db6e07d95fbda48092c9baa45c53ec69a4cd73dbf816f9` |
| 22 | `abbrev` | [MetricSpace.replaceBornology](../../../../../mathematics/Topology/MetricTopology/Defs/Variant21667b010dad7e22904b270bfbef9a2cb12c9226a28fbe8781ff75458dee8fd2.lean/declarations/metricspace-replacebornology--5d71aefe94e34b1873a7f9df.md) | 191 | `declaration-track:5d71aefe94e34b1873a7f9df2d3f8e479e63b422b0096194b62230c316146326` |
| 23 | `theorem` | [MetricSpace.replaceBornology_eq](../../../../../mathematics/Topology/MetricTopology/Defs/Variant21667b010dad7e22904b270bfbef9a2cb12c9226a28fbe8781ff75458dee8fd2.lean/declarations/metricspace-replacebornology-eq--02cfc5097bfd6f8c28cd283f.md) | 195 | `result-track:02cfc5097bfd6f8c28cd283fcef57367f0fb1622b4eeae6af8d0bd71c97fee01` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Defs/Variant21667b010dad7e22904b270bfbef9a2cb12c9226a28fbe8781ff75458dee8fd2.lean/declarations/instance--982a6729fb2598c76410700b.md) | 201 | `declaration-track:982a6729fb2598c76410700b0fcfc3f3ef6c829fed0ca69bbe803deb19d02553` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Defs/Variant21667b010dad7e22904b270bfbef9a2cb12c9226a28fbe8781ff75458dee8fd2.lean/declarations/instance--5a829cbaedd333415d3c33f7.md) | 211 | `declaration-track:5a829cbaedd333415d3c33f73bfeda239db3f4a914bd7f9c1d58a258ef510c8a` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Defs/Variant21667b010dad7e22904b270bfbef9a2cb12c9226a28fbe8781ff75458dee8fd2.lean/declarations/instance--a7f3416ca35366988009fb82.md) | 235 | `declaration-track:a7f3416ca35366988009fb822f8d965d74fbd2cb29209270faae4d76d5149fe3` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Defs/Variant21667b010dad7e22904b270bfbef9a2cb12c9226a28fbe8781ff75458dee8fd2.lean/declarations/instance--f9ac5caa18f220d71038a70f.md) | 236 | `declaration-track:f9ac5caa18f220d71038a70fc9795c5734d823785df18c66a8241f948ecf07ab` |
| 28 | `theorem` | [dist_ofMul](../../../../../mathematics/Topology/MetricTopology/Defs/Variant21667b010dad7e22904b270bfbef9a2cb12c9226a28fbe8781ff75458dee8fd2.lean/declarations/dist-ofmul--ca9a794084c01a7da5a2656f.md) | 238 | `result-track:ca9a794084c01a7da5a2656f52d0607b1518660ab546de54fb6dfd963ce90be5` |
| 29 | `theorem` | [dist_ofAdd](../../../../../mathematics/Topology/MetricTopology/Defs/Variant21667b010dad7e22904b270bfbef9a2cb12c9226a28fbe8781ff75458dee8fd2.lean/declarations/dist-ofadd--3eb44a3cd1ee1607ad617140.md) | 240 | `result-track:3eb44a3cd1ee1607ad61714065be6f9f07dadf9d99883114447b07a764ed1400` |
| 30 | `theorem` | [dist_toMul](../../../../../mathematics/Topology/MetricTopology/Defs/Variant21667b010dad7e22904b270bfbef9a2cb12c9226a28fbe8781ff75458dee8fd2.lean/declarations/dist-tomul--2f3f99241aa657cd126c398c.md) | 242 | `result-track:2f3f99241aa657cd126c398c201616e23a0fc92d497a7d80c6a8b9b9e39761fa` |
| 31 | `theorem` | [dist_toAdd](../../../../../mathematics/Topology/MetricTopology/Defs/Variant21667b010dad7e22904b270bfbef9a2cb12c9226a28fbe8781ff75458dee8fd2.lean/declarations/dist-toadd--434a10caabeb63431450f7b7.md) | 244 | `result-track:434a10caabeb63431450f7b70b969f5065a8125bf78c85495d02a54079a1ffef` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Defs/Variant21667b010dad7e22904b270bfbef9a2cb12c9226a28fbe8781ff75458dee8fd2.lean/declarations/instance--c6cc07b7a55b002449972374.md) | 248 | `declaration-track:c6cc07b7a55b002449972374ae374ca15458a737617576c3e58ce11a0b8045f3` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Defs/Variant21667b010dad7e22904b270bfbef9a2cb12c9226a28fbe8781ff75458dee8fd2.lean/declarations/instance--a2a0285d85f837a2056b811e.md) | 249 | `declaration-track:a2a0285d85f837a2056b811ed29eadd0068f3506ebee61d47924ec241bc220f5` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Defs/Variant21667b010dad7e22904b270bfbef9a2cb12c9226a28fbe8781ff75458dee8fd2.lean/declarations/instance--464bcc200b97141c1afebd3e.md) | 263 | `declaration-track:464bcc200b97141c1afebd3ebaaacda8a6415288df3a3d5cd08f95ee2a0f8650` |
| 35 | `theorem` | [dist_toDual](../../../../../mathematics/Topology/MetricTopology/Defs/Variant21667b010dad7e22904b270bfbef9a2cb12c9226a28fbe8781ff75458dee8fd2.lean/declarations/dist-todual--be83cbb7f1fa3c7cecc3d462.md) | 265 | `result-track:be83cbb7f1fa3c7cecc3d4626c7acb5d3af61f851791e489415831b9762f909d` |
| 36 | `theorem` | [dist_ofDual](../../../../../mathematics/Topology/MetricTopology/Defs/Variant21667b010dad7e22904b270bfbef9a2cb12c9226a28fbe8781ff75458dee8fd2.lean/declarations/dist-ofdual--4b92106fcaf031b91b271f55.md) | 267 | `result-track:4b92106fcaf031b91b271f55c77b470231fcd731f1258199a11d5438b4eb89ec` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Defs/Variant21667b010dad7e22904b270bfbef9a2cb12c9226a28fbe8781ff75458dee8fd2.lean/declarations/instance--41306f3ec8e6b3bf2c48cda3.md) | 271 | `declaration-track:41306f3ec8e6b3bf2c48cda398f15aa45bdb31e270c8ece22c01df1dcecd86cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
