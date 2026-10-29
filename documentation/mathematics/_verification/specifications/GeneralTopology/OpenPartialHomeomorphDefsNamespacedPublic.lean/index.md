# Verification target: Open Partial Homeomorph Defs Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "721dffaded7a118d268cf758a4afc21235478252",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Defs/Variant3040a540327f999a158cf3507bd82c8457964d108683a50526c9eb29ce9dc41e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/OpenPartialHomeomorphDefsNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/OpenPartialHomeomorphDefsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `721dffaded7a118d268cf758a4afc21235478252`.

Source path: `GRWTSK/Topology/GeneralTopology/Defs/Variant3040a540327f999a158cf3507bd82c8457964d108683a50526c9eb29ce9dc41e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Defs/Variant3040a540327f999a158cf3507bd82c8457964d108683a50526c9eb29ce9dc41e.lean.json)

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
| 1 | `structure` | [OpenPartialHomeomorph](../../../../GeneralTopology/OpenPartialHomeomorphDefsNamespacedPublic.lean/declarations/openpartialhomeomorph.md) | 60 | `declaration-track:a41908667602ac7bd36e5aea29b9b66aae25f52de3c7b35912dc0deb1a4fca3f` |
| 2 | `def` | [toFun'](../../../../GeneralTopology/OpenPartialHomeomorphDefsNamespacedPublic.lean/declarations/tofun.md) | 73 | `declaration-track:b6885d6724ab427cf697ba014c193e3e223a2b03e5344e6da49ab2890027f2d0` |
| 3 | `instance` | [(anonymous)](../../../../GeneralTopology/OpenPartialHomeomorphDefsNamespacedPublic.lean/declarations/instance.md) | 77 | `declaration-track:295d12e363b04c503eb283ff3a614319508314cb457357b3949752d9d8fc6130` |
| 4 | `def` | [symm](../../../../GeneralTopology/OpenPartialHomeomorphDefsNamespacedPublic.lean/declarations/symm.md) | 82 | `declaration-track:09c0c03d0f7b9d6a1287e5b7b438375276915ab82b5fecaccea3b116ea540682` |
| 5 | `def` | [Simps.apply](../../../../GeneralTopology/OpenPartialHomeomorphDefsNamespacedPublic.lean/declarations/simps-apply.md) | 89 | `declaration-track:41fc8da117ed5fb1d6504e463bc5e55c38ad94ec6ffa23ecd320a3ee8c286d67` |
| 6 | `def` | [Simps.symm_apply](../../../../GeneralTopology/OpenPartialHomeomorphDefsNamespacedPublic.lean/declarations/simps-symm-apply.md) | 92 | `declaration-track:9d56fcba3b925c2ae27f3aa34de987a0fa34e03964194a5e931a0206d6476215` |
| 7 | `theorem` | [continuousOn](../../../../GeneralTopology/OpenPartialHomeomorphDefsNamespacedPublic.lean/declarations/continuouson.md) | 97 | `result-track:687bd200d34422e99f1395f1aae3fbc0d9d229856c0d43bd80bda81953cb49cb` |
| 8 | `theorem` | [continuousOn_symm](../../../../GeneralTopology/OpenPartialHomeomorphDefsNamespacedPublic.lean/declarations/continuouson-symm.md) | 101 | `result-track:9bbbc8e26bed4711685561f39a4bb8dd95fd05e8b27189b4d405ac5e419c20f8` |
| 9 | `theorem` | [coe_mk](../../../../GeneralTopology/OpenPartialHomeomorphDefsNamespacedPublic.lean/declarations/coe-mk.md) | 105 | `result-track:9c330ab6db87dd6ae29189c36420fe0dc08a167e43dfc6500b9b547e4da5f02f` |
| 10 | `theorem` | [coe_mk_symm](../../../../GeneralTopology/OpenPartialHomeomorphDefsNamespacedPublic.lean/declarations/coe-mk-symm.md) | 112 | `result-track:ea4d0202750e7637b8a45ac4f7da576ec3f5a8ddf793ba2fdc2122bbb7a0b745` |
| 11 | `theorem` | [toPartialHomeomorph_injective](../../../../GeneralTopology/OpenPartialHomeomorphDefsNamespacedPublic.lean/declarations/topartialhomeomorph-injective.md) | 118 | `result-track:5ef23096573bbed1943b3f50e590dcf9efe6b4f4da62504fff5f9bbbe312c861` |
| 12 | `theorem` | [toPartialEquiv_injective](../../../../GeneralTopology/OpenPartialHomeomorphDefsNamespacedPublic.lean/declarations/topartialequiv-injective.md) | 122 | `result-track:d1a3990159c7a006b0e3595b5fe9ed92479666e1ac8d4fcedb9d93b4f861a238` |
| 13 | `theorem` | [toFun_eq_coe](../../../../GeneralTopology/OpenPartialHomeomorphDefsNamespacedPublic.lean/declarations/tofun-eq-coe.md) | 130 | `result-track:4950f4ccaff6b0e95bb13b5e2192823d7e5e0a093a814eea51546d16b2864742` |
| 14 | `theorem` | [invFun_eq_coe](../../../../GeneralTopology/OpenPartialHomeomorphDefsNamespacedPublic.lean/declarations/invfun-eq-coe.md) | 134 | `result-track:1d68b364ce928bb376ea56bcb099431e5e16d53e884649a776acd04db9a45473` |
| 15 | `theorem` | [coe_toPartialEquiv](../../../../GeneralTopology/OpenPartialHomeomorphDefsNamespacedPublic.lean/declarations/coe-topartialequiv.md) | 138 | `result-track:dc6999c281b5c519c5b18890e38ec7d73d6e851ba109b35ee8f0eea28560e76f` |
| 16 | `theorem` | [coe_toPartialEquiv_symm](../../../../GeneralTopology/OpenPartialHomeomorphDefsNamespacedPublic.lean/declarations/coe-topartialequiv-symm.md) | 144 | `result-track:c9ac982ac37bb245fe916a3170f85736cc2c43c947fee03d011e9ca18dbd8842` |
| 17 | `theorem` | [map_source](../../../../GeneralTopology/OpenPartialHomeomorphDefsNamespacedPublic.lean/declarations/map-source.md) | 150 | `result-track:b9db69cb4cb8ab0480e89a762b99124da556a5b0f8f5564e5608112b9321d057` |
| 18 | `theorem` | [coe_toPartialHomeomorph](../../../../GeneralTopology/OpenPartialHomeomorphDefsNamespacedPublic.lean/declarations/coe-topartialhomeomorph.md) | 154 | `result-track:77bb094a1da6e4c285a6790382aace8332b87c008327ddb1505cf08c597bbb41` |
| 19 | `theorem` | [coe_toPartialHomeomorph_symm](../../../../GeneralTopology/OpenPartialHomeomorphDefsNamespacedPublic.lean/declarations/coe-topartialhomeomorph-symm.md) | 158 | `result-track:47f8112cff8502ecb33470915f46397b6a668bf2c2a948c3ab65133406bdb348` |
| 20 | `lemma` | [image_source_subset](../../../../GeneralTopology/OpenPartialHomeomorphDefsNamespacedPublic.lean/declarations/image-source-subset.md) | 162 | `result-track:71ed23b548b5807930278a44072b84b7deed0a60ed3f120f6c7e3c51a003602c` |
| 21 | `theorem` | [map_target](../../../../GeneralTopology/OpenPartialHomeomorphDefsNamespacedPublic.lean/declarations/map-target.md) | 168 | `result-track:8a07f01b22967b99de90e6ef32564e70f1b3e3e2dd0335f5b44e03f57607976f` |
| 22 | `theorem` | [left_inv](../../../../GeneralTopology/OpenPartialHomeomorphDefsNamespacedPublic.lean/declarations/left-inv.md) | 172 | `result-track:f26d14a08c7c042a903d63ab8c9410dc2ebb5e886c7db804b24ab0122f4e6570` |
| 23 | `theorem` | [right_inv](../../../../GeneralTopology/OpenPartialHomeomorphDefsNamespacedPublic.lean/declarations/right-inv.md) | 176 | `result-track:7801233bf41a563e75f7345af77c5896ada062e9de8e754ba9e2335e1732e3c9` |
| 24 | `theorem` | [eq_symm_apply](../../../../GeneralTopology/OpenPartialHomeomorphDefsNamespacedPublic.lean/declarations/eq-symm-apply.md) | 179 | `result-track:5792cc9a049a03a26485cfe0aec32d053da6b5a0d8f7a4e5ba54c19ae1338935` |
| 25 | `theorem` | [mapsTo](../../../../GeneralTopology/OpenPartialHomeomorphDefsNamespacedPublic.lean/declarations/mapsto.md) | 183 | `result-track:fb17495a9e65de9a5fe69d0463efe69d612bd92aca4570b937c05aa58a51c7e6` |
| 26 | `theorem` | [mapsTo_symm](../../../../GeneralTopology/OpenPartialHomeomorphDefsNamespacedPublic.lean/declarations/mapsto-symm.md) | 185 | `result-track:76280a24e8afa19ca06f03602803ba3b47e65c7431791fa8a2fcf0052e5d09c9` |
| 27 | `theorem` | [leftInvOn](../../../../GeneralTopology/OpenPartialHomeomorphDefsNamespacedPublic.lean/declarations/leftinvon.md) | 190 | `result-track:2db815cc31844c704fae6c7afbefdc47054635199a977fc9dd0475a8bbc540a9` |
| 28 | `theorem` | [rightInvOn](../../../../GeneralTopology/OpenPartialHomeomorphDefsNamespacedPublic.lean/declarations/rightinvon.md) | 192 | `result-track:376c3ce25d9252c57b6a645764acf7b4469b4ceec98f74b05570cf4defb2952a` |
| 29 | `theorem` | [invOn](../../../../GeneralTopology/OpenPartialHomeomorphDefsNamespacedPublic.lean/declarations/invon.md) | 194 | `result-track:72d81b5c939cb02e99cf1ca89eeae30e5c5a7380e3c9a5410f726db3bc383567` |
| 30 | `theorem` | [injOn](../../../../GeneralTopology/OpenPartialHomeomorphDefsNamespacedPublic.lean/declarations/injon.md) | 197 | `result-track:33acfb38c17dde60d4a09a92bf0081a302966be700d0b3ae5dd8fa8571c95e96` |
| 31 | `theorem` | [bijOn](../../../../GeneralTopology/OpenPartialHomeomorphDefsNamespacedPublic.lean/declarations/bijon.md) | 200 | `result-track:89c2c514cbbba0b71dc6f79fbe216415512e422aad57bc427c5aa4530afdd3c8` |
| 32 | `theorem` | [surjOn](../../../../GeneralTopology/OpenPartialHomeomorphDefsNamespacedPublic.lean/declarations/surjon.md) | 203 | `result-track:0279ba3496aca67f415a023a65a9caaac1a807286b453b172108a41e080cfc80` |
| 33 | `def` | [Open Partial Homeomorph Defs Namespaced Public](../../../../GeneralTopology/OpenPartialHomeomorphDefsNamespacedPublic.lean/declarations/toopenpartialhomeomorphofimageeq.md) | 212 | `declaration-track:118a382ddfe90492577d7b8e10f5a278ea8da889bd6fa6b4b99387db8a01150f` |
| 34 | `def` | [Open Partial Homeomorph Defs Namespaced Public](../../../../GeneralTopology/OpenPartialHomeomorphDefsNamespacedPublic.lean/declarations/toopenpartialhomeomorph.md) | 220 | `declaration-track:ec2cb99e679bc73fb3356ba1ddf708d16da374df710c2094df3ff4d2c9de1bbe` |
| 35 | `def` | [replacePartialEquiv](../../../../GeneralTopology/OpenPartialHomeomorphDefsNamespacedPublic.lean/declarations/replacepartialequiv.md) | 225 | `declaration-track:c9e275ba37f9c0dd1ad3035abe528222c8d726e6caca16b873123fe82ad2cf4e` |
| 36 | `theorem` | [replacePartialEquiv_eq_self](../../../../GeneralTopology/OpenPartialHomeomorphDefsNamespacedPublic.lean/declarations/replacepartialequiv-eq-self.md) | 233 | `result-track:c2cd5051493df9f171d66e10bfe60894f5856e408d34451c87211cbfcb2593ed` |
| 37 | `theorem` | [ext](../../../../GeneralTopology/OpenPartialHomeomorphDefsNamespacedPublic.lean/declarations/ext.md) | 246 | `result-track:10b0e0429830bf2a23574e6f741e4a92720973254d7bbe152a03bd3dee4e2a01` |
| 38 | `theorem` | [symm_toPartialEquiv](../../../../GeneralTopology/OpenPartialHomeomorphDefsNamespacedPublic.lean/declarations/symm-topartialequiv.md) | 252 | `result-track:9e0923297e04303205c9b38be67ff45992d29464585a579e7fc18aa5785255ce` |
| 39 | `theorem` | [symm_source](../../../../GeneralTopology/OpenPartialHomeomorphDefsNamespacedPublic.lean/declarations/symm-source.md) | 256 | `result-track:90e0a86b4b8471581f14659aa70d9a39c58e931f229b408cb87d564323740046` |
| 40 | `theorem` | [symm_target](../../../../GeneralTopology/OpenPartialHomeomorphDefsNamespacedPublic.lean/declarations/symm-target.md) | 259 | `result-track:70c35b6e3e3b96c0b207c26322fffbe0d3bb7be6ee250448cb71846625836099` |
| 41 | `theorem` | [symm_symm](../../../../GeneralTopology/OpenPartialHomeomorphDefsNamespacedPublic.lean/declarations/symm-symm.md) | 262 | `result-track:96abeeb094fbab56367f2d32a539a672e01d10f6da933e5f0dc8d4a2f2fa38fc` |
| 42 | `theorem` | [symm_bijective](../../../../GeneralTopology/OpenPartialHomeomorphDefsNamespacedPublic.lean/declarations/symm-bijective.md) | 264 | `result-track:5b9864c2046880e03029d25b65927866e9eb5a73a3bd9981b7e6626ec91c6846` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bba56920b15ec705699570d17e667daa0b6c367859ef55aaaa1a50b2b9d96d30 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Defs/Variant3040a540327f999a158cf3507bd82c8457964d108683a50526c9eb29ce9dc41e.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Defs/Variant3040a540327f999a158cf3507bd82c8457964d108683a50526c9eb29ce9dc41e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
