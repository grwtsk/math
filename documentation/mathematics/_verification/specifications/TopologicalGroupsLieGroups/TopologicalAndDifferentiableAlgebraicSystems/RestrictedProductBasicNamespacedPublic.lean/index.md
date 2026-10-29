# Verification target: Restricted Product Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "242e538eb4f3f637dcc30f899e6779f3a71a7d01",
  "lexical_observation_count": 75,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant18a987dabe4b36786b725199ae6111b7b822c92c70dfc16034e23f7b5d45015e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `242e538eb4f3f637dcc30f899e6779f3a71a7d01`.

Source path: `GRWTSK/Algebra/Basic/Variant18a987dabe4b36786b725199ae6111b7b822c92c70dfc16034e23f7b5d45015e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant18a987dabe4b36786b725199ae6111b7b822c92c70dfc16034e23f7b5d45015e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [RestrictedProduct](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/restrictedproduct.md) | 87 | `declaration-track:658a499fe32bbf246f5884b4c14578f31c3453356db89175525a93e2b5451637` |
| 2 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 108 | `declaration-track:2ca044c08cded8c4d7b9af10de0d8a15d796c3534a47eb57a8a96703ab02f46a` |
| 3 | `abbrev` | [mk](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/mk.md) | 114 | `declaration-track:eee4c93132e23e696ae969cdec16009c0fa11c6fd81c16311eb5b1ad7aaa0cf0` |
| 4 | `lemma` | [mk_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/mk-apply.md) | 118 | `result-track:675ccee6f3a08642e4c5f6d6ccb0d86da1772e421b73e512ea76890b6269b43c` |
| 5 | `lemma` | [ext](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/ext.md) | 122 | `result-track:3d1fe499397248773177058c3661fba22fdccebb32659f909521289b37aaf111` |
| 6 | `lemma` | [range_coe](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/range-coe.md) | 125 | `result-track:c01ce830b74ba290d84599c12b185fca1e2bf31bfa50ec4ea22bde3c27e40465` |
| 7 | `lemma` | [range_coe_principal](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/range-coe-principal.md) | 129 | `result-track:45e757048bb0af74c3790bf3899c69d2216bc2f5e984718ae02ed994f2ccc799` |
| 8 | `lemma` | [eventually](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/eventually.md) | 133 | `result-track:c098c2faaaed1ebf4370bbfd0d685388627cc9a9d1e9d4b2101f955e627758a2` |
| 9 | `def` | [structureMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/structuremap.md) | 138 | `declaration-track:3e8a699145286a95b705fa951b2456d5872c239e6d4d68fa84a49931f980b243` |
| 10 | `lemma` | [structureMap_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/structuremap-apply.md) | 142 | `result-track:15e96f764dd39aa3c79322b1ae6e97ca5d230f8156a7621746d517312a126b1d` |
| 11 | `def` | [inclusion](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/inclusion.md) | 148 | `declaration-track:e1aa86a5f429f12d88fe9c6782601ee119f7751a3b2b0b01cc540a75c890206b` |
| 12 | `lemma` | [inclusion_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/inclusion-apply.md) | 153 | `result-track:ba9606ac635559a0fe365f6050f8136f7c03719899c91a1d9ca13ff8b13c0561` |
| 13 | `lemma` | [inclusion_eq_id](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/inclusion-eq-id.md) | 158 | `result-track:d9ba1d761ab3475b1461c6a6a394ff5760ee7a314dcd119039f526367d61d36d` |
| 14 | `lemma` | [exists_inclusion_eq_of_eventually](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/exists-inclusion-eq-of-eventually.md) | 160 | `result-track:d8c3bd3d6564e2e2d4cb70b48824837f443776a1a1e52af72d708cfeaaa92c17` |
| 15 | `lemma` | [exists_structureMap_eq_of_forall](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/exists-structuremap-eq-of-forall.md) | 165 | `result-track:8f3cfc59ed6159e5832c05e5be2b308a966c25762e2c0edb97c7f9b2e6e33641` |
| 16 | `lemma` | [range_inclusion](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/range-inclusion.md) | 170 | `result-track:6b4803aa1e64fca4ff454c6b0164e8c6105535030832aec51d9b4bac41178d17` |
| 17 | `lemma` | [coe_comp_inclusion](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/coe-comp-inclusion.md) | 176 | `result-track:992d6e011c6d035b72795f035a5df0817a0083dd17e553350bab618e7e99fa80` |
| 18 | `lemma` | [image_coe_preimage_inclusion_subset](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/image-coe-preimage-inclusion-subset.md) | 180 | `result-track:da4dde389c346aa4f4c9d38cd2002e06e8efed6803755c700e556af50911b798` |
| 19 | `lemma` | [range_structureMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/range-structuremap.md) | 184 | `result-track:1ac07592d82dce06672fd764a1bbc5234c32cc104837f800208b82acb8c3fbca` |
| 20 | `lemma` | [coe_comp_structureMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/coe-comp-structuremap.md) | 190 | `result-track:4ca8eaa0dedc025fee2ee266eb3ec50290db89bc2110a00bc39832d556a9095a` |
| 21 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/instance-source-edition-12.md) | 207 | `declaration-track:d9489e44990b169f69de03d193722aedac6749d3a149654fdc4299ee38d4c385` |
| 22 | `lemma` | [one_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/one-apply.md) | 211 | `result-track:916f4ca3f96d74ef64ccfe2dedab2905e197be1d3e75fa71a60790ee6f387691` |
| 23 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/instance.md) | 216 | `declaration-track:1c3388118493ec28dbeb0830ffba9d826c2e0b10ad06485f670e8195e568d213` |
| 24 | `lemma` | [inv_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/inv-apply.md) | 220 | `result-track:d072129c9510d4132771ed224e1cb418f8373482fc9a608f8a3223ba5312e083` |
| 25 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 225 | `declaration-track:48661999c556b059dbfb8435ae306f7e3716c75457b69941cd098dc7ffcf2345` |
| 26 | `lemma` | [mul_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/mul-apply.md) | 229 | `result-track:27f72df2bbc58f79b99de19e48006f844a556f031860479bc0447804d687f4e9` |
| 27 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 234 | `declaration-track:cc867247ae8841444a4c27e29ed71761c67eaeec059d609e9e2e35d5a7fa5754` |
| 28 | `lemma` | [smul_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/smul-apply.md) | 239 | `result-track:9e11854713b0867f33fb2801e8e8de51fd0bc6913a3ab0a60be96fdf85fe19ec` |
| 29 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/instance-source-edition-13.md) | 244 | `declaration-track:dd02af08c73abf460aff575c587655b038dabbb78654d88d35223bde4a7c7214` |
| 30 | `lemma` | [div_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/div-apply.md) | 249 | `result-track:09cba0fdd482441f014b4f20f2aea4426324a7ea12f042248e179eec62ba6278` |
| 31 | `instance` | [instPow](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/instpow.md) | 254 | `declaration-track:81c81a43ef5ed287c695e87f3b42b84fd23dc601ee7e8d37f606fa2f70210e84` |
| 32 | `lemma` | [pow_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/pow-apply.md) | 259 | `result-track:06de093fb56f95c2d5a3a35e5bd0de60ab245b0f7673cb711d1936be3ee05e78` |
| 33 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 264 | `declaration-track:caaa7913b05593765b14013b694033935624936b0a78b2a9108f408a3e3f7766` |
| 34 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/instance-source-edition-11.md) | 269 | `declaration-track:d7eea500b0678b7786618a1298c42b6ea954dd134b3dffd7f675d827158252c6` |
| 35 | `instance` | [instZPow](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/instzpow.md) | 274 | `declaration-track:7acba16a6f39c33e6b7a04dd72bde0cc9084bb4d33cf5fd32dc68d587ebf0b92` |
| 36 | `lemma` | [zpow_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/zpow-apply.md) | 279 | `result-track:da626a96b77db3359d663d1d031150ee662e1abb449931d40fb1d8269ed5a515` |
| 37 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/instance-source-edition-15.md) | 283 | `declaration-track:f229148c53478041cefcaddaf51b8a9e2b49e3d0ff0bf56687b13d263e5f0290` |
| 38 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 288 | `declaration-track:848ba74f553658689e0a33f462fb2dac3cbdd5f546c63cc52a02bffe5957920b` |
| 39 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 294 | `declaration-track:36baf11a277c772151d7b256a03da0b31ad57d5a9cd24d5fcc34651216bb6ee5` |
| 40 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/instance-source-edition-14.md) | 299 | `declaration-track:e617ad3ed397cefbe04f5f3e3ff9419b3c7d13ca547f67586accf7a2f7d72d31` |
| 41 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 303 | `declaration-track:63bcd3b90ac355249f1328c590eefe20a15b988f470dcd66a694bc6415078f3c` |
| 42 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 308 | `declaration-track:4e924a8b1cc03991c2f80049e9d57c4ded45a4c4432a009d9ffb0b1ae9b8425a` |
| 43 | `def` | [coeMonoidHom](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/coemonoidhom.md) | 317 | `declaration-track:2feb7f65a09b6031de0efcccc13331d0b3c4d6f82608df96d2be2cb3ecd59ddd` |
| 44 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 323 | `declaration-track:d2222ea618a8090ccc5d59b8e30c843a879a4a2a85dd4bf493f1648d5f699576` |
| 45 | `def` | [evalMonoidHom](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/evalmonoidhom.md) | 341 | `declaration-track:6606d9d255c7ce59e66edf28f0c01e7f63cae3db6ce1e394ba7122fa4ec43775` |
| 46 | `lemma` | [evalMonoidHom_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/evalmonoidhom-apply.md) | 348 | `result-track:5e58f9c223a36b000b18abb29afcf85db22f7b84a8300148547e049bfcec6274` |
| 47 | `def` | [evalRingHom](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/evalringhom.md) | 355 | `declaration-track:911859c2fd4fc335a327d245c0ca0f782aed9a014d01fb5579a049c21726b54d` |
| 48 | `lemma` | [evalRingHom_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/evalringhom-apply.md) | 361 | `result-track:b0b189b7dd0e1d17aa168181f513811e741a41895eb013685b7bd3622c4b02ea` |
| 49 | `def` | [mapAlong](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/mapalong.md) | 390 | `declaration-track:f2d21f68ef654c2ced1f54b07abff6dffac899de806b72bec92dad816672c461` |
| 50 | `lemma` | [mapAlong_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/mapalong-apply.md) | 395 | `result-track:d5f509a1b12e08ee5ddc47fea0365cc5600751c78a333e9236edd1c63de01d6f` |
| 51 | `def` | [map](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/map.md) | 403 | `declaration-track:085b29321968c1d7713df201c001cbe398dab40864dd5f1869f0040c3e663655` |
| 52 | `lemma` | [map_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/map-apply.md) | 411 | `result-track:38b7d0c91d9143bc6a2313e267e112423f1b07fd6ad094226cde60c14c8a7bf6` |
| 53 | `def` | [mapAlongMonoidHom](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/mapalongmonoidhom.md) | 438 | `declaration-track:e0c7d0fa933190fafafc390f2b90d28c006fbf6ed286320c6d785994b8aea7ce` |
| 54 | `lemma` | [mapAlongMonoidHom_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/mapalongmonoidhom-apply.md) | 448 | `result-track:c3377e3acf13bf87a2743c18b2f7196e3fe6daed92e9f08b692e546a100809b0` |
| 55 | `def` | [mapAlongRingHom](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/mapalongringhom.md) | 467 | `declaration-track:70c743267385511b49bdcf75282dac4304c21bacc197561c048a8277b94ebb5f` |
| 56 | `lemma` | [mapAlongRingHom_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/mapalongringhom-apply.md) | 472 | `result-track:15d84e7149b324eec4736cf53ea231daa1370480b8fcb93f392e0df004600837` |
| 57 | `def` | [mulSingle](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/mulsingle.md) | 492 | `declaration-track:5eee6a537ba84cdd60126fe78b0abc0b01720685f9972203a85a5589dac176fb` |
| 58 | `lemma` | [coe_mulSingle_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/coe-mulsingle-apply.md) | 499 | `result-track:4b48fe1c09cb73bc8beb6819115ae4cdf76f2f6a38b5e8c85bb31b8b6883b1b3` |
| 59 | `lemma` | [comp_mulSingle](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/comp-mulsingle.md) | 500 | `result-track:3338750ae93ab62140346d41633d35332039ade7db53ec4391b25c73706004a8` |
| 60 | `lemma` | [mulSingle_injective](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/mulsingle-injective.md) | 503 | `result-track:1cf3e4c8694c252bb5701eee752ff7679db16a00747765705aa4f9858ac22c88` |
| 61 | `lemma` | [mulSingle_inj](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/mulsingle-inj.md) | 507 | `result-track:bdad222222ed013812eda29a4d546dce4d2b2d42b8b8f00f6d5d3cc14c57b901` |
| 62 | `lemma` | [mulSingle_eq_same](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/mulsingle-eq-same.md) | 511 | `result-track:903416f99879fd94c3dbd9b907d03498cbec279c06317844131cd097e13ca6ac` |
| 63 | `lemma` | [mulSingle_eq_of_ne](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/mulsingle-eq-of-ne.md) | 514 | `result-track:60cf09c87eb38f7c553b5e8ac68b66054c6a3d073c4a40a32d927a47f6c2f7d5` |
| 64 | `lemma` | [mulSingle_eq_of_ne'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/mulsingle-eq-of-ne-source-edition-2.md) | 518 | `result-track:f20f4958926ba07a01f4d341f36a5f15d00db7d2f163c3e67b29c90924bd8927` |
| 65 | `lemma` | [mulSingle_one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/mulsingle-one.md) | 522 | `result-track:b01e5d4721bb1ce93c9817337ad57c621b4dca82682250dea8a2dbe67131e7c9` |
| 66 | `lemma` | [mulSingle_eq_one_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/mulsingle-eq-one-iff.md) | 525 | `result-track:6218619314680b1a06c88b9ab2a4335da3fecc04d9ecbe2cfb3b0ccd42b08e1d` |
| 67 | `lemma` | [mulSingle_ne_one_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/mulsingle-ne-one-iff.md) | 529 | `result-track:5a6347f465c47ea1de5501731109c47fddcdf4ef0588e8cc26f9be2e567f9f0f` |
| 68 | `lemma` | [mulSingle_mul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/mulsingle-mul.md) | 535 | `result-track:973acda30e28e9d3a989c2d8f80fac5dd6d38464518227900bdfcb2caedd6d59` |
| 69 | `lemma` | [mul_single](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/mul-single.md) | 541 | `result-track:096d8f2d507a3e75889ca356fcb830231f7148841b56198f59299057fb1db6c6` |
| 70 | `lemma` | [single_mul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/single-mul.md) | 549 | `result-track:ce27e83d7515043451d53792f104cd0df58ff5f1780cdd267237dbcca3b46636` |
| 71 | `lemma` | [mulSingle_inv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/mulsingle-inv.md) | 557 | `result-track:b9dc5fb8b8fbedf62fb2194fcfdc4cbdd84f43f3199925cbbfa441b4fc7dbeff` |
| 72 | `lemma` | [mulSingle_div](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/mulsingle-div.md) | 563 | `result-track:9fb50cbf5d7869b66383a72d8caa8163eba33b890e9a1333bd6ff2dca8043e21` |
| 73 | `lemma` | [mulSingle_pow](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/mulsingle-pow.md) | 569 | `result-track:32e56d16bd7dc66e9eb96a232d5891cb49868826f0c1c58b2b7b58c7af6abbfd` |
| 74 | `lemma` | [mulSingle_zpow](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/mulsingle-zpow.md) | 575 | `result-track:777112fb7ab1198625fe27e4be48bb0b34e8272d21d1b3140b904b2c3a8730a9` |
| 75 | `def` | [mulSingleMonoidHom](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductBasicNamespacedPublic.lean/declarations/mulsinglemonoidhom.md) | 584 | `declaration-track:be477bfa2a4ada98cc16584f98b6e3dec352401211987bbd99a6c11a35af1926` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3b5aa54f132b8b5d1b9c71a1d663f841b31b6ff765d5e91fee18a1eec46310ba -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Variant18a987dabe4b36786b725199ae6111b7b822c92c70dfc16034e23f7b5d45015e.lean","GRWTSK/_verification/specifications/Algebra/Basic/Variant18a987dabe4b36786b725199ae6111b7b822c92c70dfc16034e23f7b5d45015e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
