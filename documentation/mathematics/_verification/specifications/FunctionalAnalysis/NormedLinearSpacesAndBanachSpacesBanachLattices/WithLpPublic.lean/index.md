# Verification target: With Lp Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "674fcd22069892bf600d122ab78a46b836cb584e",
  "lexical_observation_count": 66,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/WithLp/Variantf02507031f01c655e61dd1894b74a3452b2f8aedcba55dda9fa0d60e4db0d57d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `674fcd22069892bf600d122ab78a46b836cb584e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/WithLp/Variantf02507031f01c655e61dd1894b74a3452b2f8aedcba55dda9fa0d60e4db0d57d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/WithLp/Variantf02507031f01c655e61dd1894b74a3452b2f8aedcba55dda9fa0d60e4db0d57d.lean.json)

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
| 1 | `structure` | [WithLp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/withlp.md) | 50 | `declaration-track:2442474d92bfa30ffa5f66c43269df1b549c5fca37e7df96525783ce8c0249af` |
| 2 | `def` | [WithLp.delabToLp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/withlp-delabtolp.md) | 62 | `declaration-track:1da0c370c0128af0425f687cd90be9475ef1047e1f85c70ef92396237f7d4593` |
| 3 | `def` | [equiv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/equiv.md) | 72 | `declaration-track:4b455a8e2ab13ef891ef945b0c1e0131bedc849d62ee770edb47e7f497c8ce7c` |
| 4 | `lemma` | [equiv_symm_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/equiv-symm-apply.md) | 79 | `result-track:2c2a67647cefa9f9007dc3063b6882d70a776d193c64c5c009d734882e34d2d0` |
| 5 | `instance` | [instNontrivial](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/instnontrivial.md) | 83 | `declaration-track:5fad4770420cbd8a7f8a00463db5fb60fbf18d4f1c39135502a783ccc01c64e7` |
| 6 | `instance` | [instUnique](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/instunique.md) | 84 | `declaration-track:7f08d91f0832516419341cdda8f45830ded916446c0f31fab29353f8232e65ce` |
| 7 | `instance` | [instDecidableEq](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/instdecidableeq.md) | 85 | `declaration-track:4fefdf0285a4dcd217f3895780f4a02148e3e9c7d19662dc90caa3101866b864` |
| 8 | `instance` | [instAddCommGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/instaddcommgroup.md) | 88 | `declaration-track:8ed769d2b4dd3aab1b7dfa2c633084855943ade82fb3c94c458130f556802ad7` |
| 9 | `instance` | [instSMul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/instsmul.md) | 90 | `declaration-track:7c81043db82d8f0c663c3d444b5e08034539e1a4e08c5f1f93d89b8907e36902` |
| 10 | `instance` | [instMulAction](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/instmulaction.md) | 92 | `declaration-track:54045db60eda2256c8cd7335adaffe309bc903ce37130bbb9f9bfcb8817892d7` |
| 11 | `lemma` | [ofLp_toLp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/oflp-tolp.md) | 97 | `result-track:789a012c92658a0d9b37c848d748c08908feadcf6150d7e1e97413e2a9a9dab8` |
| 12 | `lemma` | [toLp_ofLp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/tolp-oflp.md) | 98 | `result-track:847eb97f690d38cfc619f3a22af05079bf6826d8f6a7e300707fec5518149fb9` |
| 13 | `lemma` | [ext_iff](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/ext-iff.md) | 100 | `result-track:420e954cf61a3e76bd1c1f0bc3d6fa6b2fc54c86d436e625af9609c1ce8e5bec` |
| 14 | `lemma` | [ofLp_surjective](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/oflp-surjective.md) | 103 | `result-track:0930ae0b196435243ff07d53552e4e1ec78f80ac1f991119ff1558c048affc4e` |
| 15 | `lemma` | [toLp_surjective](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/tolp-surjective.md) | 106 | `result-track:4d4da17d190defe3cc37264926cbade0ef16860a5720ee51b09889540f22e733` |
| 16 | `lemma` | [ofLp_injective](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/oflp-injective.md) | 109 | `result-track:199ad76f189dbb5aa2f4a4976a0949cfc5a0899a9c782e1c4262ab3ddd1af046` |
| 17 | `lemma` | [toLp_injective](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/tolp-injective.md) | 112 | `result-track:5d1619f9ba41c8dab1d9f8e0da7ea26da44e6ebfdc48d4348eb885b9074bce45` |
| 18 | `lemma` | [ofLp_bijective](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/oflp-bijective.md) | 115 | `result-track:baac1e71667e231417e7407eb933c0c911d46be6f944f62f017fe558001748c7` |
| 19 | `lemma` | [toLp_bijective](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/tolp-bijective.md) | 118 | `result-track:8514a08e2b233f0338d18a8b98e00ace47f6f6bb0cf8ef5bbe8b3bdec0227c97` |
| 20 | `def` | [map](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/map.md) | 123 | `declaration-track:56ce776630c047574ab7bd85e36827bddfb7c49282b3bd10909f3b42262e6e38` |
| 21 | `theorem` | [map_id](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/map-id.md) | 127 | `result-track:ac8ef6a8275df1e8f4eee3bf60f4968d17d5932b9de951600317252c6f5543ee` |
| 22 | `theorem` | [map_comp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/map-comp.md) | 130 | `result-track:53be67f25f8ad39b37e3a7b975b0c08715bace4d4dc2fc0b1c1b47f478454cbf` |
| 23 | `def` | [congr](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/congr.md) | 135 | `declaration-track:4d14daedf8f130cb514fddae952018e848793ea98af08beec961119d9b3005a2` |
| 24 | `theorem` | [coe_congr](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/coe-congr.md) | 139 | `result-track:db3f6c03252960d4534f2630f7cfa0b20195062dff5005ab8c5e648a5478b5a6` |
| 25 | `theorem` | [congr_refl](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/congr-refl.md) | 143 | `result-track:2d02983d9d45b97030b393a7f923af77a1ad5872377a496fcb28fb7a72e740b6` |
| 26 | `theorem` | [congr_symm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/congr-symm.md) | 147 | `result-track:a703addc00a27f43d3b9be4cd7e3d5efd2e7518b56386868baecab976aa07bd8` |
| 27 | `theorem` | [congr_trans](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/congr-trans.md) | 150 | `result-track:f9ba2b5f91baed0cb98a9ae1e5ff960c75bfe82c22071afa0b471d6d9f88f67e` |
| 28 | `lemma` | [toLp_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/tolp-zero.md) | 157 | `result-track:93c7ec4a4f6cb3bacff2c56c39b34993a806a3aa571722e285c7775d2760060e` |
| 29 | `lemma` | [ofLp_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/oflp-zero.md) | 158 | `result-track:27d645e4c02a16020f63d75ce9e610c4129c7dcdc85863cb74a7471d37635ca0` |
| 30 | `lemma` | [toLp_add](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/tolp-add.md) | 160 | `result-track:b0dbdb39575eaa4a1c8db3387356cfb505957872e3d391df51bff2189ca20236` |
| 31 | `lemma` | [ofLp_add](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/oflp-add.md) | 161 | `result-track:a17a6dc70d5158b090915a46a3ca26e1353e71934c38033a24ac896a3127760d` |
| 32 | `lemma` | [toLp_sub](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/tolp-sub.md) | 163 | `result-track:cc0d00bab1ab82a981a7b249f9bd96ff5cf452b42bf23aaabd49e317396aedec` |
| 33 | `lemma` | [ofLp_sub](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/oflp-sub.md) | 164 | `result-track:e555e66c3897f5aa3dbdc53a3c604c074d6d2bfe377d537718b3825936bd02a8` |
| 34 | `lemma` | [toLp_neg](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/tolp-neg.md) | 166 | `result-track:8a3529b76d7d9a55cf231810076671e0887aa40d6276ee47011c22808a0ac252` |
| 35 | `lemma` | [ofLp_neg](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/oflp-neg.md) | 167 | `result-track:425a95947883aa93ac2d875e62030e6480f3b88aa9b7d035f0d02481ffb89d76` |
| 36 | `lemma` | [toLp_eq_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/tolp-eq-zero.md) | 169 | `result-track:ab96d338180f12e1e346b976c6b5016cf47a23f1dfcf7f8b34efc6868ff85e82` |
| 37 | `lemma` | [ofLp_eq_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/oflp-eq-zero.md) | 170 | `result-track:565e4e7d62c4225e83618ba272d8510a68f205723a3ad76f74ac34ced2d13bde` |
| 38 | `lemma` | [toLp_smul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/tolp-smul.md) | 174 | `result-track:38bfe9c171abe3a3b380d04268a15a69dc6ebe88fe52cb8a3c97968cb7f59324` |
| 39 | `lemma` | [ofLp_smul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/oflp-smul.md) | 175 | `result-track:b19e8c759a93076773f1a6565daca098f8984ed5ca22acaa7f164cccb6ea4b39` |
| 40 | `instance` | [instIsScalarTower](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/instisscalartower.md) | 178 | `declaration-track:5ad33a2b13a68e0dd767cd352d30dc224fe645d5f91e130a792a0a404fea161c` |
| 41 | `instance` | [instSMulCommClass](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/instsmulcommclass.md) | 183 | `declaration-track:a20cc916e86e2b251509b4a5e6b2a050e5aeae0b20d0961f5901048681183f86` |
| 42 | `def` | [addEquiv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/addequiv.md) | 191 | `declaration-track:89490d745e4a64cda4806d44a18069876e47973111f3769302b73a533c437c9d` |
| 43 | `lemma` | [coe_addEquiv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/coe-addequiv.md) | 196 | `result-track:ad3ce9d5ec1903b0287f3d7f1b67f80bc7176bbda58e0346194234ffdb7f2dd8` |
| 44 | `lemma` | [coe_symm_addEquiv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/coe-symm-addequiv.md) | 198 | `result-track:74c40dafe28bc809c16079ed525bcbecf7d35459b87a85dd4b56795aa9f9dedf` |
| 45 | `lemma` | [ofLp_sum](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/oflp-sum.md) | 201 | `result-track:70a212198f829a62d41bd9a5c00f933b794002150000974879a034b2c1f181e0` |
| 46 | `lemma` | [toLp_sum](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/tolp-sum.md) | 206 | `result-track:720b7ed0cff31d1a41426288ef52a9dc183766479a91ee8c60424fcf8966468b` |
| 47 | `lemma` | [ofLp_listSum](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/oflp-listsum.md) | 211 | `result-track:769cb0d1d541cafbfad8466866f74e1da38d41ecb8b7c9515a3a202cc3160f0b` |
| 48 | `lemma` | [toLp_listSum](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/tolp-listsum.md) | 216 | `result-track:c953f50b7a261bc2222c5ef6f46b4b015af87ab55ddca5e1f706be5eef437bb8` |
| 49 | `lemma` | [ofLp_multisetSum](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/oflp-multisetsum.md) | 221 | `result-track:48294a6900d5db4bf33657276c6e59146fc88a000cffa1444c6246fb16300f6b` |
| 50 | `lemma` | [toLp_multisetSum](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/tolp-multisetsum.md) | 226 | `result-track:58a5f4e009c3b0a05841d3dbb7260a930b1c935a562c77a476e305d037b3af0b` |
| 51 | `instance` | [instDistribMulAction](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/instdistribmulaction.md) | 230 | `declaration-track:ba008a67826301ac9d2bf9c404b407ade91981c10daead6bde46f23e01027a9b` |
| 52 | `instance` | [instModule](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/instmodule.md) | 232 | `declaration-track:72018e14e7a5d6b6053b983efc85b25824a72e183c55f7d05df190d76dcb5063` |
| 53 | `def` | [linearEquiv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/linearequiv.md) | 237 | `declaration-track:b9204a5d324e970a21ebdb81dabf50d57e9fc982904c9da40db9086628f49956` |
| 54 | `lemma` | [coe_linearEquiv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/coe-linearequiv.md) | 241 | `result-track:fa9fdd4258bf174e83c4104776f672e74c5e08bf893cb68f3900e1fb990bd505` |
| 55 | `lemma` | [coe_symm_linearEquiv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/coe-symm-linearequiv.md) | 244 | `result-track:7dba7592990c3a00c7b4e8892a20b8b08275070520fb409261f78af9ba8f0333` |
| 56 | `lemma` | [toAddEquiv_linearEquiv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/toaddequiv-linearequiv.md) | 248 | `result-track:bc436808c9b6e0e4039b4bafdd8eee80a7bf8fc9c664010a2da3a4598e766c93` |
| 57 | `instance` | [instModuleFinite](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/instmodulefinite.md) | 251 | `declaration-track:51bf67e351803dd66a698f5de22dcd1f7683d073f3b18513d2cfdf12285ab01f` |
| 58 | `def` | [withLpMap](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/withlpmap.md) | 270 | `declaration-track:1c4d287bb9c8df2c502e279d124482376232599df122e786f9928d7ef62ccc5d` |
| 59 | `theorem` | [coe_withLpMap](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/coe-withlpmap.md) | 274 | `result-track:5816a48ea18d80fd4ae512bf3f0528bcf20915fbda2022a3d5080e84f03cd001` |
| 60 | `theorem` | [withLpMap_id](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/withlpmap-id.md) | 278 | `result-track:c3a2fecabe77d368124566e3ff547de22e0ef99895ba76bb29a08e905d2b1d6a` |
| 61 | `theorem` | [withLpMap_comp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/withlpmap-comp.md) | 282 | `result-track:bbafb7b7e2900f2a9eb9ded5a308e0841f5ab903465c4f0031ddfed2af5f795e` |
| 62 | `def` | [withLpCongr](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/withlpcongr.md) | 291 | `declaration-track:e51359d7f609861cf499fbb86709931287c83777902856715308199317c7cab8` |
| 63 | `theorem` | [coe_withLpCongr](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/coe-withlpcongr.md) | 295 | `result-track:aa967fa9448b2dbd1ca81f37f93b89f379d3f6b88534d3aa2187740481b5dc68` |
| 64 | `theorem` | [withLpCongr_symm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/withlpcongr-symm.md) | 299 | `result-track:f5d928dedce1bb9231ad4a873f95496d548a03f62291a0efcb7da82b3a2c36dc` |
| 65 | `theorem` | [withLpCongr_refl](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/withlpcongr-refl.md) | 303 | `result-track:bc5f818ba637c918308bffd898a913a3c755595142e8509a44d9be1ac4f65802` |
| 66 | `theorem` | [withLpCongr_trans](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/WithLpPublic.lean/declarations/withlpcongr-trans.md) | 307 | `result-track:977d3b6931ee127097db4d68b8978f5f169833219c4a81908bfaa5d557e79ce3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e54b1d32c03d1c49e09d4698cad9c33c2038404e787e92465ab38d1956e0681f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/WithLp/Variantf02507031f01c655e61dd1894b74a3452b2f8aedcba55dda9fa0d60e4db0d57d.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/WithLp/Variantf02507031f01c655e61dd1894b74a3452b2f8aedcba55dda9fa0d60e4db0d57d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
