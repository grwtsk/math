# Verification target: Proper Closure

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9cefd9b847b658317b434975d1d707b3eadc676a",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Proper/Variant330cce98069d49e6809b01cc606bfc7f267f54da9088166885f8331e5564d861.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ProperClosure.lean/index.md) · [Full source](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ProperClosure.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9cefd9b847b658317b434975d1d707b3eadc676a`.

Source path: `GRWTSK/Topology/GeneralTopology/Proper/Variant330cce98069d49e6809b01cc606bfc7f267f54da9088166885f8331e5564d861.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Proper/Variant330cce98069d49e6809b01cc606bfc7f267f54da9088166885f8331e5564d861.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Cone.Dual` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Adjoint` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [closure](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ProperClosure.lean/declarations/closure.md) | 47 | `declaration-track:ce158de2c41aa73fd3af679b7bcc1b925be6f1823c9af7d6c2d082219cd4f6e3` |
| 2 | `theorem` | [coe_closure](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ProperClosure.lean/declarations/coe-closure.md) | 55 | `result-track:6ce2c5f3d23c6685b56231459c5cca02860929b0e9c206efc1558db790cd488f` |
| 3 | `theorem` | [mem_closure](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ProperClosure.lean/declarations/mem-closure.md) | 60 | `result-track:69ef85afcc34f7584b7a517a6a76fe9ae0a6e315a2fe3af87a2090968da3530c` |
| 4 | `theorem` | [closure_eq](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ProperClosure.lean/declarations/closure-eq.md) | 66 | `result-track:2eb9dcf3af99b390ec7a69d529e8f8bdd639c87125937397115a6a117b435021` |
| 5 | `structure` | [ProperCone](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ProperClosure.lean/declarations/propercone.md) | 75 | `declaration-track:86a45ce00d779f8b2e69bfd9be9693d5cd11f60b6b5abbbe61b876ecf47fd8e2` |
| 6 | `instance` | [(anonymous)](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ProperClosure.lean/declarations/instance-source-edition-2.md) | 89 | `declaration-track:2ddbd3120de2a52bfc6fb04afc4b33095b0d434bd3e97c5ca947e7212ac72ee6` |
| 7 | `theorem` | [ext'](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ProperClosure.lean/declarations/ext-source-edition-2.md) | 98 | `result-track:5298444dbad9a8051e0d14356a9676485d5db398e8eda4957c9190035747fed5` |
| 8 | `instance` | [(anonymous)](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ProperClosure.lean/declarations/instance-source-edition-3.md) | 103 | `declaration-track:6f21abed2c41addf2c4caa9f8ee5ac695a10de1be91e4909c90723f44d3a7477` |
| 9 | `theorem` | [ext](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ProperClosure.lean/declarations/ext.md) | 108 | `result-track:3c8a122791337ed65a34944ff5c527442136915e95c3aaef5765e7d920c7f4bb` |
| 10 | `theorem` | [mem_coe](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ProperClosure.lean/declarations/mem-coe.md) | 113 | `result-track:c688ce1cd937f2d25c603ea372ff864db202c4abc6a28ee1519c8c790de0801f` |
| 11 | `theorem` | [nonempty](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ProperClosure.lean/declarations/nonempty.md) | 117 | `result-track:7ef3be6b2b5fb1e69387230d1917fb23b3b3a59f70d7208c9fce55cd919fab39` |
| 12 | `theorem` | [isClosed](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ProperClosure.lean/declarations/isclosed.md) | 121 | `result-track:413feb3362dc2235861c88375f339e2d93c3e13f71f1f2af4f192089abb7ccb1` |
| 13 | `def` | [positive](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ProperClosure.lean/declarations/positive.md) | 135 | `declaration-track:8568bddc01fdabb0850d10bce23780313b2ae64db00cdc1909f6be020db14ac7` |
| 14 | `theorem` | [mem_positive](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ProperClosure.lean/declarations/mem-positive.md) | 141 | `result-track:4935a41df44ffc6598770afe475d297a94f4aed83f8de39a4e43cd774b34717f` |
| 15 | `theorem` | [coe_positive](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ProperClosure.lean/declarations/coe-positive.md) | 145 | `result-track:2010416775e40edaf43f1150be9eb56d441be51ce3dfc94d3a33e154dbce3d69` |
| 16 | `instance` | [(anonymous)](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ProperClosure.lean/declarations/instance-source-edition-4.md) | 156 | `declaration-track:95904368e2dfcbaa21e46b513260eedb9e209f46711e7dd86a65fba5645cf9b9` |
| 17 | `instance` | [(anonymous)](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ProperClosure.lean/declarations/instance.md) | 161 | `declaration-track:2215ce4324fe0b64e156025b909db072f415cf7af04b22ac945fffcdd467dc55` |
| 18 | `theorem` | [mem_zero](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ProperClosure.lean/declarations/mem-zero.md) | 165 | `result-track:996670bcca6603e6c95e64075265f9bd670271b9133f39e8cde1ee812e272edd` |
| 19 | `theorem` | [coe_zero](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ProperClosure.lean/declarations/coe-zero.md) | 170 | `result-track:58ec310a4e41a22b86614ffb87dcb707bfa2e7a3e9f1d728f7b40d12ad7f2be5` |
| 20 | `theorem` | [pointed_zero](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ProperClosure.lean/declarations/pointed-zero.md) | 174 | `result-track:dc5f58f48b86ae6abab3e5364a88eb5701e6fbdefb53c2040f864239ffb4b7d1` |
| 21 | `theorem` | [pointed](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ProperClosure.lean/declarations/pointed.md) | 187 | `result-track:faeb511e833f9ed2d24e968803879f45e5f0709df65b33b511c8b22f62423f8e` |
| 22 | `def` | [map](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ProperClosure.lean/declarations/map.md) | 193 | `declaration-track:37f3b7901f9f290db803c2a37c5b49d949b1a7602bf6a925c7ed0e394151c993` |
| 23 | `theorem` | [coe_map](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ProperClosure.lean/declarations/coe-map.md) | 201 | `result-track:cf00273efb958b46911b4a128b48ddfc0fb9b54687b714482c01f96be3f5f7ce` |
| 24 | `theorem` | [mem_map](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ProperClosure.lean/declarations/mem-map.md) | 207 | `result-track:89571708ddc09f2e311dd6ae639ac4a7c93844f0ac79a486612147f740f6dc1e` |
| 25 | `theorem` | [map_id](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ProperClosure.lean/declarations/map-id.md) | 213 | `result-track:a84d7d5e48df6add75337520a36b1396520b885b400acb16218372e7d2dc854c` |
| 26 | `def` | [dual](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ProperClosure.lean/declarations/dual.md) | 218 | `declaration-track:f1f14489006678fb2ff05e4f0730b6406c93cef63d8b5d39c5c8990ecc698edf` |
| 27 | `theorem` | [coe_dual](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ProperClosure.lean/declarations/coe-dual.md) | 225 | `result-track:649fa925da2e625b7ec38f848a0d147464fb0e44865e0bf9c22c62f1e68176fa` |
| 28 | `theorem` | [mem_dual](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ProperClosure.lean/declarations/mem-dual.md) | 230 | `result-track:0345c70cdb9f9e51cfa6b5d54bbc1a25d6780df07259dd7c6c8f21b2fd059315` |
| 29 | `def` | [comap](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ProperClosure.lean/declarations/comap.md) | 235 | `declaration-track:cedb04ea2543fc5d2d890927e49be7673f2d8b98ec85824db5b7028ea1036129` |
| 30 | `theorem` | [coe_comap](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ProperClosure.lean/declarations/coe-comap.md) | 248 | `result-track:a4ea34473e870a10ed38c993d3f21ec920256ff1adb5fa0b649837b03ee269cd` |
| 31 | `theorem` | [comap_id](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ProperClosure.lean/declarations/comap-id.md) | 253 | `result-track:749daa7245091ccf16a0823ca93bbe0df5e74103d5cba9f4acdbe54cc99206c7` |
| 32 | `theorem` | [comap_comap](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ProperClosure.lean/declarations/comap-comap.md) | 257 | `result-track:35666c7d4cfc110c87601ba3a1281e03b93bc4445468619f4e5efc43383f5eec` |
| 33 | `theorem` | [mem_comap](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ProperClosure.lean/declarations/mem-comap.md) | 263 | `result-track:674c1fce6bb0b844367794947b25253ee2e9d07fd59398033a8af7c472c6510d` |
| 34 | `theorem` | [dual_dual](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ProperClosure.lean/declarations/dual-dual.md) | 277 | `result-track:8e772dc529da150afad22072233546d03e34cf8b59bc3a2e32c6cd5a2fbdb7eb` |
| 35 | `theorem` | [hyperplane_separation](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ProperClosure.lean/declarations/hyperplane-separation.md) | 286 | `result-track:e1d4917e9ee99b5925bdd347c6c72f8aa8c4a52dcf8c403a40b1495cb668abbd` |
| 36 | `theorem` | [hyperplane_separation_of_nmem](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ProperClosure.lean/declarations/hyperplane-separation-of-nmem.md) | 324 | `result-track:d259a81939b76c7bce252b2cab169e63a41dd12a50733ce13ed393f752304591` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=893518869588a6c8e6d52e946a93a32023baab602f219f2782775ebf0e8ac94b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Proper/Variant330cce98069d49e6809b01cc606bfc7f267f54da9088166885f8331e5564d861.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Proper/Variant330cce98069d49e6809b01cc606bfc7f267f54da9088166885f8331e5564d861.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
