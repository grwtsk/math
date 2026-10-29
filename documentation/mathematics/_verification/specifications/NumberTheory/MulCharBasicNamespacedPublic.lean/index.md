# Verification target: Mul Char Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1a4f9d43e29eae9bcb559cf515bfcbc90efdae91",
  "lexical_observation_count": 77,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variantaf36f5930aaa6438a33ab37bf361c486582a785cf5266cd1bb728141d71b960f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/index.md) · [Full source](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1a4f9d43e29eae9bcb559cf515bfcbc90efdae91`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variantaf36f5930aaa6438a33ab37bf361c486582a785cf5266cd1bb728141d71b960f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variantaf36f5930aaa6438a33ab37bf361c486582a785cf5266cd1bb728141d71b960f.lean.json)

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
| 1 | `structure` | [MulChar](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/mulchar.md) | 80 | `declaration-track:33338bf305e15a6c8a40790b664f4d081a728f3a9643fb29248a4ad2b1980a7b` |
| 2 | `instance` | [MulChar.instFunLike](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/mulchar-instfunlike.md) | 84 | `declaration-track:42899441f5b891963620e48c71c7913e609963e9c8bed618fa19b7b54ba44494` |
| 3 | `class` | [MulCharClass](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/mulcharclass.md) | 89 | `declaration-track:fd3107249196701ef843a2f34c323621ce53b9711332481f6f3074454ed3ebcf` |
| 4 | `def` | [trivial](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/trivial.md) | 113 | `declaration-track:59cbb45e511bbaa66ba061747b39a172c9be3483b76cd73ed30016fe4acf0dfc` |
| 5 | `theorem` | [coe_mk](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/coe-mk.md) | 126 | `result-track:e647f29e3b5fd3d0d9a201f70d3d701cf84f902b6120630931acd63c7327d619` |
| 6 | `theorem` | [ext'](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/ext-source-edition-2.md) | 130 | `result-track:ed163926a293af357c3b279b7c472b6f7359c86f34b34f29e9174257798799b5` |
| 7 | `instance` | [(anonymous)](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/instance.md) | 132 | `declaration-track:d31ee73fa4092d35f90734c2d28128c0b5d611d0eacfc28e733e3fd56864db7e` |
| 8 | `theorem` | [map_nonunit](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/map-nonunit.md) | 137 | `result-track:05a5830457e440a86ff0e6472ea5b4239c631697747cb57a32a61780bd2f86ae` |
| 9 | `theorem` | [ext](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/ext.md) | 143 | `result-track:d887dc204f419772d9e36c8f90b66c3fdb8d924a6fd64b2261c102981536485d` |
| 10 | `def` | [toUnitHom](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/tounithom.md) | 159 | `declaration-track:24e1ac4dbe4140a52bb55cfe222873f04245b71a89c9b12b648a8a234b0bd059` |
| 11 | `theorem` | [coe_toUnitHom](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/coe-tounithom.md) | 162 | `result-track:4db48ef12bac1c720e159e28f8cfe20a67119050d9bbf30e1fa4f6b2cdb5d3ea` |
| 12 | `def` | [ofUnitHom](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/ofunithom.md) | 166 | `declaration-track:edecd7de7d3585116c920a90776422e2863b0d4d6f7d4fefba16f1e8e8be06f2` |
| 13 | `theorem` | [ofUnitHom_coe](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/ofunithom-coe.md) | 187 | `result-track:bff2e5189a33b4143362fb6b60f84b1ab0298e7ded7c6fc22e0c66636dd49a9c` |
| 14 | `def` | [equivToUnitHom](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/equivtounithom.md) | 190 | `declaration-track:a722e2b90e130b186512a9e8a349f61a86d650ab653824f020f43271422175b5` |
| 15 | `theorem` | [toUnitHom_eq](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/tounithom-eq.md) | 203 | `result-track:297f35194567c28436ad86e3e459221c2ee197eb9cbc4b3f3d70a72c11e28b7a` |
| 16 | `theorem` | [ofUnitHom_eq](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/ofunithom-eq.md) | 207 | `result-track:db2234f84b027678e35d2f4ad711da74d6189ce7b29212bc3873681104d0cfa6` |
| 17 | `theorem` | [coe_equivToUnitHom](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/coe-equivtounithom.md) | 211 | `result-track:e82619838b7a9c73f8c9975c991625a30db9aad72e1bca8d3410249b53bc1486` |
| 18 | `theorem` | [equivToUnitHom_symm_coe](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/equivtounithom-symm-coe.md) | 215 | `result-track:c51eaec91fee1d2ca56d7726b33428b975cc2b4248fa4a0e04ed84dfcb1ee938` |
| 19 | `lemma` | [coe_toMonoidHom](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/coe-tomonoidhom.md) | 219 | `result-track:e40a16e2eb3dd67fc784c77d6011e90d53cd64602ced083591448b7b4eb564e2` |
| 20 | `theorem` | [apply_ne_zero_iff](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/apply-ne-zero-iff.md) | 222 | `result-track:38bd52f587a3e2d2313968b6fc234c34d6c40c12d9654ec1198ec93a600c07e5` |
| 21 | `theorem` | [apply_eq_zero_iff](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/apply-eq-zero-iff.md) | 226 | `result-track:99058ebc64f7fef58358a5cf3d9d542ce4a58da0b225ced612331b6e6efabe93` |
| 22 | `theorem` | [map_one](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/map-one.md) | 237 | `result-track:34e65a7b78e73975f1b8334cfd7ca5d40f9a2c497cb214a624453fda2c9c1133` |
| 23 | `theorem` | [map_zero](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/map-zero.md) | 241 | `result-track:eb863056983409acfecbe48142fab404894606b87e8d25290fb3837fa059e694` |
| 24 | `def` | [toMonoidWithZeroHom](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/tomonoidwithzerohom.md) | 247 | `declaration-track:074b47f9b64b8c71f3980934d7dcf4d2fbb3cb4a361989d2277d8242d5eb1432` |
| 25 | `theorem` | [map_ringChar](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/map-ringchar.md) | 255 | `result-track:d7405f7782e5d22e6e7ee0c99d0deee90a6cb73f500a355e888da6e3aa40a1d0` |
| 26 | `instance` | [hasOne](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/hasone.md) | 258 | `declaration-track:f05a06a425902b9002f21518c60625ad99083215a2f8e3e22eb9ce08c8539da6` |
| 27 | `instance` | [inhabited](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/inhabited.md) | 261 | `declaration-track:8ea3bef227c245a1d82bbc906018695e82518a2d002542a8b958171785711b06` |
| 28 | `theorem` | [one_apply_coe](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/one-apply-coe.md) | 266 | `result-track:b45f8fb38529773bb8ff82f6f85cf84ca47592250c8dba6c388c1cb8e169803d` |
| 29 | `lemma` | [one_apply](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/one-apply.md) | 269 | `result-track:6f7f8890c5f3afeb5fc1c5df0ae4195b3d7d94e4966c3542307cebd2405b7e35` |
| 30 | `def` | [mul](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/mul.md) | 272 | `declaration-track:9dd59e22506de63f255c56dcb5a8cb09470637522788e86e340631b00bceff64` |
| 31 | `instance` | [hasMul](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/hasmul.md) | 277 | `declaration-track:6ef2546992c04c8196b4dffcb9516582b9dae140279afac5613a7de9e126df62` |
| 32 | `theorem` | [mul_apply](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/mul-apply.md) | 280 | `result-track:5752af4194f726b62e015a5f3f42d3127a4d6a9c44940d9ac3460ffc28b3defa` |
| 33 | `theorem` | [coeToFun_mul](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/coetofun-mul.md) | 284 | `result-track:2fb69800bffc92c602b11a721ccb1ff23c841de09d5e28e8d0f4d11df04d5640` |
| 34 | `theorem` | [one_mul](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/one-mul.md) | 287 | `result-track:1301856f2ed9b7ab0349c41f8d7f1b4be086967fbc740ae2996b12bab24efea5` |
| 35 | `theorem` | [mul_one](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/mul-one.md) | 291 | `result-track:27d6129f0093d8a4d8437640a25750686549dd28efe35f58ef419ec96c65fd59` |
| 36 | `def` | [inv](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/inv.md) | 296 | `declaration-track:03fcfaedf77ceddf49642f0a23b305aeeece61272302d6eb9fa68d9d863e7057` |
| 37 | `instance` | [hasInv](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/hasinv.md) | 301 | `declaration-track:49bd84e57930d081d7a2a9436efcee82fbf9bcbb1d89599ba9bbf9a7e4cf6b5a` |
| 38 | `theorem` | [inv_apply_eq_inv](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/inv-apply-eq-inv-source-edition-2.md) | 305 | `result-track:4b864ef8f6cef9541e288063fcbfc360d48e0d79f1dcaec9f1de352e1ee207b9` |
| 39 | `theorem` | [inv_apply_eq_inv'](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/inv-apply-eq-inv.md) | 310 | `result-track:3f62415fd144a6657047fa8795fab35b68f3c36f4cd17940fb7e11b87cf412f4` |
| 40 | `theorem` | [inv_apply](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/inv-apply-source-edition-2.md) | 316 | `result-track:cc82a3fe67173fec6dd3a66c8c72dcc95da5a093ca0a3d8503b5e9a3de2e573f` |
| 41 | `theorem` | [inv_apply'](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/inv-apply.md) | 332 | `result-track:77bcef484aabf5494d7ae7bfbfe582860d9b340a93560e3650b08b4d090e72c7` |
| 42 | `theorem` | [inv_mul](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/inv-mul.md) | 336 | `result-track:4664f71734a35be1b9810d0b78c93a24dfe57b0aed8486a932684e7a6f6a1ee5` |
| 43 | `instance` | [commGroup](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/commgroup.md) | 343 | `declaration-track:382fb082b0b9e15c2dae1be6cacd9ec631d7947ded7b74dbd98ce1ce4a0b7a49` |
| 44 | `theorem` | [pow_apply_coe](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/pow-apply-coe.md) | 357 | `result-track:f1b950c34464b861ad4606b802248dbfe24203a4378bc253169c99a2e40381ab` |
| 45 | `theorem` | [pow_apply'](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/pow-apply.md) | 363 | `result-track:df5efb1a36977f736c807e9a9c061b2fad77625dae4564cfd0caafc61bc59659` |
| 46 | `lemma` | [equivToUnitHom_mul_apply](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/equivtounithom-mul-apply.md) | 368 | `result-track:1b2cc6948411bf4b7506dd505e51a8c7e70680b3bfb6682f36ae3a805bb14f4a` |
| 47 | `def` | [mulEquivToUnitHom](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/mulequivtounithom.md) | 377 | `declaration-track:d4e5f790ab45cefb6bde030304eceb7d694cb6fe1846394a0d207ed09704f284` |
| 48 | `def` | [domRestrict](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/domrestrict.md) | 390 | `declaration-track:0dffecba1a2a4dca09e81626be786dca4243d9b09f8ae83beba802ec73404644` |
| 49 | `def` | [domRestrictHom](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/domrestricthom.md) | 401 | `declaration-track:466c89230408ff960f1b05b15491a65cb2b98e8739499a00f58c581c8fe677c6` |
| 50 | `lemma` | [eq_one_iff](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/eq-one-iff.md) | 431 | `result-track:b86ee20af79d5d1b36619ad3f6a2469d6680e687e93508e69ae3ae8e876e161f` |
| 51 | `lemma` | [ne_one_iff](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/ne-one-iff.md) | 434 | `result-track:50973cffbb303092ef0d2f988ec5bda422cd3d1bcbeab702880bc9c824daf2d9` |
| 52 | `theorem` | [domRestrict_eq_one_iff](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/domrestrict-eq-one-iff.md) | 437 | `result-track:18ba7340275a4145501a8256e274fe959280e01e7fc3d5f8514839af12bf6f4e` |
| 53 | `def` | [IsQuadratic](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/isquadratic.md) | 450 | `declaration-track:f010bd36e741e505201bde8bd158bcad1c9be0049302e9e9739ef435dd4711df` |
| 54 | `theorem` | [IsQuadratic.eq_of_eq_coe](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/isquadratic-eq-of-eq-coe.md) | 455 | `result-track:f324dc227d92c3ba10a16c498ad022759da8d21d80c5de20c4f46f98d3a2a0f4` |
| 55 | `def` | [ringHomComp](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/ringhomcomp.md) | 462 | `declaration-track:ab61fb6955e2a980a1f2f763e0843ef58b2f9d19408bb56b6ef6053d281554f0` |
| 56 | `lemma` | [ringHomComp_one](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/ringhomcomp-one.md) | 468 | `result-track:b2f280cba35b769ddbce470969974d0e004db958849ad1bfa331628a8fbb8178` |
| 57 | `lemma` | [ringHomComp_inv](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/ringhomcomp-inv.md) | 472 | `result-track:435f9f1fb28d71aa71d00158cc6020a356fae8c90c40f0694c48fde184e2917d` |
| 58 | `lemma` | [ringHomComp_mul](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/ringhomcomp-mul.md) | 477 | `result-track:aa47c1035a16c7165b4ff7164adb04bac6b86e396a76fa921cafb2ac61282445` |
| 59 | `lemma` | [ringHomComp_pow](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/ringhomcomp-pow.md) | 482 | `result-track:0eae537b02bc4b34637e114cd805926d0530cae8dae686bf6feccae7a8460c7d` |
| 60 | `def` | [ringHomCompHom](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/ringhomcomphom.md) | 490 | `declaration-track:69f0bcbb155c3617875bf98e00845017ffabe4c4aa35874ba517d47d934930ef` |
| 61 | `lemma` | [ringHomComp_zpow](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/ringhomcomp-zpow.md) | 495 | `result-track:194b1df698faaffdec4e164b363b66963ec2fac4c59d8f7753a1f8a82dbe671c` |
| 62 | `theorem` | [zpow_apply_coe](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/zpow-apply-coe.md) | 500 | `result-track:d28bd3208fd8e4d8c8f048e80ce6ac4194ae61d1f79ea62daefbd0594d7de31a` |
| 63 | `lemma` | [injective_ringHomComp](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/injective-ringhomcomp.md) | 506 | `result-track:54bab91fd602d83468027a811415cdf59ef36521fe750043e2c041116c39cdc4` |
| 64 | `lemma` | [ringHomComp_eq_one_iff](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/ringhomcomp-eq-one-iff.md) | 512 | `result-track:047e833b176f2eaa614259fa13b29f14bb94144eed895a2cb7f2904419f054c1` |
| 65 | `lemma` | [ringHomComp_ne_one_iff](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/ringhomcomp-ne-one-iff.md) | 517 | `result-track:9b6b8f6a6cfe53bf4135735cc852039312748503ac50f1f57f139d2e50f330e4` |
| 66 | `theorem` | [IsQuadratic.comp](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/isquadratic-comp.md) | 522 | `result-track:fa6c1394a34a57ad83535a84cd06b088f85096cd70cb8acba729754306e4e816` |
| 67 | `theorem` | [IsQuadratic.inv](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/isquadratic-inv.md) | 528 | `result-track:1eda9e7f602d23fd745990f69ec6f83d3c3a24ae1f4c4e64a619523a324e5196` |
| 68 | `theorem` | [IsQuadratic.sq_eq_one](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/isquadratic-sq-eq-one.md) | 539 | `result-track:b4b1bfd99c9d08f11d7617b2b2b457a6293a40fb9b829cec4466d113a97657bf` |
| 69 | `theorem` | [IsQuadratic.pow_char](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/isquadratic-pow-char.md) | 544 | `result-track:4f66a7c117c211c8334044de1ae7a87f326d55aea304e4e83361def55d1e9ad9` |
| 70 | `theorem` | [IsQuadratic.pow_even](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/isquadratic-pow-even.md) | 554 | `result-track:3757ee77a76e692c2f70da847af9670285db69479716a43a9e8f651beeac3cb7` |
| 71 | `theorem` | [IsQuadratic.pow_odd](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/isquadratic-pow-odd.md) | 560 | `result-track:94252fb30e21db6be73c4b97e9c0a38ac9e6adffef133987cabdfc6f9eab7643` |
| 72 | `lemma` | [isQuadratic_iff_sq_eq_one](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/isquadratic-iff-sq-eq-one.md) | 567 | `result-track:1d3d7e6de6aadb21c5daf8aa25ebfeadec7350a8a8fc8e2b4798ef5e7a59eecc` |
| 73 | `lemma` | [pow_card_eq_one](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/pow-card-eq-one.md) | 596 | `result-track:5ff5982220ab98520ea5cac86298d48347f12d31965dfa1925078468ef913c71` |
| 74 | `lemma` | [orderOf_pos](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/orderof-pos.md) | 603 | `result-track:3cd98a154f381ef7040ca72c9253a77b944b4ff3ebe520ea3d12bd272f73129d` |
| 75 | `theorem` | [sum_eq_zero_of_ne_one](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/sum-eq-zero-of-ne-one.md) | 616 | `result-track:510f0cf4a876fa426ac27c58414c6700a9672d0375268d539076209f27bdde27` |
| 76 | `theorem` | [sum_one_eq_card_units](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/sum-one-eq-card-units.md) | 623 | `result-track:207404362f1127781433f41b6b8e0dc8269acd17eb241af2eb489e27ba020fad` |
| 77 | `lemma` | [val_neg_one_eq_one_of_odd_order](../../../../NumberTheory/MulCharBasicNamespacedPublic.lean/declarations/val-neg-one-eq-one-of-odd-order.md) | 649 | `result-track:d4522bafc3ddc616891feb8ecc72faaf538a363a40d5537f79c39bc5e861f58b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=21f1a9dd497858ceb726e63b032de4756c45c7f5e104ddb649c26309371376bd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Basic/Variantaf36f5930aaa6438a33ab37bf361c486582a785cf5266cd1bb728141d71b960f.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Basic/Variantaf36f5930aaa6438a33ab37bf361c486582a785cf5266cd1bb728141d71b960f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
