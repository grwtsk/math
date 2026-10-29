# Verification target: Group Add Char Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6de0f5c3dcb009649a6bba8d19d9105c83f24cf3",
  "lexical_observation_count": 104,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/AddChar/Variantcc45b9d55f883db28ea08963ca6589839cd587aeaf2c5c5a43b7f0639183926a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6de0f5c3dcb009649a6bba8d19d9105c83f24cf3`.

Source path: `GRWTSK/Algebra/GroupTheory/AddChar/Variantcc45b9d55f883db28ea08963ca6589839cd587aeaf2c5c5a43b7f0639183926a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/AddChar/Variantcc45b9d55f883db28ea08963ca6589839cd587aeaf2c5c5a43b7f0639183926a.lean.json)

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
| 1 | `structure` | [AddChar](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/addchar.md) | 78 | `declaration-track:090ea740ed77d16a1e29ca5e7b2bda26a719607d0d7243efcb8570e5b0eaeeb2` |
| 2 | `instance` | [instFunLike](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/instfunlike.md) | 104 | `declaration-track:a8ed03e8edc3a4801415c589529c28fd7f7311baaf1945c753e0afe1b84c2123` |
| 3 | `lemma` | [ext](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/ext.md) | 110 | `result-track:20277fb8e5b9d520b839218e017e6ed0e8967e0d08f37acca01f7a8d1ef8a858` |
| 4 | `lemma` | [coe_mk](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/coe-mk.md) | 113 | `result-track:ea360b2adabab37ea20141967464145070e69c8a26a04b7e4cdd9dcccd568d9b` |
| 5 | `lemma` | [map_zero_eq_one](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/map-zero-eq-one.md) | 119 | `result-track:2d5019c63ae116e5ba0031064437d5814375da79481f4a0ac6e5df3a10cedb24` |
| 6 | `lemma` | [map_add_eq_mul](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/map-add-eq-mul.md) | 122 | `result-track:d31d04f36ab134089867599394cfcb45422241081ccfc2b10dec9e1c602ccb12` |
| 7 | `def` | [toMonoidHom](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/tomonoidhom.md) | 125 | `declaration-track:2ee7cbd06b0b8fe58c0f6e76d8e87e8e75f35f28b41372b68a1a7144391fbc32` |
| 8 | `lemma` | [toMonoidHom_apply](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/tomonoidhom-apply.md) | 132 | `result-track:2a8aafcecb7ddf6f9a480eb12a519cf2382c8900f94ff4cd4109cc232d70763b` |
| 9 | `lemma` | [map_nsmul_eq_pow](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/map-nsmul-eq-pow.md) | 137 | `result-track:0411ffcafd85eb7ee8b6c5236fab1b694fbd8b8161f0b6821a54e1a79cb7fae3` |
| 10 | `def` | [toMonoidHomEquiv](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/tomonoidhomequiv.md) | 142 | `declaration-track:4f0010319b911e78dce7e5b43b81a09f9ae26648fe60afc3c571906e6db427b0` |
| 11 | `lemma` | [coe_toMonoidHomEquiv](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/coe-tomonoidhomequiv.md) | 149 | `result-track:44aba7395f4e6b2e5842e0cd5b2901460318540bdd26a01eb2eba7f791fcd874` |
| 12 | `lemma` | [coe_toMonoidHomEquiv_symm](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/coe-tomonoidhomequiv-symm.md) | 152 | `result-track:692e0cc7cbe6ed122a9cfc1426ae9faed6f0e91e5cb96e304238f4555aef9723` |
| 13 | `lemma` | [toMonoidHomEquiv_apply](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/tomonoidhomequiv-apply.md) | 155 | `result-track:5930f3ad87487b4d2da442604006ecd46e1ab245afeb58e6992071e4e05cc55d` |
| 14 | `lemma` | [toMonoidHomEquiv_symm_apply](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/tomonoidhomequiv-symm-apply.md) | 158 | `result-track:671859d1a15056e2f3bed081b62a0023675b2788b98426e31ebd9fd4f782b179` |
| 15 | `def` | [toAddMonoidHom](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/toaddmonoidhom.md) | 162 | `declaration-track:d6914b15eded66f0750051da5a1656c6049e64257301264cd91d48e336542065` |
| 16 | `lemma` | [coe_toAddMonoidHom](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/coe-toaddmonoidhom.md) | 167 | `result-track:3195e72c7fa15a9552cc14b505bcf191f7e406f01d9300560a11b2f535c0cb4e` |
| 17 | `lemma` | [toAddMonoidHom_apply](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/toaddmonoidhom-apply.md) | 169 | `result-track:9c36fe84c9d8caa3e170fcbb1bfacff347e98e3aa2c923ff4898d6abdceded23` |
| 18 | `def` | [toAddMonoidHomEquiv](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/toaddmonoidhomequiv.md) | 174 | `declaration-track:950f793167f8e2b6b4e4e340f57347019c0b1ac7cf6b6f1899c2944c06398388` |
| 19 | `lemma` | [coe_toAddMonoidHomEquiv](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/coe-toaddmonoidhomequiv.md) | 182 | `result-track:c1a36dcb8adfe870df8d7bcc1040d16f9acfe257394bb13177869fc1e795d459` |
| 20 | `lemma` | [coe_toAddMonoidHomEquiv_symm](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/coe-toaddmonoidhomequiv-symm.md) | 185 | `result-track:ebf0354221e9fef7e86670a05a4607ab6967f24a3cec1476989166e760fca8c3` |
| 21 | `lemma` | [toAddMonoidHomEquiv_apply](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/toaddmonoidhomequiv-apply.md) | 188 | `result-track:77291fe0d121599a95d78170736e3f33f5cbf08b2a1cc3e253e440715b7eb075` |
| 22 | `lemma` | [toAddMonoidHomEquiv_symm_apply](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/toaddmonoidhomequiv-symm-apply.md) | 191 | `result-track:dea324187bca5ddb0bf8f9a11de6bac62c1d9bcef7a1bd20402089e3b5a9d89e` |
| 23 | `instance` | [instOne](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/instone.md) | 195 | `declaration-track:3dc40be5706911b285fa002c384253fde6c59ae711875f3b4aad3ec6562a4917` |
| 24 | `instance` | [instZero](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/instzero.md) | 198 | `declaration-track:267403a9fe84a6a913de38aede7107da6676fe3939ba64b405ffdfcdede9ff33` |
| 25 | `lemma` | [coe_one](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/coe-one.md) | 200 | `result-track:0adc6116b5037382fce4c05486b1411f5c69d55d73adc8e0680bf391e5d300a5` |
| 26 | `lemma` | [coe_zero](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/coe-zero.md) | 201 | `result-track:e9a5f19ebcc7e5d039bc6abafe0f81d06d18e1b68a5d02d58a170a1da40234fd` |
| 27 | `lemma` | [one_apply](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/one-apply.md) | 202 | `result-track:7027d58ddacf71a38e1367a801b774a7a198f8fe45db55ac91c6fee160e091c9` |
| 28 | `lemma` | [zero_apply](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/zero-apply.md) | 203 | `result-track:ddfb0d594d8363879a7ddd7323bec1225d26eb3569a346b7663e8348e0b91fad` |
| 29 | `lemma` | [one_eq_zero](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/one-eq-zero.md) | 205 | `result-track:f1cf185a007cea0b867ea593bdf78882d54ab42cfe85db10bc1ede6ba81cdf1f` |
| 30 | `lemma` | [coe_eq_one](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/coe-eq-one.md) | 207 | `result-track:f14fd5a3f1c1a8423414ef795cf8488a9a9e0f50198e0472601b11f4eaba6899` |
| 31 | `lemma` | [toMonoidHomEquiv_zero](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/tomonoidhomequiv-zero.md) | 209 | `result-track:db0322a3f061524ec95b06c6bf65c27d1a03dbcfe390cdd88cafa1fbbfbaeaf9` |
| 32 | `lemma` | [toMonoidHomEquiv_symm_one](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/tomonoidhomequiv-symm-one.md) | 210 | `result-track:cbed6acbd6fce456087f883f3bb0a557b15839fdb74ea6950dc819f0fa31b134` |
| 33 | `lemma` | [toAddMonoidHomEquiv_zero](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/toaddmonoidhomequiv-zero.md) | 213 | `result-track:b70a9ec9512502d8efaa7ad53c2ace1d8605d013b671c6d02facd0f51c9cb37b` |
| 34 | `lemma` | [toAddMonoidHomEquiv_symm_zero](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/toaddmonoidhomequiv-symm-zero.md) | 214 | `result-track:dcc998f15a9fbba2d213251086913b84f5a7b67783209ce969b8cf921cbcb47c` |
| 35 | `instance` | [instInhabited](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/instinhabited.md) | 217 | `declaration-track:f44368825c8b9c6f65b8079e79f5a4ccf97e5c60a3e02ae70e62a94ae2775a68` |
| 36 | `def` | [Group Add Char Namespaced Public](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/compaddchar.md) | 220 | `declaration-track:7317ce5c8db2c0acdf87d6ce2193e64c8dfa5a7594aeec7a0a4c07c18def1bbd` |
| 37 | `lemma` | [Group Add Char Namespaced Public](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/coe-compaddchar.md) | 224 | `result-track:bd39b5ee8f3bb605209d5a6c783ca5d33c2ed4fb6d62294fbb590dd7c60ef84b` |
| 38 | `lemma` | [Group Add Char Namespaced Public](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/compaddchar-apply.md) | 229 | `result-track:366a5d413e454b8d7cacf42ace3e0b1d137dffd753f11f1e4f19978e4636197b` |
| 39 | `lemma` | [Group Add Char Namespaced Public](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/compaddchar-injective-left.md) | 232 | `result-track:672a70ce0dfe61824ba30028cffe1d1242a805235c639e7052b71ca27d2cd97b` |
| 40 | `lemma` | [Group Add Char Namespaced Public](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/compaddchar-injective-right.md) | 236 | `result-track:1b30a5d548a75b0f5ed68ca6efd011f9672b090627b21351c2ed4e4d34237775` |
| 41 | `def` | [compAddMonoidHom](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/compaddmonoidhom.md) | 241 | `declaration-track:e9bc69b638a3b8f9c415ac29b3f7cba32eb3e3e081b50a1bf802fa604a8b7d1c` |
| 42 | `lemma` | [coe_compAddMonoidHom](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/coe-compaddmonoidhom.md) | 245 | `result-track:c229c76ced60dbe9d1a2f884de842d2c75f36884c947b60425346c03a5aa2a7e` |
| 43 | `lemma` | [compAddMonoidHom_apply](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/compaddmonoidhom-apply.md) | 247 | `result-track:65a22f1a00080e82b7111a5b68bf8d9c02f0add8f62e272855ee60a7ada5cd66` |
| 44 | `lemma` | [compAddMonoidHom_injective_left](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/compaddmonoidhom-injective-left.md) | 250 | `result-track:c4c7d3460cf14c52f928a0b64c58597990d2fe4d74cda1d4e6e861ff5c733595` |
| 45 | `lemma` | [compAddMonoidHom_injective_right](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/compaddmonoidhom-injective-right.md) | 254 | `result-track:db6281db426c8a6b05a49b1b86eff9681ff8dc6e7ba456cb569fa8b53574860c` |
| 46 | `lemma` | [eq_one_iff](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/eq-one-iff.md) | 259 | `result-track:4a65fed62229d4dfb063ac2c4390fbfda5ce7f0eea2afc61a2fdec4c60a076c6` |
| 47 | `lemma` | [eq_zero_iff](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/eq-zero-iff.md) | 260 | `result-track:69af23c9aa3ac3ea83df6d85aefaa73f82b797c0fa3d03d9e0cb342947ea602d` |
| 48 | `lemma` | [ne_one_iff](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/ne-one-iff.md) | 261 | `result-track:1cd25fc2753aefddf8dc2295949f53951d084f7eec2e1db6265fe3286eb1eb23` |
| 49 | `lemma` | [ne_zero_iff](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/ne-zero-iff.md) | 262 | `result-track:274a86504bed730b4c2910fcba52ab675bebf5b2a8a027f42a4d7c5813875dc2` |
| 50 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 264 | `declaration-track:c747f2a5820cf2f216a198d245291264392f21ac7cb464e3c6d08c52fcb5cb57` |
| 51 | `instance` | [instCommMonoid](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/instcommmonoid.md) | 273 | `declaration-track:6cec348a7b6825a00902d16b9fd403d250a4cf773cd40a3b01805b10c69d85e3` |
| 52 | `instance` | [instAddCommMonoid](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/instaddcommmonoid.md) | 277 | `declaration-track:db73e187423a5c26c3b1dc2d32d9ad78da0409316ecfd8fc379a264b2362eefa` |
| 53 | `lemma` | [coe_mul](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/coe-mul.md) | 280 | `result-track:01b36d58fa37e41f9601589fef55e51f8a5976dc1720a291108ed01dc7efd18d` |
| 54 | `lemma` | [coe_add](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/coe-add.md) | 281 | `result-track:9f75d73b3a6a2bd6f8653d5bbd9b85cd99db6c45d295117854cb5f5c15637a66` |
| 55 | `lemma` | [coe_pow](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/coe-pow.md) | 282 | `result-track:94e48f5065c200ba5b2e9d4dc36411f435712f49450a698d5a8aa1b0a90999ee` |
| 56 | `lemma` | [coe_nsmul](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/coe-nsmul.md) | 283 | `result-track:db78711a1278dc748abde419b73088f1ca96ac059094da871d950b3a97b5b8ac` |
| 57 | `lemma` | [coe_prod](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/coe-prod.md) | 286 | `result-track:2120004753a0db699caeed5be6ec2f6628d7e898026510cf9dbb412c1747f653` |
| 58 | `lemma` | [coe_sum](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/coe-sum.md) | 290 | `result-track:8b5e5232231e516311f817b64db89d74f124f73fa687067f9eaca1fc0bbcd242` |
| 59 | `lemma` | [mul_apply](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/mul-apply.md) | 293 | `result-track:7437cc2851f301ebbe8c5da6d3b42de247e933683048514301821e58dbb2b71b` |
| 60 | `lemma` | [add_apply](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/add-apply.md) | 294 | `result-track:12e8370eb029972c82d9fbfbe8d21381af29d2ff8b72e754e3c54eae0a6c9112` |
| 61 | `lemma` | [pow_apply](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/pow-apply.md) | 295 | `result-track:9930070bdf8caff11c13d3380398d1bca550181c9e85e61db0f2ffc3f239a23d` |
| 62 | `lemma` | [nsmul_apply](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/nsmul-apply.md) | 296 | `result-track:dc01b4448e47cc5f3ed608da47a6db19988aea3e3f79d4a4f66f8fcfbe90ace9` |
| 63 | `lemma` | [prod_apply](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/prod-apply.md) | 298 | `result-track:8a85847aceb2bebe23a88fd181527d66379d3d610bfc5ebed514906542fe41f3` |
| 64 | `lemma` | [sum_apply](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/sum-apply.md) | 301 | `result-track:7dc2fe9d837ecc0d15c42178b7e0122aa98a4e7d1fca0a71da7a2c6fec30c81f` |
| 65 | `lemma` | [mul_eq_add](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/mul-eq-add.md) | 304 | `result-track:917318b280cfd19be2cf6b170bedd6d90e84a3b7873720678914061119457e3e` |
| 66 | `lemma` | [pow_eq_nsmul](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/pow-eq-nsmul.md) | 305 | `result-track:e1a3ae0cb112a8d92a41ac45db05c02069c0a3bdad6d97ec3e8ec2f5c95f4fea` |
| 67 | `lemma` | [prod_eq_sum](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/prod-eq-sum.md) | 306 | `result-track:79de668dcca31e3abfbfdfe6a03f9f8a63ef561a3dda346437570f0db0690df5` |
| 68 | `lemma` | [toMonoidHomEquiv_add](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/tomonoidhomequiv-add.md) | 308 | `result-track:83f4cad214d9e1c8d23e728b1d3d172a045dbe6b6a37bab0e72f1d541921a4f2` |
| 69 | `lemma` | [toMonoidHomEquiv_symm_mul](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/tomonoidhomequiv-symm-mul.md) | 310 | `result-track:f36e9472abcbc1a95c3d1e5175c504c865176022368464a1150ac8ac1dc378c3` |
| 70 | `def` | [toMonoidHomMulEquiv](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/tomonoidhommulequiv.md) | 314 | `declaration-track:16725a4e5bae4ca15e467d540b19d66759c146ee2ef6f07e64d0fe8ede1d4854` |
| 71 | `def` | [toAddMonoidAddEquiv](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/toaddmonoidaddequiv.md) | 319 | `declaration-track:37806df69de198eaff21ba34277bedb48d6cca2a0c07cb516dd934df3d9f41f4` |
| 72 | `def` | [doubleDualEmb](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/doubledualemb.md) | 323 | `declaration-track:6503f70a3590a667232dde10d933195aecea88372015948b62d98683a37bca0a` |
| 73 | `lemma` | [doubleDualEmb_apply](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/doubledualemb-apply.md) | 330 | `result-track:bdfc79eb2c6df52a318be60d23ac96d60f0015179b95b59cf5f567681d3e1da5` |
| 74 | `lemma` | [sum_eq_ite](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/sum-eq-ite.md) | 338 | `result-track:9a6917b1f757fab84813bcd999a0fce545adf6520d15e134178874dee0b98425` |
| 75 | `lemma` | [sum_eq_zero_iff_ne_zero](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/sum-eq-zero-iff-ne-zero.md) | 349 | `result-track:756c0d076cbf6a0e131e7e851a38f3717428edb909a473e74c5d6daad0efd0b5` |
| 76 | `lemma` | [sum_ne_zero_iff_eq_zero](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/sum-ne-zero-iff-eq-zero.md) | 352 | `result-track:535cf11084c115a5f06674bc7fd2964f1bca877717ccbdad9d097d563f5cae43` |
| 77 | `instance` | [instCommGroup](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/instcommgroup.md) | 367 | `declaration-track:77675f89453afd5367e61ac9a96cc346d41ecff5ff96b5f632f9a433983c2397` |
| 78 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/instance.md) | 372 | `declaration-track:131008b94a2f6021c28bc2409d3a00f1c63235fbc45a11d8f534ae9d19de8709` |
| 79 | `lemma` | [inv_apply](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/inv-apply-source-edition-2.md) | 374 | `result-track:7fd9ad9fb36b4b94405894848c7cb60d54b4be8f58aef670c6ba93cd17c4a9fd` |
| 80 | `lemma` | [neg_apply](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/neg-apply-source-edition-2.md) | 375 | `result-track:b0426929425c13d55fef9f450fbddf5bab04542f36b52df8be4b01b8a2b3ef86` |
| 81 | `lemma` | [div_apply](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/div-apply-source-edition-2.md) | 376 | `result-track:e19abb6a834bcf2548ffecf9e5c05f75c59548ab745ec1199eac610a328fe9e6` |
| 82 | `lemma` | [sub_apply](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/sub-apply.md) | 377 | `result-track:44d5f63bb95337205cffac026511fe301eabe7d13160aa14d208d83855d1d772` |
| 83 | `lemma` | [val_isUnit](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/val-isunit.md) | 384 | `result-track:a02ea2c3ea48a69d267173c1fe7fe834d5bd49846bd19cb29b63717c7817a0e9` |
| 84 | `lemma` | [map_neg_eq_inv](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/map-neg-eq-inv.md) | 394 | `result-track:4778329b86985772f7d0ad9f82a653b1682a67369a904c4d2441ebd5836650c0` |
| 85 | `lemma` | [map_zsmul_eq_zpow](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/map-zsmul-eq-zpow.md) | 399 | `result-track:bcbd4c2671eb25e4cb0c5a8d30f78c9ec0bbbaed5a15fb86cd88f54d1b8ce1b3` |
| 86 | `lemma` | [inv_apply'](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/inv-apply.md) | 407 | `result-track:3c999bef9aa32b00e0aa28f84fbd28745568a1e90eb3da027d7da8be4ffc75c9` |
| 87 | `lemma` | [neg_apply'](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/neg-apply.md) | 408 | `result-track:6e7c1f33cf8af60fb9a77da302d21a9ae6f767a1f1db09b76adc6ccc0f8044a9` |
| 88 | `lemma` | [div_apply'](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/div-apply.md) | 410 | `result-track:a6d35715dedae3ffeec37fee61c552babfc5d242cd2519c7d0b0a15abb3524e0` |
| 89 | `lemma` | [sub_apply'](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/sub-apply-source-edition-2.md) | 413 | `result-track:dc4da4acc85f6cd261f6c09b7ce2cc34cc1de82335c054a95e970cd71a331be7` |
| 90 | `lemma` | [zsmul_apply](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/zsmul-apply.md) | 416 | `result-track:e289e783cad4268aea761ea1cd55c83581a9be3aef3a3453f04a2a753c3de44b` |
| 91 | `lemma` | [zpow_apply](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/zpow-apply.md) | 419 | `result-track:e4f385aecd892b86fe1e09eea58fb81e2ec35d17ffb34a7afa164d4600178f48` |
| 92 | `lemma` | [map_sub_eq_div](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/map-sub-eq-div.md) | 421 | `result-track:7f896dd6ffb9a9277903547f9ef763951db5ebe8dcf2eac0da750bbef6fcd904` |
| 93 | `lemma` | [injective_iff](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/injective-iff.md) | 424 | `result-track:b20a3bfeaae7aa5a1f006f242ec4ad55cdd929d7f5f02f538f04dba00757c5c7` |
| 94 | `lemma` | [coe_ne_zero](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/coe-ne-zero.md) | 432 | `result-track:647c54bba8a08b0d6a795f88a0f4ec01ce2033e7ed07dcc9ad2dda0d7f84d2d2` |
| 95 | `def` | [mulShift](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/mulshift.md) | 447 | `declaration-track:45b2876f744754d851ba2d017bb1916cb15f71b4bded297de1a57ce2ec2e84a3` |
| 96 | `lemma` | [mulShift_apply](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/mulshift-apply.md) | 450 | `result-track:66422ed28e21f14f0f6e7547ef7985c0385293ccb19a41e784d566a95adc4ffc` |
| 97 | `theorem` | [inv_mulShift](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/inv-mulshift.md) | 454 | `result-track:a8d67f391beda7634e0db2f3d00964eb03fd0333db744d6239031b711a31f0f9` |
| 98 | `theorem` | [mulShift_spec'](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/mulshift-spec.md) | 459 | `result-track:2d825f5d9c40a6967054183db0e2dfe228cc8da21281c08b92e65252df0a24b9` |
| 99 | `theorem` | [pow_mulShift](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/pow-mulshift.md) | 463 | `result-track:1dcb0e6d3743206c140cf3d4bcbc7e3270697df697ac0fc09319cb1da57c4364` |
| 100 | `theorem` | [mulShift_mul](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/mulshift-mul.md) | 468 | `result-track:63482c13d9b422b2527dd061afca55c793c2429839ea52b0928b6ac4d4e4e252` |
| 101 | `lemma` | [mulShift_mulShift](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/mulshift-mulshift.md) | 473 | `result-track:757d00d42124d9341ff66d90cd3271de345b00b3ec528c3091331a279751fa3e` |
| 102 | `theorem` | [mulShift_zero](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/mulshift-zero.md) | 480 | `result-track:074fd75e44c90bd2ed22db7abf0ee294d8e59dbd992dfe3032c70e4ed64da0f0` |
| 103 | `lemma` | [mulShift_one](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/mulshift-one.md) | 484 | `result-track:ffeda44a4d4b6d4b534ecb42317cb1426acd46f4e4be936a7ea2fb7171d893c9` |
| 104 | `lemma` | [mulShift_unit_eq_one_iff](../../../../GroupTheoryAndGeneralizations/GroupAddCharNamespacedPublic.lean/declarations/mulshift-unit-eq-one-iff.md) | 487 | `result-track:32e548624a3839a665d833bbafdd988b2f15760c09dec19bc73663c24f625812` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=733cda16c34f7f54d6cbed2223e58b60bed92b57f782299656d970601a2920a2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/AddChar/Variantcc45b9d55f883db28ea08963ca6589839cd587aeaf2c5c5a43b7f0639183926a.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/AddChar/Variantcc45b9d55f883db28ea08963ca6589839cd587aeaf2c5c5a43b7f0639183926a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
