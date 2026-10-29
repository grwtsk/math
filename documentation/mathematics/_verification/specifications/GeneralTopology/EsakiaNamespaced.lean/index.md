# Verification target: Esakia Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "38159fd6bfb4e49712c339225094e6def2302773",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Esakia/Variant586b8682bd12ead5a9eec626f59619f25ce4baca64bbb3e3578690389127e502.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/EsakiaNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/EsakiaNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `38159fd6bfb4e49712c339225094e6def2302773`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Esakia/Variant586b8682bd12ead5a9eec626f59619f25ce4baca64bbb3e3578690389127e502.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Esakia/Variant586b8682bd12ead5a9eec626f59619f25ce4baca64bbb3e3578690389127e502.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Hom.Bounded` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Hom.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PseudoEpimorphism](../../../../GeneralTopology/EsakiaNamespaced.lean/declarations/pseudoepimorphism.md) | 47 | `declaration-track:3f6c7930797c9399c949db68d7a0272e2b664fd2acfae8d01903ed868d187d8b` |
| 2 | `structure` | [EsakiaHom](../../../../GeneralTopology/EsakiaNamespaced.lean/declarations/esakiahom.md) | 51 | `declaration-track:2598372fc20b72eedcc94cd290f772cf13639dcf936f0114ac912b3160f29975` |
| 3 | `class` | [PseudoEpimorphismClass](../../../../GeneralTopology/EsakiaNamespaced.lean/declarations/pseudoepimorphismclass.md) | 60 | `declaration-track:43a73bb8a2b10e6748e60dad956a441dc6e76e00f95d6b2450265bc45fea7d96` |
| 4 | `class` | [EsakiaHomClass](../../../../GeneralTopology/EsakiaNamespaced.lean/declarations/esakiahomclass.md) | 68 | `declaration-track:33045ec41c0d52b58f69926fe4f4e6cd53fba890a522737501f4adb9aeb9c239` |
| 5 | `instance` | [(anonymous)](../../../../GeneralTopology/EsakiaNamespaced.lean/declarations/instance-source-edition-2.md) | 82 | `declaration-track:625be8ef55917cc240eea19272f55b37f74ef6a407e18dc1e395e872de7edc70` |
| 6 | `instance` | [(anonymous)](../../../../GeneralTopology/EsakiaNamespaced.lean/declarations/instance-source-edition-9.md) | 89 | `declaration-track:e8fa2a2f29e8702f00ac5d32cbbe74ad00d37dd4be56f76a61a9e31ca2f3ab42` |
| 7 | `instance` | [(anonymous)](../../../../GeneralTopology/EsakiaNamespaced.lean/declarations/instance-source-edition-4.md) | 94 | `declaration-track:68a0c38e5a7a8f555b1b675333fcc56046a34c23e6412702339c3495fb0df1d3` |
| 8 | `instance` | [(anonymous)](../../../../GeneralTopology/EsakiaNamespaced.lean/declarations/instance.md) | 98 | `declaration-track:0e13b8e80c13c93c3ee55bd02d4b33e0101abe8f11485e27fa2c89988ac1345d` |
| 9 | `instance` | [(anonymous)](../../../../GeneralTopology/EsakiaNamespaced.lean/declarations/instance-source-edition-8.md) | 105 | `declaration-track:c684f6b1652d88d603a98cd1d7c2d4bf6fe1260c49f24b73944e8182cc015670` |
| 10 | `instance` | [instFunLike](../../../../GeneralTopology/EsakiaNamespaced.lean/declarations/instfunlike-source-edition-2.md) | 117 | `declaration-track:d3ac8a2b701ca277de615174ea52d70d55006d712a33f94629900e1e024a888c` |
| 11 | `instance` | [(anonymous)](../../../../GeneralTopology/EsakiaNamespaced.lean/declarations/instance-source-edition-6.md) | 124 | `declaration-track:b6fef11fce410fc3df27d87fe48cc6151b9a4f085a80dda624eb6ab503812c13` |
| 12 | `theorem` | [toOrderHom_eq_coe](../../../../GeneralTopology/EsakiaNamespaced.lean/declarations/toorderhom-eq-coe.md) | 129 | `result-track:27ccc17e9db02e32443c0542c928433f9d028081460b0d78f484e82dd8177d18` |
| 13 | `theorem` | [toFun_eq_coe](../../../../GeneralTopology/EsakiaNamespaced.lean/declarations/tofun-eq-coe.md) | 131 | `result-track:9f76fc521242470be6e91aac844b88b8c15771964b4a66857c24955147e63cd3` |
| 14 | `theorem` | [ext](../../../../GeneralTopology/EsakiaNamespaced.lean/declarations/ext.md) | 134 | `result-track:0e3f60ba7c127c7db930c76eaa08aa2f40b41203168704991e4fa04f6e923a3f` |
| 15 | `def` | [copy](../../../../GeneralTopology/EsakiaNamespaced.lean/declarations/copy.md) | 139 | `declaration-track:1d5d127c27c467e6804c38ac1724c1bd138743fa2515c5040eee4085d8ec0c55` |
| 16 | `theorem` | [coe_copy](../../../../GeneralTopology/EsakiaNamespaced.lean/declarations/coe-copy.md) | 143 | `result-track:439af53ae0601e08a3233fbf9bb683aca6c1d4cef522ff8b3071b779648fa5cf` |
| 17 | `theorem` | [copy_eq](../../../../GeneralTopology/EsakiaNamespaced.lean/declarations/copy-eq-source-edition-2.md) | 145 | `result-track:94643b5357f5470bcbb7a9310d8463c730c8f1e1eb6f174df840230225a59c81` |
| 18 | `def` | [id](../../../../GeneralTopology/EsakiaNamespaced.lean/declarations/id.md) | 151 | `declaration-track:37bdd0c7957dd38e0af391baa2183572222d7c8d65df8cda1902484fcc1d70ea` |
| 19 | `instance` | [(anonymous)](../../../../GeneralTopology/EsakiaNamespaced.lean/declarations/instance-source-edition-3.md) | 154 | `declaration-track:6573811a68e44b4b8c2630fab711ac3067ec96ac7a2182f053777e057198ab14` |
| 20 | `theorem` | [coe_id](../../../../GeneralTopology/EsakiaNamespaced.lean/declarations/coe-id-source-edition-2.md) | 158 | `result-track:de264581c2b4d12412b5f41eecf044927a7ebd133e26d166c18a72385ae6b7da` |
| 21 | `theorem` | [coe_id_orderHom](../../../../GeneralTopology/EsakiaNamespaced.lean/declarations/coe-id-orderhom.md) | 161 | `result-track:0baabaa52e564e53e49f99b3b1a11aa274658e2742235eaadde02b2baaa70a53` |
| 22 | `theorem` | [id_apply](../../../../GeneralTopology/EsakiaNamespaced.lean/declarations/id-apply.md) | 166 | `result-track:60dd3ba1cd181109557a88c4f7a888ae14435b6b348fa346c73aeb7172ed8b79` |
| 23 | `def` | [comp](../../../../GeneralTopology/EsakiaNamespaced.lean/declarations/comp.md) | 169 | `declaration-track:b8129954d1ed45ab06be19a7c4a3e4ac232f5d4f4bce075ee849350ef6f3287e` |
| 24 | `theorem` | [coe_comp](../../../../GeneralTopology/EsakiaNamespaced.lean/declarations/coe-comp-source-edition-2.md) | 176 | `result-track:9666f6e2bfc8536de1d9dadc26d509eea7e77951c0c9284d95e74a152b643ffc` |
| 25 | `theorem` | [coe_comp_orderHom](../../../../GeneralTopology/EsakiaNamespaced.lean/declarations/coe-comp-orderhom.md) | 180 | `result-track:11bab926dd2c2742eaaac2079c14a20d5553c5afc7b977ba2e5e809b32f09b63` |
| 26 | `theorem` | [comp_apply](../../../../GeneralTopology/EsakiaNamespaced.lean/declarations/comp-apply.md) | 184 | `result-track:6bbcd140646ca65ee438f42dfd582364e6bf27353032ba1cf022ae9c2e7fd0a8` |
| 27 | `theorem` | [comp_assoc](../../../../GeneralTopology/EsakiaNamespaced.lean/declarations/comp-assoc-source-edition-2.md) | 188 | `result-track:41fd5b78fe690cb7af241d6d523f778c5c1d42b5d820e07ec7e993c9dc372770` |
| 28 | `theorem` | [comp_id](../../../../GeneralTopology/EsakiaNamespaced.lean/declarations/comp-id.md) | 192 | `result-track:3bd5928970666105ffb3000f4bd4b8caadf25b7994b2e688cbf8d18d6bf5c940` |
| 29 | `theorem` | [id_comp](../../../../GeneralTopology/EsakiaNamespaced.lean/declarations/id-comp.md) | 196 | `result-track:0aa3fcac4ad93f8d7d30d2418c20a9c090c3d9f7e4e7dccf65f6d195d1712359` |
| 30 | `theorem` | [cancel_right](../../../../GeneralTopology/EsakiaNamespaced.lean/declarations/cancel-right-source-edition-2.md) | 200 | `result-track:cbd398f9c3235be56e8f3129b1a9b2a738c7074d2399ff72e77b3e0646d1fbe2` |
| 31 | `theorem` | [cancel_left](../../../../GeneralTopology/EsakiaNamespaced.lean/declarations/cancel-left-source-edition-2.md) | 205 | `result-track:a9bf35e32f45d3eb9cb66828b0fb589970c67ebea2ff0f80c46a31212e3a9ac0` |
| 32 | `def` | [toPseudoEpimorphism](../../../../GeneralTopology/EsakiaNamespaced.lean/declarations/topseudoepimorphism.md) | 219 | `declaration-track:e77ed46033a60d86c9d59673fc5a58f591f8a03e10b1c2cb39e32606c1927019` |
| 33 | `instance` | [instFunLike](../../../../GeneralTopology/EsakiaNamespaced.lean/declarations/instfunlike.md) | 222 | `declaration-track:0d01559676b9124c86046745fa6e9a053d2d63fb2fe108a953525d06e9d74856` |
| 34 | `instance` | [(anonymous)](../../../../GeneralTopology/EsakiaNamespaced.lean/declarations/instance-source-edition-7.md) | 229 | `declaration-track:c50682de6b24a74a4dcbd65a064014edc546bc313c5e06e68a914983a3afaaea` |
| 35 | `theorem` | [toContinuousOrderHom_coe](../../../../GeneralTopology/EsakiaNamespaced.lean/declarations/tocontinuousorderhom-coe.md) | 235 | `result-track:2f8e412f343ecb78279202d79e606b4510b09ac4669dd3fbb374be6fe1895dde` |
| 36 | `theorem` | [toFun_eq_coe](../../../../GeneralTopology/EsakiaNamespaced.lean/declarations/tofun-eq-coe-source-edition-2.md) | 238 | `result-track:ee5e47f84f558bd86744c909e039ad5398f7b31a0ae698089f99b0fff114954b` |
| 37 | `theorem` | [ext](../../../../GeneralTopology/EsakiaNamespaced.lean/declarations/ext-source-edition-2.md) | 241 | `result-track:a470de25949e76c88f1fa9382fa0893dc9fe5baf19bbe87f6768b3b19b120882` |
| 38 | `def` | [copy](../../../../GeneralTopology/EsakiaNamespaced.lean/declarations/copy-source-edition-2.md) | 246 | `declaration-track:ea812f427110d35d417a545f50a37e3278d82e5e30601cef7c62975f6e7877b3` |
| 39 | `theorem` | [coe_copy](../../../../GeneralTopology/EsakiaNamespaced.lean/declarations/coe-copy-source-edition-2.md) | 251 | `result-track:59363c3a2bf416e778888c7e35da4211f1a20e03474f01f34c8bf07af649340b` |
| 40 | `theorem` | [copy_eq](../../../../GeneralTopology/EsakiaNamespaced.lean/declarations/copy-eq.md) | 253 | `result-track:35eeffd79853163bee991aad4dd69e7bcba9655691ba09b00da3461ec3d0c3ce` |
| 41 | `def` | [id](../../../../GeneralTopology/EsakiaNamespaced.lean/declarations/id-source-edition-2.md) | 259 | `declaration-track:8b8c894f51db284f2a0ef4a626a2086bb2ef0b6c0314a7b46ba606b6bd3cc005` |
| 42 | `instance` | [(anonymous)](../../../../GeneralTopology/EsakiaNamespaced.lean/declarations/instance-source-edition-5.md) | 262 | `declaration-track:95f22d06ddac2c9565172498f57dda430bca7720368e81607aced8e030c7f9d4` |
| 43 | `theorem` | [coe_id](../../../../GeneralTopology/EsakiaNamespaced.lean/declarations/coe-id.md) | 266 | `result-track:a2b0a60529921fdc67fe712884526419e2d6440296a4d620d872ef542676c8dd` |
| 44 | `theorem` | [coe_id_pseudoEpimorphism](../../../../GeneralTopology/EsakiaNamespaced.lean/declarations/coe-id-pseudoepimorphism.md) | 269 | `result-track:2e6edcbf73253942d4a2551112a2306ab46fa9bcb7be2fca8e7a979ce06ed327` |
| 45 | `theorem` | [id_apply](../../../../GeneralTopology/EsakiaNamespaced.lean/declarations/id-apply-source-edition-2.md) | 275 | `result-track:98b209b3a0abe2de0b4183d824624c98010df0b6332c11a0c4862abd32d3678b` |
| 46 | `theorem` | [coe_id_continuousOrderHom](../../../../GeneralTopology/EsakiaNamespaced.lean/declarations/coe-id-continuousorderhom.md) | 278 | `result-track:d292dc73ffd1b7daabc62c285ab795b65273d528cc8eba9f4e3f8d9b3fb93d8e` |
| 47 | `def` | [comp](../../../../GeneralTopology/EsakiaNamespaced.lean/declarations/comp-source-edition-2.md) | 281 | `declaration-track:e0bf72547e75e6417b9178bf3b8c09243d292e0facfd859139328fed067f475a` |
| 48 | `theorem` | [coe_comp_continuousOrderHom](../../../../GeneralTopology/EsakiaNamespaced.lean/declarations/coe-comp-continuousorderhom.md) | 288 | `result-track:9de2e6319f453af0a231405d67a716769d1f9c6c2b8411d131633eb184d86099` |
| 49 | `theorem` | [coe_comp_pseudoEpimorphism](../../../../GeneralTopology/EsakiaNamespaced.lean/declarations/coe-comp-pseudoepimorphism.md) | 292 | `result-track:94779a414839c9ae0ab8a7dddc240f1170142df464343d8fda1bc44a4fa48855` |
| 50 | `theorem` | [coe_comp](../../../../GeneralTopology/EsakiaNamespaced.lean/declarations/coe-comp.md) | 296 | `result-track:91e7ec010bd07610a4eecdbe5d7e5b690e6617dfe480d659a70af8549dfc83fe` |
| 51 | `theorem` | [comp_apply](../../../../GeneralTopology/EsakiaNamespaced.lean/declarations/comp-apply-source-edition-2.md) | 299 | `result-track:d1775c6dd03b5d42a302cfc83b2e2c06b9441f759e9acd85aeaed913b848b0e5` |
| 52 | `theorem` | [comp_assoc](../../../../GeneralTopology/EsakiaNamespaced.lean/declarations/comp-assoc.md) | 302 | `result-track:109e58842ba6ddc5a45d884bc06bdaa077f1ceb0f956de1076ccd1b69902e61c` |
| 53 | `theorem` | [comp_id](../../../../GeneralTopology/EsakiaNamespaced.lean/declarations/comp-id-source-edition-2.md) | 306 | `result-track:b3c0d68a3cc9cac1d28daf29bd6163605241e1bb382115439775e2c61a15079f` |
| 54 | `theorem` | [id_comp](../../../../GeneralTopology/EsakiaNamespaced.lean/declarations/id-comp-source-edition-2.md) | 310 | `result-track:2f7dc24331ab88b454899d2bef4b912a3cfa21333a772d0f58e02b171d2f4681` |
| 55 | `theorem` | [cancel_right](../../../../GeneralTopology/EsakiaNamespaced.lean/declarations/cancel-right.md) | 314 | `result-track:527279381e8a290a16546e85f398c2285a1b336ab7dcf4f821b2ed0f8bb63ae0` |
| 56 | `theorem` | [cancel_left](../../../../GeneralTopology/EsakiaNamespaced.lean/declarations/cancel-left.md) | 319 | `result-track:5103920c27714dc2018abb5906d525eb1d3268ad09bd913b6cb0dad4b98460a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cb5364a1e7ee9975c7cf428a33b9893b58a1007d2dc37ea6cfd43b7cdac75134 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Esakia/Variant586b8682bd12ead5a9eec626f59619f25ce4baca64bbb3e3578690389127e502.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Esakia/Variant586b8682bd12ead5a9eec626f59619f25ce4baca64bbb3e3578690389127e502.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
