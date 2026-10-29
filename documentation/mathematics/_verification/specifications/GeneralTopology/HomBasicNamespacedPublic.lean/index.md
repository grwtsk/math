# Verification target: Hom Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e44c657f915533652a105f779cbb0bf420364d5c",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant31d4fa627d27249e6d972ca302e763eec11498a16f10b84b3966ad79372a2447.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/HomBasicNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/HomBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e44c657f915533652a105f779cbb0bf420364d5c`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant31d4fa627d27249e6d972ca302e763eec11498a16f10b84b3966ad79372a2447.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant31d4fa627d27249e6d972ca302e763eec11498a16f10b84b3966ad79372a2447.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ContinuousOrderHom](../../../../GeneralTopology/HomBasicNamespacedPublic.lean/declarations/continuousorderhom.md) | 46 | `declaration-track:8f64e1614d110c439d666c2c17bf68e9f8212096487feb0c0cbb423589fcc845` |
| 2 | `class` | [ContinuousOrderHomClass](../../../../GeneralTopology/HomBasicNamespacedPublic.lean/declarations/continuousorderhomclass.md) | 57 | `declaration-track:74c7c64e3f93744ff41fc57aa5a02d52d647389aa769029df4ee7b11a55f95af` |
| 3 | `instance` | [(anonymous)](../../../../GeneralTopology/HomBasicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 68 | `declaration-track:70ff62432d40b13b827379f1a60eb26fb1d973def3d4d57924dc2d3d8b18e3c7` |
| 4 | `def` | [toContinuousOrderHom](../../../../GeneralTopology/HomBasicNamespacedPublic.lean/declarations/tocontinuousorderhom.md) | 76 | `declaration-track:e49d6043effb838aeaaadd5146fe56cfb6d5ac14895af93fff577644390c9abb` |
| 5 | `instance` | [(anonymous)](../../../../GeneralTopology/HomBasicNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 81 | `declaration-track:9f181ef3ac52f4812e2bd262108eed33aeb7b375c5d34cf1612731001c485734` |
| 6 | `def` | [toContinuousMap](../../../../GeneralTopology/HomBasicNamespacedPublic.lean/declarations/tocontinuousmap.md) | 97 | `declaration-track:89e4c4bc057f151175cdd61c37b611732dafa095b405cd2c922dc73958ef6915` |
| 7 | `instance` | [instFunLike](../../../../GeneralTopology/HomBasicNamespacedPublic.lean/declarations/instfunlike.md) | 101 | `declaration-track:173341833690f4389b6116fb0136c6ca972d3a7377165b86f6f9b8e09ffd8515` |
| 8 | `instance` | [(anonymous)](../../../../GeneralTopology/HomBasicNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 108 | `declaration-track:945a66ddc3aabab6317d641bc8851bd922e997f8dd99d811714a0f7a83745eaf` |
| 9 | `theorem` | [coe_toOrderHom](../../../../GeneralTopology/HomBasicNamespacedPublic.lean/declarations/coe-toorderhom.md) | 112 | `result-track:d3d36371ed8c7a4e9d6840b13e8e96c5ea6f88e44ef81e292d53d568828bfe03` |
| 10 | `theorem` | [toFun_eq_coe](../../../../GeneralTopology/HomBasicNamespacedPublic.lean/declarations/tofun-eq-coe.md) | 114 | `result-track:29191f63349838a1fa33cc8ca54e4eb357c9d7ee22f9702ca81d5006201355ff` |
| 11 | `theorem` | [ext](../../../../GeneralTopology/HomBasicNamespacedPublic.lean/declarations/ext.md) | 117 | `result-track:e9ef365c5a33f0b5e1ee07c003ff47798a41c6cc6c1329fef281124a916672cc` |
| 12 | `def` | [copy](../../../../GeneralTopology/HomBasicNamespacedPublic.lean/declarations/copy.md) | 122 | `declaration-track:09bac75e747e0423a7ec70b4a6bac0cedf163d364d699ea5f291d8075c0f2fa5` |
| 13 | `theorem` | [coe_copy](../../../../GeneralTopology/HomBasicNamespacedPublic.lean/declarations/coe-copy.md) | 126 | `result-track:a982c99136d676ec867a924b8492c085681b187f50d7c6ea1b5ccca15014377e` |
| 14 | `theorem` | [copy_eq](../../../../GeneralTopology/HomBasicNamespacedPublic.lean/declarations/copy-eq.md) | 129 | `result-track:a953cfa4987197c2745f1e95e0f5b15f34f720a9518232b20b78f2fbd9a25ae8` |
| 15 | `def` | [id](../../../../GeneralTopology/HomBasicNamespacedPublic.lean/declarations/id.md) | 135 | `declaration-track:0da623c25a02def9860eefacbb72fec3d5c7095bdc49577df65ba60cb9731461` |
| 16 | `instance` | [(anonymous)](../../../../GeneralTopology/HomBasicNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 138 | `declaration-track:9f82df50de95a76af876790297540e559361547f8ea696d0372522bd9950d04e` |
| 17 | `theorem` | [coe_id](../../../../GeneralTopology/HomBasicNamespacedPublic.lean/declarations/coe-id.md) | 142 | `result-track:150a66f0f3d6aefb4d7929e71935593e7fd8cec5b27e145133cbf178a235da60` |
| 18 | `theorem` | [id_apply](../../../../GeneralTopology/HomBasicNamespacedPublic.lean/declarations/id-apply.md) | 148 | `result-track:8bea65cd44f760e6195b6cd970714045033c7ac7428ebf2c4f670619c76b4263` |
| 19 | `def` | [comp](../../../../GeneralTopology/HomBasicNamespacedPublic.lean/declarations/comp.md) | 152 | `declaration-track:0abce7d2b0cf6d9c4e4212c45d0baa293ee8be14079fa17fd0cbaaa0e294ba72` |
| 20 | `theorem` | [coe_comp](../../../../GeneralTopology/HomBasicNamespacedPublic.lean/declarations/coe-comp.md) | 156 | `result-track:fac1191f70045ec0a40b8e739d323c12e18a9505a922c86df46a739715cdbb0c` |
| 21 | `theorem` | [comp_apply](../../../../GeneralTopology/HomBasicNamespacedPublic.lean/declarations/comp-apply.md) | 160 | `result-track:f4193865b4bd20ec3e685329de70cdb5344190666d90ad6ae69a26fba4d6fdfd` |
| 22 | `theorem` | [comp_assoc](../../../../GeneralTopology/HomBasicNamespacedPublic.lean/declarations/comp-assoc.md) | 164 | `result-track:360360c4e9f2a05f39714e71bf39534036235401ae5be62cdad38e4c3cfddbc5` |
| 23 | `theorem` | [comp_id](../../../../GeneralTopology/HomBasicNamespacedPublic.lean/declarations/comp-id.md) | 169 | `result-track:e18b9af9163810a07e42520eee0622f8cdcbf86454b077632ad520c6b6f5acef` |
| 24 | `theorem` | [id_comp](../../../../GeneralTopology/HomBasicNamespacedPublic.lean/declarations/id-comp.md) | 173 | `result-track:3c0dccf22b9d83b39ad501aa76ae6a7bd9ee45869db41499526d19b357ade1a9` |
| 25 | `theorem` | [cancel_right](../../../../GeneralTopology/HomBasicNamespacedPublic.lean/declarations/cancel-right.md) | 177 | `result-track:f45017002c49670e274a8c5d4bd8dad7736a7da04c75e1b5cf0e66ce81d68bd0` |
| 26 | `theorem` | [cancel_left](../../../../GeneralTopology/HomBasicNamespacedPublic.lean/declarations/cancel-left.md) | 182 | `result-track:e0c80ea3aa60bdf4384db9abf0b4bc1c6efe78bc0e930a8227b28ba36e7872e1` |
| 27 | `instance` | [(anonymous)](../../../../GeneralTopology/HomBasicNamespacedPublic.lean/declarations/instance.md) | 186 | `declaration-track:34ca8fc73a82428f32529101bdaed4a94864beed42679f3992aeb72d46d94719` |
| 28 | `instance` | [(anonymous)](../../../../GeneralTopology/HomBasicNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 191 | `declaration-track:7ad2e05dded42906b05480a4602f7ed24bf92e58667f81742d4fa914fa342fff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=567a9334041f1ef11320e31c22229443cc0b92618428e48d3b0a7cccb531da7c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant31d4fa627d27249e6d972ca302e763eec11498a16f10b84b3966ad79372a2447.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant31d4fa627d27249e6d972ca302e763eec11498a16f10b84b3966ad79372a2447.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
