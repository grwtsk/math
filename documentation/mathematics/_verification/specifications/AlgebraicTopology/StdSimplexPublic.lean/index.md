# Verification target: Std Simplex Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c98af9d488a3f7dec6733d001c95a893c9cf82f7",
  "lexical_observation_count": 126,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/StdSimplex/Variantc4fea197947b28fc9dff0d7acc93e2f3c24e91d5dbc1608731b1c0cdabd4a3da.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/StdSimplexPublic.lean/index.md) · [Full source](../../../../AlgebraicTopology/StdSimplexPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c98af9d488a3f7dec6733d001c95a893c9cf82f7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/StdSimplex/Variantc4fea197947b28fc9dff0d7acc93e2f3c24e91d5dbc1608731b1c0cdabd4a3da.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/StdSimplex/Variantc4fea197947b28fc9dff0d7acc93e2f3c24e91d5dbc1608731b1c0cdabd4a3da.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Preorder.Finite` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [stdSimplex](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/stdsimplex.md) | 39 | `declaration-track:719f3408d8e8b81439330ae0238fbe22269b495114ed84151ea7698c345b7d98` |
| 2 | `instance` | [(anonymous)](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/instance-source-edition-12.md) | 44 | `declaration-track:f8c2e2ff2d7f41234d7849fe99f630b8456786d6f7cab7c54c04c82d9fd4e250` |
| 3 | `instance` | [(anonymous)](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/instance-source-edition-4.md) | 47 | `declaration-track:4291e4cf29db23946771543cd496d0eb0ecb7dc741c258d3593aa0ecd78a2d0e` |
| 4 | `abbrev` | [fullyFaithful](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/fullyfaithful.md) | 55 | `declaration-track:dcd840990a8eb6d13bd2c33785c4df034db6695e16daf6305e2c2963bcb54c1b` |
| 5 | `instance` | [(anonymous)](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/instance-source-edition-3.md) | 58 | `declaration-track:2c820eb6109772e944ae8228ba9cb0bda78ac5d746be51e22704dde446b686fd` |
| 6 | `instance` | [(anonymous)](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/instance-source-edition-11.md) | 59 | `declaration-track:ea119a307eb879acd753ff1abf62b717a56ba44114861caac4195fd7d457b118` |
| 7 | `lemma` | [map_id](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/map-id.md) | 62 | `result-track:07c072de8cf0a6a7d705f80e08cf6cff90143cf2dc919b1ae9b0da2255db3887` |
| 8 | `def` | [objEquiv](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/objequiv.md) | 67 | `declaration-track:b41e69356acc3eb1906e1ebcd6b59174029500c45e4bc6df1082f9fa2d51a88a` |
| 9 | `instance` | [(anonymous)](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/instance-source-edition-10.md) | 71 | `declaration-track:d42ff3f2abd8fc27988e1a3a22dfcb5db7114b3a1b28fa578dc2a47be0992989` |
| 10 | `instance` | [(anonymous)](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/instance-source-edition-9.md) | 77 | `declaration-track:c3b487212a93fac74f695c0590c1ebf1ef5c7d17e709df0acb2802a9b7213732` |
| 11 | `lemma` | [monotone_apply](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/monotone-apply.md) | 81 | `result-track:10bd992b2e35b77ce4a75debea66825e9ce622ad6dbe15058f8594f4d0484c79` |
| 12 | `lemma` | [ext](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/ext.md) | 86 | `result-track:29cba40675d65d3abd49de74f98890d0490c9b0923bba7684e7826ecd6340235` |
| 13 | `lemma` | [objEquiv_toOrderHom_apply](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/objequiv-toorderhom-apply.md) | 90 | `result-track:d4c160df8df320033c1cdf009df97cbad84447de9a861b43004226089eb9e779` |
| 14 | `lemma` | [objEquiv_symm_comp](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/objequiv-symm-comp.md) | 97 | `result-track:8bd9144439730b53ee11d8b5f9d8f77c2c875c953890db3ea6c6d6d9ed638e30` |
| 15 | `lemma` | [map_objEquiv_symm](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/map-objequiv-symm.md) | 102 | `result-track:44d2b42633d126fd88513ca84e181b6baecc8cb5619de49e3ef839f865381205` |
| 16 | `lemma` | [objEquiv_symm_apply](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/objequiv-symm-apply-source-edition-3.md) | 109 | `result-track:fb6cd8b1dbc2c5eeab610036f6205ef47e1a29fa5335bcf18cce6bf116b0491e` |
| 17 | `lemma` | [δ_objEquiv_symm_apply](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/objequiv-symm-apply.md) | 113 | `result-track:2e7d839d2fc4f29a21b7ab85661c3b0edc820b788ac407e2def14d096d7f8c04` |
| 18 | `lemma` | [σ_objEquiv_symm_apply](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/objequiv-symm-apply-source-edition-2.md) | 119 | `result-track:b96f013c49602fe7a3001540a95e94a293837ec85f49cb64d24e72eb15849ea0` |
| 19 | `abbrev` | [objMk](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/objmk.md) | 125 | `declaration-track:4f1fb7965d07f0c361e01c188ecc1ff295ccdb21d6373b83aa3de5b1369dc2b0` |
| 20 | `lemma` | [objMk_apply](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/objmk-apply.md) | 131 | `result-track:696bb8b022f428cc56eba76794a36545f1f250ac192cb06ecd0505aae2b94c6c` |
| 21 | `lemma` | [objMk_bijective](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/objmk-bijective.md) | 135 | `result-track:38f2a1c68e3fddc6cce4572b3176454135bfd04e2bbc47d72ab5ee4b572d18bc` |
| 22 | `def` | [asOrderHom](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/asorderhom.md) | 141 | `declaration-track:f921e8c664105ba3f15c98e24ac6a0f7c31c65e0896acbdfc33945653b001352` |
| 23 | `lemma` | [map_apply](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/map-apply.md) | 144 | `result-track:80f573b1ddd5ecd98160aa5f48b7e3fc8a8c81961f59b479c65eb9046c6af1d4` |
| 24 | `lemma` | [coe_asOrderHom_objEquiv_symm](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/coe-asorderhom-objequiv-symm.md) | 150 | `result-track:67cf2525e4eed2a92d1d5f1b514161c17a096bf9f0b9a2ad9194e1ff70663d6b` |
| 25 | `def` | [yonedaEquiv](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/yonedaequiv.md) | 156 | `declaration-track:7765d82642e4becb759cdd1c34343a3102d3023705c905d5483afb7e510db89a` |
| 26 | `instance` | [(anonymous)](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/instance-source-edition-8.md) | 160 | `declaration-track:a0a7c2a7e9f06bf4fddbe7d96881ba82f61eaec07d2072a549fcd892ff46b95f` |
| 27 | `lemma` | [_root_.SSet.yonedaEquiv_symm_comp](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/root-sset-yonedaequiv-symm-comp.md) | 164 | `result-track:57fe5494b153033593fdfd67a5c6a2d55bcfb06f8312e2987fd414bbe5b2658e` |
| 28 | `lemma` | [_root_.SSet.yonedaEquiv_const](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/root-sset-yonedaequiv-const.md) | 170 | `result-track:2efc9298d7de1e619631d9e4fa4d6c6ffbefe02469f018a3340a78dc6772005b` |
| 29 | `lemma` | [_root_.SSet.yonedaEquiv_symm_zero](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/root-sset-yonedaequiv-symm-zero.md) | 175 | `result-track:c5ed21e9a78372a33d37c2793f1da66ae3496c4a9a335a2bdf7321ac5b8955c6` |
| 30 | `lemma` | [yonedaEquiv_map](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/yonedaequiv-map.md) | 180 | `result-track:e5ac14e4cf0bd208e3a6adb87c43f6db08b9dacb19489e6ac393f3303722bc3e` |
| 31 | `lemma` | [yonedaEquiv_symm_app](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/yonedaequiv-symm-app.md) | 187 | `result-track:a625dca618a18c8ff3a15e0488c0db671d10e9d0cd27f74d81f0b65b0c2d9a7b` |
| 32 | `lemma` | [yonedaEquiv_symm_stdSimplex_id](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/yonedaequiv-symm-stdsimplex-id.md) | 192 | `result-track:cdeac0596dd5a1b84b7ae90fbd8b9b9f0afdf3737a3aaa39c8adbd5fe8b3ba95` |
| 33 | `lemma` | [yonedaEquiv_symm_app_objEquiv_symm](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/yonedaequiv-symm-app-objequiv-symm.md) | 199 | `result-track:b555fc29e420fb4945a9333a53b16e049e6e18dbd7c9e21f1b24f759275d9e31` |
| 34 | `lemma` | [opObjEquiv_yonedaEquiv_const](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/opobjequiv-yonedaequiv-const.md) | 205 | `result-track:3074c9c87f42b15bb5dfe597ad1516ad95cc0075bd82b925c63a9943a8b8664f` |
| 35 | `lemma` | [opObjEquiv_symm_yonedaEquiv_const](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/opobjequiv-symm-yonedaequiv-const.md) | 209 | `result-track:4d77f9b04f03a2486a2d23b9f5792d10382f1f1896e12ea7e5edb3e96fe04620` |
| 36 | `lemma` | [δ_apply](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/apply.md) | 215 | `result-track:4925d0b3919e7bd5f88ee66ea71065b22664cf5ad399dca8fb29ea1ceb4674e3` |
| 37 | `lemma` | [σ_apply](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/apply-source-edition-2.md) | 218 | `result-track:b026a46453b17ba545bfb23892d661bdd93f5b191a9f397c21e44dabc884bd41` |
| 38 | `lemma` | [objEquiv_yonedaEquiv_id](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/objequiv-yonedaequiv-id.md) | 222 | `result-track:3d1b29fa776cbdf84d6574eac4a6d3a67fe8677e86378fc5003d398999b44fde` |
| 39 | `lemma` | [map_objEquiv_op_apply](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/map-objequiv-op-apply.md) | 225 | `result-track:7c1689669252c10c6d49cd21e22794d283c0086e400cb492e728362bc27637af` |
| 40 | `def` | [const](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/const.md) | 232 | `declaration-track:4b782370360ab2c33c6b26714c7a8aae71e2ef29e14b91deb64d9475689a95ac` |
| 41 | `lemma` | [const_down_toOrderHom](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/const-down-toorderhom.md) | 236 | `result-track:64ced032b98058bb823f041ef1d136f0c1ab4dd03b05fbe3e6922f9892e5f535` |
| 42 | `def` | [obj₀Equiv](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/obj-equiv.md) | 242 | `declaration-track:2ec2ff153b09e2fb76adcc807e73f4d845b5f6d46f179ad6788d249beaf4da09` |
| 43 | `lemma` | [δ_one_eq_const](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/one-eq-const.md) | 247 | `result-track:305cd12234c72f21a169cb8481da0eefe6f5ff80c48b7c55db382cdf8b0b71f4` |
| 44 | `lemma` | [δ_zero_eq_const](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/zero-eq-const.md) | 250 | `result-track:b58f05b1fdbe960f798e5d64d9a18fd100c40b037c6343c350a3c8a8255f0bf0` |
| 45 | `def` | [edge](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/edge.md) | 254 | `declaration-track:27a9eb92230a792e18014d251d4d966552ed726e3e3b3248334284528a907926` |
| 46 | `lemma` | [coe_edge_down_toOrderHom](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/coe-edge-down-toorderhom.md) | 260 | `result-track:da95f1089426eff6b36db96a40822a3c0d0c64aaa255413c58850a2f0aed065a` |
| 47 | `def` | [triangle](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/triangle.md) | 265 | `declaration-track:b31f5e96f1cbee64f9ffbb0961d7656fe045b35927ff7ba63e6713dcda37c82e` |
| 48 | `lemma` | [coe_triangle_down_toOrderHom](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/coe-triangle-down-toorderhom.md) | 272 | `result-track:998cf06280b04d18ab8845b8b390a8db8a0224a16ef55c9e822dd2b70363dd67` |
| 49 | `def` | [face](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/face.md) | 281 | `declaration-track:75abe656b1a4aab18e37b867dfc34ccfc4837cef8cc1d532a908dd1b7b5c2dfb` |
| 50 | `lemma` | [mem_face_iff](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/mem-face-iff.md) | 288 | `result-track:b6a793b5fd93e859eb15d70695664f334bb54b23a0850703a04ae94ba7c91eea` |
| 51 | `lemma` | [face_inter_face](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/face-inter-face.md) | 292 | `result-track:aa62d5275929a000e7465346553cac3b3212080b818ba3cab19a1b948935988b` |
| 52 | `lemma` | [face_empty](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/face-empty.md) | 297 | `result-track:93bbf9b83be543b552468ca72fb5d35341a927bd4bd96e741eaaf21caaf64c3a` |
| 53 | `lemma` | [face_univ](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/face-univ.md) | 303 | `result-track:7d9ed77fc49830a031b5726676abd9cd06b599a176b9da3181e88214ba14b828` |
| 54 | `lemma` | [yonedaEquiv_comp](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/yonedaequiv-comp.md) | 311 | `result-track:3d153f4cd3a92224fd00d4b784e7c4dd4600fc642d63d1c449c4923df0db0544` |
| 55 | `lemma` | [yonedaEquiv_symm_app_id](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/yonedaequiv-symm-app-id.md) | 316 | `result-track:e54a96b875316d7119226eb21a4c1acf39ebbb9a63d5a6a93918aefee9c6e287` |
| 56 | `lemma` | [yonedaEquiv_naturality](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/yonedaequiv-naturality.md) | 320 | `result-track:175ee17f0c8d90dc5fcb87a32a9c774197840f2297fa6d33f42687aad2b0c1e7` |
| 57 | `lemma` | [yonedaEquiv_symm_naturality_left](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/yonedaequiv-symm-naturality-left.md) | 326 | `result-track:f23011e5c11c6a332f331df8fe646b4baabad81ff8aeb74cf013e01a2c67176a` |
| 58 | `lemma` | [stdSimplex.δ_comp_yonedaEquiv_symm](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/stdsimplex-comp-yonedaequiv-symm.md) | 331 | `result-track:0d197d0fea1387877dd2d819a5a11ca02f5f6db34c6ed75367c580d0f565e03d` |
| 59 | `lemma` | [stdSimplex.σ_comp_yonedaEquiv_symm](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/stdsimplex-comp-yonedaequiv-symm-source-edition-2.md) | 336 | `result-track:7e81933ebd11bb53717a10a966409f300bb766944b0ffbd1b86376ce452ec15c` |
| 60 | `lemma` | [stdSimplex.yonedaEquiv_δ_comp](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/stdsimplex-yonedaequiv-comp.md) | 341 | `result-track:01dbf0d587b7ad2e942364fb60fbf255f0b46d02822848caf3f314c4f0e9c72b` |
| 61 | `lemma` | [stdSimplex.yonedaEquiv_σ_comp](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/stdsimplex-yonedaequiv-comp-source-edition-2.md) | 346 | `result-track:7c0cd969e89a0479dca8c792fb84567af2bdbb91b485ee8ae51003c671242dc1` |
| 62 | `lemma` | [range_eq_ofSimplex](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/range-eq-ofsimplex.md) | 355 | `result-track:ff56f815e48da48fae4733fb559b5e9b922fa826485503d2efeea1643d7e27d5` |
| 63 | `lemma` | [yonedaEquiv_coe](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/yonedaequiv-coe.md) | 359 | `result-track:210d2dec9b758e1dcb0413087513a4713453168a5d89559d34dc4bc7523cf04f` |
| 64 | `lemma` | [obj₀Equiv_symm_mem_face_iff](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/obj-equiv-symm-mem-face-iff.md) | 368 | `result-track:99a79bc129ddad070523d6c9ad6d4337d672159d2810d507ee51fe06e6827818` |
| 65 | `lemma` | [face_le_face_iff](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/face-le-face-iff.md) | 373 | `result-track:cae9475a774193c2a1755e8640e632c13df1c2dda8347a7acb6acd5df08bbdf0` |
| 66 | `lemma` | [face_eq_ofSimplex](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/face-eq-ofsimplex.md) | 379 | `result-track:a880a32d3a0858f987dafa0dc1c46cb784771f596295074207398384d4437a33` |
| 67 | `def` | [faceRepresentableBy](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/facerepresentableby.md) | 401 | `declaration-track:9a33b6dbebb3d6ba96b8bd7a267d8bb67441ef1d713eb2f949471c0335cba38e` |
| 68 | `def` | [isoOfRepresentableBy](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/isoofrepresentableby.md) | 425 | `declaration-track:003007c59f68e95488e567d574c023031dd3e89460d71c8aad7d5b6d65d40984` |
| 69 | `lemma` | [ofSimplex_yonedaEquiv_δ](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/ofsimplex-yonedaequiv.md) | 430 | `result-track:815cf1aece731eb4d96c7fd263c69ca58b3f97bf8514b30796d7f11a5b539e92` |
| 70 | `lemma` | [range_δ](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/range.md) | 435 | `result-track:da74cf92009076136b67a4bf6b2b3b222b1fb72040aea0048f43189cef6790b0` |
| 71 | `def` | [isoNerve](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/isonerve.md) | 443 | `declaration-track:78ba7550dd940022821d1d82ef69fe95fb5f09ff2de72d651f8b2d026b271f0e` |
| 72 | `lemma` | [isoNerve_hom_app_apply](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/isonerve-hom-app-apply.md) | 453 | `result-track:f4513f6996a3d2b8e37c554417e7a68f80bb30bfa4beb20b2f1266487ca42915` |
| 73 | `lemma` | [isoNerve_inv_app_apply](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/isonerve-inv-app-apply.md) | 458 | `result-track:ce6e05bbf5e7fc1d235383daa8016b5f09ee3595d0dc90aaf49da9d7bcdf3ef6` |
| 74 | `lemma` | [mem_nonDegenerate_iff_strictMono](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/mem-nondegenerate-iff-strictmono.md) | 462 | `result-track:106cf3d30b2c1cf35db18c01bdb1e721266a2e88791017a08e3e61963de2e2e8` |
| 75 | `lemma` | [mem_nonDegenerate_iff_mono](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/mem-nondegenerate-iff-mono.md) | 468 | `result-track:012f5438458519bf2b6928a765806cce550a0994500ecd8be798df7f885a111f` |
| 76 | `lemma` | [objEquiv_symm_mem_nonDegenerate_iff_mono](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/objequiv-symm-mem-nondegenerate-iff-mono.md) | 479 | `result-track:5a3bfadf237a30742fc86f712690f01b4cd909d65a779ccb3f2d453348d200e7` |
| 77 | `def` | [nonDegenerateEquiv](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/nondegenerateequiv.md) | 486 | `declaration-track:88b690926f96592a226a2dda9189b0cee823f7ab5231b3f712f75ef56e9554e5` |
| 78 | `instance` | [(anonymous)](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/instance-source-edition-5.md) | 493 | `declaration-track:6b8ce42878ba9bbf2dbaa3938f0157dc5f94ccd8e1703117782e839f465ac067` |
| 79 | `def` | [finSuccAboveOrderIsoFinset](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/finsuccaboveorderisofinset.md) | 505 | `declaration-track:3b3df9c9dad4265b087a2da66d0e9dbd127261a966e31fe5c72f26268f61100f` |
| 80 | `lemma` | [face_singleton_compl](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/face-singleton-compl.md) | 512 | `result-track:1d2ece94ecac2d4f6dd41bf5db249ec0e2b5241c3b75cb09dc48e4823182e286` |
| 81 | `def` | [faceSingletonComplIso](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/facesingletoncompliso.md) | 519 | `declaration-track:f41e743731668deafda2904079fb72a04d927cbb4d24ef0f2ad4677a93688130` |
| 82 | `lemma` | [faceSingletonComplIso_hom_ι](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/facesingletoncompliso-hom.md) | 524 | `result-track:ee7e8eb97cc551639a8a920bfec948dda03a8b72499d19b527dd8299b9a22582` |
| 83 | `def` | [finOrderIsoPairCompl](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/finorderisopaircompl.md) | 530 | `declaration-track:15b7682019ef30c9ddb55fe2a187fc383b53dcd73ad9ce7155902860eb4cd1d2` |
| 84 | `lemma` | [finOrderIsoPairCompl_apply_val](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/finorderisopaircompl-apply-val.md) | 548 | `result-track:06ee7f8b3f8ad2e1e826225ae07094aaecdce03f49277f34e8ce285ef51d85a4` |
| 85 | `def` | [facePairComplIso](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/facepaircompliso.md) | 554 | `declaration-track:21453d9119e94595c084b148eab5c55a188ce8532b96bd1948bcfa46f73e6207` |
| 86 | `lemma` | [facePairComplIso_hom_ι](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/facepaircompliso-hom-source-edition-2.md) | 559 | `result-track:6216382e49ad2913dd97c9fe579b3da05e38d1735ce9c094ee6df3552b0f2aa2` |
| 87 | `lemma` | [facePairComplIso_hom_ι'](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/facepaircompliso-hom.md) | 565 | `result-track:51c2236c7eaafafccf729c88755cbfa7287cf9dca5af84c19dd26199d56c4efe` |
| 88 | `lemma` | [homOfLE_faceSingletonComplIso_inv_eq_facePairComplIso_inv_δ_pred](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/homofle-facesingletoncompliso-inv-eq-facepaircompliso-inv-pred.md) | 575 | `result-track:21f0c33e0629b845d9deb1ebbf232997f65940f8186e389f497046525470c5a0` |
| 89 | `lemma` | [homOfLE_faceSingletonComplIso_inv_eq_facePairComplIso_inv_δ_castPred](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/homofle-facesingletoncompliso-inv-eq-facepaircompliso-inv-castpred.md) | 585 | `result-track:0699f9549166a33c9f6ee9b1d644ae9207603152d86e4a836e51b3b6cb333058` |
| 90 | `def` | [faceSingletonIso](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/facesingletoniso.md) | 596 | `declaration-track:ce4eb941118b0c5fde7b3fea2fc823f250ade7a76c5122b2d5fe0a4ad4d8abd0` |
| 91 | `lemma` | [faceSingletonIso_zero_hom_comp_ι_eq_δ](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/facesingletoniso-zero-hom-comp-eq.md) | 602 | `result-track:2605a82ead65857600b4f64e46ebff74ce30573860c6f9fe40458d7fdea2a0d0` |
| 92 | `lemma` | [faceSingletonIso_one_hom_comp_ι_eq_δ](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/facesingletoniso-one-hom-comp-eq.md) | 607 | `result-track:4782a36007f28af89d3cd5c8ca31e1743b3e9769ceeb276df82409e0dcf2a002` |
| 93 | `def` | [facePairIso](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/facepairiso.md) | 614 | `declaration-track:eedf852c4c4842c76c3f8ff9fd5261ead5046acf4f61c6bb1ca6d64a9d86bd14` |
| 94 | `lemma` | [bijective_image_objEquiv_toOrderHom_univ](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/bijective-image-objequiv-toorderhom-univ.md) | 621 | `result-track:a42254f8ac5f40091a066c22db2f75e69ca5db7c9eb75d1ac05f7a8f07a8fb3e` |
| 95 | `def` | [nonDegenerateEquiv'](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/nondegenerateequiv-source-edition-2.md) | 651 | `declaration-track:d5d2f1b69820f0773c745c0c9f52e0d9b8efd8d8867d69136fe287df92551a92` |
| 96 | `lemma` | [nonDegenerateEquiv'_iff](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/nondegenerateequiv-iff.md) | 655 | `result-track:fa8f0b3ae4a864a3d873d707e695755e621a9b560e2530f7d54dd7980af55723` |
| 97 | `def` | [orderIsoOfNonDegenerate](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/orderisoofnondegenerate.md) | 664 | `declaration-track:f99058ee75bfc057ee32e430931ad02ec22012881188d2e6662e149e40776164` |
| 98 | `lemma` | [face_nonDegenerateEquiv'](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/face-nondegenerateequiv.md) | 691 | `result-track:df2fd9653c4a5a31b0d1141f33af5daf15ca4d2199c947076e6bf96523c4a2a2` |
| 99 | `lemma` | [nonDegenerateEquiv'_symm_apply_mem](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/nondegenerateequiv-symm-apply-mem.md) | 696 | `result-track:2fc84cf3c8d8dc927e0a48505b3e97405582408b6e234b40bbced56b84ee602f` |
| 100 | `lemma` | [nonDegenerateEquiv'_symm_mem_iff_face_le](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/nondegenerateequiv-symm-mem-iff-face-le.md) | 704 | `result-track:5a0c8ccba33d795aaa4405edfed4eaa2a0b8e55cd70c48bc1ed000d0d7495701` |
| 101 | `instance` | [(anonymous)](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/instance-source-edition-6.md) | 711 | `declaration-track:7dcaacfdadda77ba65c9364539b8afe66245b38c7c8af044b10fd06095fdcc2b` |
| 102 | `instance` | [(anonymous)](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/instance-source-edition-2.md) | 716 | `declaration-track:259eade61ee67bdf0bafbf634a6785f88ccf7a20da5002fd18118c364b183b9e` |
| 103 | `instance` | [(anonymous)](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/instance-source-edition-7.md) | 720 | `declaration-track:8aa0c0697cefec79131b1c27deca94969e98c290654688dbce5b3da6ab088a82` |
| 104 | `lemma` | [hasDimensionLT_face](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/hasdimensionlt-face.md) | 726 | `result-track:c87e49867b75e7d544cd79e543f668332a719045e3b750e107d82419310d4cfd` |
| 105 | `lemma` | [ofSimplex_objEquiv_symm_id](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/ofsimplex-objequiv-symm-id.md) | 738 | `result-track:c28e094b5b90ae089f94970b7ffbf47ee0dafe428bd2d276a3f57d8f49ea0af7` |
| 106 | `lemma` | [objEquiv_symm_id_mem_nonDegenerate](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/objequiv-symm-id-mem-nondegenerate.md) | 745 | `result-track:c84689a6d76546c75e7a33cb5b038036481d6206327faa309cfee7761ebdb433` |
| 107 | `lemma` | [nonDegenerate_top_dim](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/nondegenerate-top-dim.md) | 750 | `result-track:fff142f9da6385f5bc7e84e78ad43ae0685525ee4f969eb553dfe6930d8bf03a` |
| 108 | `lemma` | [not_hasDimensionLT](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/not-hasdimensionlt.md) | 761 | `result-track:c46339b557d62818984b9e62001c776b600aa5abf0d0df7762af176971d76f74` |
| 109 | `def` | [opObjEquiv](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/opobjequiv.md) | 768 | `declaration-track:860f4470eaee89d240187c81c8cb2b79ec5b33635bf57c5487ba46bf861e14c6` |
| 110 | `lemma` | [opObjEquiv_apply](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/opobjequiv-apply.md) | 773 | `result-track:056fbd8e5e6a2c3a74a18b8c8d769c373290c2e0353bb73472d30f7ef56a5cb8` |
| 111 | `lemma` | [opObjEquiv_opObjEquiv_symm_apply](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/opobjequiv-opobjequiv-symm-apply.md) | 776 | `result-track:5ba99a58a0e10cc012214b28d1783e490b205fc3f0d7cd8f41b31078a55367a0` |
| 112 | `lemma` | [map_rev_map_op_apply](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/map-rev-map-op-apply.md) | 781 | `result-track:f3d86119c4195fcb028893d3ceccd25943d609b4d00dc96259d9e5886b5752ca` |
| 113 | `def` | [opIso](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/opiso.md) | 788 | `declaration-track:78ac53681bfacd027227464ea5b2de1f7b4805eb9fca6158de3a190437e2a1fb` |
| 114 | `lemma` | [mem_ofSimplex_obj_iff](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/mem-ofsimplex-obj-iff.md) | 800 | `result-track:f3f766b1353c45325c09b0ba1f6e1d4c91232be816d2a432d6438a0f9240be4a` |
| 115 | `def` | [S1](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/s1.md) | 816 | `declaration-track:5fee05e869c99a59b090cdadd5cd4479c70901092f2286a51cd6f8819dd9ef90` |
| 116 | `def` | [stdSimplex](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/stdsimplex-source-edition-2.md) | 828 | `declaration-track:b701e7497f3e8411244c319778a97580523682ff3b338b75e3ed13f2f76e8299` |
| 117 | `def` | [toOfSimplex](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/toofsimplex-source-edition-2.md) | 845 | `declaration-track:db9ff7cfa18b4ea9339e548623f9da356f0b3e8795b2340ef32f5853e2bb2545` |
| 118 | `lemma` | [toOfSimplex_ι](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/toofsimplex.md) | 849 | `result-track:bf75660191b4349e8df7f60adf97ba1f73562521a222c59de9a03518dfcda395` |
| 119 | `lemma` | [yonedaEquiv_toOfSimplex](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/yonedaequiv-toofsimplex.md) | 852 | `result-track:88a75fc420b5255bfdd17acbf898e99fdf48ba3930d51c482898d87181eac00f` |
| 120 | `instance` | [(anonymous)](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/instance.md) | 858 | `declaration-track:0438966cdd42540192f0ea96dca04fadc467db7caf1b8169dccf35bd04684f3b` |
| 121 | `lemma` | [isIso_toOfSimplex_iff](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/isiso-toofsimplex-iff.md) | 866 | `result-track:ae858d95761e482ac51720da282d5f3de4e04809adb602a025e38e1df07d6bd2` |
| 122 | `lemma` | [δ_zero_yonedaEquiv_symm](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/zero-yonedaequiv-symm-source-edition-2.md) | 883 | `result-track:88efd4f5dd249d0a3956be4e69133432e081b7bbf8d08e0b7a7e0dc12b4e2388` |
| 123 | `lemma` | [δ_one_yonedaEquiv_symm](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/one-yonedaequiv-symm-source-edition-2.md) | 888 | `result-track:bb8716cd2861cf8e8faa551377d1744bccb95ba927b6220a7027dd8e451e5fba` |
| 124 | `lemma` | [δ_zero_yonedaEquiv_symm](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/zero-yonedaequiv-symm.md) | 898 | `result-track:6966632cc3eda783638ffcdde8f5dae501ddcfcbbbc6a2b568d401f7093fae16` |
| 125 | `lemma` | [δ_one_yonedaEquiv_symm](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/one-yonedaequiv-symm.md) | 903 | `result-track:8f2499322c10a13a69a93c8e26c6082a67ff658ee3117541fc39c09f4009a571` |
| 126 | `lemma` | [δ_two_yonedaEquiv_symm](../../../../AlgebraicTopology/StdSimplexPublic.lean/declarations/two-yonedaequiv-symm.md) | 908 | `result-track:988ed0fe9c7282687333aef7fcdb8a476b0c3073db8ef1f24c733bd14f19e424` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=36d98c7960c172249ac149c625688a9e2d572ed8251e0a4e324ca99ccc908207 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/StdSimplex/Variantc4fea197947b28fc9dff0d7acc93e2f3c24e91d5dbc1608731b1c0cdabd4a3da.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/StdSimplex/Variantc4fea197947b28fc9dff0d7acc93e2f3c24e91d5dbc1608731b1c0cdabd4a3da.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
