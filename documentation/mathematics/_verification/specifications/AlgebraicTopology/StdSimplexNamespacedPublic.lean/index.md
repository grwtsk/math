# Verification target: Std Simplex Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "94b7115803732ead52de580990f069fb19683e51",
  "lexical_observation_count": 126,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/StdSimplex/Variant44e28e2810aaf85ea468c10097327bfdbef70d25796039736cac919a3606b27d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/index.md) · [Full source](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `94b7115803732ead52de580990f069fb19683e51`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/StdSimplex/Variant44e28e2810aaf85ea468c10097327bfdbef70d25796039736cac919a3606b27d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/StdSimplex/Variant44e28e2810aaf85ea468c10097327bfdbef70d25796039736cac919a3606b27d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Preorder.Finite` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [stdSimplex](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/stdsimplex.md) | 47 | `declaration-track:a9f469881447edc02dfe43576b84a705f8b2c2c099300af58f9eb72e8b509c48` |
| 2 | `instance` | [(anonymous)](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/instance-source-edition-12.md) | 52 | `declaration-track:f66ddd2d9c37237aabf09211ff70a35f0e81df55143b710bb713a65f4e0442b8` |
| 3 | `instance` | [(anonymous)](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 55 | `declaration-track:39301a00b34ef22ff60f98664fcb3e5cd67112f0fc2e3a33f3940aea5b45696e` |
| 4 | `abbrev` | [fullyFaithful](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/fullyfaithful.md) | 63 | `declaration-track:f271eb6f3c8880dcb0308687c042c823f01d1cd5e29246a1bdbe79506c947e92` |
| 5 | `instance` | [(anonymous)](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/instance-source-edition-11.md) | 66 | `declaration-track:e1e8e5d6ca18151c501366ca2cda4ef7ec756195083da2d0d80b55bae554a403` |
| 6 | `instance` | [(anonymous)](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 67 | `declaration-track:38a8b03fd5cb6474c14c903e3a761890825cab0cb5fba049154153d45b0975de` |
| 7 | `lemma` | [map_id](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/map-id.md) | 70 | `result-track:e13fef57aeb83bac915629f49802ef8638a44c41f29ec6fa9309803b5504eb1d` |
| 8 | `def` | [objEquiv](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/objequiv.md) | 75 | `declaration-track:391d17827737b781e3b907eb04a77a1ddd64dba36b5c9b312992a20d71c30732` |
| 9 | `instance` | [(anonymous)](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 79 | `declaration-track:d9b2ac967c60ab859cc388ec29816b555eb837e05833f6db68f1a0286c94dcf1` |
| 10 | `instance` | [(anonymous)](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 85 | `declaration-track:53a90637992dacc53e74f07e043dddd104120628942c9bc7a385db170dd409b9` |
| 11 | `lemma` | [monotone_apply](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/monotone-apply.md) | 89 | `result-track:9995be264db76b3004cb76ac10ced6d060593bd1e17bbd17b0b20a1bfc1f7690` |
| 12 | `lemma` | [ext](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/ext.md) | 94 | `result-track:9534675b9e852100199120bcaf91391c3a30e100083396981f7d7ba4eb64855d` |
| 13 | `lemma` | [objEquiv_toOrderHom_apply](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/objequiv-toorderhom-apply.md) | 98 | `result-track:1a6d790591f39ba6e1595c4a08c45366e0c9d88000453b980e1bb925f80e153a` |
| 14 | `lemma` | [objEquiv_symm_comp](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/objequiv-symm-comp.md) | 105 | `result-track:c13b546869140f71517366db678b120432bd0cc2d69cbad3d1572b7ba2f67e35` |
| 15 | `lemma` | [map_objEquiv_symm](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/map-objequiv-symm.md) | 110 | `result-track:1e2a097c2b0ab05834e8b583de47b4338d7f99f9c915dd105d7c5d3826272173` |
| 16 | `lemma` | [objEquiv_symm_apply](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/objequiv-symm-apply-source-edition-2.md) | 117 | `result-track:674807dae0eba32b6bb1a77df9391f63813291b5e8f92bcb6cf9699c8128aedb` |
| 17 | `lemma` | [δ_objEquiv_symm_apply](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/objequiv-symm-apply.md) | 121 | `result-track:430ca2c375b24443ff1b6695ed865dcbe156b522672154381318f6bca4cb5f65` |
| 18 | `lemma` | [σ_objEquiv_symm_apply](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/objequiv-symm-apply-source-edition-3.md) | 127 | `result-track:89d40e3aa2c6fed33b8559d1d5dd638d9388b5bf1788edeccacd7f74d6639083` |
| 19 | `abbrev` | [objMk](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/objmk.md) | 133 | `declaration-track:90165aa12d795bc3799d68705e6ea9686ef19437171bdd4f631bf8b5e4ddc0c4` |
| 20 | `lemma` | [objMk_apply](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/objmk-apply.md) | 139 | `result-track:49523477f6154b4e7af13d12c76ca83945346976c27e151f48361b3e87b2558d` |
| 21 | `lemma` | [objMk_bijective](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/objmk-bijective.md) | 143 | `result-track:812a944a3f1e8304f9b2393ee41a762b3af3f9aff0212fff2547708cad17c5b3` |
| 22 | `def` | [asOrderHom](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/asorderhom.md) | 149 | `declaration-track:4902c3dc1868852fd4eb331dbedb62485ca4d5e22613978b06dc03e88ca2ff22` |
| 23 | `lemma` | [map_apply](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/map-apply.md) | 152 | `result-track:a40924bc215234a5d9cd10e5227dfffbc56ed001b82216f93edb2eeebdfea7cc` |
| 24 | `lemma` | [coe_asOrderHom_objEquiv_symm](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/coe-asorderhom-objequiv-symm.md) | 158 | `result-track:94692be66a0ce8540afe44b23c7d8772cf7b2ff2225cb5ce32ce4ccf62ec6415` |
| 25 | `def` | [yonedaEquiv](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/yonedaequiv.md) | 164 | `declaration-track:dc0ce9eb3c09faf0046c86a1837ca0ca557d09d7eb65bf38aa90d94c41d98b6f` |
| 26 | `instance` | [(anonymous)](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 168 | `declaration-track:5610cd66879a319fdccb29d2c6701f5e1213802e63dc1943fbae769469de2227` |
| 27 | `lemma` | [Std Simplex Namespaced Public](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-orderandlatticetheory-st-source-edition-3.md) | 172 | `result-track:91bf02f3953edc412d26dc20b6174188a1a3ea5930c02ae212e3f089454b7dc9` |
| 28 | `lemma` | [Std Simplex Namespaced Public](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-orderandlatticetheory-st-source-edition-2.md) | 178 | `result-track:62760b4409a20f1c1d3eb6f8be16ac7ad5adb32d892fb6692ff9221ccce78dc3` |
| 29 | `lemma` | [Std Simplex Namespaced Public](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-orderandlatticetheory-st.md) | 183 | `result-track:2274828d79e05e37b9fd5bb4b4f583e04a1f05064a3dbb2f8f43db2d54f5845e` |
| 30 | `lemma` | [yonedaEquiv_map](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/yonedaequiv-map.md) | 188 | `result-track:2bc66c92271993675c90c86b0f52d252200c7f528c7575495c77bac9f1b4c4ef` |
| 31 | `lemma` | [yonedaEquiv_symm_app](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/yonedaequiv-symm-app.md) | 195 | `result-track:a79367b8b9aa9a98d5ed511f4c77c032385eaaa12f9164a47106e38d7818378b` |
| 32 | `lemma` | [yonedaEquiv_symm_stdSimplex_id](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/yonedaequiv-symm-stdsimplex-id.md) | 200 | `result-track:879c14afb4866cd40f6aebaa4eb995c22be5e06bb5f6449ebce7e6addac9eed8` |
| 33 | `lemma` | [yonedaEquiv_symm_app_objEquiv_symm](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/yonedaequiv-symm-app-objequiv-symm.md) | 207 | `result-track:853de9e215b8ed04ceae93a434050e5ea0027961b318242030eed6a1e07db04e` |
| 34 | `lemma` | [opObjEquiv_yonedaEquiv_const](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/opobjequiv-yonedaequiv-const.md) | 213 | `result-track:685387ef1b0549e948220663bc40cf58c0535e027f6ad2e198b72881f7d77966` |
| 35 | `lemma` | [opObjEquiv_symm_yonedaEquiv_const](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/opobjequiv-symm-yonedaequiv-const.md) | 217 | `result-track:b75364a37a4c056ff6c166d29f299088554bc3c2046696b7170925abe5b76f9f` |
| 36 | `lemma` | [δ_apply](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/apply.md) | 223 | `result-track:c132f4a47f73f9a77185e5613b3c8fbf689870667d0653ca6ced2f7746119825` |
| 37 | `lemma` | [σ_apply](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/apply-source-edition-2.md) | 226 | `result-track:fe56036b49769b9bea8bff980f047e2c72c9b64b20efddb606d6d239e405a285` |
| 38 | `lemma` | [objEquiv_yonedaEquiv_id](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/objequiv-yonedaequiv-id.md) | 230 | `result-track:5b64ed3f0561c5ed74837ce2b9622aa488cb176eb4e1d965dad5783c3a53a49d` |
| 39 | `lemma` | [map_objEquiv_op_apply](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/map-objequiv-op-apply.md) | 233 | `result-track:a1eec1d8fac197d3aaf64db315a3155b8491c177fe83d1191597fd55e60f4224` |
| 40 | `def` | [const](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/const.md) | 240 | `declaration-track:dbf8a9d210a3951a78de035d8aec8d9e733710a771bbd3e66f3587fb6c1a5721` |
| 41 | `lemma` | [const_down_toOrderHom](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/const-down-toorderhom.md) | 244 | `result-track:62a3447d7cfe7da5cbfaaebb22800d970b15bb8697c9f7fd21efaadd384362c2` |
| 42 | `def` | [obj₀Equiv](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/obj-equiv.md) | 250 | `declaration-track:d41ff5aca8003dba2bef1637587a8a026ad111fe3e472079aba107ef5efb942d` |
| 43 | `lemma` | [δ_one_eq_const](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/one-eq-const.md) | 255 | `result-track:11aac58bae7bf69556f0ded5710a79d5d55c28d5fa18634218da572d479d5e03` |
| 44 | `lemma` | [δ_zero_eq_const](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/zero-eq-const.md) | 258 | `result-track:94d7689a6ceabb411033c42a9d8ef3f3eb1028353f8c68e31bf23f0ad4bdf1bc` |
| 45 | `def` | [edge](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/edge.md) | 262 | `declaration-track:09bf5517b5f92da228085f7a379bd404e5bcf0eae56be9c51c2091949d69bd23` |
| 46 | `lemma` | [coe_edge_down_toOrderHom](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/coe-edge-down-toorderhom.md) | 268 | `result-track:5788bcb84e2ffbb9f439f6abd49d980004218a64b1140ca6f20ef07b4263ee17` |
| 47 | `def` | [triangle](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/triangle.md) | 273 | `declaration-track:c30b5ed1415839798730929e1c4fcbf3b77bc02d155c010272ecb89613bb75e0` |
| 48 | `lemma` | [coe_triangle_down_toOrderHom](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/coe-triangle-down-toorderhom.md) | 280 | `result-track:8595c4f492c0752b40132cc210fde94c0c66fd276f2f699c7aa66832c148dd80` |
| 49 | `def` | [face](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/face.md) | 289 | `declaration-track:a1d8ae1e2b60d6e4c2d72e6831aead37b2c9f1f10923828f3110a86af859904a` |
| 50 | `lemma` | [mem_face_iff](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/mem-face-iff.md) | 296 | `result-track:c3d2663f3c5ab51d69a267afa51c4b1d8b33c5f524804e4178df76c74d480f62` |
| 51 | `lemma` | [face_inter_face](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/face-inter-face.md) | 300 | `result-track:36c89591ed00c62adfd0801753c54192df53721deae5ee3a60866e21040ac3b8` |
| 52 | `lemma` | [face_empty](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/face-empty.md) | 305 | `result-track:20145ca25fe98069eff81f36936a850e76dc90ddb9100cc032dfbd7a6d291162` |
| 53 | `lemma` | [face_univ](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/face-univ.md) | 311 | `result-track:166ceabd211acda915523416aa1524efe11d856e19618bfb2ffa5db917855f69` |
| 54 | `lemma` | [yonedaEquiv_comp](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/yonedaequiv-comp.md) | 319 | `result-track:2ef80eb47559c0e578fa9e4ff1d8802a67c61d0236799d0f3895dea2f66a2727` |
| 55 | `lemma` | [yonedaEquiv_symm_app_id](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/yonedaequiv-symm-app-id.md) | 324 | `result-track:fc54d3d11a41b980482d03b19bc2bbc8c6f42eecbf19121aa3f36be77332fa5b` |
| 56 | `lemma` | [yonedaEquiv_naturality](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/yonedaequiv-naturality.md) | 328 | `result-track:72323446e580f73223daba1b6c0805ff4363a03e883bca49ac96e14ef47e1dbe` |
| 57 | `lemma` | [yonedaEquiv_symm_naturality_left](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/yonedaequiv-symm-naturality-left.md) | 334 | `result-track:41cf5b960b413f9b2b2081b501fab742c43c77f848482eb1a992c3b666265758` |
| 58 | `lemma` | [stdSimplex.δ_comp_yonedaEquiv_symm](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/stdsimplex-comp-yonedaequiv-symm-source-edition-2.md) | 339 | `result-track:bc57c7f14bbdf15cfee0d290e1578644866b56720679b7ec9ffabff258bc00c2` |
| 59 | `lemma` | [stdSimplex.σ_comp_yonedaEquiv_symm](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/stdsimplex-comp-yonedaequiv-symm.md) | 344 | `result-track:6ac19d4f94817a3172330fb2e2597e92a7a58736d3c978b3f2607d6e9df0d29f` |
| 60 | `lemma` | [stdSimplex.yonedaEquiv_δ_comp](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/stdsimplex-yonedaequiv-comp-source-edition-2.md) | 349 | `result-track:d72e0a0fbd8cc76e5762bbd2cc2105f9e1316dfd8306a38fbc2ee80eee677acd` |
| 61 | `lemma` | [stdSimplex.yonedaEquiv_σ_comp](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/stdsimplex-yonedaequiv-comp.md) | 354 | `result-track:115a0767ff09acf1473942e771d2d7cad8f3991e07d83c5013834b72ecdd1e36` |
| 62 | `lemma` | [range_eq_ofSimplex](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/range-eq-ofsimplex.md) | 363 | `result-track:cd2e2182260114dbc9c5f9e50fe09d29c5397d3b84e968c5bdf629e8e33aee16` |
| 63 | `lemma` | [yonedaEquiv_coe](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/yonedaequiv-coe.md) | 367 | `result-track:702b655abc4060afb2e0ab745104c59bbd75795f631e1bfcd854a24fb0556a18` |
| 64 | `lemma` | [obj₀Equiv_symm_mem_face_iff](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/obj-equiv-symm-mem-face-iff.md) | 376 | `result-track:2a131e82bde69bfe45f795749834258ff81c5d4c5e9f69e8ce4f178b5e80c938` |
| 65 | `lemma` | [face_le_face_iff](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/face-le-face-iff.md) | 381 | `result-track:eb4d2e7d304176a9f1f0f83be7b42614c4fa828ecb802caa275ed7f064822286` |
| 66 | `lemma` | [face_eq_ofSimplex](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/face-eq-ofsimplex.md) | 387 | `result-track:b87d0a234bb23e9fa1f1b467c1083d8bd7cfe9bc5307a7d298597d28fd9f6f84` |
| 67 | `def` | [faceRepresentableBy](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/facerepresentableby.md) | 409 | `declaration-track:93a3780ca21aa05789fb05e40735ba037587b0ca286c9cc9345317c1e511506f` |
| 68 | `def` | [isoOfRepresentableBy](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/isoofrepresentableby.md) | 433 | `declaration-track:580e1016e5892aa4f966b2ccedd592817718fd1cf769382e3b61e698905bf3e7` |
| 69 | `lemma` | [ofSimplex_yonedaEquiv_δ](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/ofsimplex-yonedaequiv.md) | 438 | `result-track:3c08c2b771d422df8c26c5b470ea40f9daf1d2dae11af5e29e40b4cc12af4a15` |
| 70 | `lemma` | [range_δ](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/range.md) | 443 | `result-track:a6cb1efe10c9c08eae086cfee5da814760d9cc6808ba6bded039a4d58f2ebc05` |
| 71 | `def` | [isoNerve](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/isonerve.md) | 451 | `declaration-track:f926c580a09d1149a5095fbca09cc3fdca23aa2bf51d8de0d115fa1e06362fe6` |
| 72 | `lemma` | [isoNerve_hom_app_apply](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/isonerve-hom-app-apply.md) | 461 | `result-track:bfee9f447d5e5383721feff16580ca87bb91cd3e7e4a903861e4c6ab10cf0879` |
| 73 | `lemma` | [isoNerve_inv_app_apply](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/isonerve-inv-app-apply.md) | 466 | `result-track:9f5e3030429efeb150093fc5264cf075cbbb36c5f72a47bf4110c69b8a86bc24` |
| 74 | `lemma` | [mem_nonDegenerate_iff_strictMono](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/mem-nondegenerate-iff-strictmono.md) | 470 | `result-track:901ed8167ddc7534b2bc140f458f92419a2ebcc3e30afa197cbcc87d3da9d1df` |
| 75 | `lemma` | [mem_nonDegenerate_iff_mono](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/mem-nondegenerate-iff-mono.md) | 476 | `result-track:3ed04bcf023a448fede5f97b9632d8e8a41f61bca7e260ef6b429d0e2f6e6e14` |
| 76 | `lemma` | [objEquiv_symm_mem_nonDegenerate_iff_mono](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/objequiv-symm-mem-nondegenerate-iff-mono.md) | 487 | `result-track:9bf74c34e7a0b095d67006c28519399c2a7d5016283e41dcd335c2a6d6d1b27f` |
| 77 | `def` | [nonDegenerateEquiv](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/nondegenerateequiv.md) | 494 | `declaration-track:6ad67c8ec0809c7038432956a92dbdb7872ddf6daa8994176fdf326b07ca8c9a` |
| 78 | `instance` | [(anonymous)](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 501 | `declaration-track:5034312f6c56a0a58b1f9c85afc688f7d1d30aea371de37a6b80124ab194d4f2` |
| 79 | `def` | [finSuccAboveOrderIsoFinset](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/finsuccaboveorderisofinset.md) | 513 | `declaration-track:a15af8d6c2ea99470909833da4e056616be12fa299176468238ce16e68383ba4` |
| 80 | `lemma` | [face_singleton_compl](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/face-singleton-compl.md) | 520 | `result-track:ea8b7486fa23577441c028d9a59e5d5cb17f37f84c55c63b298d1a2d7d8922ef` |
| 81 | `def` | [faceSingletonComplIso](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/facesingletoncompliso.md) | 527 | `declaration-track:cb3ef347f452b3d4e2c0e084974a212129b43e09dc4a2c1296df1c3b6af44e41` |
| 82 | `lemma` | [faceSingletonComplIso_hom_ι](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/facesingletoncompliso-hom.md) | 532 | `result-track:f88f9fd4594e1863387f65e6569c32307c1b85c098c28590f047f0de3669fceb` |
| 83 | `def` | [finOrderIsoPairCompl](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/finorderisopaircompl.md) | 538 | `declaration-track:f8af7a0b353818d9bc7cd1fe607b12f2e56bd41f2b0a1aaa74928ef0c54f5eff` |
| 84 | `lemma` | [finOrderIsoPairCompl_apply_val](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/finorderisopaircompl-apply-val.md) | 556 | `result-track:13ff0230521e06c35a58d7f531dc35b6807d4e83c17f8556f875bb59b49defef` |
| 85 | `def` | [facePairComplIso](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/facepaircompliso.md) | 562 | `declaration-track:6a472c5b125e910ea0aa7da48b604831109072d276e2d246ffc2802d55debd96` |
| 86 | `lemma` | [facePairComplIso_hom_ι](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/facepaircompliso-hom.md) | 567 | `result-track:a27a76104d34dcce11d9ef8da28be0b43dfcb88784384430b36d349324fa1b71` |
| 87 | `lemma` | [facePairComplIso_hom_ι'](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/facepaircompliso-hom-source-edition-2.md) | 573 | `result-track:caf9964336464e76ced31b94f8b368c7d428d50b85a9f227040eb25316aa286c` |
| 88 | `lemma` | [homOfLE_faceSingletonComplIso_inv_eq_facePairComplIso_inv_δ_pred](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/homofle-facesingletoncompliso-inv-eq-facepaircompliso-inv-pred.md) | 583 | `result-track:a350c05f57c8f7c2818cd13931faef849cd0c9d9fda4d0434f09fd16c0b0eef2` |
| 89 | `lemma` | [homOfLE_faceSingletonComplIso_inv_eq_facePairComplIso_inv_δ_castPred](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/homofle-facesingletoncompliso-inv-eq-facepaircompliso-inv-castpred.md) | 593 | `result-track:e4428cdd6402548574d4bf55fc9bbbd18ce62142a819566f4926b6aa41f4bb24` |
| 90 | `def` | [faceSingletonIso](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/facesingletoniso.md) | 604 | `declaration-track:88ff74b4b6ea6ff4df724d9c6631c196b011cda12bba3efceed743cce8e7cf4e` |
| 91 | `lemma` | [faceSingletonIso_zero_hom_comp_ι_eq_δ](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/facesingletoniso-zero-hom-comp-eq.md) | 610 | `result-track:be5ec9198d78cf8c00a78ec983d151c225c21129f13c78daf21cb77b18c90e32` |
| 92 | `lemma` | [faceSingletonIso_one_hom_comp_ι_eq_δ](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/facesingletoniso-one-hom-comp-eq.md) | 615 | `result-track:c8673565c577cfc0ff6ded307d5e83f032dafe90cd654cd68e2e94902bb00d27` |
| 93 | `def` | [facePairIso](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/facepairiso.md) | 622 | `declaration-track:74e647eaaee47038088703ac720e06805005d6d054c14d10e4c9253627ec65e6` |
| 94 | `lemma` | [bijective_image_objEquiv_toOrderHom_univ](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/bijective-image-objequiv-toorderhom-univ.md) | 629 | `result-track:3a9087b3a7cff9d6c700788e5ca7fc152362f5353181e93548bae06e963f4785` |
| 95 | `def` | [nonDegenerateEquiv'](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/nondegenerateequiv-source-edition-2.md) | 659 | `declaration-track:e56d78cf11a21f89b72cbc945a1393ba24b6753b38123771075b9e58b4cc87f4` |
| 96 | `lemma` | [nonDegenerateEquiv'_iff](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/nondegenerateequiv-iff.md) | 663 | `result-track:7bc524d7e952e18a8e72eeef394fd9b1b6cbd4486d259f48cedc005b9edde5c9` |
| 97 | `def` | [orderIsoOfNonDegenerate](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/orderisoofnondegenerate.md) | 672 | `declaration-track:b0247c04dc367a72fc792832eb01b6e75267d177c6a686255d0db2aeddf61213` |
| 98 | `lemma` | [face_nonDegenerateEquiv'](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/face-nondegenerateequiv.md) | 699 | `result-track:ceeb3f2b80b1625cc144bcc1f0f88ecd8ab5fad505dcfb6ab39c16c4e64e19e7` |
| 99 | `lemma` | [nonDegenerateEquiv'_symm_apply_mem](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/nondegenerateequiv-symm-apply-mem.md) | 704 | `result-track:32fcaeb5ec146f372fdd2c1850dffefcb3711698be32979f8688dd49787c1d1c` |
| 100 | `lemma` | [nonDegenerateEquiv'_symm_mem_iff_face_le](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/nondegenerateequiv-symm-mem-iff-face-le.md) | 712 | `result-track:a167245c3d0688be5a89bb190658526c744707079379a6a6788689e7701e88d2` |
| 101 | `instance` | [(anonymous)](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/instance.md) | 719 | `declaration-track:23b128ad20109cadc954a087512df9028f8e9fb61c529da586fff118d1a4728b` |
| 102 | `instance` | [(anonymous)](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 724 | `declaration-track:9cd0e7a9f2d4a45d49bb051ff13a5f682cafcea30e65107838f54de6c089f61e` |
| 103 | `instance` | [(anonymous)](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 728 | `declaration-track:89a2a392e2b78900e88106443a8d04814b23b67de6878775dbc7ac654cd85726` |
| 104 | `lemma` | [hasDimensionLT_face](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/hasdimensionlt-face.md) | 734 | `result-track:de8460b56fefce3ec7ce061f5b96191d4bbef44ea807dc3a1a6717f2e3200354` |
| 105 | `lemma` | [ofSimplex_objEquiv_symm_id](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/ofsimplex-objequiv-symm-id.md) | 746 | `result-track:27e75d479efd616c4784b886903f751977cc59048e86c3cdcac0a3a9fa68593b` |
| 106 | `lemma` | [objEquiv_symm_id_mem_nonDegenerate](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/objequiv-symm-id-mem-nondegenerate.md) | 753 | `result-track:767473665946e845633d886aa83192eac7c4f8e10abdbf8ac49679c6fea56b01` |
| 107 | `lemma` | [nonDegenerate_top_dim](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/nondegenerate-top-dim.md) | 758 | `result-track:700abe853c87d88fe0f05893e66c22416f0d2e7984fc6fc3dd01fd5b3f817f1a` |
| 108 | `lemma` | [not_hasDimensionLT](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/not-hasdimensionlt.md) | 769 | `result-track:df99cbd9c4d2771318d085ce037ab5cba3c17983a980b25632158a6d3e5332a4` |
| 109 | `def` | [opObjEquiv](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/opobjequiv.md) | 776 | `declaration-track:7cb3cbf394cfb5e4d5e2714d242a7a35f8af1c0c285718d9e120114b08eba7e3` |
| 110 | `lemma` | [opObjEquiv_apply](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/opobjequiv-apply.md) | 781 | `result-track:7298e3d44738964c47c6219e71922e812805c8ce222a452a60c3b75ff1c625f0` |
| 111 | `lemma` | [opObjEquiv_opObjEquiv_symm_apply](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/opobjequiv-opobjequiv-symm-apply.md) | 784 | `result-track:a438d5c2574cf55b11354c05b1f0762bb6cc192982530be9a1197230efa8eb6c` |
| 112 | `lemma` | [map_rev_map_op_apply](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/map-rev-map-op-apply.md) | 789 | `result-track:884c6010ee9e279a47336e26f214c906d20527082fb3c135dad4808ae84e19fc` |
| 113 | `def` | [opIso](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/opiso.md) | 796 | `declaration-track:ff06e4578e9ba2fa589c7d543fd24757faec854a21d35c1d4eddc3c35a5ad0c2` |
| 114 | `lemma` | [mem_ofSimplex_obj_iff](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/mem-ofsimplex-obj-iff.md) | 808 | `result-track:1122ee20ec98526a9ace14d511d442fe99e57462ac8344d245dac19d779260ee` |
| 115 | `def` | [S1](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/s1.md) | 824 | `declaration-track:8a225a2516968efad0c745d1450f0c168c69b1836e9ff369dbfcdc9f6e8fc367` |
| 116 | `def` | [stdSimplex](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/stdsimplex-source-edition-2.md) | 836 | `declaration-track:e5381af6d118ecd3a9e3c477b7b0416b14ff00ec704ee2d87d9af64d6ae94ff5` |
| 117 | `def` | [toOfSimplex](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/toofsimplex.md) | 853 | `declaration-track:a4253c13e9cf018db53d3b6ab2e96d2482e4aba3783dbce88ff828cd31eda201` |
| 118 | `lemma` | [toOfSimplex_ι](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/toofsimplex-source-edition-2.md) | 857 | `result-track:dcd5d1af6a29494637e584da0bfccbadba1f80ae6432fece3deca308bfe89960` |
| 119 | `lemma` | [yonedaEquiv_toOfSimplex](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/yonedaequiv-toofsimplex.md) | 860 | `result-track:59b4205157a3fb333d8a89b2aa576caa7e0337d09e8fc5edba959b2150acf8a7` |
| 120 | `instance` | [(anonymous)](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 866 | `declaration-track:8c97928c78d6547216ce3889da9ac7c6e97e09bd3a26120f680cba21a4e73528` |
| 121 | `lemma` | [isIso_toOfSimplex_iff](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/isiso-toofsimplex-iff.md) | 874 | `result-track:9ec733de8001ac60a35b3df2969fc91b097d70d14ff193c355c32e1bcf61daef` |
| 122 | `lemma` | [δ_zero_yonedaEquiv_symm](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/zero-yonedaequiv-symm.md) | 891 | `result-track:107377fb8239087c8869ed20ec929be02532698550b56fdcc27787bb395ef5ac` |
| 123 | `lemma` | [δ_one_yonedaEquiv_symm](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/one-yonedaequiv-symm.md) | 896 | `result-track:9474808e13e83f4143ea77ca333263f58b95fb7ca868771e18ee8a2e47f2b941` |
| 124 | `lemma` | [δ_zero_yonedaEquiv_symm](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/zero-yonedaequiv-symm-source-edition-2.md) | 906 | `result-track:85b7631ce813f03e1ed45bae51c2941c2088515fdfb1f44cdb4b237a53d3606a` |
| 125 | `lemma` | [δ_one_yonedaEquiv_symm](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/one-yonedaequiv-symm-source-edition-2.md) | 911 | `result-track:da145c144b8322287e4f47a1a3f8aba2d5057d33f151f160a8db21aea73e0ef8` |
| 126 | `lemma` | [δ_two_yonedaEquiv_symm](../../../../AlgebraicTopology/StdSimplexNamespacedPublic.lean/declarations/two-yonedaequiv-symm.md) | 916 | `result-track:e31a50b15daabcd355bd533ec53afc18b64d1fbdcc1107330ed8c7219719f383` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1e42bed381b51d1322a301d18cf0cffed6aba184dd26c74ce1bd8cfdea2dd6e7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/StdSimplex/Variant44e28e2810aaf85ea468c10097327bfdbef70d25796039736cac919a3606b27d.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/StdSimplex/Variant44e28e2810aaf85ea468c10097327bfdbef70d25796039736cac919a3606b27d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
