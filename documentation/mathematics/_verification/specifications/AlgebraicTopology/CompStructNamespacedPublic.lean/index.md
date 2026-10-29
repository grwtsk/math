# Verification target: Comp Struct Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "30f26a46eee1235bda793be529a7c9b5e31e9c54",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variantd52efa3464b79b9def731a412206f4867219cfc88e8efa08bd8b3016bc850070.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/CompStructNamespacedPublic.lean/index.md) · [Full source](../../../../AlgebraicTopology/CompStructNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `30f26a46eee1235bda793be529a7c9b5e31e9c54`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variantd52efa3464b79b9def731a412206f4867219cfc88e8efa08bd8b3016bc850070.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variantd52efa3464b79b9def731a412206f4867219cfc88e8efa08bd8b3016bc850070.lean.json)

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
| 1 | `def` | [Edge](../../../../AlgebraicTopology/CompStructNamespacedPublic.lean/declarations/edge.md) | 55 | `declaration-track:20ffe124b4695995126b0814272ce5fc34753e54181bdd4ca2539c0c19184d23` |
| 2 | `def` | [ofTruncated](../../../../AlgebraicTopology/CompStructNamespacedPublic.lean/declarations/oftruncated.md) | 62 | `declaration-track:717bb7ca4f6f65365c3c606045c36ccfced86023bbf7fe8fb420bcd76029c5a2` |
| 3 | `def` | [toTruncated](../../../../AlgebraicTopology/CompStructNamespacedPublic.lean/declarations/totruncated.md) | 67 | `declaration-track:45ae7ba97284fa1302ec07b270db90be7a143b9ff65d925c257017bb04c9457c` |
| 4 | `def` | [edge](../../../../AlgebraicTopology/CompStructNamespacedPublic.lean/declarations/edge-source-edition-2.md) | 73 | `declaration-track:cf3147c66b862159fc8e59d5e578a20a120a893aa65f3e24c0091fb285db4b59` |
| 5 | `lemma` | [ofTruncated_edge](../../../../AlgebraicTopology/CompStructNamespacedPublic.lean/declarations/oftruncated-edge.md) | 76 | `result-track:da4f2619a2b0d04a2b1f382753e22f714a6446af1a78979b76ca67acbb498673` |
| 6 | `lemma` | [toTruncated_edge](../../../../AlgebraicTopology/CompStructNamespacedPublic.lean/declarations/totruncated-edge.md) | 80 | `result-track:1207b619aa6cb8d96af39dd228469e5a62ea192a171521b4b734a9d2d7a4dcec` |
| 7 | `lemma` | [src_eq](../../../../AlgebraicTopology/CompStructNamespacedPublic.lean/declarations/src-eq.md) | 84 | `result-track:ecef2697a4995d5ea9c247d36a097a394ea0ef4b3b83c17f32d5fa86533b1013` |
| 8 | `lemma` | [tgt_eq](../../../../AlgebraicTopology/CompStructNamespacedPublic.lean/declarations/tgt-eq.md) | 87 | `result-track:00dc47d40f00700b8da966c3acfc5d69238983d35ce51ed22f734dc35d9aa0e1` |
| 9 | `lemma` | [ext](../../../../AlgebraicTopology/CompStructNamespacedPublic.lean/declarations/ext.md) | 90 | `result-track:1ef3a45f01fa205ac9994f381acc9c730f2202e99150b3926375ff0c249a9b21` |
| 10 | `def` | [mk](../../../../AlgebraicTopology/CompStructNamespacedPublic.lean/declarations/mk-source-edition-2.md) | 100 | `declaration-track:52efb698d43cd53c7e8bdf1e170918b5b1ed52b9ae024a8bc818f681cad1fe0a` |
| 11 | `lemma` | [mk_edge](../../../../AlgebraicTopology/CompStructNamespacedPublic.lean/declarations/mk-edge.md) | 104 | `result-track:04d83973ad5a912c5a83bb1bee767504d9443958f7e853159855a81125cb8717` |
| 12 | `def` | [id](../../../../AlgebraicTopology/CompStructNamespacedPublic.lean/declarations/id.md) | 110 | `declaration-track:04b867d6f3798ab1c1d1b2ae6bf3d4e13dba2e5fdfffb50997e0624fda8990c1` |
| 13 | `lemma` | [toTruncated_id](../../../../AlgebraicTopology/CompStructNamespacedPublic.lean/declarations/totruncated-id.md) | 114 | `result-track:95f390d06d9cd66c6d8ba528b2ed2b723a9594c56773f35967ad49256003ee45` |
| 14 | `lemma` | [id_edge](../../../../AlgebraicTopology/CompStructNamespacedPublic.lean/declarations/id-edge.md) | 119 | `result-track:445914d531b7ae89c90d984e82bbc8841de23db4bb7e9494a45c94673374ad58` |
| 15 | `def` | [map](../../../../AlgebraicTopology/CompStructNamespacedPublic.lean/declarations/map.md) | 122 | `declaration-track:640743d72c51102a826dda83d49f35cb41b5eaf5730872900fd61170f21acf05` |
| 16 | `lemma` | [map_edge](../../../../AlgebraicTopology/CompStructNamespacedPublic.lean/declarations/map-edge.md) | 126 | `result-track:be89b6da15b3946be6caa4356ae191a6828db44948cca17329defbb8f9366b87` |
| 17 | `lemma` | [map_id](../../../../AlgebraicTopology/CompStructNamespacedPublic.lean/declarations/map-id.md) | 131 | `result-track:c1dd0b2e86642daae2235d9d32a02494728da1f331aa4d380248bb70e04ccb66` |
| 18 | `def` | [mk'](../../../../AlgebraicTopology/CompStructNamespacedPublic.lean/declarations/mk-source-edition-3.md) | 136 | `declaration-track:ea71bb94d834816b58a0b166626a7e5e37d322eb7e32a9f3aa0e1daf5fcc7f13` |
| 19 | `lemma` | [mk'_edge](../../../../AlgebraicTopology/CompStructNamespacedPublic.lean/declarations/mk-edge-source-edition-2.md) | 139 | `result-track:22e8a61f1ab9f233149f4f6661584cf3f256fc9b569f11001a418d2c7f23a93e` |
| 20 | `lemma` | [exists_of_simplex](../../../../AlgebraicTopology/CompStructNamespacedPublic.lean/declarations/exists-of-simplex.md) | 141 | `result-track:6929d72dc9f2c964613f86d6706ee074b41ee82c3b0e886bed67f751eb9bec63` |
| 21 | `def` | [ofEq](../../../../AlgebraicTopology/CompStructNamespacedPublic.lean/declarations/ofeq-source-edition-3.md) | 148 | `declaration-track:cea0cf06db6e12f46b37d00b3f9332070cb5c7a86cd134a1326c247790f8fd8b` |
| 22 | `def` | [toSubcomplex](../../../../AlgebraicTopology/CompStructNamespacedPublic.lean/declarations/tosubcomplex.md) | 156 | `declaration-track:b84a686ec6e490eb3e68e9d69dbbac955c97dd7f3c6ecb375f6f0278686def42` |
| 23 | `lemma` | [toSubcomplex_edge](../../../../AlgebraicTopology/CompStructNamespacedPublic.lean/declarations/tosubcomplex-edge-source-edition-2.md) | 164 | `result-track:b31b0024df950b0b9920c6e395c3bd471d0b74e21082801b2049395b7bedf905` |
| 24 | `def` | [CompStruct](../../../../AlgebraicTopology/CompStructNamespacedPublic.lean/declarations/compstruct.md) | 174 | `declaration-track:07c0de32008a7e9675ee4fa6abe1e1ab76f15f079fca84efd4bfbcc8b460df21` |
| 25 | `def` | [ofTruncated](../../../../AlgebraicTopology/CompStructNamespacedPublic.lean/declarations/oftruncated-source-edition-2.md) | 185 | `declaration-track:c5e44ea320601bdbb851bc1e1f24807acedc273a3ca024d3da6020ee6898f86a` |
| 26 | `def` | [toTruncated](../../../../AlgebraicTopology/CompStructNamespacedPublic.lean/declarations/totruncated-source-edition-2.md) | 189 | `declaration-track:8d130af38ec80008d992043d9a69dacddf7831887aa6fe532e22c97f8036fefe` |
| 27 | `def` | [simplex](../../../../AlgebraicTopology/CompStructNamespacedPublic.lean/declarations/simplex.md) | 198 | `declaration-track:25077c1cd99e276d384c21a6c2a5939bd8d0ba84d6b19bd999c4c8cf3f6a99eb` |
| 28 | `lemma` | [d₂](../../../../AlgebraicTopology/CompStructNamespacedPublic.lean/declarations/d-source-edition-3.md) | 201 | `result-track:b853514635351076974870ce3849223c0fc86b7e9b58206aaf6687a8bbde33c3` |
| 29 | `lemma` | [d₀](../../../../AlgebraicTopology/CompStructNamespacedPublic.lean/declarations/d.md) | 204 | `result-track:5be1569d78e257f77d19296f0f8a325e0804c66b40bd70dc0e3af61f4a923ac1` |
| 30 | `lemma` | [d₁](../../../../AlgebraicTopology/CompStructNamespacedPublic.lean/declarations/d-source-edition-2.md) | 207 | `result-track:84f5d3bcb9613dfeb47ec0987115f9f25d80914206183fbc2b47fd4c914f59cc` |
| 31 | `def` | [mk](../../../../AlgebraicTopology/CompStructNamespacedPublic.lean/declarations/mk.md) | 220 | `declaration-track:31337217fbffc81fa7af41fb36143bc0ad087fddd286756f93beae69482e4982` |
| 32 | `lemma` | [mk_simplex](../../../../AlgebraicTopology/CompStructNamespacedPublic.lean/declarations/mk-simplex.md) | 225 | `result-track:bc92ee0b1f65127bf4b378a8634b21d0c196433825921e305836504b93467e44` |
| 33 | `lemma` | [ext](../../../../AlgebraicTopology/CompStructNamespacedPublic.lean/declarations/ext-source-edition-2.md) | 230 | `result-track:fdb361baa50a77805102ccd821f001ff35891340d24c2779e3c1eca45302504f` |
| 34 | `lemma` | [exists_of_simplex](../../../../AlgebraicTopology/CompStructNamespacedPublic.lean/declarations/exists-of-simplex-source-edition-2.md) | 234 | `result-track:8cf78fdfb11831ae558bb699f55e746100458683bc9e9dda88f5f95d6f824ada` |
| 35 | `def` | [idComp](../../../../AlgebraicTopology/CompStructNamespacedPublic.lean/declarations/idcomp.md) | 240 | `declaration-track:ef3cfb39b86ff737ae805a6e65d3a43b88b79dffe24157614663c43c842d6228` |
| 36 | `lemma` | [idComp_simplex](../../../../AlgebraicTopology/CompStructNamespacedPublic.lean/declarations/idcomp-simplex.md) | 244 | `result-track:7df0f933243024ded0d58c71be3e5407e0b828e33fbf95aa16fda62e0c51f30b` |
| 37 | `def` | [compId](../../../../AlgebraicTopology/CompStructNamespacedPublic.lean/declarations/compid.md) | 247 | `declaration-track:eeb9328f8052f5f4a1c92f1c669c21b2448e304a053872add14d7598b86c612c` |
| 38 | `lemma` | [compId_simplex](../../../../AlgebraicTopology/CompStructNamespacedPublic.lean/declarations/compid-simplex.md) | 251 | `result-track:7b11ba7440748065bb8695f19dea2e4ea7ab0bc1805ef442dff4cfa3c612e03b` |
| 39 | `def` | [idCompId](../../../../AlgebraicTopology/CompStructNamespacedPublic.lean/declarations/idcompid.md) | 254 | `declaration-track:e80e6b8aa5c779a5cd3632edd81e2457295af54200c06d514ae0398f763a16ec` |
| 40 | `lemma` | [idCompId_simplex](../../../../AlgebraicTopology/CompStructNamespacedPublic.lean/declarations/idcompid-simplex.md) | 258 | `result-track:c8aa38eb83b85ce429416d5d447e9e9c91f973eb9e1408c84e1bd8437b576da7` |
| 41 | `def` | [map](../../../../AlgebraicTopology/CompStructNamespacedPublic.lean/declarations/map-source-edition-3.md) | 262 | `declaration-track:dbc075eb9698cbcb835e5e8723f71989958d5c67631c09d312b537a4cff54f8b` |
| 42 | `lemma` | [map_simplex](../../../../AlgebraicTopology/CompStructNamespacedPublic.lean/declarations/map-simplex.md) | 267 | `result-track:b89d8d2c4163674c07c4a1a3b2449ca05be75f54b888998b6b3667ea425964e0` |
| 43 | `def` | [ofEq](../../../../AlgebraicTopology/CompStructNamespacedPublic.lean/declarations/ofeq-source-edition-2.md) | 273 | `declaration-track:c20999a7ead1fe2da002fe11ac14ab38f04d74919f4972f40b121171c9a761ea` |
| 44 | `def` | [toSubcomplex](../../../../AlgebraicTopology/CompStructNamespacedPublic.lean/declarations/tosubcomplex-source-edition-2.md) | 289 | `declaration-track:cd94eadf831fd29b669d5645a64038a4811fc38f0a8f243573604a6aed568a91` |
| 45 | `lemma` | [toSubcomplex_simplex](../../../../AlgebraicTopology/CompStructNamespacedPublic.lean/declarations/tosubcomplex-simplex.md) | 298 | `result-track:c3366707e62f0dc3acd951a0914d9d6313794ea0a218969e1a9158446d00e668` |
| 46 | `lemma` | [toSubcomplex_edge](../../../../AlgebraicTopology/CompStructNamespacedPublic.lean/declarations/tosubcomplex-edge.md) | 303 | `result-track:3ca419fbc88bcc9866808a76d0f186c91a24c2db4785048b758be61a38a59428` |
| 47 | `structure` | [InvStruct](../../../../AlgebraicTopology/CompStructNamespacedPublic.lean/declarations/invstruct.md) | 313 | `declaration-track:11f084f797957f7f14962a95b931fc63d256c9f961ab70bd77b1b5ec47b884d6` |
| 48 | `def` | [invStructId](../../../../AlgebraicTopology/CompStructNamespacedPublic.lean/declarations/invstructid.md) | 325 | `declaration-track:de32d6c860f6fe6ce493a72d855d868b66bf9f5e2d156eb76630e27bd2c7e92f` |
| 49 | `def` | [invStructInv](../../../../AlgebraicTopology/CompStructNamespacedPublic.lean/declarations/invstructinv.md) | 332 | `declaration-track:da347deb768e6cd48015a8e3ccc34892f95ed77dfc898dded1bd73fa93918806` |
| 50 | `def` | [map](../../../../AlgebraicTopology/CompStructNamespacedPublic.lean/declarations/map-source-edition-2.md) | 339 | `declaration-track:6da9c31800389640b593ee970e2322c9de1bf3d0c891f040b0c97a5337f47481` |
| 51 | `def` | [ofEq](../../../../AlgebraicTopology/CompStructNamespacedPublic.lean/declarations/ofeq.md) | 347 | `declaration-track:6b151bcc5ae450d204e25330086f978578243f9befaad01b76526c5948470eaf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e4e43b85b3fdc7aebb55809413daa9b34190cc19e435f5d9c13b9653a86287f9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variantd52efa3464b79b9def731a412206f4867219cfc88e8efa08bd8b3016bc850070.lean","GRWTSK/_verification/specifications/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variantd52efa3464b79b9def731a412206f4867219cfc88e8efa08bd8b3016bc850070.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
