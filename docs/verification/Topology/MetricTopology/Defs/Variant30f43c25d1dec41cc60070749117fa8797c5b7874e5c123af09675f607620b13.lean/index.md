# Verification target: GRWTSK.Topology.MetricTopology.Defs.Variant30f43c25d1dec41cc60070749117fa8797c5b7874e5c123af09675f607620b13

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8538e3f9b56a7a5ab8a17e284aadf85820c16f18",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Defs/Variant30f43c25d1dec41cc60070749117fa8797c5b7874e5c123af09675f607620b13.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Defs/Variant30f43c25d1dec41cc60070749117fa8797c5b7874e5c123af09675f607620b13.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Defs/Variant30f43c25d1dec41cc60070749117fa8797c5b7874e5c123af09675f607620b13.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8538e3f9b56a7a5ab8a17e284aadf85820c16f18`.

Source path: `GRWTSK/Topology/MetricTopology/Defs/Variant30f43c25d1dec41cc60070749117fa8797c5b7874e5c123af09675f607620b13.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Defs/Variant30f43c25d1dec41cc60070749117fa8797c5b7874e5c123af09675f607620b13.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Pseudo.Defs` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [MetricSpace](../../../../../mathematics/Topology/MetricTopology/Defs/Variant30f43c25d1dec41cc60070749117fa8797c5b7874e5c123af09675f607620b13.lean/declarations/metricspace--f4a1bd547cab44fbe6a47bd6.md) | 53 | `declaration-track:f4a1bd547cab44fbe6a47bd69fd8ab9e357af50841952f5b5638dec3be5c376e` |
| 2 | `theorem` | [MetricSpace.ext](../../../../../mathematics/Topology/MetricTopology/Defs/Variant30f43c25d1dec41cc60070749117fa8797c5b7874e5c123af09675f607620b13.lean/declarations/metricspace-ext--b288b0d26bed19ca0c638e80.md) | 58 | `result-track:b288b0d26bed19ca0c638e80b67462f55c2040957ceb6f6fc2469c321bfa55de` |
| 3 | `def` | [MetricSpace.ofDistTopology](../../../../../mathematics/Topology/MetricTopology/Defs/Variant30f43c25d1dec41cc60070749117fa8797c5b7874e5c123af09675f607620b13.lean/declarations/metricspace-ofdisttopology--e6b74764b75510dc8a43df45.md) | 65 | `declaration-track:e6b74764b75510dc8a43df45c3443623ae249f024d2843cb456fe2ba52b80e46` |
| 4 | `theorem` | [eq_of_dist_eq_zero](../../../../../mathematics/Topology/MetricTopology/Defs/Variant30f43c25d1dec41cc60070749117fa8797c5b7874e5c123af09675f607620b13.lean/declarations/eq-of-dist-eq-zero--388aa061e50a7b9c808b2374.md) | 75 | `result-track:388aa061e50a7b9c808b2374913810af0bea92387883dfba0f4b2595f942663d` |
| 5 | `theorem` | [dist_eq_zero](../../../../../mathematics/Topology/MetricTopology/Defs/Variant30f43c25d1dec41cc60070749117fa8797c5b7874e5c123af09675f607620b13.lean/declarations/dist-eq-zero--b6d3d918d1491a4691a039f3.md) | 79 | `result-track:b6d3d918d1491a4691a039f3f10f93653a14696a8a9f443e40b99dbd17049fdd` |
| 6 | `theorem` | [zero_eq_dist](../../../../../mathematics/Topology/MetricTopology/Defs/Variant30f43c25d1dec41cc60070749117fa8797c5b7874e5c123af09675f607620b13.lean/declarations/zero-eq-dist--e03e570004c081609b8fc06d.md) | 83 | `result-track:e03e570004c081609b8fc06d8e6b424ba1689345e9292dd03936678e5894f96b` |
| 7 | `theorem` | [dist_ne_zero](../../../../../mathematics/Topology/MetricTopology/Defs/Variant30f43c25d1dec41cc60070749117fa8797c5b7874e5c123af09675f607620b13.lean/declarations/dist-ne-zero--77f2a1bcb1815b72dc8a5bd7.md) | 85 | `result-track:77f2a1bcb1815b72dc8a5bd7a984e9784320056b734b2852c319fb7dbffe046b` |
| 8 | `theorem` | [dist_le_zero](../../../../../mathematics/Topology/MetricTopology/Defs/Variant30f43c25d1dec41cc60070749117fa8797c5b7874e5c123af09675f607620b13.lean/declarations/dist-le-zero--f47362f7dfa94c16f386441e.md) | 89 | `result-track:f47362f7dfa94c16f386441eacb989e313914901c8bd83ec6c7b3a914dad17b1` |
| 9 | `theorem` | [dist_pos](../../../../../mathematics/Topology/MetricTopology/Defs/Variant30f43c25d1dec41cc60070749117fa8797c5b7874e5c123af09675f607620b13.lean/declarations/dist-pos--22dee12de08dd3d71877a484.md) | 93 | `result-track:22dee12de08dd3d71877a484cf85c3c3e64482271cbecc196d433c2d386f9505` |
| 10 | `theorem` | [eq_of_forall_dist_le](../../../../../mathematics/Topology/MetricTopology/Defs/Variant30f43c25d1dec41cc60070749117fa8797c5b7874e5c123af09675f607620b13.lean/declarations/eq-of-forall-dist-le--981a04dd56194b1653ae18c8.md) | 96 | `result-track:981a04dd56194b1653ae18c8ddb20810af4a24d854da3c59a22f85ddf79d6801` |
| 11 | `theorem` | [eq_of_nndist_eq_zero](../../../../../mathematics/Topology/MetricTopology/Defs/Variant30f43c25d1dec41cc60070749117fa8797c5b7874e5c123af09675f607620b13.lean/declarations/eq-of-nndist-eq-zero--8e1de9e13d5bb18fc1edfaee.md) | 100 | `result-track:8e1de9e13d5bb18fc1edfaee7a023462fd5043d14b99302a8166594723ffe151` |
| 12 | `theorem` | [nndist_eq_zero](../../../../../mathematics/Topology/MetricTopology/Defs/Variant30f43c25d1dec41cc60070749117fa8797c5b7874e5c123af09675f607620b13.lean/declarations/nndist-eq-zero--094792b12bd0bc985db0ff00.md) | 105 | `result-track:094792b12bd0bc985db0ff00f6285dc3680ddb82a1f6464aedf9986b44483d88` |
| 13 | `theorem` | [zero_eq_nndist](../../../../../mathematics/Topology/MetricTopology/Defs/Variant30f43c25d1dec41cc60070749117fa8797c5b7874e5c123af09675f607620b13.lean/declarations/zero-eq-nndist--afadf2f5a2e4e3b5f864a749.md) | 109 | `result-track:afadf2f5a2e4e3b5f864a749fe71754be2d208e545fb55486e19c4e5f3a39881` |
| 14 | `theorem` | [closedBall_zero](../../../../../mathematics/Topology/MetricTopology/Defs/Variant30f43c25d1dec41cc60070749117fa8797c5b7874e5c123af09675f607620b13.lean/declarations/closedball-zero--ae5eea393943f38cd8a2c4e8.md) | 116 | `result-track:ae5eea393943f38cd8a2c4e82f82c0af3dbd5ff7f93dcd180b9606879dfad76b` |
| 15 | `theorem` | [sphere_zero](../../../../../mathematics/Topology/MetricTopology/Defs/Variant30f43c25d1dec41cc60070749117fa8797c5b7874e5c123af09675f607620b13.lean/declarations/sphere-zero--7a751864e6a97e74d9eb2da2.md) | 118 | `result-track:7a751864e6a97e74d9eb2da21440cf73f0b992a6c350d98c183a59c92fa65493` |
| 16 | `theorem` | [subsingleton_closedBall](../../../../../mathematics/Topology/MetricTopology/Defs/Variant30f43c25d1dec41cc60070749117fa8797c5b7874e5c123af09675f607620b13.lean/declarations/subsingleton-closedball--74e94358167b43e2a5b43e78.md) | 120 | `result-track:74e94358167b43e2a5b43e78311b9de5db8d3e735bf32889380c0d40b233d212` |
| 17 | `theorem` | [subsingleton_sphere](../../../../../mathematics/Topology/MetricTopology/Defs/Variant30f43c25d1dec41cc60070749117fa8797c5b7874e5c123af09675f607620b13.lean/declarations/subsingleton-sphere--38cdd240d048835f81c63e8a.md) | 127 | `result-track:38cdd240d048835f81c63e8a8dcf0efcb6917bbc340df68f9a719fa846d96685` |
| 18 | `abbrev` | [MetricSpace.replaceUniformity](../../../../../mathematics/Topology/MetricTopology/Defs/Variant30f43c25d1dec41cc60070749117fa8797c5b7874e5c123af09675f607620b13.lean/declarations/metricspace-replaceuniformity--7d541db9a8c86575743852af.md) | 137 | `declaration-track:7d541db9a8c86575743852afac784981986f3a0793fe2e5c3deef02ce4147a63` |
| 19 | `theorem` | [MetricSpace.replaceUniformity_eq](../../../../../mathematics/Topology/MetricTopology/Defs/Variant30f43c25d1dec41cc60070749117fa8797c5b7874e5c123af09675f607620b13.lean/declarations/metricspace-replaceuniformity-eq--30631549ffc23f7f7d125ada.md) | 142 | `result-track:30631549ffc23f7f7d125ada798cd2870d8fe0aa0076e65966046e8f6ad1f629` |
| 20 | `abbrev` | [MetricSpace.replaceTopology](../../../../../mathematics/Topology/MetricTopology/Defs/Variant30f43c25d1dec41cc60070749117fa8797c5b7874e5c123af09675f607620b13.lean/declarations/metricspace-replacetopology--7a4417b5b6dc762dea8666bb.md) | 151 | `declaration-track:7a4417b5b6dc762dea8666bb51f4e4199fca126375f72485df1c47cc51ea4dba` |
| 21 | `theorem` | [MetricSpace.replaceTopology_eq](../../../../../mathematics/Topology/MetricTopology/Defs/Variant30f43c25d1dec41cc60070749117fa8797c5b7874e5c123af09675f607620b13.lean/declarations/metricspace-replacetopology-eq--fbf40a7170aa39e18cf93d3e.md) | 155 | `result-track:fbf40a7170aa39e18cf93d3e2dc350f0a337a5a7ef94b7bf054b10b8c320a7cd` |
| 22 | `abbrev` | [MetricSpace.replaceBornology](../../../../../mathematics/Topology/MetricTopology/Defs/Variant30f43c25d1dec41cc60070749117fa8797c5b7874e5c123af09675f607620b13.lean/declarations/metricspace-replacebornology--2e99b223a6e55e222888ab48.md) | 165 | `declaration-track:2e99b223a6e55e222888ab48fdfd7255f557d41d415cd0fdbbc793dd9c08772d` |
| 23 | `theorem` | [MetricSpace.replaceBornology_eq](../../../../../mathematics/Topology/MetricTopology/Defs/Variant30f43c25d1dec41cc60070749117fa8797c5b7874e5c123af09675f607620b13.lean/declarations/metricspace-replacebornology-eq--1075ce2360ed5c45f8e55247.md) | 169 | `result-track:1075ce2360ed5c45f8e55247d1459ea363b9bcaaa25f9b170dfba56ee4dc47a9` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Defs/Variant30f43c25d1dec41cc60070749117fa8797c5b7874e5c123af09675f607620b13.lean/declarations/instance--2f76027ecf4cb89315b3414c.md) | 175 | `declaration-track:2f76027ecf4cb89315b3414c522d27409be962c8dc7f4ce19a7377c79ed739c9` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Defs/Variant30f43c25d1dec41cc60070749117fa8797c5b7874e5c123af09675f607620b13.lean/declarations/instance--3d8f71bf25098b1e21025e1f.md) | 185 | `declaration-track:3d8f71bf25098b1e21025e1f9b4f45b92bce728b800c592ec8c714084e00a625` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Defs/Variant30f43c25d1dec41cc60070749117fa8797c5b7874e5c123af09675f607620b13.lean/declarations/instance--994d0870894849e6bdd0b565.md) | 209 | `declaration-track:994d0870894849e6bdd0b5654231a7e4feb3017f510beb687b8e6981bba44659` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Defs/Variant30f43c25d1dec41cc60070749117fa8797c5b7874e5c123af09675f607620b13.lean/declarations/instance--5bca497ac1e1ab6391dface1.md) | 210 | `declaration-track:5bca497ac1e1ab6391dface1e8c25864f8c39e8b6d0500ec89e0acf059fbb45c` |
| 28 | `theorem` | [dist_ofMul](../../../../../mathematics/Topology/MetricTopology/Defs/Variant30f43c25d1dec41cc60070749117fa8797c5b7874e5c123af09675f607620b13.lean/declarations/dist-ofmul--6f6ac1374b91fa577b0768d1.md) | 212 | `result-track:6f6ac1374b91fa577b0768d12cd091337e9456f89eea0680d83edd16b328294a` |
| 29 | `theorem` | [dist_ofAdd](../../../../../mathematics/Topology/MetricTopology/Defs/Variant30f43c25d1dec41cc60070749117fa8797c5b7874e5c123af09675f607620b13.lean/declarations/dist-ofadd--5241ebec1c91cab4dec29dd0.md) | 214 | `result-track:5241ebec1c91cab4dec29dd02cc1d6272816765d4d5ad65308dd8f028929ca0a` |
| 30 | `theorem` | [dist_toMul](../../../../../mathematics/Topology/MetricTopology/Defs/Variant30f43c25d1dec41cc60070749117fa8797c5b7874e5c123af09675f607620b13.lean/declarations/dist-tomul--f4e1878e4113db692120b47b.md) | 216 | `result-track:f4e1878e4113db692120b47ba6d629a59e5bfe22f82ac52f8df1296197b6be8f` |
| 31 | `theorem` | [dist_toAdd](../../../../../mathematics/Topology/MetricTopology/Defs/Variant30f43c25d1dec41cc60070749117fa8797c5b7874e5c123af09675f607620b13.lean/declarations/dist-toadd--d6b012b6d6093f5a120316ad.md) | 218 | `result-track:d6b012b6d6093f5a120316ad0b8eff719b9dc60a02e75bb16d7e4f7ec58144a7` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Defs/Variant30f43c25d1dec41cc60070749117fa8797c5b7874e5c123af09675f607620b13.lean/declarations/instance--4c707d0f49fbb972581ecd62.md) | 222 | `declaration-track:4c707d0f49fbb972581ecd6219e5e7eb91114a7273173b641e850cf68fc4198b` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Defs/Variant30f43c25d1dec41cc60070749117fa8797c5b7874e5c123af09675f607620b13.lean/declarations/instance--19657ee55a8a23e38ef960ce.md) | 223 | `declaration-track:19657ee55a8a23e38ef960ce11d6e2bec86eb643fe8d436890c0ddce11f018b7` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Defs/Variant30f43c25d1dec41cc60070749117fa8797c5b7874e5c123af09675f607620b13.lean/declarations/instance--e996c2c29033b71445a2f9fa.md) | 237 | `declaration-track:e996c2c29033b71445a2f9fa973d7367a15b7a4a9b40f4a1f0282b27f1bbcaa1` |
| 35 | `theorem` | [dist_toDual](../../../../../mathematics/Topology/MetricTopology/Defs/Variant30f43c25d1dec41cc60070749117fa8797c5b7874e5c123af09675f607620b13.lean/declarations/dist-todual--b5d4f529e65ca1cae8b5926b.md) | 239 | `result-track:b5d4f529e65ca1cae8b5926b71edd8bec9af059e1e477bece071d499a3718bf2` |
| 36 | `theorem` | [dist_ofDual](../../../../../mathematics/Topology/MetricTopology/Defs/Variant30f43c25d1dec41cc60070749117fa8797c5b7874e5c123af09675f607620b13.lean/declarations/dist-ofdual--adc240ef498168fd1808fc8f.md) | 241 | `result-track:adc240ef498168fd1808fc8fa070f7adc41a46045b9f9a12677a77cd3395f4d2` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Defs/Variant30f43c25d1dec41cc60070749117fa8797c5b7874e5c123af09675f607620b13.lean/declarations/instance--b16420cb0a776ddf542e9322.md) | 245 | `declaration-track:b16420cb0a776ddf542e9322c1bc87240b07c82cd7f3a3a4f4c3b2be96760051` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
