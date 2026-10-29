# Verification target: Homeomorph Defs

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "224c640df2eada4d7e2dda00a45ca5598780d17b",
  "lexical_observation_count": 96,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Defs/Variant20faf19efd2f7e038ee831c6aef3989050698cbb6a5eb1f3d3e478566abd2f9f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/HomeomorphDefs.lean/index.md) · [Full source](../../../../GeneralTopology/HomeomorphDefs.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `224c640df2eada4d7e2dda00a45ca5598780d17b`.

Source path: `GRWTSK/Topology/GeneralTopology/Defs/Variant20faf19efd2f7e038ee831c6aef3989050698cbb6a5eb1f3d3e478566abd2f9f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Defs/Variant20faf19efd2f7e038ee831c6aef3989050698cbb6a5eb1f3d3e478566abd2f9f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.ContinuousMap.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Maps.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Homeomorph](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/homeomorph.md) | 39 | `declaration-track:0cac84316fea26fa40859bd8eae4a1da76cc72e8bdcb16f038c06f83f770bf4c` |
| 2 | `theorem` | [toEquiv_injective](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/toequiv-injective.md) | 54 | `result-track:49bfd5a8868cf30748c8ca68ab11f40ed6912f99ac41c951ae3d53ce32d58e5a` |
| 3 | `instance` | [(anonymous)](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/instance-source-edition-3.md) | 57 | `declaration-track:7305e40bf6a3bec6bf030cf03ef8ff82c588838d36940f9e62a3d871c801aeb5` |
| 4 | `theorem` | [homeomorph_mk_coe](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/homeomorph-mk-coe.md) | 64 | `result-track:1e3c179aa43013b167f91ae6b5b4b4d38f8b6387249360719b973ae864c4fd1e` |
| 5 | `def` | [empty](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/empty.md) | 68 | `declaration-track:824402f3a4e107d06c825b3f128216445d5c4dc61f85024f4e556d4675566c2a` |
| 6 | `def` | [symm](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/symm.md) | 73 | `declaration-track:d03ec4896c5eab7fb519c5c3cceb7cc5e7798bc4aa175e09a634fef782b44506` |
| 7 | `theorem` | [symm_symm](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/symm-symm.md) | 78 | `result-track:d3c4f3167c90f703ee8609deebbfc9817c9b9b22bd95bd436d378457b94289ad` |
| 8 | `theorem` | [symm_bijective](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/symm-bijective.md) | 80 | `result-track:bd7185a9c874a820fe925aefccc2523b372cc4a444fd6cc4ae14043f0fb3c1d3` |
| 9 | `def` | [Simps.symm_apply](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/simps-symm-apply.md) | 84 | `declaration-track:d743dee2d39e0e83e177f51a0d0ad86ccf2b824843a2a32bda7757c04ae5edf2` |
| 10 | `theorem` | [coe_toEquiv](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/coe-toequiv.md) | 90 | `result-track:c6304b01b84b516e30b433ded984728592abfeb0952d6ece498b1e83e3627748` |
| 11 | `theorem` | [coe_symm_toEquiv](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/coe-symm-toequiv.md) | 94 | `result-track:bec8be1bd47a22894584a319b4c4718fb096dc86869b44ea0120d504a5cd6528` |
| 12 | `theorem` | [ext](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/ext.md) | 98 | `result-track:253cc79f46725c95ab08e91a66f9edda449efad89811801d41eca03aeb9529e3` |
| 13 | `def` | [refl](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/refl.md) | 103 | `declaration-track:132ac1e2f0bb87089a62a7bc47ce3b0fddd687c031670df6dbc09b33cd58587b` |
| 14 | `def` | [trans](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/trans.md) | 110 | `declaration-track:8953ccf3e8f847c9b0610854e8cb5a462cc7cc4605d5cf8f27ba0de6e78bf21d` |
| 15 | `theorem` | [trans_apply](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/trans-apply.md) | 116 | `result-track:6c303f26f239e78bb8d15927d82f58e228c20be0245e24c714b798e24dd20875` |
| 16 | `theorem` | [symm_trans_apply](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/symm-trans-apply.md) | 120 | `result-track:1883956b35eee7078885f6f5ae83ee7d78662bcf0db8bc78de360e7969f19024` |
| 17 | `theorem` | [homeomorph_mk_coe_symm](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/homeomorph-mk-coe-symm.md) | 124 | `result-track:ebdbffa9b6e24eee24a6e2ffd1f36d6c04088dbc3958e9c0d1c8ee277928532f` |
| 18 | `theorem` | [refl_symm](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/refl-symm.md) | 129 | `result-track:57a0cf9b56f8cb4a187f9dcd7fdff33679289343d855d1f1926ea41ddf43f78d` |
| 19 | `theorem` | [continuous](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/continuous.md) | 133 | `result-track:205a0cbf71f8c290205cd5e853d603afac4c18248de7d99173f4394338ed2d03` |
| 20 | `theorem` | [continuous_symm](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/continuous-symm.md) | 138 | `result-track:031632158446c11923fcf7a6505bd9569b8c4ee488c9693e85a9e6b5dafdfa04` |
| 21 | `theorem` | [apply_symm_apply](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/apply-symm-apply.md) | 142 | `result-track:edb575ed00f6ae7e6c7a67e25a6ea93d70f540371c32089a37cc2cd53ff0bbb6` |
| 22 | `theorem` | [symm_apply_apply](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/symm-apply-apply.md) | 146 | `result-track:1eea0bb7a75f284d4ecfe77b39554e84c6da0a9ef65943b6527442b74585ba08` |
| 23 | `theorem` | [self_trans_symm](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/self-trans-symm.md) | 150 | `result-track:df896fe1cc04ea0b2041f4fceedae0fb89fa38f7c8d73c78f010f1377c89eed5` |
| 24 | `theorem` | [symm_trans_self](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/symm-trans-self.md) | 155 | `result-track:dea1262db812cc109e8cce3beb9f6dacda18a75e1f21b5d9137755670c298cd1` |
| 25 | `theorem` | [bijective](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/bijective.md) | 159 | `result-track:ae6b25c3f680df5c8484494a9482384ad4d97e8c5eaedf580baa4ac26b93f5d4` |
| 26 | `theorem` | [injective](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/injective.md) | 162 | `result-track:ccacf9a73b16fc9604573074f8ece903b5820dbe74412640e4915f2e7375a6ea` |
| 27 | `theorem` | [surjective](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/surjective.md) | 165 | `result-track:45c53585accd24052ee4b2a8dd693e33a06182d5bb4446253bd1f4e94f6accd3` |
| 28 | `def` | [changeInv](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/changeinv.md) | 169 | `declaration-track:7d72c2794c91174c8bc21a011a840a46af6d46c72a7dadbab9a0bd26f50314df` |
| 29 | `theorem` | [symm_comp_self](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/symm-comp-self.md) | 179 | `result-track:b0484b95684461ff31f065beb0cccb2678034933e73235362fce6bc36ca46963` |
| 30 | `theorem` | [self_comp_symm](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/self-comp-symm.md) | 183 | `result-track:4a23696b78090f21a621f66fe42e062019169246b0a3968cfe500c7585f0ce2a` |
| 31 | `theorem` | [range_coe](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/range-coe.md) | 186 | `result-track:6851901dc742e94e3e4a4c2a5f9a9f0e13c15ecd8bcaa156998fa048bf016494` |
| 32 | `theorem` | [image_symm](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/image-symm.md) | 188 | `result-track:d1457ad5af32957688b08229839d5781f121d2e3389cbef8f766df330380fc8c` |
| 33 | `theorem` | [preimage_symm](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/preimage-symm.md) | 191 | `result-track:e22d59605664b231fba8ae330190f1cdb7be2993097badabd3cd384e1374009a` |
| 34 | `theorem` | [image_preimage](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/image-preimage.md) | 195 | `result-track:4793f0fef28f43a36dc2a6fe56453bb453ba3e38920e0ff5d391680367eff3eb` |
| 35 | `theorem` | [preimage_image](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/preimage-image.md) | 199 | `result-track:961bed7436700b1053804f68494c1185e27ca1bf9a4f146c70215bf303936f88` |
| 36 | `theorem` | [image_eq_preimage](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/image-eq-preimage.md) | 202 | `result-track:5ebbea9c7862b87412889f4871dbb0b8b95edd4b796567a344723c86f21a2b84` |
| 37 | `lemma` | [image_compl](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/image-compl.md) | 205 | `result-track:4e2e7543c725e5f85fd7115a17e201dab120a7d117eae00a544bebb88bd7ddbd` |
| 38 | `lemma` | [isInducing](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/isinducing.md) | 208 | `result-track:3fa92969ca6f91b9ba9e01c1b8154ab4dc1fa6ba31981d662825b0d20f68c278` |
| 39 | `theorem` | [induced_eq](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/induced-eq.md) | 213 | `result-track:04d4b8e1f0b331f640eaa580c834ccca4c63e997a791e2baf0936286da942014` |
| 40 | `theorem` | [isQuotientMap](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/isquotientmap.md) | 215 | `result-track:56301c208cd5a4965ca81dc9f061f7e41ef4e63ad95692386e9bee70f623b58e` |
| 41 | `theorem` | [coinduced_eq](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/coinduced-eq.md) | 222 | `result-track:11c27018e81d4a5e2c1f3563658bdb268ed87d286423965b8999b5989361527a` |
| 42 | `theorem` | [isEmbedding](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/isembedding.md) | 225 | `result-track:f097daae05cee71910bc8711b1a822d492db8f68b56093d8e9fe468ae1aed7db` |
| 43 | `theorem` | [discreteTopology](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/discretetopology.md) | 230 | `result-track:0de71f57f43d1719b0cf95086940b8e84c774dc6c09f35300c6a9508b936ec45` |
| 44 | `theorem` | [discreteTopology_iff](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/discretetopology-iff.md) | 233 | `result-track:9a6942421d95733be69a9137abc9345462990b75a6aaecc4138b70ccafbf8d79` |
| 45 | `theorem` | [isOpen_preimage](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/isopen-preimage.md) | 237 | `result-track:81cd5e95b037cf9c5d9e2b6c4fe676687c293dcdeabb64c0591c35e5d81e7162` |
| 46 | `theorem` | [isOpen_image](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/isopen-image.md) | 241 | `result-track:4400f212a80422c91135caa5dca3cded758bd1df34f0df2b6f16ad27505f30df` |
| 47 | `theorem` | [isOpenMap](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/isopenmap.md) | 244 | `result-track:968ae11f28df0bee8fbb994f8338e690d7c16b74b5e96e45454b194dce503100` |
| 48 | `theorem` | [isOpenQuotientMap](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/isopenquotientmap.md) | 246 | `result-track:38da81bf604da70454b08eb22a72425c5f38e1f87e284e4a3f2c15f04feed47b` |
| 49 | `theorem` | [isClosed_preimage](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/isclosed-preimage.md) | 250 | `result-track:64708a01620ec95c5de65970c11c0d15257afd841f43e6d68ae663d6607deda5` |
| 50 | `theorem` | [isClosed_image](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/isclosed-image.md) | 254 | `result-track:b6968baa4ce6f913d013c43ee856482e0b92cd0c91844eef505d78b40b107dc5` |
| 51 | `theorem` | [isClosedMap](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/isclosedmap.md) | 257 | `result-track:6fe2fee9a5a367fbeabf3c6f90db573591d4de8e24dcbec672c3251c256f77e9` |
| 52 | `theorem` | [isOpenEmbedding](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/isopenembedding.md) | 259 | `result-track:11fae36a714f051c92649ab84bd1b89565c2b3da380ebf457d59bc872b6932ab` |
| 53 | `theorem` | [isClosedEmbedding](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/isclosedembedding.md) | 262 | `result-track:39471b322716d71ff09f38a3b2507b0ca0a7d3b94090875cf44aedbcce5403a2` |
| 54 | `theorem` | [preimage_closure](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/preimage-closure.md) | 265 | `result-track:3b59454b081d9d180a3d2bb3e73f7976d8f97c6e31fad47c348e32bb81e755a9` |
| 55 | `theorem` | [image_closure](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/image-closure.md) | 268 | `result-track:cfe2c45ed065e1caa2a634472b9910722e75a0ab676c7fc46ade760539cadde7` |
| 56 | `theorem` | [preimage_interior](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/preimage-interior.md) | 271 | `result-track:6579f0545606a605ff3bb0680abfbdb38c43fc1046141c34b93d03cb9cc104b5` |
| 57 | `theorem` | [image_interior](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/image-interior.md) | 274 | `result-track:8d6171c81d67fcb97a41a9d679e3a721a049749f35b7b4d5f7edf39e12a440ef` |
| 58 | `theorem` | [preimage_frontier](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/preimage-frontier.md) | 277 | `result-track:45197dd84efd156b3593f941bbefa17476c0ab8343c115589a3fcb2cafbef81a` |
| 59 | `theorem` | [image_frontier](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/image-frontier.md) | 280 | `result-track:1a3171e2fba8f650ce8108d1cca7fbde641857f56b0ed85c24ef4067d016cbd4` |
| 60 | `theorem` | [comp_continuous_iff](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/comp-continuous-iff-source-edition-2.md) | 284 | `result-track:f9a7e4a29b7d0124e72315122d79a0e203d3448e85675fc94847be4f9c5f42f7` |
| 61 | `theorem` | [comp_continuous_iff'](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/comp-continuous-iff.md) | 288 | `result-track:98b03cef46feed32a8957356eaac6f89b497a14edf685c156b59eb2b9660aaa2` |
| 62 | `theorem` | [comp_continuousAt_iff](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/comp-continuousat-iff.md) | 291 | `result-track:086ab56c0713e609b38c58d10044813b6e4cbab408158a518d9bf985b422c13d` |
| 63 | `theorem` | [comp_continuousAt_iff'](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/comp-continuousat-iff-source-edition-2.md) | 295 | `result-track:e6925593cd23d97db23fe856a6760807f0680f72789c57b05fbdc64a0bf6569f` |
| 64 | `theorem` | [comp_isOpenMap_iff](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/comp-isopenmap-iff.md) | 300 | `result-track:fd61aca8f9ff939229ad3ef4f4425cfafa9359f3f5db13add2f7e2e4f0d5e33b` |
| 65 | `theorem` | [comp_isOpenMap_iff'](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/comp-isopenmap-iff-source-edition-2.md) | 307 | `result-track:fec310900c893181e5bb6b89b789dd12f297b15a486c6a5a6d573a477acad220` |
| 66 | `def` | [homeomorphOfUnique](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/homeomorphofunique.md) | 316 | `declaration-track:e2fe3d02b55a1667c4625ed68e76529122998c9b44c149e11609135e7c47f178` |
| 67 | `theorem` | [map_nhds_eq](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/map-nhds-eq.md) | 322 | `result-track:89452c4fb457c0f552c9166476b6304b3009895601f35d16a321e5aed8f47881` |
| 68 | `theorem` | [symm_map_nhds_eq](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/symm-map-nhds-eq.md) | 325 | `result-track:a9a9790a6cd1f4443ebb1bc0fe3cd5835c58d3bff6c25973011f86b27257518e` |
| 69 | `theorem` | [nhds_eq_comap](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/nhds-eq-comap.md) | 328 | `result-track:2722bc2a634bf6c7329799aa1577c0a4492627348cd8cce7a38179b5e3927d80` |
| 70 | `theorem` | [comap_nhds_eq](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/comap-nhds-eq.md) | 332 | `result-track:2efe5ba1cfb08a6dca87c78c59f7bbc7654573bef581bb658dfe4beea96b0636` |
| 71 | `def` | [toHomeomorph](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/tohomeomorph.md) | 342 | `declaration-track:d43be32a8bc027dfdd4bc0a845fce5063528d05c47e5a13c4d35669936f9e520` |
| 72 | `lemma` | [coe_toHomeomorph](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/coe-tohomeomorph.md) | 347 | `result-track:bb66d95337d93c36de2f8e3d3f9c1a994dd692d200346498ce696a7e01e24fba` |
| 73 | `lemma` | [toHomeomorph_apply](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/tohomeomorph-apply.md) | 348 | `result-track:c40aa45168e5e75f014b33e5d10600f96ac49e86f6383833308287aa2b605473` |
| 74 | `lemma` | [toHomeomorph_refl](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/tohomeomorph-refl.md) | 350 | `result-track:2c7e59a22cdcfbb1580ada3c4b32c13a2124cf692d4bd3a4f34dc37e938f7218` |
| 75 | `lemma` | [toHomeomorph_symm](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/tohomeomorph-symm.md) | 353 | `result-track:024dcebc14c4746652602b94c5611e6e1417d1d026a538d671704fc0f7a091d7` |
| 76 | `lemma` | [toHomeomorph_trans](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/tohomeomorph-trans.md) | 356 | `result-track:fe6f39251663023e118bec9ba580225059a1a5c6753e43bbafff30508f8262c5` |
| 77 | `def` | [toHomeomorphOfIsInducing](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/tohomeomorphofisinducing.md) | 362 | `declaration-track:ad488693bf266926039bd3b382a05c9da80e278f9dbd026ed9d9c1efe1d23b2c` |
| 78 | `def` | [toHomeomorphOfContinuousOpen](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/tohomeomorphofcontinuousopen.md) | 371 | `declaration-track:2aa41a5a9cf05536df313a5ae01a9683766aa23bb31d578e4df8efa0149f4f3f` |
| 79 | `theorem` | [toHomeomorphOfContinuousOpen_apply](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/tohomeomorphofcontinuousopen-apply.md) | 382 | `result-track:4100dc259ce930e6ca3094b466703a6c537b5b5ee93fece370e46f539f1a2caf` |
| 80 | `theorem` | [toHomeomorphOfContinuousOpen_symm_apply](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/tohomeomorphofcontinuousopen-symm-apply.md) | 389 | `result-track:921b68d86f465d8a841c0907ea10af06196288a1e0ef9b757c528eac890d03f4` |
| 81 | `def` | [toHomeomorphOfContinuousClosed](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/tohomeomorphofcontinuousclosed.md) | 398 | `declaration-track:9988b412420566aa4d2f9013ef5c6985500c895f61753b721301b09ccc3c8af7` |
| 82 | `theorem` | [toHomeomorphOfContinuousClosed_apply](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/tohomeomorphofcontinuousclosed-apply.md) | 406 | `result-track:21c98fc02518037ea500519d13540db6bca37077de637186aae78fd2c4c4295b` |
| 83 | `theorem` | [toHomeomorphOfContinuousClosed_symm_apply](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/tohomeomorphofcontinuousclosed-symm-apply.md) | 410 | `result-track:c805c8765f2ff2d892d962fafc438a25d31f831248d03309c263659be8f7f290` |
| 84 | `class` | [HomeomorphClass](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/homeomorphclass.md) | 417 | `declaration-track:228e07ae8b71e9e211ac2754ba493791caf1b91119c4e5b4b79145f45f1072a9` |
| 85 | `def` | [toHomeomorph](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/tohomeomorph-source-edition-2.md) | 429 | `declaration-track:ddb0094c1a1142831897b49706d53b510bdf2c258dbe5d96445b6a89f0dbfb35` |
| 86 | `theorem` | [coe_coe](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/coe-coe.md) | 435 | `result-track:ca63d131922fe76b48a9dfb09c45f5b4314e99b9d1759a0caf6f0189b39e8457` |
| 87 | `instance` | [(anonymous)](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/instance.md) | 437 | `declaration-track:2fa9d2976a2b3f8c9818471eb97a0228766da65f419427a215e3f5fd7cb47cd5` |
| 88 | `theorem` | [toHomeomorph_injective](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/tohomeomorph-injective.md) | 440 | `result-track:b05290ca23a6f1a5abac2c28a03329a9ea87faf2d72cafabbf9b75a71f1614a8` |
| 89 | `instance` | [(anonymous)](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/instance-source-edition-2.md) | 443 | `declaration-track:446f45cb104c1871d98f1578660845f4af53ad37541ca0ef061febb8168fc933` |
| 90 | `instance` | [(anonymous)](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/instance-source-edition-4.md) | 446 | `declaration-track:c31f59f6c9bbe4ec6f7c6e4fa84c1fa9dec9056c9d266438ce0ed7d18a73de46` |
| 91 | `structure` | [IsHomeomorph](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/ishomeomorph.md) | 465 | `declaration-track:801005b2df736a8758453c3b06d6239007b0ef84a26a17c0ad28c3548d38cd71` |
| 92 | `theorem` | [Homeomorph.isHomeomorph](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/homeomorph-ishomeomorph.md) | 470 | `result-track:8e95b4510c8bd372fad39d78aeb8d28b3966079e486d1e659f32579e18553b17` |
| 93 | `lemma` | [injective](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/injective-source-edition-2.md) | 475 | `result-track:ed308ccb99b8496a4162b190c87e1495463bf78a56f823cb7cc9447afc3ceca1` |
| 94 | `lemma` | [surjective](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/surjective-source-edition-2.md) | 476 | `result-track:a0c6f96508f8669fd3c9469499be4b24b7b7a73cd401faeaa30e2850e7429649` |
| 95 | `lemma` | [id](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/id.md) | 478 | `result-track:6849348e9d000dee0ee56feb04208d4d1aa174cf759d9fa7bab6fa6cbfa54311` |
| 96 | `lemma` | [comp](../../../../GeneralTopology/HomeomorphDefs.lean/declarations/comp.md) | 480 | `result-track:94550c75f41c07af9019ce5f115f2abb78c0bd08a0cde512aaa48fbe16f7aed2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=41b9a093d08de87223ac1da444d6f87c9a3a68eb269e78d18a12e82522a745fb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Defs/Variant20faf19efd2f7e038ee831c6aef3989050698cbb6a5eb1f3d3e478566abd2f9f.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Defs/Variant20faf19efd2f7e038ee831c6aef3989050698cbb6a5eb1f3d3e478566abd2f9f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
