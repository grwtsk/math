# Verification target: Algebra Hom Namespaced Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9425caa04e9fdcb026cb0a9fcfc946b20388b018",
  "lexical_observation_count": 86,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Hom/Variant0af4e6f42ffb1e80b10cb907f09a3d5369ce496de83f6727f1c1a11d739d66ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9425caa04e9fdcb026cb0a9fcfc946b20388b018`.

Source path: `GRWTSK/Algebra/GroupTheory/Hom/Variant0af4e6f42ffb1e80b10cb907f09a3d5369ce496de83f6727f1c1a11d739d66ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Hom/Variant0af4e6f42ffb1e80b10cb907f09a3d5369ce496de83f6727f1c1a11d739d66ca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AlgHom](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/alghom.md) | 42 | `declaration-track:2650378620b0b80af96807763fa1b454f5f563b659439483fc6fd36b4e105cef` |
| 2 | `class` | [AlgHomClass](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/alghomclass.md) | 58 | `declaration-track:0b1f305a4e222d63200317b276f2a78d61e22166be6a487ed28d984a0b9e6e37` |
| 3 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/instance.md) | 76 | `declaration-track:d1fbfe8a7e55684deb9c3b073da5150a478cce30d28bfa8642c2f53f0f7ab907` |
| 4 | `def` | [toAlgHom](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/toalghom-source-edition-2.md) | 86 | `declaration-track:650da0a6bd1d973b21d61eec960a219d6aee23ceb6f4888d2c44bcc513c5180b` |
| 5 | `instance` | [coeTC](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/coetc.md) | 91 | `declaration-track:a8dfaabf6851fcfa7c8451e28a9b7a0e4465c2cf51ffc935aabe8d0ba5c29f14` |
| 6 | `instance` | [algHomClass](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/alghomclass-source-edition-2.md) | 111 | `declaration-track:cfc70c667b3718724ad1af8453a9e4d0a3e7c4bf9dc0787329983efdeed1f6ef` |
| 7 | `def` | [Simps.apply](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/simps-apply.md) | 125 | `declaration-track:d9978fbc64fbe11718fefc397ba28126d5138c2f7ff82aea9c9f675c312e54f1` |
| 8 | `theorem` | [coe_coe](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/coe-coe.md) | 131 | `result-track:cbae3f05de1493cbb1a12ac4ccf81f307e9a29e04fb81c9005d6149fff9dccb7` |
| 9 | `theorem` | [toFun_eq_coe](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/tofun-eq-coe.md) | 136 | `result-track:56f75f12929667c62b3e9e73652ae5272820c06848279dcb5a1309591eadbc35` |
| 10 | `instance` | [coeOutRingHom](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/coeoutringhom.md) | 142 | `declaration-track:c6b23db06af3df20230595b198bb77dc5900ba600c9a1bc3a524f4cfd338b2e9` |
| 11 | `def` | [toMonoidHom'](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/tomonoidhom.md) | 148 | `declaration-track:0d0bfc1e4b5963da0fc4450601f6e5885cbb4bdd160a63aa2c63c7f2dd3cae28` |
| 12 | `instance` | [coeOutMonoidHom](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/coeoutmonoidhom.md) | 150 | `declaration-track:d04a75f1b22052065daf22eead2180ad717995ec5d46e57304f0272993698f67` |
| 13 | `def` | [toAddMonoidHom'](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/toaddmonoidhom.md) | 156 | `declaration-track:76832a88d348174bf65532d639eabcc6e4289eb7eada0a11d88f46d90ec9bc36` |
| 14 | `instance` | [coeOutAddMonoidHom](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/coeoutaddmonoidhom.md) | 158 | `declaration-track:fe4082c2450277e1528648d6feacebff4ecc5709dec9868ebb4c27a5f2ae8c86` |
| 15 | `theorem` | [coe_mk](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/coe-mk.md) | 165 | `result-track:0d8e0872b949e121df2e1f131c5e8b24af5da96228a54f318186c7c9e36dc993` |
| 16 | `theorem` | [coe_mks](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/coe-mks.md) | 169 | `result-track:b9385d480205277fa3efc2d7b613b1d72d0900b5638421e5c5b46b3c17160d33` |
| 17 | `theorem` | [coe_ringHom_mk](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/coe-ringhom-mk.md) | 175 | `result-track:832ef0fdda7c6db0c2aa63eccbb014122b6921b86fda9af8ef23973d5d90625b` |
| 18 | `theorem` | [toRingHom_eq_coe](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/toringhom-eq-coe.md) | 180 | `result-track:fb19113f8f29bdb89710a2bd66eee5272c5e016062b132711e9c3776a2bb7768` |
| 19 | `theorem` | [coe_toRingHom](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/coe-toringhom.md) | 185 | `result-track:c504b5a466b9745c80364f846ee4bee2bd9f7e6a19a0c5276604b87b812c088b` |
| 20 | `theorem` | [coe_toMonoidHom](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/coe-tomonoidhom.md) | 190 | `result-track:8132da50d14a2241e51f01af7056f1f4daa340678d4320bd940b77534061575b` |
| 21 | `theorem` | [coe_toAddMonoidHom](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/coe-toaddmonoidhom.md) | 195 | `result-track:fcc62ae5f8f44a845e0c7238c25276c5e92f8743554a54124a45fc2ba22ae934` |
| 22 | `theorem` | [coe_fn_injective](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/coe-fn-injective.md) | 201 | `result-track:43b79a5236cd50a395feffd227950be270520dc1c67c90397ae5874f77b04168` |
| 23 | `theorem` | [coe_fn_inj](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/coe-fn-inj.md) | 205 | `result-track:2ec313482ce8dbd1a2afc9cd65a7e4714eee41eeb1a7a4a4bf6f83dc4fd26285` |
| 24 | `theorem` | [coe_ringHom_injective](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/coe-ringhom-injective.md) | 209 | `result-track:639b0b987a2f9dec0a43adaedb998724fe2b27aa01693b5f172a358e97e58a9e` |
| 25 | `theorem` | [coe_monoidHom_injective](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/coe-monoidhom-injective.md) | 213 | `result-track:07a2b667440529e71404f000e3f322aa8ceb6b0a7af5192dfdd8f5eab37ac6b9` |
| 26 | `theorem` | [coe_addMonoidHom_injective](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/coe-addmonoidhom-injective.md) | 217 | `result-track:4b17bc388f92054109596b547c3850750ee6d1a711324ba2596f18e21892fbcf` |
| 27 | `theorem` | [congr_fun](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/congr-fun.md) | 221 | `result-track:86f79f383602c3f4f7338dcfe149c37aa910ba88033f9311a31e0472ff834f8d` |
| 28 | `theorem` | [congr_arg](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/congr-arg.md) | 225 | `result-track:6acbf129b4edfd6be1a91de8c93374b93f42468b97a0698d2b9e120ec0f3fe7d` |
| 29 | `theorem` | [ext](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/ext.md) | 230 | `result-track:6644f0020629cbeae67afc43fa0404df8fbe3aca7fdfabb454b2931cff9409a5` |
| 30 | `theorem` | [ext_iff](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/ext-iff.md) | 234 | `result-track:d6a4bcc1a5826c57c40491a4dc5df60c14531e9f5ca202b9a732811e3482f8e9` |
| 31 | `theorem` | [mk_coe](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/mk-coe.md) | 239 | `result-track:3919c50d8b54a9891454c6105670a0186f7bee92055c1f1fb1f401354b07fdee` |
| 32 | `theorem` | [commutes](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/commutes.md) | 244 | `result-track:69d3dfc65583dcdc7e69323184a38ac06c0cb3a3c2a0ae92e7432cac84b5cc7f` |
| 33 | `theorem` | [comp_algebraMap](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/comp-algebramap.md) | 248 | `result-track:2b98bffd9eba78601d7807b80a6ab73c92fb37fc853101cfcc23072f6146a12d` |
| 34 | `theorem` | [map_add](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/map-add.md) | 252 | `result-track:0ee233f844d51d74f818ab0fe939ad9f364279e84b4884a301d7467fca106b54` |
| 35 | `theorem` | [map_zero](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/map-zero.md) | 256 | `result-track:b100f099a7d445065d61f92a6436d3858dc9ed1148e5dd1774ecce158a61e33e` |
| 36 | `theorem` | [map_mul](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/map-mul.md) | 260 | `result-track:0bcc67bb91e6982ec03d30157264d2d0333fbb9670b0758e7457a18220461a98` |
| 37 | `theorem` | [map_one](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/map-one.md) | 264 | `result-track:de44857ae1db9965bca6816524e42da50d4d38892283943cf9cef3db315fd730` |
| 38 | `theorem` | [map_pow](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/map-pow.md) | 268 | `result-track:2ab233640f99bbfd6b7dbaf2f5bfeedfaa9d26fb4e2a1bd38f46ec7b881bc036` |
| 39 | `theorem` | [map_smul](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/map-smul.md) | 273 | `result-track:ed1acbc7191144ed961cc2b742b5b1b5628107af08ed47a50f4a2058c4eddd74` |
| 40 | `theorem` | [map_sum](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/map-sum.md) | 277 | `result-track:93a4ad321f2166e58b01783ec1b1f77ca57031cc47580d73db8c038a85936f87` |
| 41 | `theorem` | [map_finsupp_sum](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/map-finsupp-sum.md) | 282 | `result-track:e01406b90e711c477411594ad342d4451190010349b05d6f4c982720aa4bec99` |
| 42 | `theorem` | [map_bit0](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/map-bit0.md) | 288 | `result-track:af97235b39251d72d0902f3e7f2057012dc2d3d4f695ead012cc5e5170e1a6e7` |
| 43 | `theorem` | [map_bit1](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/map-bit1.md) | 293 | `result-track:b775d00e36b2191d754290f3cb73715d73c9b214220c24158af0ff12b48b2088` |
| 44 | `def` | [mk'](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/mk.md) | 298 | `declaration-track:ef2ce598273668d7eeb9f9bafc496c6cafd203883b642135a515125b7af56a3f` |
| 45 | `theorem` | [coe_mk'](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/coe-mk-source-edition-2.md) | 305 | `result-track:474e774f4082fdbb7c1becbccfb31fa55022fc518344587089603b8888fd298e` |
| 46 | `def` | [id](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/id.md) | 314 | `declaration-track:45e57d4c4ae29e21de38b9896bccc71b407bd942c70610e400a789a55ea7ca6f` |
| 47 | `theorem` | [coe_id](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/coe-id.md) | 319 | `result-track:d6c5a2be5a192ff208deab8231c8738a1b44d49e7d923af9b650b0cc5e071dfa` |
| 48 | `theorem` | [id_toRingHom](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/id-toringhom.md) | 324 | `result-track:337fded6caf54a302c91e313015842d25e364c7e0b5483722a5bc687616c5b74` |
| 49 | `theorem` | [id_apply](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/id-apply.md) | 330 | `result-track:8e97791406264c324e3648a366f946e0e13cdb62fee5f8687950dcfc86294902` |
| 50 | `def` | [comp](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/comp.md) | 335 | `declaration-track:a48b42ae2d29421b3c3e8fb73c47963e6bf67e3ddd4957bf950fdd0b3663e0b4` |
| 51 | `theorem` | [coe_comp](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/coe-comp.md) | 341 | `result-track:ee9a42ad441a57a34a3b8dbdcca05088ebc091572f51c5a56981c49a3514e4b6` |
| 52 | `theorem` | [comp_apply](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/comp-apply.md) | 345 | `result-track:cca6ff7295c2ac251aba0803a4a34636c06f1056e3b5770c013123181e02c983` |
| 53 | `theorem` | [comp_toRingHom](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/comp-toringhom.md) | 349 | `result-track:834d02df2af8847016fb8be860b84b085434e43aacd9b2ace484290b1528af9b` |
| 54 | `theorem` | [comp_id](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/comp-id.md) | 355 | `result-track:cfe7010f3b45db4a33f12f07b83d1b00c02aa25c134d92375edff1a9d40bc325` |
| 55 | `theorem` | [id_comp](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/id-comp.md) | 360 | `result-track:a723a81a23b866d544e9f2daa42f303122a96bfc72100ad4b65e9954268f3c8a` |
| 56 | `theorem` | [comp_assoc](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/comp-assoc.md) | 364 | `result-track:d12632b78811299fb9b9093030523f9ca2a18b57c2c9d3e4aabd2bab5694d159` |
| 57 | `def` | [toLinearMap](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/tolinearmap.md) | 370 | `declaration-track:109695e273ea561f20af4ca8500393736280b3651cbc32af6ad8f99d0c400369` |
| 58 | `theorem` | [toLinearMap_apply](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/tolinearmap-apply.md) | 377 | `result-track:08e702bfa86c65e85078245d831dc019d2b8f9b0a164e8d9f77282b26bb10007` |
| 59 | `theorem` | [toLinearMap_injective](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/tolinearmap-injective.md) | 381 | `result-track:3048b0b10624024765242fe00973a3c21239470e34ac156258e3758fb85477f8` |
| 60 | `theorem` | [comp_toLinearMap](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/comp-tolinearmap.md) | 387 | `result-track:44c07c7424521c0e41ef248e1cb423cfda929fed85ae54a9efa511c9edfb588c` |
| 61 | `theorem` | [toLinearMap_id](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/tolinearmap-id.md) | 393 | `result-track:df0fb9c8a996f7e24389bfb54b3cb109acedba536b34e56c354fa9c8d4f30ef5` |
| 62 | `def` | [ofLinearMap](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/oflinearmap.md) | 399 | `declaration-track:57cc9d92cc35b757cfed843ecefb1b867c99f5ca1fd431983b45c564a8f1da15` |
| 63 | `theorem` | [ofLinearMap_toLinearMap](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/oflinearmap-tolinearmap.md) | 409 | `result-track:c05734c0db36174cfe82242bebd8cbb0b5a20552bd1e72aa75781092443f2d78` |
| 64 | `theorem` | [toLinearMap_ofLinearMap](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/tolinearmap-oflinearmap.md) | 416 | `result-track:f797792517c686efa3484c18e38e5e55b151a8fc743a502af88dce11779b6677` |
| 65 | `theorem` | [ofLinearMap_id](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/oflinearmap-id.md) | 423 | `result-track:1ea3321e9262ed49d33c5416ea63c1c711aeecc86c8194554a65cfd533081d43` |
| 66 | `theorem` | [map_smul_of_tower](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/map-smul-of-tower.md) | 428 | `result-track:41e44eeeb146e15067822e19d36c1ea7851c7110eb97c4e159ef4f4cb8a798de` |
| 67 | `theorem` | [map_list_prod](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/map-list-prod.md) | 433 | `result-track:a712dd6e4694c27ba8cce7d9ab89e63eba0878b3e3cf028e4e5dee3aeb67c363` |
| 68 | `instance` | [End](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/end.md) | 438 | `declaration-track:3ba30460ae6bf452d6765ff267f2881af95623fbf0a1aef536d2cbc6baba03e6` |
| 69 | `theorem` | [one_apply](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/one-apply.md) | 447 | `result-track:ebf27efa80a448faf0c8cacf5c8a8bebc01aac84ebc93385a5532db6865a5e44` |
| 70 | `theorem` | [mul_apply](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/mul-apply.md) | 452 | `result-track:7942053f9df8c316b212ab88f0a3f2d781c67585cd937063a0d3fcd179fd507c` |
| 71 | `theorem` | [algebraMap_eq_apply](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/algebramap-eq-apply.md) | 456 | `result-track:ac0782ffcc566abee680d341558a5442d66e90f6172733e793c05264e79f2f63` |
| 72 | `theorem` | [map_multiset_prod](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/map-multiset-prod.md) | 469 | `result-track:206d374f01126ce9e01357ac80f029499b07fca68687dd28e1b63b07a28aab20` |
| 73 | `theorem` | [map_prod](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/map-prod.md) | 473 | `result-track:f80243e0fb706a5394ef24a6df474abd095c5972bc804c34224d013648afa8db` |
| 74 | `theorem` | [map_finsupp_prod](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/map-finsupp-prod.md) | 478 | `result-track:5edd61c184649b49de54d67c88db077a0167414928d1be23e1cc6f880ed5e737` |
| 75 | `theorem` | [map_neg](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/map-neg.md) | 491 | `result-track:7de7baf8b3e998c3f614e9bdef4ae87ede527287c4c7edd1892b23cd2ae87c1f` |
| 76 | `theorem` | [map_sub](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/map-sub.md) | 495 | `result-track:e37ee3b4f519c0658ec79a228174992da75ebb629b13d8d030b48bfc6da61e61` |
| 77 | `def` | [toNatAlgHom](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/tonatalghom.md) | 508 | `declaration-track:be500d3e00b2a3d1e96210a2bbd4e3554fc4bedba47bd87adc02b85cd69008f6` |
| 78 | `def` | [toIntAlgHom](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/tointalghom.md) | 515 | `declaration-track:a46c23390fd46b5e9a83a7c4b05e32b78a287e43710e07c07045b699d19413a9` |
| 79 | `def` | [toRatAlgHom](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/toratalghom.md) | 521 | `declaration-track:0ee2ed4183ffb7cad92bd123d7695833ffeba0df86ea6bbbbb5492b4d5b5d001` |
| 80 | `theorem` | [toRatAlgHom_toRingHom](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/toratalghom-toringhom.md) | 526 | `result-track:84774bfd4ff6730de1246a7025d5013a4548fd553e54bae09b50e595eedf6f5a` |
| 81 | `theorem` | [AlgHom.toRingHom_toRatAlgHom](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/alghom-toringhom-toratalghom.md) | 538 | `result-track:7a7680f1d81669d895278cc37c48a8bac953538de558343bbbf836f168a93ccd` |
| 82 | `def` | [RingHom.equivRatAlgHom](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/ringhom-equivratalghom.md) | 545 | `declaration-track:68785915407e1d1306516749c87ce75bf9ef7bf6be517e8e3323474807671d6c` |
| 83 | `def` | [ofId](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/ofid.md) | 562 | `declaration-track:3a889d63d0bd8fb4955a3f930aac2db6c2e408affa78e4c40756ac6e597a5949` |
| 84 | `theorem` | [ofId_apply](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/ofid-apply.md) | 568 | `result-track:5ce6bf83e359b355ddd235f32edcdbaed1f9dc2bb1de16b30e64f70b0dc181aa` |
| 85 | `def` | [toAlgHom](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/toalghom.md) | 585 | `declaration-track:5e8d0f255098d4649af8635a6502060710318ac8f92826011a2474eecedab7e2` |
| 86 | `theorem` | [toAlgHom_injective](../../../../AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/declarations/toalghom-injective.md) | 591 | `result-track:4a0977417f24864188729d6f5ea624a93c341a70c4c5e802915c8280ba372112` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=906056249995edd6b94ad91474359c1b06396b4f57463f7383c1e0b1f2d0667e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Hom/Variant0af4e6f42ffb1e80b10cb907f09a3d5369ce496de83f6727f1c1a11d739d66ca.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Hom/Variant0af4e6f42ffb1e80b10cb907f09a3d5369ce496de83f6727f1c1a11d739d66ca.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
