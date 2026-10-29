# Verification target: Group Type Tags Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc94c39e9852ca73cd58f4dea92129b23a45ce3a",
  "lexical_observation_count": 92,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/TypeTags/Variantb1dac1b0fc26daad42c033c58170cd456e5d93dd80c1f1347b8e55d1a5a17919.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc94c39e9852ca73cd58f4dea92129b23a45ce3a`.

Source path: `GRWTSK/Algebra/GroupTheory/TypeTags/Variantb1dac1b0fc26daad42c033c58170cd456e5d93dd80c1f1347b8e55d1a5a17919.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/TypeTags/Variantb1dac1b0fc26daad42c033c58170cd456e5d93dd80c1f1347b8e55d1a5a17919.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Hom.Group` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finite.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Additive](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/additive.md) | 49 | `declaration-track:7e5191ccdb1f90dd7118925a30f2a22d50a36a4120de6861190f71cb5b1fc22a` |
| 2 | `def` | [Multiplicative](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/multiplicative.md) | 54 | `declaration-track:cfeb2d4ccd29759c191245d18c3651aba92cc87b7d07d1e864273aec6cd942dc` |
| 3 | `def` | [ofMul](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/ofmul.md) | 60 | `declaration-track:f6bb96240802123aa524cea5818dda31fea03c640a566ed9451e9288305520b7` |
| 4 | `def` | [toMul](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/tomul.md) | 65 | `declaration-track:b02f73a9bcab800e6ba04c85716f03eab91f0ed8667c506ac52f5b4db83837b5` |
| 5 | `theorem` | [ofMul_symm_eq](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/ofmul-symm-eq.md) | 69 | `result-track:ff7ed653b1b921767f41272958d869d1a9a412bffc06dff08df615bc2a9a97f1` |
| 6 | `theorem` | [toMul_symm_eq](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/tomul-symm-eq.md) | 74 | `result-track:037af30608186a14ee01d299bb6ccb86a24394c61b47b67424dbc2e343d6dda4` |
| 7 | `def` | [ofAdd](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/ofadd.md) | 83 | `declaration-track:117bc1c974edd7253a059f1445fa6cd3b4b86e5a53f4791a12e54fd9ff05d01c` |
| 8 | `def` | [toAdd](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/toadd.md) | 88 | `declaration-track:ed4ec31bd43e2a78fec2c8a9081e13afa6120a79a3dbb29b9148f2bf17fc153a` |
| 9 | `theorem` | [ofAdd_symm_eq](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/ofadd-symm-eq.md) | 92 | `result-track:b78bd3344062009c7194324795812701445a312df6a0c9c278bc6f991c94ece9` |
| 10 | `theorem` | [toAdd_symm_eq](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/toadd-symm-eq.md) | 97 | `result-track:80d5ddb2a5695848c198b2f664afa535cb7109e3890f9ec801df0efc5ea2ea99` |
| 11 | `theorem` | [toAdd_ofAdd](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/toadd-ofadd.md) | 107 | `result-track:28337ee4045697ffcca9ad634329f9cd4a040b1e13e95e052d6d350d12228a92` |
| 12 | `theorem` | [ofAdd_toAdd](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/ofadd-toadd.md) | 112 | `result-track:fc07cca4f67206e832a40e040446015ee2943003f78f7626ebd46c46c3c63d29` |
| 13 | `theorem` | [toMul_ofMul](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/tomul-ofmul.md) | 117 | `result-track:04eb47d49a22cc8ffa4a6633713fdb97e38be77abbecc5f4958ceef84da8c031` |
| 14 | `theorem` | [ofMul_toMul](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/ofmul-tomul.md) | 122 | `result-track:06a369e9aba5a09e67e9783932b073193fa104a030aeeeca0da7e80d5e3e0712` |
| 15 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/instance-source-edition-4.md) | 126 | `declaration-track:a55182300210777b8626cc7a1d110175fd21aeea5b4e4c74c52dd24fdc564fee` |
| 16 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/instance.md) | 129 | `declaration-track:0788b93c989d2685fdbc5428163e1d58a850e0936aac44214de9a53c247da625` |
| 17 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/instance-source-edition-7.md) | 132 | `declaration-track:d9830bd2b4fd301b758471021571aff8dc92228408083353110d1b7f2a05d5ad` |
| 18 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/instance-source-edition-6.md) | 135 | `declaration-track:c85d260d997f2d672e302123565e3f2985a55570a691a35ae8fbd17879688ea9` |
| 19 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/instance-source-edition-5.md) | 138 | `declaration-track:c029786baf71b9ee2c8e7c55d4742911e1897bf277bf6da10922964eb4bb0cbc` |
| 20 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/instance-source-edition-3.md) | 140 | `declaration-track:38c1c93f82dd4aef4c6f380b374930e6f4c60075d6a991f6f4bcb67107d31e36` |
| 21 | `instance` | [instNontrivialAdditive](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/instnontrivialadditive.md) | 142 | `declaration-track:1bc288b4c29eea4762020e97c53f4751ceec966a07931e4deb93a88aa8f8b5ea` |
| 22 | `instance` | [instNontrivialMultiplicative](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/instnontrivialmultiplicative.md) | 146 | `declaration-track:937e0749f3c29e9ce9dfa67ff44b2692c6dcd03e01e3364b960575930abf69d3` |
| 23 | `instance` | [Additive.add](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/additive-add.md) | 150 | `declaration-track:c5c06e51d3e7d9787124d40c8f51a3a4f66b7336c4a90c0410c77f902f649044` |
| 24 | `instance` | [Multiplicative.mul](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/multiplicative-mul.md) | 153 | `declaration-track:e42c416462c93a161f2ccbb79e6e93abc24408814a92c75ca915dd0804203c1a` |
| 25 | `theorem` | [ofAdd_add](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/ofadd-add.md) | 157 | `result-track:b561aa6ffc37fd75937c6951de173228fe65d77594bd860d87a75bda1ce7d544` |
| 26 | `theorem` | [toAdd_mul](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/toadd-mul.md) | 161 | `result-track:8c256ae73f2e406e1fd3eee6ff8d046193b24defef2d86c894722424507f1035` |
| 27 | `theorem` | [ofMul_mul](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/ofmul-mul.md) | 165 | `result-track:fcfb14854188f4cea9eb6434391d3b69ab2d60067d44dab1e09b5b6128def4fd` |
| 28 | `theorem` | [toMul_add](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/tomul-add.md) | 169 | `result-track:70528cc50de59ce63f31d14a67b44562374153179a26c2248179fdf2323f4190` |
| 29 | `instance` | [Additive.addSemigroup](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/additive-addsemigroup.md) | 172 | `declaration-track:5254f3020a50d475be162c0e6552fcd0715b8efd30274d1b1aaf58032cbf0b99` |
| 30 | `instance` | [Multiplicative.semigroup](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/multiplicative-semigroup.md) | 175 | `declaration-track:3cd07e2d9dc2685d878643466be9b7c223673eef87d9cf8fb96dddd6b72d702a` |
| 31 | `instance` | [Additive.addCommSemigroup](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/additive-addcommsemigroup.md) | 178 | `declaration-track:a7153998112dfe7a1969dc824d93c861ecce427aba5997a0e70b5d3bf2f3a20c` |
| 32 | `instance` | [Multiplicative.commSemigroup](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/multiplicative-commsemigroup.md) | 181 | `declaration-track:36e859c970ec2b07245461ef191a47ad2e051ab0b450d11f4e2896c72fdfbb34` |
| 33 | `instance` | [Additive.isLeftCancelAdd](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/additive-isleftcanceladd.md) | 184 | `declaration-track:4ac212d1b52d45c572e27b7598bffeb67e93992e8c7961efe481d9f9a703cc03` |
| 34 | `instance` | [Multiplicative.isLeftCancelMul](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/multiplicative-isleftcancelmul.md) | 187 | `declaration-track:3ffb704b1ef1f453b07b8755ce860acc414582ef1495a5b3a1de7511a9bfff42` |
| 35 | `instance` | [Additive.isRightCancelAdd](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/additive-isrightcanceladd.md) | 191 | `declaration-track:254a612889f571c4542712f17672a5a74f2c42ccd59f89890f528c8b8f676451` |
| 36 | `instance` | [Multiplicative.isRightCancelMul](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/multiplicative-isrightcancelmul.md) | 194 | `declaration-track:16d26e02c01f87b2a1a4da8d21a8ec4003b371da1fd8fc70b6188f79c617ca06` |
| 37 | `instance` | [Additive.isCancelAdd](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/additive-iscanceladd.md) | 198 | `declaration-track:9d824779a193023756171a2a703f55e9abd94f54231385f6fe7db1b041605619` |
| 38 | `instance` | [Multiplicative.isCancelMul](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/multiplicative-iscancelmul.md) | 201 | `declaration-track:ec5928fb992986ce5f035cea55ec8049057d0606d214534bc0378746f093d371` |
| 39 | `instance` | [Additive.addLeftCancelSemigroup](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/additive-addleftcancelsemigroup.md) | 204 | `declaration-track:e63095de75a1aefbf9158385ca995bc276a9dad97f681c2488e5d9f1d94cc62b` |
| 40 | `instance` | [Multiplicative.leftCancelSemigroup](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/multiplicative-leftcancelsemigroup.md) | 208 | `declaration-track:8d491db45a9414f0cc1549baed4cbb19711d475cb4c124d329d8e7b1028e0315` |
| 41 | `instance` | [Additive.addRightCancelSemigroup](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/additive-addrightcancelsemigroup.md) | 212 | `declaration-track:9e10023d7553e332c906f2afea4e0e6658388ca50e79407d780d01b7c4548d86` |
| 42 | `instance` | [Multiplicative.rightCancelSemigroup](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/multiplicative-rightcancelsemigroup.md) | 216 | `declaration-track:dd1b96c5a6e501607b1a96f94325b20bea78ce1816c5de1abe2cb15c33e9e272` |
| 43 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/instance-source-edition-8.md) | 220 | `declaration-track:deb5b7ca0879e1674531d15a68b0f44d751b3247dc0b50b508607b570544f7ee` |
| 44 | `theorem` | [ofMul_one](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/ofmul-one.md) | 224 | `result-track:a43805589802dd338e589459025d61d7e001a0c48f30e0a0d2a8b4a6bca5901d` |
| 45 | `theorem` | [ofMul_eq_zero](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/ofmul-eq-zero.md) | 228 | `result-track:3256c6a2cd4cd79256e2e40d0db11e32fb8cd11d7c8da15926e990fb33753af6` |
| 46 | `theorem` | [toMul_zero](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/tomul-zero.md) | 232 | `result-track:ca8a976701f6c87fb80a0eba61c23d24a711eef68ddf9f75f7ce225870cf763c` |
| 47 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/instance-source-edition-2.md) | 235 | `declaration-track:0f6418e9bada7845c4b9599fc9304c1d57936152c5d32cda19e57ae75d1b53f9` |
| 48 | `theorem` | [ofAdd_zero](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/ofadd-zero.md) | 239 | `result-track:062b5b1f31fdb0165bf6b9d2c2a185d4700b5296f2aefdf930bfc84b503e80bf` |
| 49 | `theorem` | [ofAdd_eq_one](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/ofadd-eq-one.md) | 244 | `result-track:9d44ca1deb55fe9f586aced627fd7a02ca3ea60c92c9d03a077f76993368b468` |
| 50 | `theorem` | [toAdd_one](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/toadd-one.md) | 249 | `result-track:fca5f18d29ebb9bb4f2c6330a9c8ac7f96c5718d4ca0144cfab1848af4b901fd` |
| 51 | `instance` | [Additive.addZeroClass](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/additive-addzeroclass.md) | 253 | `declaration-track:65210993dad1f375bf041502126dddce5a721b1ac3172950eee711e279c4fb60` |
| 52 | `instance` | [Multiplicative.mulOneClass](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/multiplicative-muloneclass.md) | 259 | `declaration-track:41e1e2d1487404a813a76e025be3d5c838a8f667f9a8a1bc80927c086baedd91` |
| 53 | `instance` | [Additive.addMonoid](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/additive-addmonoid.md) | 265 | `declaration-track:eb7bce513ce4a319cd98004933d283bd1f27efc81ae9108d1d4e1291bbaaf95c` |
| 54 | `instance` | [Multiplicative.monoid](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/multiplicative-monoid.md) | 273 | `declaration-track:e0994415dafe101f0f01e0b39faa4e8c66bfcea0313434c8186166039d9b5cfc` |
| 55 | `instance` | [Additive.addLeftCancelMonoid](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/additive-addleftcancelmonoid.md) | 281 | `declaration-track:c2abba3142643fc4c2528992b3a9e1e38e66b3a77b5023850ac107a2518e1cf0` |
| 56 | `instance` | [Multiplicative.leftCancelMonoid](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/multiplicative-leftcancelmonoid.md) | 284 | `declaration-track:921167fc17e98f8bbb2d4f8e5248b4bf9550f399be26c9076490ef6944d8ef26` |
| 57 | `instance` | [Additive.addRightCancelMonoid](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/additive-addrightcancelmonoid.md) | 288 | `declaration-track:bb41908cf650ed66eeead8cfc5c2974b7cbf039d5deccbfa6ef7673905e39364` |
| 58 | `instance` | [Multiplicative.rightCancelMonoid](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/multiplicative-rightcancelmonoid.md) | 291 | `declaration-track:b2d00d3f98e1b25469aa225017edbfee17422fc3b7aa914142add6eeda7ae8b4` |
| 59 | `instance` | [Additive.addCommMonoid](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/additive-addcommmonoid.md) | 295 | `declaration-track:aa0909bafcfad61916826ff32f7d6133649c0266c767fd4b26ef92aae0452cd1` |
| 60 | `instance` | [Multiplicative.commMonoid](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/multiplicative-commmonoid.md) | 298 | `declaration-track:9790a3b875142cec6b4f7e0ad41f0cc75eae6081a1969da07b4e5e99542b470e` |
| 61 | `instance` | [Additive.neg](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/additive-neg.md) | 301 | `declaration-track:9a5ec8815d3356a857fead28e624f1d1ab40c3425d34052e7c552c1353651c09` |
| 62 | `theorem` | [ofMul_inv](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/ofmul-inv.md) | 305 | `result-track:b0bace87ae5eb0bd976da51191ac969dc9ca7a9cb48f065a14863d853fc39dea` |
| 63 | `theorem` | [toMul_neg](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/tomul-neg.md) | 310 | `result-track:3afc996fc12b326b770edaa96633040c8146e6a02cf22ba10e7f9760c608c31e` |
| 64 | `instance` | [Multiplicative.inv](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/multiplicative-inv.md) | 314 | `declaration-track:b727438e1d0d8ece07070c3eecb4a511c4284ae470e84e27206e00e42573e05e` |
| 65 | `theorem` | [ofAdd_neg](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/ofadd-neg.md) | 318 | `result-track:dc261a01dc305b74a9e2e222dca4b3101129482ac148d40d17fc5d2ee0ce968e` |
| 66 | `theorem` | [toAdd_inv](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/toadd-inv.md) | 323 | `result-track:425296284d9a4e593ac63a21d42e945df55c899e378cb2700d75e2536c6bafe5` |
| 67 | `instance` | [Additive.sub](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/additive-sub.md) | 327 | `declaration-track:3ababb19ef576316bf7e92abe6c2179a373307fd59c2e266c9b6df7bd406a4fa` |
| 68 | `instance` | [Multiplicative.div](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/multiplicative-div.md) | 331 | `declaration-track:71066ac81c89687796f6e32e35d6ec5e1f52f43d338c47fd85bddc105a702fd9` |
| 69 | `theorem` | [ofAdd_sub](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/ofadd-sub.md) | 336 | `result-track:b5fa58eb6c38aafd2b1d9dc34b998167ec73fc5bb05dc1b357d25807d0268f3d` |
| 70 | `theorem` | [toAdd_div](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/toadd-div.md) | 341 | `result-track:9ac8442d5724bbc4ebcec22cddfc6527a11c086d3e3ea8ea969f03a91cc89261` |
| 71 | `theorem` | [ofMul_div](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/ofmul-div.md) | 346 | `result-track:d6330dc8a1db41d31931fc0202519eb26c9e4694d6d67c911298c226a673f77b` |
| 72 | `theorem` | [toMul_sub](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/tomul-sub.md) | 351 | `result-track:36a35c0a35cbd9124f36bfa915b03c59333c199c285837a4a60cc99c5fe89e00` |
| 73 | `instance` | [Additive.involutiveNeg](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/additive-involutiveneg.md) | 355 | `declaration-track:a7fe7db9d7079ba60b7ac579c6e751f1478a4b0cf6845d3b772bc5bca0395c83` |
| 74 | `instance` | [Multiplicative.involutiveInv](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/multiplicative-involutiveinv.md) | 358 | `declaration-track:4de302daa7ab99b4eaf3e1f3cbba129fa5ad2fa19df43fc58546513dada9e457` |
| 75 | `instance` | [Additive.subNegMonoid](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/additive-subnegmonoid.md) | 361 | `declaration-track:37117bf855a3941a190958fc0dfe49c9aa44ee3483c9bfdd1c0ecf012807a894` |
| 76 | `instance` | [Multiplicative.divInvMonoid](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/multiplicative-divinvmonoid.md) | 369 | `declaration-track:0db80aca90d35a79276aa2e199713e042fa13b563f6d0cb71794b8408c6e43c8` |
| 77 | `instance` | [Additive.subtractionMonoid](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/additive-subtractionmonoid.md) | 377 | `declaration-track:fddcf29a109202181c3852a066a2353da5f6201ec8b4ad8355b3a00afde5ff71` |
| 78 | `instance` | [Multiplicative.divisionMonoid](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/multiplicative-divisionmonoid.md) | 382 | `declaration-track:1945cf9be229a80274c7f550bb8b2c10769f66a2b6fe8e731793a2aaf84853fd` |
| 79 | `instance` | [Additive.subtractionCommMonoid](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/additive-subtractioncommmonoid.md) | 387 | `declaration-track:12ae1f804789b56114e09eaf3e5578bff334e47e0bc302c0413430c78e9d74df` |
| 80 | `instance` | [Multiplicative.divisionCommMonoid](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/multiplicative-divisioncommmonoid.md) | 391 | `declaration-track:db288bb19dcdfa479e68b2e329f90076d760a9fd6adcc5fad8db9089f4253920` |
| 81 | `instance` | [Additive.addGroup](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/additive-addgroup.md) | 395 | `declaration-track:b4b837bd30d031b7f46dea89a443038607df3ac6c585a49dcdbaaa634364190c` |
| 82 | `instance` | [Multiplicative.group](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/multiplicative-group.md) | 398 | `declaration-track:195024fc3667dd742a2fd84bc17a2660b1c88250001433e2ea68352d47c2f85c` |
| 83 | `instance` | [Additive.addCommGroup](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/additive-addcommgroup.md) | 401 | `declaration-track:e7de792feba241a56f3968f67103631f8926fb67582603ef6001f0257e93786d` |
| 84 | `instance` | [Multiplicative.commGroup](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/multiplicative-commgroup.md) | 404 | `declaration-track:6ee9b3cdb31b196de836f44a342a6f926f78db6ea5897c809f01899ca84fa9da` |
| 85 | `def` | [AddMonoidHom.toMultiplicative](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/addmonoidhom-tomultiplicative-source-edition-3.md) | 409 | `declaration-track:b6fb164f2039bf7811b0e492d3e2160cde7fc90a67d7a80af0e2082d8b94ee76` |
| 86 | `def` | [MonoidHom.toAdditive](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/monoidhom-toadditive.md) | 429 | `declaration-track:eab18787db1037284c1ade2f0f4df281f73275b8c484b91963b13d40c2c161e5` |
| 87 | `def` | [AddMonoidHom.toMultiplicative'](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/addmonoidhom-tomultiplicative-source-edition-2.md) | 449 | `declaration-track:a8a4bc716420cfa8336fab249ce52289a4ec7e7ddef462a69b35c107838d12dd` |
| 88 | `def` | [MonoidHom.toAdditive'](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/monoidhom-toadditive-source-edition-3.md) | 469 | `declaration-track:f924e517699ae482f1b984af4941832d6aa45c2a5e8b7bd06982ddec91f505be` |
| 89 | `def` | [AddMonoidHom.toMultiplicative''](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/addmonoidhom-tomultiplicative.md) | 478 | `declaration-track:72303ef3b224f8ee523296304573fd68132423f825f7b2419a44315144125e96` |
| 90 | `def` | [MonoidHom.toAdditive''](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/monoidhom-toadditive-source-edition-2.md) | 498 | `declaration-track:ecf848bf4c620d202686f699d6ba926d3cf3ed4556271565fd04aa0bc67bb7ad` |
| 91 | `instance` | [Additive.coeToFun](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/additive-coetofun.md) | 511 | `declaration-track:5a3d1ea70e687bf318a83c6ade7c51296284e9e51506a33ac00f1e1047b6d8c7` |
| 92 | `instance` | [Multiplicative.coeToFun](../../../../GroupTheoryAndGeneralizations/GroupTypeTagsNamespaced.lean/declarations/multiplicative-coetofun.md) | 522 | `declaration-track:fdb40dd24212aa6963b9fca8c252f291b2dcdb2fd872903ef0c959be636f282f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ed1a07f0a2bb6245f533fc838c4cb4dfcfdf6e67dc94526e2011f9896c1dacec -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/TypeTags/Variantb1dac1b0fc26daad42c033c58170cd456e5d93dd80c1f1347b8e55d1a5a17919.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/TypeTags/Variantb1dac1b0fc26daad42c033c58170cd456e5d93dd80c1f1347b8e55d1a5a17919.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
