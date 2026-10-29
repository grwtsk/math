# Verification target: Tensor Product Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17f075855009ed0bf9e9d2410af4603666bebdf1",
  "lexical_observation_count": 188,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/TensorProduct/Variant07fa84ab8f9831406977aeb3b0dc0946731b97d47b5c468e4ff693fe69d69539.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17f075855009ed0bf9e9d2410af4603666bebdf1`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/TensorProduct/Variant07fa84ab8f9831406977aeb3b0dc0946731b97d47b5c468e4ff693fe69d69539.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/TensorProduct/Variant07fa84ab8f9831406977aeb3b0dc0946731b97d47b5c468e4ff693fe69d69539.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.GramMatrix` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Positive` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Star.Real` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instInner](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/instinner.md) | 70 | `declaration-track:72baa244c107e66bbff26209e22ed4ebc13757b18d031df02e48ab9fe6f6db76` |
| 2 | `lemma` | [inner_def](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/inner-def.md) | 73 | `result-track:2977eee82fec428e33b0163bff8e0d23bd2fa8fff883de103e4867f7481899bb` |
| 3 | `theorem` | [inner_tmul](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/inner-tmul.md) | 78 | `result-track:552eaecc968032ba68dd8b98c10546dfaede776f45525333240a0f00cbc93672` |
| 4 | `lemma` | [inner_map_map](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/inner-map-map.md) | 81 | `result-track:ad9b4a97e2dbffc7c095dc1a315ad78dca4e51c8a883bc5cd7701e097a98c6ec` |
| 5 | `lemma` | [inner_mapIncl_mapIncl](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/inner-mapincl-mapincl.md) | 86 | `result-track:313be4376d06cb4dae9fd3babc3a6764dcb0e33c6619df968a3d3cba0d1687c3` |
| 6 | `theorem` | [inner_self](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/inner-self.md) | 95 | `result-track:8e031b37af9c166b4dfe3b7f594e27de47f0d9d3ffda009a205255ac445da89b` |
| 7 | `theorem` | [inner_definite](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/inner-definite.md) | 107 | `result-track:0e228a09f1252612fa153af5b37a2d6424394068d3a9bfe97be9d5a6402e15e5` |
| 8 | `theorem` | [re_inner_self_nonneg](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/re-inner-self-nonneg.md) | 126 | `result-track:492c222cf7b6e2a5cc806cf8a17cec9662f280b9ce49259a6ac2f9c6c828ba33` |
| 9 | `instance` | [instNormedAddCommGroup](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/instnormedaddcommgroup.md) | 142 | `declaration-track:18cb987f172e85101b7a6b28b60efbf5a3da127c61fb72e718392585ec7b45b3` |
| 10 | `instance` | [instInnerProductSpace](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/instinnerproductspace.md) | 153 | `declaration-track:f8ab2468fd6689844cce9670d8a7417d3506166e58e7570beba8dfc2c23e3f1a` |
| 11 | `theorem` | [norm_tmul](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/norm-tmul.md) | 155 | `result-track:842a0cc13e240c5f3f76e94047ccea9940f24d354454c6285dcd5686d84fc31c` |
| 12 | `theorem` | [nnnorm_tmul](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/nnnorm-tmul.md) | 159 | `result-track:c5ebff2fc78dd7e576b35178b81c551af808f8abfaf302ff0a5e42f69b118643` |
| 13 | `theorem` | [enorm_tmul](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/enorm-tmul.md) | 162 | `result-track:206fe0a57828c9a03c73a1781c1d0508cf2436331baa31a5e34d4ea2810f063b` |
| 14 | `theorem` | [dist_tmul_le](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/dist-tmul-le.md) | 165 | `result-track:2da2294a8b3e4f81c53465e21bba2e3a0761da994a106d82dd9f4820f0210fd1` |
| 15 | `theorem` | [nndist_tmul_le](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/nndist-tmul-le.md) | 169 | `result-track:dee940f0be5c140dc82a508ed40a69193a8b58f4af3ffd7843a6903f7a6d1de8` |
| 16 | `theorem` | [edist_tmul_le](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/edist-tmul-le.md) | 173 | `result-track:c9b18ebb299dd4e7438223813e24de8f72b25800e05d757fb7b31d364db45e7f` |
| 17 | `theorem` | [Tensor Product Namespaced Public](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/inner-tmul-eq.md) | 179 | `result-track:f0353a14ff9972a27180ba8af8309b04b3e55913deda877584cf43f11d115d7f` |
| 18 | `theorem` | [ext_iff_inner_right](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/ext-iff-inner-right.md) | 184 | `result-track:48a8dfe2c48463175160418290e18cda82f48f8f9f98cde30a9c631170586fee` |
| 19 | `theorem` | [ext_iff_inner_left](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/ext-iff-inner-left.md) | 189 | `result-track:1cf3cc52be15faf3580b641768e50b0d8362f8483a6edaa759ee2cde129a6f24` |
| 20 | `theorem` | [ext_iff_inner_right_threefold](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/ext-iff-inner-right-threefold.md) | 197 | `result-track:2580b02122d1afca41057a25ff28850dd9476d62b10c6825c93bebf36b985630` |
| 21 | `theorem` | [ext_iff_inner_left_threefold](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/ext-iff-inner-left-threefold.md) | 204 | `result-track:42471f3c8e0418cb45be0addd8e9460823b96533533fc2661c545901c57201d3` |
| 22 | `def` | [mkL](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/mkl.md) | 212 | `declaration-track:e4ee3defe1804dee9bab30bd8764e908f01c716437c29533d9fc9378a821d899` |
| 23 | `lemma` | [coe_mkL_apply](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/coe-mkl-apply.md) | 214 | `result-track:5449b3479888b6e755ae0761c00356896f9fd062c4da889b22879b0f25375d63` |
| 24 | `lemma` | [toLinearMap₁₂_mkL](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/tolinearmap-mkl.md) | 215 | `result-track:91a81e4be70b6b05dc914cfc30bae186d4491780b54948eb401655a068e76cec` |
| 25 | `lemma` | [toLinearMap_mkL_apply](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/tolinearmap-mkl-apply.md) | 216 | `result-track:7b665ccc0c8f4157b04f7fec9e10584ff693b459ea686f0fa9bc015acba40c3a` |
| 26 | `lemma` | [mkL_apply_apply](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/mkl-apply-apply.md) | 217 | `result-track:ee54b6d0d419f5dd8b5e7556054ed0c8d19f5f52f02c37a847f6d0492492191d` |
| 27 | `lemma` | [continuous_tmul](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/continuous-tmul.md) | 219 | `result-track:e8d48a2c85cd366a9022395721821e432cc7f0a89d25c89c66e77a49f146dec5` |
| 28 | `def` | [mapIsometry](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/mapisometry.md) | 226 | `declaration-track:b52b3a2d86dcc8222f5a1714066404c70f0924bb26509756ac13409c9139f514` |
| 29 | `lemma` | [mapIsometry_apply](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/mapisometry-apply.md) | 230 | `result-track:05065f28096bfba14cedca44d4d843841c2a7759bf244e02d2ec00701b241b84` |
| 30 | `lemma` | [toLinearMap_mapIsometry](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/tolinearmap-mapisometry.md) | 233 | `result-track:116ee1f4cf64a99c042241cf1e4fe2f2679708362ce9d39576fed9a958999e35` |
| 31 | `lemma` | [norm_map](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/norm-map.md) | 236 | `result-track:f778cb0436482db6b4a51c81879a144239a4a23d87eb1c5a1553b80df9f61893` |
| 32 | `lemma` | [nnnorm_map](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/nnnorm-map.md) | 238 | `result-track:ef460a595a92d661d011f145a360c6193e0bc55005563747f4ddcd1ddf53c0e2` |
| 33 | `lemma` | [enorm_map](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/enorm-map.md) | 240 | `result-track:10da202c3f0a032091a7ab01b90e20a8a5c0974f0e9b3c097c64bc287a4421ef` |
| 34 | `lemma` | [mapIsometry_id_id](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/mapisometry-id-id.md) | 243 | `result-track:06f854915763d60ecb1bbb12738bc04962ba7b9be0c5692025ac25ac652f5d20` |
| 35 | `def` | [Tensor Product Namespaced Public](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/ltensor-source-line-248-occurrence-2.md) | 248 | `declaration-track:7404dcb55e09c27d62756b5ecb5b25eb1ded397537ac3889d6383c2496d40369` |
| 36 | `def` | [Tensor Product Namespaced Public](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/rtensor-source-line-253-occurrence-2.md) | 253 | `declaration-track:3a74c28c2f41741a53fdacdc878b4693d13c3dadb307b8253c6511e2568f2c7f` |
| 37 | `lemma` | [Tensor Product Namespaced Public](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/ltensor-def.md) | 256 | `result-track:16179956fdc49f5a46417b03a1776d8283c4fb413b34c1698359097a4ef07823` |
| 38 | `lemma` | [Tensor Product Namespaced Public](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/rtensor-def.md) | 259 | `result-track:d51454ff41b8fc1d34bd44f91db052602e499d5b0e6d7c55b4c7e8c412c11022` |
| 39 | `lemma` | [Tensor Product Namespaced Public](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/tolinearmap-ltensor-source-line-262-occurrence-2.md) | 262 | `result-track:326c21686b5a9378d134706b4b01db39ff38890369f2efdebbc5b11284667099` |
| 40 | `lemma` | [Tensor Product Namespaced Public](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/tolinearmap-rtensor-source-line-265-occurrence-2.md) | 265 | `result-track:8852a59f9e0def92f16d0b09ff2c85d2003137fc7fb667ec6916f845ea985647` |
| 41 | `lemma` | [Tensor Product Namespaced Public](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/ltensor-apply-source-line-268-occurrence-2.md) | 268 | `result-track:248204ea1d060a2fca21e8fd19232d5832da43d22bf024ec6d79a649883ce709` |
| 42 | `lemma` | [Tensor Product Namespaced Public](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/rtensor-apply-source-line-271-occurrence-2.md) | 271 | `result-track:e24f5b0c9743e90e1305acb03e5df35a37f64642d050a57206831a523ca810cf` |
| 43 | `def` | [congrIsometry](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/congrisometry.md) | 277 | `declaration-track:eb0e50fd47be33ef500b730783a94744f4db39f0095fdb202f1e2f206812b84f` |
| 44 | `lemma` | [congrIsometry_apply](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/congrisometry-apply.md) | 282 | `result-track:8afd8241295d75722de43c74fe7043480973b79f5af1c2de8146ef9e72731363` |
| 45 | `lemma` | [congrIsometry_symm](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/congrisometry-symm.md) | 285 | `result-track:d8dedf43458feafbadc8bfe0c2db0994e0ee439da0797cface599021c4a59641` |
| 46 | `lemma` | [toLinearEquiv_congrIsometry](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/tolinearequiv-congrisometry.md) | 288 | `result-track:d8add6ecb34479ddacdfb44a7be805fb721a50e16753d7a6be92244877aa88c1` |
| 47 | `lemma` | [congrIsometry_refl_refl](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/congrisometry-refl-refl.md) | 291 | `result-track:95cb2fe520e3f0002ea7c9560116bc33f969ee8c2904df59ee40f31fca874b2e` |
| 48 | `def` | [Tensor Product Namespaced Public](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/ltensor-source-line-297-occurrence-2.md) | 297 | `declaration-track:e6209b9cb37cb2172552aa61d48278fd9b8f8658fb44461234173cfad66f1713` |
| 49 | `def` | [Tensor Product Namespaced Public](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/rtensor-source-line-302-occurrence-2.md) | 302 | `declaration-track:8d0fbd4b8f2cb4eff41e96f052846d7c7bed6365aa92227fcd8f5c86f94d2241` |
| 50 | `lemma` | [Tensor Product Namespaced Public](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/ltensor-def-source-line-305-occurrence-2.md) | 305 | `result-track:db0e9aa8c72df8ebf8cc75e038867da52fbe1ab5c6248a9387d2b72f836ad8dc` |
| 51 | `lemma` | [Tensor Product Namespaced Public](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/rtensor-def-source-line-308-occurrence-2.md) | 308 | `result-track:ff3d29897b1e5470adcd7680532cc1f3c912d893f245913b365166add7c9d1d0` |
| 52 | `lemma` | [Tensor Product Namespaced Public](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/symm-ltensor.md) | 311 | `result-track:0cd84f144f5ad6dd13cedc566966510258a99e060c5403f7535f3d660bffa266` |
| 53 | `lemma` | [Tensor Product Namespaced Public](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/symm-rtensor.md) | 314 | `result-track:e43ba8ba34a12c1e02a13daf70c015dd463557e2e91690f93e7ed9a605881a50` |
| 54 | `lemma` | [Tensor Product Namespaced Public](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/tolinearequiv-ltensor.md) | 317 | `result-track:5baa3edb3f682d0675481e04490f09ee99490ebabb9eed5b6dfff7568beb9217` |
| 55 | `lemma` | [Tensor Product Namespaced Public](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/tolinearisometry-ltensor.md) | 320 | `result-track:a799fda6e884b295e4daca1687f9a3244bdfedab235dc8306ccada0fabc14e5a` |
| 56 | `lemma` | [Tensor Product Namespaced Public](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/tolinearequiv-rtensor.md) | 323 | `result-track:4b6255218fbea55a60de998290f57075a206adba3b3635c87221c131b404fee2` |
| 57 | `lemma` | [Tensor Product Namespaced Public](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/tolinearisometry-rtensor.md) | 326 | `result-track:56d8d0bbd4b5e2b91fe7353256443266a1a0adfa6056c6a0b3061cc7f906263d` |
| 58 | `lemma` | [Tensor Product Namespaced Public](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/ltensor-apply-source-line-329-occurrence-2.md) | 329 | `result-track:13a8b8a559500bc1bc5e1f0454bff20ae088a7359b2897d7451873665b95c67b` |
| 59 | `lemma` | [Tensor Product Namespaced Public](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/rtensor-apply-source-line-332-occurrence-2.md) | 332 | `result-track:01a638f4113426b4ad99925632b4cf934621f0873d70155333cac54ad2ffa7ef` |
| 60 | `def` | [mapInclIsometry](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/mapinclisometry.md) | 336 | `declaration-track:0842d8b24cbc0b9834973300c88b4914c3e61ff7e39d86eb96e758c980695e4d` |
| 61 | `lemma` | [mapInclIsometry_apply](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/mapinclisometry-apply.md) | 340 | `result-track:a0de46a2c3b716ef42a5b8e086783b89f37c93f69fd3b2b535ec978d52dd7725` |
| 62 | `lemma` | [toLinearMap_mapInclIsometry](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/tolinearmap-mapinclisometry.md) | 343 | `result-track:b5b121407b88843d2155ea83bc38861eaf6da349119612477428aaf280146cfe` |
| 63 | `theorem` | [inner_comm_comm](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/inner-comm-comm.md) | 346 | `result-track:c1ffe00e23b1949f48384bf548d35320704ee8f1c7b89823a3a5d87bd6082792` |
| 64 | `def` | [commIsometry](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/commisometry.md) | 355 | `declaration-track:4ee92e144f6e19391f18cb9802872b8526541c59b09d520862acf9a17d87bdc8` |
| 65 | `lemma` | [commIsometry_apply](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/commisometry-apply.md) | 358 | `result-track:ae97d86f4f3b7b658ad0f20ee9d0245b826f6e7d0975f29d5bb55127c5824379` |
| 66 | `lemma` | [commIsometry_symm](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/commisometry-symm.md) | 360 | `result-track:f0e676f41a8dc96612d34aca6fab45404d5269f9336f3450fc63abdd7dd5ee96` |
| 67 | `lemma` | [toLinearEquiv_commIsometry](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/tolinearequiv-commisometry.md) | 363 | `result-track:a7e3d70dbe4d58de870f37145fd3837c3350e665bc3fba389d9d6747e560a641` |
| 68 | `lemma` | [norm_comm](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/norm-comm.md) | 366 | `result-track:c86d724d6f728d4ba3f1c9e5831b17d64d7f2d94e459324dbdc4b73ed6609f05` |
| 69 | `lemma` | [nnnorm_comm](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/nnnorm-comm.md) | 368 | `result-track:01336992490091a8db154563a6f20220118328f50881a3a17995c5abe9e461f2` |
| 70 | `lemma` | [enorm_comm](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/enorm-comm.md) | 370 | `result-track:83bf4fa1f43a5d9776f61065ada7952d20e8383f0ceb0f48376a49065cd594e3` |
| 71 | `theorem` | [inner_lid_lid](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/inner-lid-lid.md) | 373 | `result-track:7f766509fcfe7bb53cb97791ea0c58f851966e8ca4d2f2fea91294c2f95abb27` |
| 72 | `def` | [lidIsometry](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/lidisometry.md) | 382 | `declaration-track:d7ac3507dcc45b00e9437656c4bee0688a546331560aacd5790256cb39f63513` |
| 73 | `lemma` | [toLinearEquiv_lidIsometry](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/tolinearequiv-lidisometry.md) | 385 | `result-track:8b896ded240cc492c5224b179827b65f9b471f1397c10950af9a988f0db0210f` |
| 74 | `lemma` | [toContinuousLinearMap_symm_lidIsometry](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/tocontinuouslinearmap-symm-lidisometry.md) | 388 | `result-track:deeb5cdbd0be369dc0727608d4eb0d08802e03754cdc1ff3a7ac8cfd11aee02c` |
| 75 | `lemma` | [lidIsometry_apply](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/lidisometry-apply.md) | 391 | `result-track:6b6452575f5243b113b4c748a8e50f8030781286a24c8c70d622fc377eda46ca` |
| 76 | `lemma` | [lidIsometry_symm_apply](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/lidisometry-symm-apply.md) | 392 | `result-track:e2245a0860b54388c7554a43f3895853ed2789ceeeab5a7a63f19c3d86f904ff` |
| 77 | `lemma` | [norm_lid](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/norm-lid.md) | 394 | `result-track:fc39d51ea8867994da40de9216146a99949b8657533f6c0ffe54adab116cbebf` |
| 78 | `lemma` | [nnnorm_lid](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/nnnorm-lid.md) | 395 | `result-track:24c737da28bfd4d67bd2920ff1992075a4a50f629d75c5654944213dcbd063ca` |
| 79 | `lemma` | [enorm_lid](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/enorm-lid.md) | 397 | `result-track:07ce17b8d4e26dbb237fa6f02bcbe653c5f5574460cbb98d49eeed111a1b8d24` |
| 80 | `theorem` | [inner_rid_rid](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/inner-rid-rid.md) | 400 | `result-track:2c84c8a883cd8288244c8e767caf360856c9d4576173ad1d9151990440f4a1db` |
| 81 | `def` | [ridIsometry](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/ridisometry.md) | 406 | `declaration-track:94d3755564d907b87abc032afeb205eec1a5e75e8347dd18f55a7de5195fe9ff` |
| 82 | `lemma` | [toLinearEquiv_ridIsometry](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/tolinearequiv-ridisometry.md) | 409 | `result-track:ef45e9f5d977da7eef4c9b6b5f1e9160e1d1b77307c97e8494b64974e90dbbfb` |
| 83 | `lemma` | [toContinuousLinearMap_symm_ridIsometry](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/tocontinuouslinearmap-symm-ridisometry.md) | 412 | `result-track:28d69909a86da722687b04042bed4ff5a791f3f365638b16c87f676dc6196b50` |
| 84 | `lemma` | [ridIsometry_apply](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/ridisometry-apply.md) | 415 | `result-track:4dc4188ca15d8848f4e84024af24f503a0427baa1d9481519aaab4a2860f6c8e` |
| 85 | `lemma` | [symm_ridIsometry_apply](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/symm-ridisometry-apply.md) | 416 | `result-track:50060f68e01f09202b59c10a55bd8c2051e6ff839bc7818f68c948ac6b8dbc6c` |
| 86 | `lemma` | [lidIsometry_eq_ridIsometry](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/lidisometry-eq-ridisometry.md) | 418 | `result-track:b89bce8c192fd02c06a46b5b74478c859a38e7e8f37cd8248bce411f6f9d5982` |
| 87 | `lemma` | [norm_rid](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/norm-rid.md) | 420 | `result-track:8ae9ab891ca28bd9aedcd8f1457ba5769c086111547d5e4d21bea8435866e3d0` |
| 88 | `lemma` | [nnnorm_rid](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/nnnorm-rid.md) | 421 | `result-track:ca2f878685a23e31e0372b4ebba0297ebcc22827deefdca8c4c343744913f266` |
| 89 | `lemma` | [enorm_rid](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/enorm-rid.md) | 423 | `result-track:df770467285ad905f4525e944d35b943fa84221119492dd4a69e6958e4f86b4b` |
| 90 | `lemma` | [commIsometry_trans_lidIsometry](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/commisometry-trans-lidisometry.md) | 426 | `result-track:10823652f2ca16c01a0e0dbbc555cba154a9355d7c30d0797333462793502775` |
| 91 | `lemma` | [commIsometry_trans_ridIsometry](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/commisometry-trans-ridisometry.md) | 429 | `result-track:9499791ba2c208520120dea7166190450998796dcd96fa9d507f05de4b37268d` |
| 92 | `theorem` | [inner_assoc_assoc](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/inner-assoc-assoc.md) | 432 | `result-track:b00e91278accc2a5bda732ab1bd09ea4bb5843fddb7c7c70ff6a621ca51f004f` |
| 93 | `def` | [assocIsometry](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/associsometry.md) | 445 | `declaration-track:d250372f1d08fd0673044ffa3d9cf14ea71ed6c5af2bc61069b75b0a96e7c445` |
| 94 | `lemma` | [assocIsometry_apply](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/associsometry-apply.md) | 448 | `result-track:6dc8592820b1b8d793fe53942239faac55a5278feac719c345243d4d163d45b0` |
| 95 | `lemma` | [assocIsometry_symm_apply](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/associsometry-symm-apply.md) | 451 | `result-track:a93a01e7f9cbd3301e8ca18102abc798e4ee7cb4b458a2f8e8e2bd5c1a09bd48` |
| 96 | `lemma` | [toLinearEquiv_assocIsometry](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/tolinearequiv-associsometry.md) | 454 | `result-track:9548b1fa9f1681203de6b5979204ccbe297b8d00a1cac78b7e20fb32879c69bb` |
| 97 | `lemma` | [norm_assoc](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/norm-assoc.md) | 457 | `result-track:693f94cd7e753ef12c6645a69727b61e6d9ccf4e33246c133249b5a46897895a` |
| 98 | `lemma` | [nnnorm_assoc](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/nnnorm-assoc.md) | 460 | `result-track:a82cbe6e7d02a65afddde2ba791ce6047dc8cffaf70cb87680a4b4293d555093` |
| 99 | `lemma` | [enorm_assoc](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/enorm-assoc.md) | 463 | `result-track:7fe09b6eed6b67828d776ce19b4e54c2010f5d4cee34be1bc153739fb69d5724` |
| 100 | `def` | [rTensor](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/rtensor.md) | 478 | `declaration-track:e2fb1077c68fbd7dc2e270095a5d1e57350b8a1ea2e84929f6d05ffce744ff7b` |
| 101 | `lemma` | [rTensor_apply](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/rtensor-apply.md) | 504 | `result-track:741a1ff19a2563263ac6a1081eefcc196f359a2f3cfa63895fe5fee65235ec88` |
| 102 | `lemma` | [rTensor_tmul](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/rtensor-tmul.md) | 508 | `result-track:cac0ba32116417bab446ee72a86742320ad6afce3e2c17a9c2eaa3b391805f4c` |
| 103 | `lemma` | [toLinearMap_rTensor](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/tolinearmap-rtensor.md) | 510 | `result-track:7a2fabb94122dec04fe76c2e02f9aa4b01b6f0c0654764dd69964536130522f0` |
| 104 | `lemma` | [Tensor Product Namespaced Public](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/tocontinuouslinearmap-rtensor.md) | 513 | `result-track:0ce5d4dd7a286d1eca7dd0728fe55c61f6070d915f71561568ce59d854d4d94f` |
| 105 | `theorem` | [norm_rTensor_le](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/norm-rtensor-le.md) | 516 | `result-track:785f18c7823338cba957bdcfbf43d0ccc775d467b1e932896d877b4bc9f4a80f` |
| 106 | `lemma` | [rTensor_add](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/rtensor-add.md) | 519 | `result-track:8e55586bd5033eb4347d674a54daa5ce3683122de5331ac64400878bda4f48ea` |
| 107 | `lemma` | [rTensor_smul](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/rtensor-smul.md) | 522 | `result-track:0704b6142f4f6f921111cca0eae5600f671b1eb23f25a63c36349ecbc06a2d95` |
| 108 | `lemma` | [rTensor_id](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/rtensor-id.md) | 525 | `result-track:4715bb08c3051c54f2f369370e41343b9926f309b49ca88290cb0a002ade4442` |
| 109 | `lemma` | [rTensor_one](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/rtensor-one.md) | 526 | `result-track:f22b8b9904a15a73c0280ba362db0a030922a6dca6553722149a726cd381ad45` |
| 110 | `lemma` | [rTensor_zero](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/rtensor-zero.md) | 527 | `result-track:5e8429d82188d3467ccab517ce40197f4336aa37931a53f8bcdadab6365e0690` |
| 111 | `lemma` | [rTensor_neg](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/rtensor-neg.md) | 528 | `result-track:5d6091e37667ed956aa63effaca817bf7650dc7d6fcbf72c2a019eca0129a77d` |
| 112 | `lemma` | [rTensor_sub](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/rtensor-sub.md) | 530 | `result-track:1a585633a031be7f676971f90e3e107492a0b01e839f5bae17dbe9fa65e2aea3` |
| 113 | `lemma` | [rTensor_comp](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/rtensor-comp.md) | 533 | `result-track:b2b1838afb5633d90ea9544254eaa775923b4e8384319ab8e67bb7d5246bd105` |
| 114 | `lemma` | [rTensor_mul](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/rtensor-mul.md) | 536 | `result-track:9e04ce29f8d407f38d77e0be673740f8aa7c2876bc6d2aabbcc6bda852874773` |
| 115 | `lemma` | [rTensor_pow](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/rtensor-pow.md) | 539 | `result-track:cdfc0a744b68b50bfa07646051ae731f23e6eab04b5cb59922d481cbaba7046c` |
| 116 | `def` | [lTensor](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/ltensor.md) | 544 | `declaration-track:9657d3d725183120f0e08cc6f757209c5e836364969225ae5dd1846b2ea5a098` |
| 117 | `lemma` | [lTensor_apply](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/ltensor-apply.md) | 548 | `result-track:7b3d40f41e04bb887f1b183e551367ff068eace5b50de5e97519447f7739be63` |
| 118 | `lemma` | [lTensor_tmul](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/ltensor-tmul.md) | 552 | `result-track:c156bbc7370472d44580bbef67ddef804a41094d0c04e2e270cc7789600dbcaa` |
| 119 | `theorem` | [commIsometry_comp_lTensor_comp_commIsometry_eq](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/commisometry-comp-ltensor-comp-commisometry-eq.md) | 554 | `result-track:b20c7d32f79a72536ac1d733b28836839ed435752cdf07e675a4a1e76a5cd54f` |
| 120 | `theorem` | [commIsometry_comp_rTensor_comp_commIsometry_eq](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/commisometry-comp-rtensor-comp-commisometry-eq.md) | 558 | `result-track:28318d4011f74a273b8069526dad74442fccf249f6b78842bee3f20ff58028c2` |
| 121 | `theorem` | [lTensor_comp_commIsometry](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/ltensor-comp-commisometry.md) | 562 | `result-track:ab5be15444cdb526be894bd899be0e582efbec3cf6b86f0d836ad2733cf7ed91` |
| 122 | `theorem` | [rTensor_comp_commIsometry](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/rtensor-comp-commisometry.md) | 566 | `result-track:c8e1b5786ed1326809c64f4c84f217d5024919cc9dd411ffbbdfab7590ae3e4e` |
| 123 | `lemma` | [toLinearMap_lTensor](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/tolinearmap-ltensor.md) | 570 | `result-track:e38b15b55cba7993519f11443fad0487998415253f18688f04372c0605757021` |
| 124 | `lemma` | [Tensor Product Namespaced Public](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/tocontinuouslinearmap-ltensor.md) | 573 | `result-track:eac6ee7524b66838aa02bcd8c80cffab0145d8e3c26477934cac5108357617b5` |
| 125 | `theorem` | [norm_lTensor_le](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/norm-ltensor-le.md) | 576 | `result-track:a3dce3e9ccfb3ce6751df22480b22e3bc426d85104ea63f2eb46c42b1c799945` |
| 126 | `lemma` | [lTensor_add](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/ltensor-add.md) | 581 | `result-track:b4a7473d01b0ebfb3d8a1f99f4eeea46370c2bfd57a88d87e06f1b1009213dec` |
| 127 | `lemma` | [lTensor_smul](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/ltensor-smul.md) | 584 | `result-track:a3b965be0f823bd98ff8396322575f748075bd953b06c511c5b9bea094d61d3c` |
| 128 | `lemma` | [lTensor_id](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/ltensor-id.md) | 587 | `result-track:29aacd1959b7f9119a3236ecb9ba7d52ea9f177d91ae2f98171cd0e09f948cf8` |
| 129 | `lemma` | [lTensor_one](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/ltensor-one.md) | 588 | `result-track:34e1f12532dc31330163be2587b0c5bfd0788d3222c58cbcef2cce552b10f7a3` |
| 130 | `lemma` | [lTensor_zero](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/ltensor-zero.md) | 589 | `result-track:a6a4768a0f587a892254a4184596e4d1a301021c2a61ff34c749b48d96eb1435` |
| 131 | `lemma` | [lTensor_neg](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/ltensor-neg.md) | 590 | `result-track:e0a8e475e046d70f52ffeb1577d5d42413a8fd00d7527d0b5e51e96184f1c663` |
| 132 | `lemma` | [lTensor_sub](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/ltensor-sub.md) | 592 | `result-track:ddca54464690300adc19187f72eb402bfdbb64fc98365103d619a912b5bbc00f` |
| 133 | `lemma` | [lTensor_comp](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/ltensor-comp.md) | 595 | `result-track:fbda1c4ea69dfd1d891e1331ede0f83b4c73f88987dbe0d37a4b004d33f52526` |
| 134 | `lemma` | [lTensor_mul](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/ltensor-mul.md) | 598 | `result-track:970e53fbc089be951657b3fa6e58a669d43902c67bfbb641c8be47611b385b0b` |
| 135 | `lemma` | [lTensor_pow](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/ltensor-pow.md) | 601 | `result-track:a9c4c430697ee2c5037dcbe8915863c2f792f81579448451c55a5add9c14e4a8` |
| 136 | `def` | [mapL](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/mapl.md) | 610 | `declaration-track:8b9d0ada9d87f96c474de3f41d15d6c9b8928acea7c0dc40c85c4f27c0c769e6` |
| 137 | `theorem` | [norm_mapL_le](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/norm-mapl-le.md) | 613 | `result-track:a8925703cd49ca5f96b7ce9cce7bf98a629f695c63870858e54720009e98d991` |
| 138 | `lemma` | [mapL_apply](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/mapl-apply.md) | 617 | `result-track:65b587b087c84bb43ee134aa7b71dbedb1c515246984f067b6ab9820f5853cad` |
| 139 | `lemma` | [mapL_tmul](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/mapl-tmul.md) | 621 | `result-track:2370ec3137706e54aa8e821180d70a210ce4331a661d6cf310cef7bb5528f49c` |
| 140 | `lemma` | [mapL_zero_left](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/mapl-zero-left.md) | 624 | `result-track:2d76017caa7207dd3ebfd46ce543ba23ac105086d4bca8ebf69ae346ffe458ed` |
| 141 | `lemma` | [mapL_zero_right](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/mapl-zero-right.md) | 625 | `result-track:a189b4d1cb6933f0295b6d2649c32e68a7e64b48a721d97daf2958a9b9bbc225` |
| 142 | `lemma` | [mapL_id_id](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/mapl-id-id.md) | 626 | `result-track:ab62c2c70ad4a66182120c44135b201c443579f3832ea6e6f1c7ae1e61a453e9` |
| 143 | `lemma` | [mapL_comp_commIsometry](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/mapl-comp-commisometry.md) | 628 | `result-track:d99c09c6e8cc4dacdccdc6b16e2f7c8a37f4062f24bf1969858e217a2316f705` |
| 144 | `lemma` | [mapL_add_left](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/mapl-add-left.md) | 631 | `result-track:d112b6d39659f48fd33f36f61e130ef51b511794edb4a6adef06bdd32218ade4` |
| 145 | `lemma` | [mapL_add_right](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/mapl-add-right.md) | 634 | `result-track:93cb125310b7365ec2753bdc42a8fe6bb0c60b25bcf82b5b037af08494476510` |
| 146 | `lemma` | [mapL_smul_left](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/mapl-smul-left.md) | 637 | `result-track:225f18595a5d5b78ff02297dc4f49c9e53eaaa25f70754c9ec03f1c42e103571` |
| 147 | `lemma` | [mapL_smul_right](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/mapl-smul-right.md) | 640 | `result-track:8d8859f45407da64a40fe595af6f7ee7048a1b371e80f88d05b08f66882fa486` |
| 148 | `lemma` | [toLinearMap_mapL](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/tolinearmap-mapl.md) | 643 | `result-track:cd437258ca9e1ee7ec530dd0b0a832f4753d11a7932d7616105d3aedc7b2b26b` |
| 149 | `lemma` | [toContinuousLinearMap_mapIsometry](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/tocontinuouslinearmap-mapisometry.md) | 646 | `result-track:655b687ebfa32f49d7bd7a253f5472c54ea17aad45e07ff488af519821262333` |
| 150 | `lemma` | [mapL_comp](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/mapl-comp.md) | 656 | `result-track:95ba45aff6d03d7cc4ac3d15d41d8a9424f6f1740e59ccb346d4a8c3b6f69e5c` |
| 151 | `lemma` | [mapL_mul](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/mapl-mul.md) | 659 | `result-track:403356cd8ac63aafa62999fd523369ff7f811ac83714f4b9f50d7d49d4fd493f` |
| 152 | `lemma` | [mapL_pow](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/mapl-pow.md) | 662 | `result-track:e8ab6ca1dcbce73c85ee86499ed4a7b763b7eb3a14b337db4cd38d4c34f7999d` |
| 153 | `lemma` | [Tensor Product Namespaced Public](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/mapl-comp-rtensor.md) | 665 | `result-track:3453d87ec7472d52cbf3cab6f2fdcd3d2ae2e7af6ddae27ba10a809ae149d7c7` |
| 154 | `lemma` | [Tensor Product Namespaced Public](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/mapl-comp-ltensor.md) | 668 | `result-track:198b42b0bf6cd94216474faabd1f8325a9586055fae5df89bde65a3a4152b0e0` |
| 155 | `lemma` | [Tensor Product Namespaced Public](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/rtensor-comp-mapl.md) | 671 | `result-track:58a5ddb57d5df975064e12f8a5f41b252358e8804beba297c4bc5dfc4d975799` |
| 156 | `lemma` | [Tensor Product Namespaced Public](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/ltensor-comp-mapl.md) | 674 | `result-track:19ed4f3062513252bf78152fe4769fa3a25f4b73daba3a51a6e80b374152d731` |
| 157 | `theorem` | [Tensor Product Namespaced Public](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/rtensor-eq-mapl.md) | 680 | `result-track:1211d790b643b25ef47196bd5120f2defd6f17b430390cd5132651a05d42a971` |
| 158 | `theorem` | [Tensor Product Namespaced Public](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/ltensor-eq-mapl.md) | 684 | `result-track:642f612b394224ca3c69aaaeb442ac3d2e7d8cc671ae329ca69eb5c3e2be26d7` |
| 159 | `lemma` | [Tensor Product Namespaced Public](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/ltensor-comp-rtensor.md) | 687 | `result-track:97e8020726415f772fa4a8869ab63eb9b128097abf88a21cef9f10b373ff6c05` |
| 160 | `lemma` | [Tensor Product Namespaced Public](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/rtensor-comp-ltensor.md) | 690 | `result-track:8b555f6241977f9c312e012de3664fbcc0bbf39d6bb034d29f7a758dbdc30cf3` |
| 161 | `theorem` | [adjoint_mapL](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/adjoint-mapl.md) | 693 | `result-track:295a5a2391c75471f8e5363d2f022b004cddff986c38beed8df05fba85f63d2b` |
| 162 | `theorem` | [Tensor Product Namespaced Public](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/adjoint-rtensor.md) | 701 | `result-track:735eb2e2c3e1cb462d34b5d7c88cdbf4b985c9c2553f6ea670aabc0bbd2d053a` |
| 163 | `theorem` | [Tensor Product Namespaced Public](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/adjoint-ltensor.md) | 707 | `result-track:1dce2d86d05c0e8d2665e4e635be032fcd11e0496cabdfe54f2326ca350c9ce3` |
| 164 | `theorem` | [adjoint_map](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/adjoint-map.md) | 713 | `result-track:a151c7ea1be8ec93ea472a75c2f7ea850fc67a528ec7f4935329e74cb0cbf0ba` |
| 165 | `theorem` | [Tensor Product Namespaced Public](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/adjoint-rtensor-source-line-718-occurrence-2.md) | 718 | `result-track:f888b402b4ab0b249e2ade3d3a765dccfa09c9adebb30e02671d8d604f2da2ec` |
| 166 | `theorem` | [Tensor Product Namespaced Public](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/adjoint-ltensor-source-line-722-occurrence-2.md) | 722 | `result-track:41d9b6db05692e5f16f3c7c8955cf0282478792d687c704eef93a676b5eee621` |
| 167 | `def` | [congrL](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/congrl.md) | 728 | `declaration-track:41bd37fd1f05bf9f9de226e6d246989e2a679ac3e46ab0ebe2fbff51b19cdf8e` |
| 168 | `theorem` | [congrL_tmul](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/congrl-tmul.md) | 734 | `result-track:d46bcb024cec49507645b5ac123beb017b1e6f6074120826bcc29d18192b0729` |
| 169 | `theorem` | [symm_congrL_tmul](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/symm-congrl-tmul.md) | 738 | `result-track:deb02c79732ea6f0faa708a2d893012e116d3121be2db951d15829cbb4811fc4` |
| 170 | `theorem` | [symm_congrL](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/symm-congrl.md) | 743 | `result-track:732ddcf660e9ba77ddf9918b66a47f1d33298278db45ffb6038c4b6d9787ee07` |
| 171 | `lemma` | [toContinuousLinearMap_congrL](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/tocontinuouslinearmap-congrl.md) | 748 | `result-track:5ef2e5b4934897342a09fc43333dbd49900579417e689cdfa3e1833f8df4baa0` |
| 172 | `lemma` | [toLinearEquiv_congrL](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/tolinearequiv-congrl.md) | 753 | `result-track:304d81a36c190a57e603156cdf1792cdfa39c7452d23abb1fb3b0e5e311214ce` |
| 173 | `theorem` | [congrL_refl_refl](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/congrl-refl-refl.md) | 758 | `result-track:650833245ff03de0234ec02a41943a61d480c9b61cf4b973b71ee31e763c98ec` |
| 174 | `theorem` | [congrL_trans_trans](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/congrl-trans-trans.md) | 765 | `result-track:c8c548cbac6157c052653d1bb1e17f319874e3db223dcbe00cd3ab1df6e11729` |
| 175 | `theorem` | [congrL_congrL](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/congrl-congrl.md) | 769 | `result-track:c138417ad1665b7d88f4c1a2e42f10977579f8978c8215be1b8bd117ab1cd1bf` |
| 176 | `theorem` | [congrL_mul_mul](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/congrl-mul-mul.md) | 775 | `result-track:fcd7bc7b85fc995fcb4d9b215d46be8dd3b2a15545eeb41e5af9acb716f201e6` |
| 177 | `theorem` | [congrL_pow](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/congrl-pow.md) | 779 | `result-track:2f46e604cc686f02bffcc773786ded0a96b767b89ccf628d3456dc747856cca7` |
| 178 | `theorem` | [congrL_zpow](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/congrl-zpow.md) | 785 | `result-track:58fa331b1f070e223d5f4581c2e757f8a7d9f6f6cb9f83cc1f120c0bb00aab31` |
| 179 | `theorem` | [ext_iff_inner_right_threefold'](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/ext-iff-inner-right-threefold-source-edition-2.md) | 794 | `result-track:ffda0c4f34f7a2e5c4fd68fccedc45196821e35f23de1c2d574913d6d4d5513b` |
| 180 | `theorem` | [ext_iff_inner_left_threefold'](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/ext-iff-inner-left-threefold-source-edition-2.md) | 804 | `result-track:9f5308e42201ffa1d8e661b4b696566196363528c3b16b9b135ab20b933b1d19` |
| 181 | `theorem` | [Orthonormal.tmul](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/orthonormal-tmul.md) | 817 | `result-track:d77fb15b028791593c900f1cf32bbc5f58221729f3fa4d9e6e5bb0d2bac61b26` |
| 182 | `theorem` | [Orthonormal.basisTensorProduct](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/orthonormal-basistensorproduct.md) | 826 | `result-track:78a34b3be61835f01507e7c5c14588832b63e8182b3b8fb4d02aaae484e34695` |
| 183 | `def` | [tensorProduct](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/tensorproduct.md) | 836 | `declaration-track:100780f6f47c887eac67114d9d69f1a3a417ad09aa6fde35ad60dbe27bc98db1` |
| 184 | `lemma` | [tensorProduct_apply](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/tensorproduct-apply-source-edition-2.md) | 843 | `result-track:f770d53aeaa5a073492e77792632007c9e63f3c190d563a71e33522aac21e17f` |
| 185 | `lemma` | [tensorProduct_apply'](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/tensorproduct-apply.md) | 847 | `result-track:8c9a0308eebc3a6b67419b24a5fc77bfa7982ddda47280b75495aea2cbc7c212` |
| 186 | `lemma` | [tensorProduct_repr_tmul_apply](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/tensorproduct-repr-tmul-apply-source-edition-2.md) | 852 | `result-track:f8aba4b8363611b3d6f597155d480656f69a45111f4fadd98663966b6f373b32` |
| 187 | `lemma` | [tensorProduct_repr_tmul_apply'](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/tensorproduct-repr-tmul-apply.md) | 857 | `result-track:de704730610008b8e84fece20ad2b70e84b6d07db814764a1201c728ea77de0c` |
| 188 | `lemma` | [toBasis_tensorProduct](../../../../FunctionalAnalysis/TensorProductNamespacedPublic.lean/declarations/tobasis-tensorproduct.md) | 863 | `result-track:44b5c0ce63a964271453c4b058ad41bebe887fe24c1b3e20bcd53635ac9e2ff1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=55713cb628d4ede0c3880d87d9646022bc6332359522a77d967f0b29c5429fb1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/TensorProduct/Variant07fa84ab8f9831406977aeb3b0dc0946731b97d47b5c468e4ff693fe69d69539.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/TensorProduct/Variant07fa84ab8f9831406977aeb3b0dc0946731b97d47b5c468e4ff693fe69d69539.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
