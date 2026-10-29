# Verification target: Hom Basic Namespaced Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f4a0506518a699fc35e2ec50240443843389c01c",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant97f58b99e415967262fffaf7d772f02c19c66e3be970fe7e736db9c60c2f36c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/HomBasicNamespacedAligned.lean/index.md) · [Full source](../../../../GeneralTopology/HomBasicNamespacedAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f4a0506518a699fc35e2ec50240443843389c01c`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant97f58b99e415967262fffaf7d772f02c19c66e3be970fe7e736db9c60c2f36c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant97f58b99e415967262fffaf7d772f02c19c66e3be970fe7e736db9c60c2f36c8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Hom.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousFunction.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ContinuousOrderHom](../../../../GeneralTopology/HomBasicNamespacedAligned.lean/declarations/continuousorderhom.md) | 44 | `declaration-track:5462e543990372f7ebc11a15ad8e7f9a86ad311da971e0792a54ecf539bf6041` |
| 2 | `class` | [ContinuousOrderHomClass](../../../../GeneralTopology/HomBasicNamespacedAligned.lean/declarations/continuousorderhomclass.md) | 58 | `declaration-track:39888c4a9bab3fbfb6c65958a2fddfada9bcb3904410fc37c994aa30c9a08349` |
| 3 | `instance` | [(anonymous)](../../../../GeneralTopology/HomBasicNamespacedAligned.lean/declarations/instance-source-edition-5.md) | 71 | `declaration-track:c54059a81b77906884b2363442e30be8cb80d86554fa72d18c4d19ab28965117` |
| 4 | `def` | [toContinuousOrderHom](../../../../GeneralTopology/HomBasicNamespacedAligned.lean/declarations/tocontinuousorderhom.md) | 84 | `declaration-track:84f63bcd881c687b77722b7f155631579d4a49f7b5ec657bc316c4ff05afeec8` |
| 5 | `instance` | [(anonymous)](../../../../GeneralTopology/HomBasicNamespacedAligned.lean/declarations/instance.md) | 89 | `declaration-track:4279a1d9baac241c1d073b1a0be0d73d3c78a9dec6a511ca81f8a47019b2a260` |
| 6 | `def` | [toContinuousMap](../../../../GeneralTopology/HomBasicNamespacedAligned.lean/declarations/tocontinuousmap.md) | 105 | `declaration-track:fab2e46f816af79ff8887443b11b74322ea5de34af1701008baa6fb7f543c2bb` |
| 7 | `instance` | [(anonymous)](../../../../GeneralTopology/HomBasicNamespacedAligned.lean/declarations/instance-source-edition-2.md) | 109 | `declaration-track:6175a840f71aea4e76961336633bab393b42f1117c27a8eb00bd4267d3ae7126` |
| 8 | `theorem` | [coe_toOrderHom](../../../../GeneralTopology/HomBasicNamespacedAligned.lean/declarations/coe-toorderhom.md) | 119 | `result-track:bfc4b9ac2ee67d2364b888683ec58951c1cac7a0593a387a58de779544cc701a` |
| 9 | `theorem` | [toFun_eq_coe](../../../../GeneralTopology/HomBasicNamespacedAligned.lean/declarations/tofun-eq-coe.md) | 121 | `result-track:5747c2a928c29188addf61833fa2d17f59d496bf535438b7458d2386e8681077` |
| 10 | `theorem` | [ext](../../../../GeneralTopology/HomBasicNamespacedAligned.lean/declarations/ext.md) | 125 | `result-track:9b69c17de83bf85d249c94df87ff3e01d6cd13a1c1a2b2d3edf0ad0e56c922f7` |
| 11 | `def` | [copy](../../../../GeneralTopology/HomBasicNamespacedAligned.lean/declarations/copy.md) | 131 | `declaration-track:8ac303a2ede60d1d1b4e198e6d4aa228906287df7936cb0717fd836232a90922` |
| 12 | `theorem` | [coe_copy](../../../../GeneralTopology/HomBasicNamespacedAligned.lean/declarations/coe-copy.md) | 136 | `result-track:5b86028204213cd852a8c38a62febd49f89f1229e598b1349b60f62889788b3a` |
| 13 | `theorem` | [copy_eq](../../../../GeneralTopology/HomBasicNamespacedAligned.lean/declarations/copy-eq.md) | 140 | `result-track:6574b370a03b9bbd6993caca2f48b25ee9c23bc96b95bbbf4dd09cf84189f4ef` |
| 14 | `def` | [id](../../../../GeneralTopology/HomBasicNamespacedAligned.lean/declarations/id.md) | 147 | `declaration-track:9669ff34cbb1941551eaf31b46be49264e241c580f3c0d0d8f23d0844696a638` |
| 15 | `instance` | [(anonymous)](../../../../GeneralTopology/HomBasicNamespacedAligned.lean/declarations/instance-source-edition-6.md) | 151 | `declaration-track:eba63884ffbfe795e5276019373b0ba26e8acd00f1326c1238344cfa41875a9a` |
| 16 | `theorem` | [coe_id](../../../../GeneralTopology/HomBasicNamespacedAligned.lean/declarations/coe-id.md) | 155 | `result-track:0d7b0ac87a9562e6d8f32e1ea861e69e79a2e56295bd31577aab7cab75616e2f` |
| 17 | `theorem` | [id_apply](../../../../GeneralTopology/HomBasicNamespacedAligned.lean/declarations/id-apply.md) | 162 | `result-track:fee8990b893f94d70eaca0b1eeba2c0754422f4f6fe2baf5b8895f028734f4f6` |
| 18 | `def` | [comp](../../../../GeneralTopology/HomBasicNamespacedAligned.lean/declarations/comp.md) | 167 | `declaration-track:8cddc5aa65b4b09be1b3e1a723609a43912bd293a0d9725cae9a01d4fa08f0c6` |
| 19 | `theorem` | [coe_comp](../../../../GeneralTopology/HomBasicNamespacedAligned.lean/declarations/coe-comp.md) | 172 | `result-track:ae45562d871f611555319e23f5d9cd77ed57dfcae0d4e2ebb331de8cbfada418` |
| 20 | `theorem` | [comp_apply](../../../../GeneralTopology/HomBasicNamespacedAligned.lean/declarations/comp-apply.md) | 177 | `result-track:e6fed98f655ea5981f559ab3bea97af7c81a52032d8ee218118eba0595fe2d9c` |
| 21 | `theorem` | [comp_assoc](../../../../GeneralTopology/HomBasicNamespacedAligned.lean/declarations/comp-assoc.md) | 182 | `result-track:9068f57386e83ea73d5066640c5bae98f5ccd0e3489e00382765bd438df1f792` |
| 22 | `theorem` | [comp_id](../../../../GeneralTopology/HomBasicNamespacedAligned.lean/declarations/comp-id.md) | 188 | `result-track:d0a8e08bbc821c34183609910ced91c4ccd6a91470f73740583f6e9d2009752c` |
| 23 | `theorem` | [id_comp](../../../../GeneralTopology/HomBasicNamespacedAligned.lean/declarations/id-comp.md) | 193 | `result-track:87c952103c473e3213108d4069e1dd3d643418f92a52ae5c4d21e22b3076c51b` |
| 24 | `theorem` | [cancel_right](../../../../GeneralTopology/HomBasicNamespacedAligned.lean/declarations/cancel-right.md) | 197 | `result-track:e1a384ddb9f44d47a9efe6e520b572e2999a5982f082f53d28733a1341e193e1` |
| 25 | `theorem` | [cancel_left](../../../../GeneralTopology/HomBasicNamespacedAligned.lean/declarations/cancel-left.md) | 202 | `result-track:7a3295e21d35a5c261ca5e8d66a974c758d1fcc3b25880c38d3acdc36acaf235` |
| 26 | `instance` | [(anonymous)](../../../../GeneralTopology/HomBasicNamespacedAligned.lean/declarations/instance-source-edition-4.md) | 207 | `declaration-track:9ecd85110ef087a70faaea121a9e94dcf21b746f554aa354df040cc604d57cb9` |
| 27 | `instance` | [(anonymous)](../../../../GeneralTopology/HomBasicNamespacedAligned.lean/declarations/instance-source-edition-3.md) | 212 | `declaration-track:774c0554ae8b9b9c56b96c51a4149affdc91561642acfc2c3fe072e6287d9a18` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=284477aa5d4683083e5db57772c5fec472b27173247df7fc749998788ba6c861 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant97f58b99e415967262fffaf7d772f02c19c66e3be970fe7e736db9c60c2f36c8.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant97f58b99e415967262fffaf7d772f02c19c66e3be970fe7e736db9c60c2f36c8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
