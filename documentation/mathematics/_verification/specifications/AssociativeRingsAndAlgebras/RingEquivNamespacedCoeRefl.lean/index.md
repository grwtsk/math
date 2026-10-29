# Verification target: Ring Equiv Namespaced Coe Refl

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "baeba6e9ba4424cbda1e52c655134dd016524c24",
  "lexical_observation_count": 139,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Equiv/Variantd92a26125ea8aa647cc2557a9c2af4b4469b8269aa6ea754c945c46350e4f014.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `baeba6e9ba4424cbda1e52c655134dd016524c24`.

Source path: `GRWTSK/Algebra/GroupTheory/Equiv/Variantd92a26125ea8aa647cc2557a9c2af4b4469b8269aa6ea754c945c46350e4f014.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Equiv/Variantd92a26125ea8aa647cc2557a9c2af4b4469b8269aa6ea754c945c46350e4f014.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Equiv.Opposite` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Equiv` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.InjSurj` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Hom.Defs` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Set` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Notation.Prod` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [NonUnitalRingHom.inverse](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/nonunitalringhom-inverse.md) | 55 | `declaration-track:17e2dbe2955b964919e872730e67eb915ecb318e77400de8e973294be4ffe49f` |
| 2 | `def` | [RingHom.inverse](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/ringhom-inverse.md) | 62 | `declaration-track:7eaaa758e300cc35edffea3116326c40b10aec2c8dafa16af7aaeaa070117de8` |
| 3 | `structure` | [RingEquiv](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/ringequiv.md) | 71 | `declaration-track:e660eca7d0e6c55c1586d28cd2ab84cb38457a40b00e61270affc4e346965bfa` |
| 4 | `class` | [RingEquivClass](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/ringequivclass.md) | 87 | `declaration-track:eabfbaa621ddbb371b1eb630f42a7f58794938b3ddec481be79de7e35d505f80` |
| 5 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/instance-source-edition-4.md) | 97 | `declaration-track:a5df3e0aa297e3257625e711620cb1bb82b5ab0216486ee4135ee612c41ff851` |
| 6 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/instance-source-edition-8.md) | 102 | `declaration-track:fe95d0369e1ae08d102536d8f14a7d38e0e22732472a0fe92d276bbdeeede464` |
| 7 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/instance-source-edition-5.md) | 109 | `declaration-track:ae1e4696262e4081ccf5fd92d2ff28bedf27b4351fc703f280f334e30ba68005` |
| 8 | `def` | [toRingEquiv](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/toringequiv-source-edition-3.md) | 117 | `declaration-track:9e9e2cba9312faa9c484e253516a652567632b2be44e2d954cd1c70c865db696` |
| 9 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/instance-source-edition-7.md) | 125 | `declaration-track:f87bf54976186b5a497958213b7e312896d800b113c12f168750fec8347c2972` |
| 10 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/instance.md) | 137 | `declaration-track:01fe15e326ebfe9b50a22774d91f4b605897e821f91fba00c0e48441795e5c2e` |
| 11 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/instance-source-edition-6.md) | 148 | `declaration-track:cd8924db9a156e5e0184416894a44ae9001abcc8f96e60f96a18277a7b329534` |
| 12 | `theorem` | [ext](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/ext.md) | 155 | `result-track:d910218561c0e3ee71dc3269c449a9aafe348b0ab46fb366ddef03411275e67e` |
| 13 | `theorem` | [congr_arg](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/congr-arg.md) | 158 | `result-track:9010a5b8d1b9a9ae3c5f31969ecaad54224daf991c068d71e198e5048286597b` |
| 14 | `theorem` | [congr_fun](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/congr-fun.md) | 161 | `result-track:83e563d8a5bb0e1256aab129f8971d2ae537c21c897a6b0f7429fe7ed4fe8133` |
| 15 | `theorem` | [coe_mk](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/coe-mk.md) | 165 | `result-track:fee7ae641910bdaea4c95dad117b990b6e489784fa74a099e42f6280ab9546e5` |
| 16 | `theorem` | [mk_coe](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/mk-coe-source-edition-2.md) | 169 | `result-track:6fdb50f54a15c6968d9a674f48324abe6d41a05b5d5ad52173db3e24b5c67acc` |
| 17 | `theorem` | [toEquiv_eq_coe](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/toequiv-eq-coe.md) | 173 | `result-track:5d90518078396270b2642a90d51fd53fd4b2e3211729646aee7cdacd7ed02fa2` |
| 18 | `theorem` | [coe_toEquiv](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/coe-toequiv.md) | 177 | `result-track:56c6333e13f04ba677b284a1aae286fe548addd3a2d245a810ac689fd4556c25` |
| 19 | `theorem` | [toAddEquiv_eq_coe](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/toaddequiv-eq-coe.md) | 181 | `result-track:3d2557bb078a5c74030c9461f3e726bec5f972e4a43f17357b6d3f9d1b7d0864` |
| 20 | `theorem` | [toMulEquiv_eq_coe](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/tomulequiv-eq-coe.md) | 185 | `result-track:a17d14452b37b31c901c94c2506869972907a3183b04554885fd4636f231d503` |
| 21 | `theorem` | [coe_toMulEquiv](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/coe-tomulequiv.md) | 189 | `result-track:a777cf9ee7a9791c38bc9bcda629367e2e0cb5c870dae76390f88752e8aceb90` |
| 22 | `theorem` | [coe_toAddEquiv](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/coe-toaddequiv.md) | 193 | `result-track:b42fb216f7a7996e2044c87a9c644c7565bbcdb3603549335620303b96e01557` |
| 23 | `theorem` | [map_mul](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/map-mul.md) | 201 | `result-track:d6976dddc71acb8aa739f36f6e7533429fdb571dfa188a15c07dd01082107239` |
| 24 | `theorem` | [map_add](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/map-add.md) | 205 | `result-track:5d1ac03335d4d214c99a40f35cf927fe6f55362a506f8b9746514b9b9a221b8b` |
| 25 | `theorem` | [bijective](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/bijective.md) | 212 | `result-track:5aca02bdecc654b3c7848285545975ce3cd315134d8845bd9fa7dddda237d6c2` |
| 26 | `theorem` | [injective](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/injective.md) | 215 | `result-track:b694d83b294b2da22e17e828554c27a9110db30b41b867eb9b8471e1de078ca1` |
| 27 | `theorem` | [surjective](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/surjective.md) | 218 | `result-track:a5d303cdc86eaa658a057ad3d0baa0bb6a93a4bfc47975b87952d76dc870f958` |
| 28 | `def` | [refl](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/refl.md) | 229 | `declaration-track:ef44c1ef915e331552dff3796794b8d651ba7c40d842d5bab9419a82e9dd5f8b` |
| 29 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/instance-source-edition-2.md) | 232 | `declaration-track:694b760407735695ae6d9a341bdc7174188fbcef8659d5d93283ac76f028df4c` |
| 30 | `theorem` | [refl_apply](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/refl-apply.md) | 236 | `result-track:b0e7319130f5550cf68c0620ab7be0301b35c1173de3b43400b808c78d024caf` |
| 31 | `theorem` | [coe_refl](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/coe-refl.md) | 240 | `result-track:4c50f24d268920b4bb9470db24375fd1d15b979818d85d352b6eaebe430ad1da` |
| 32 | `theorem` | [coe_addEquiv_refl](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/coe-addequiv-refl.md) | 247 | `result-track:d2d86a3eea4301425830da9cdfa1448b1285bb3ef0a1d6fd571228b257939965` |
| 33 | `theorem` | [coe_mulEquiv_refl](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/coe-mulequiv-refl.md) | 251 | `result-track:ce311c3db210dab9d0e143c030d139c0eb548fcdc054365a59ddb497346c2e0a` |
| 34 | `def` | [symm](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/symm.md) | 262 | `declaration-track:274e732b72338bd91cbc7e5e4da3df9cf1375dd227cd66c4d0ca5951f7bdf250` |
| 35 | `theorem` | [invFun_eq_symm](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/invfun-eq-symm.md) | 266 | `result-track:e39ab8eaf128668a705886a28dc115cdb629e30ae91bd278b604d9a3e2b4b781` |
| 36 | `theorem` | [symm_symm](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/symm-symm.md) | 270 | `result-track:de8fc715d0c49059fdc2950c6087c8aa1b09561357d9f581f1543372ee99090d` |
| 37 | `theorem` | [symm_bijective](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/symm-bijective.md) | 272 | `result-track:fb55d8d60bca67a70c43a8d1c3cbc1dd56b00658b01e301405eda06c8c13f14a` |
| 38 | `theorem` | [mk_coe'](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/mk-coe.md) | 276 | `result-track:2a50ac19332563d96dc647c596c2428e466d1e3543a7abbdb4c3ef357f9432d8` |
| 39 | `def` | [symm_mk.aux](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/symm-mk-aux.md) | 281 | `declaration-track:0b7b6d998afbea6f31e6f428cb51ec7c841e1979ca7c87bbdb9375dfa59e31f9` |
| 40 | `theorem` | [symm_mk](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/symm-mk.md) | 284 | `result-track:d2664df773d3c979cf8a2ac89153859d8054a342546bc26a5569b9e90835a811` |
| 41 | `theorem` | [symm_refl](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/symm-refl.md) | 292 | `result-track:86fb5c3572f5ff15d83ca296405c22f2dfff61829ea28e9388d90a2585d30698` |
| 42 | `theorem` | [coe_toEquiv_symm](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/coe-toequiv-symm.md) | 296 | `result-track:bd2ae55364d8e05430e9b19ba4dfcbb86cf9c2bc87933efd65c602f065e0f066` |
| 43 | `theorem` | [coe_toMulEquiv_symm](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/coe-tomulequiv-symm.md) | 300 | `result-track:17b3cb19a752085e4c771531240691612966d76ca6f3eab604380dc787e6aaa5` |
| 44 | `theorem` | [coe_toAddEquiv_symm](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/coe-toaddequiv-symm.md) | 304 | `result-track:f319aeefcff29d48dee4ab440e63bb2bcc18b112f9556e91b029322072092dc8` |
| 45 | `theorem` | [apply_symm_apply](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/apply-symm-apply.md) | 308 | `result-track:ce6d453724be27b1f60e86c3bdd700faa21684e88fe67c49cdaca1fa4c4a5e40` |
| 46 | `theorem` | [symm_apply_apply](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/symm-apply-apply.md) | 312 | `result-track:f25e1175b5e8ec5dfa702cc0f9ee46b7efc4b3920da9c84e9ac6cb93177dc03c` |
| 47 | `theorem` | [image_eq_preimage](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/image-eq-preimage.md) | 315 | `result-track:4e0e00d9c125a395b95a1902c8e00738cf49025b6044eada7ec806117a3acd8d` |
| 48 | `def` | [Simps.symm_apply](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/simps-symm-apply.md) | 323 | `declaration-track:4ef41209c6d73bebc37e3fe09d00d8d37ac078b5398f93c56c97febe000917fb` |
| 49 | `def` | [trans](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/trans.md) | 334 | `declaration-track:a80ea36cd3b0274cf19e6dad3a9951e48b2c047072ca60b64ba740d017a09ecd` |
| 50 | `theorem` | [coe_trans](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/coe-trans.md) | 338 | `result-track:7de78d9b6f28ed8fe1ce5b40098f81ac2801a7f4ca8ef73a625b95f421f6bbdc` |
| 51 | `theorem` | [trans_apply](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/trans-apply.md) | 341 | `result-track:f22ec6870d41ee3ec78851b8d375473dfc194dd8a7d8574b3ace7c811950d1c8` |
| 52 | `theorem` | [symm_trans_apply](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/symm-trans-apply.md) | 345 | `result-track:dee09a3b24ef8d3045485c1f91f849393cf3eed9ce6a4aecede761e74900d767` |
| 53 | `theorem` | [symm_trans](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/symm-trans.md) | 349 | `result-track:81b60ced31da08330b3884679d63eba094e43682c4c53772e59bd9f55f179be0` |
| 54 | `theorem` | [coe_mulEquiv_trans](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/coe-mulequiv-trans.md) | 353 | `result-track:91811bdd498255b407ecb49b35636f0ad372d211875e1144bbc71d2b2d901d61` |
| 55 | `theorem` | [coe_addEquiv_trans](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/coe-addequiv-trans.md) | 358 | `result-track:9a984d17a43f7248349f15bc8ba99c43f080360f5792860fffd41c60056ad910` |
| 56 | `def` | [ofUnique](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/ofunique.md) | 367 | `declaration-track:1655c8b7594dc2dc71fd1d8f61b82690c79306659db84f14d3931d539cc7bd8f` |
| 57 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/instance-source-edition-3.md) | 372 | `declaration-track:9a38fec7da7fbe16c5b20bb14ea67ee342297dca852c90afce50757dfee173eb` |
| 58 | `def` | [op](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/op.md) | 387 | `declaration-track:cf9f4c6aa6ac212c862123247768fbd18fc7cd77e997b963db3f3dd5098bb6f3` |
| 59 | `def` | [unop](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/unop.md) | 400 | `declaration-track:ef47b6a57c6ee81d5e35ea58c755e965af2d6d04c799ae31008f7b0d0cfb7776` |
| 60 | `def` | [opOp](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/opop.md) | 405 | `declaration-track:1e3ba77d33f4131b78119fa70ec31f585af1dd635d702134e7e42f41373f351d` |
| 61 | `def` | [toOpposite](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/toopposite.md) | 414 | `declaration-track:98d41f4f88f4bfd5c1e765d9d3954bb9e3e4e78153bb09d5805d038db10ce814` |
| 62 | `theorem` | [toOpposite_apply](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/toopposite-apply.md) | 420 | `result-track:98609643f45d52754bf2003d8c359e0703c9667d81c2cb279fe7f9d605b7339e` |
| 63 | `theorem` | [toOpposite_symm_apply](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/toopposite-symm-apply.md) | 424 | `result-track:020a6f01fd08fc8a10bf79ac091fe3c0c4935ced0d84f5700b6b4b705a631082` |
| 64 | `theorem` | [map_zero](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/map-zero.md) | 436 | `result-track:47574c2a97be8c3ae4f62c4d589856174460bb92b86616362031e0727285f4c0` |
| 65 | `theorem` | [map_eq_zero_iff](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/map-eq-zero-iff.md) | 441 | `result-track:52a7b4a2ddc9ee9c9d98506a2f9adcfc82c4b1369b1ea63ae4a528bf60a08f14` |
| 66 | `theorem` | [map_ne_zero_iff](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/map-ne-zero-iff.md) | 444 | `result-track:14c46401d931896ff4a8a22edef5c8e605109d7088e1e1b6cb730ed5bf71b891` |
| 67 | `def` | [ofBijective](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/ofbijective.md) | 450 | `declaration-track:66c6a3dc7234bdd327df738288c753868171864e63cd210060ab3ed669a5ac99` |
| 68 | `theorem` | [coe_ofBijective](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/coe-ofbijective.md) | 457 | `result-track:826fc342d6af3a1219d8ba084e34783cf92090e2f321ba2d3d57aa326b8084d9` |
| 69 | `theorem` | [ofBijective_apply](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/ofbijective-apply.md) | 461 | `result-track:ac1f5ed62883f50f838691d98f1927ea6ddb95dc665bf52c9b343127b6d83036` |
| 70 | `def` | [piUnique](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/piunique.md) | 468 | `declaration-track:17b27a273b5ac39cf0dd7be1ec67c603439c1ad522e56354f96fb5f71cc9c5ad` |
| 71 | `def` | [piCongrRight](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/picongrright.md) | 481 | `declaration-track:a99218cfecac5ad1d8d53db108520a7f08a936b337d0175e75c3b58262fe0783` |
| 72 | `theorem` | [piCongrRight_refl](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/picongrright-refl.md) | 489 | `result-track:e0854650b3d3b14983f1d1ee8776abe422f42ba0849a2f35369a8644a12a9b92` |
| 73 | `theorem` | [piCongrRight_symm](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/picongrright-symm.md) | 494 | `result-track:54f97579e90b4fd4cf461280b62ccccf91d6d6c3feab4fc63dd8a77c490179aa` |
| 74 | `theorem` | [piCongrRight_trans](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/picongrright-trans.md) | 500 | `result-track:ac38502c07bf469af0f94ebc7caccdd9f56557cd231ce2c0c4e1b3fec6a39a10` |
| 75 | `def` | [piCongrLeft'](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/picongrleft.md) | 510 | `declaration-track:5964f00db580c0f3f12ff5f864c959551bd5a16bee1b85e29d419e56756de886` |
| 76 | `theorem` | [piCongrLeft'_symm](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/picongrleft-symm.md) | 518 | `result-track:089cb948d8d05161bc78590eba94133f3d7d032441ff1016b35fd55184b53aa0` |
| 77 | `def` | [piCongrLeft](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/picongrleft-source-edition-2.md) | 526 | `declaration-track:6f701e8304147e2f589ec18e2ff7dbb630f4393cd31ecc9c5d5123276d554548` |
| 78 | `def` | [piEquivPiSubtypeProd](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/piequivpisubtypeprod.md) | 534 | `declaration-track:3b18e4e83b810a5b8e065fc9bdd72a7702a4d9bad81f7bcabb14ed1d7a0a6cae` |
| 79 | `def` | [prodCongr](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/prodcongr.md) | 543 | `declaration-track:acdb911f28c0a24b4913e8ea61e32d1af671cdefcb7ee65577021ac9bab1c9e7` |
| 80 | `theorem` | [coe_prodCongr](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/coe-prodcongr.md) | 556 | `result-track:68486accf9e59054f3bca2a380f4f7345c87293e91eb8ee0b8725a0bd6f0ca2b` |
| 81 | `def` | [piOptionEquivProd](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/pioptionequivprod.md) | 564 | `declaration-track:3323bf666ea3aa90603955bc58b1662173a7d9919b6f96e12385e000d20cfa2a` |
| 82 | `theorem` | [map_one](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/map-one.md) | 577 | `result-track:5ede0d5f19b33627ac1a8e2323f11bd78670b30526bf3d97e1589f06f32d2084` |
| 83 | `theorem` | [map_eq_one_iff](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/map-eq-one-iff.md) | 582 | `result-track:fc88de0d4a04b2d711299e79c368b47cda5db6c5beb036a7c2245d400330078d` |
| 84 | `theorem` | [map_ne_one_iff](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/map-ne-one-iff.md) | 585 | `result-track:6e937ded3a93b8f3b14ee37b4f218176fdec456d8a1d10d83f72eee1ba9d05ad` |
| 85 | `theorem` | [coe_monoidHom_refl](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/coe-monoidhom-refl.md) | 588 | `result-track:e5d8c0dae804b83bf370c7a4c60edc5b9d9cdfce9165e2d9227ead037dbda9cc` |
| 86 | `theorem` | [coe_addMonoidHom_refl](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/coe-addmonoidhom-refl.md) | 592 | `result-track:fa61cab34d96649c5bb92a837986a5c2ae2ea5873d82eda910dd4fb40b1569f5` |
| 87 | `theorem` | [coe_ringHom_refl](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/coe-ringhom-refl.md) | 600 | `result-track:3cc47befbe93b647ceb6affa7c487e8b3fabb1329354a51d69aaae3a686804f7` |
| 88 | `theorem` | [coe_monoidHom_trans](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/coe-monoidhom-trans.md) | 604 | `result-track:a331c0e5f0cbdea86a92db2005f142aff102aa50fc457823cc09da5a9dda5c64` |
| 89 | `theorem` | [coe_addMonoidHom_trans](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/coe-addmonoidhom-trans.md) | 609 | `result-track:7e725e9ca851c4185ea1396b7e85744c8d4db1cfa021f11db57ca6b88a398b30` |
| 90 | `theorem` | [coe_ringHom_trans](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/coe-ringhom-trans.md) | 617 | `result-track:79b138d46f6b4d7bcbe0a02b630ce92b00c80f1b0c243437a292dcaa30409269` |
| 91 | `theorem` | [comp_symm](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/comp-symm.md) | 622 | `result-track:5ad85394425222a11b6bdab78b02f572f002650f4f90caa80c1d341baf44e0f3` |
| 92 | `theorem` | [symm_comp](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/symm-comp.md) | 626 | `result-track:0419653fa53e679f106ec60e62cde55384178b7ed8e606716d05e664d1c45f59` |
| 93 | `theorem` | [map_neg](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/map-neg.md) | 635 | `result-track:9f6ac7b553836fea4e951f13bcfd5466b4c1df0ad4b3a599344d90a4b86191d0` |
| 94 | `theorem` | [map_sub](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/map-sub.md) | 638 | `result-track:034e3fc1de201c406bb8338fda237dfa69e94dd743061e52f5d01ba256597b3a` |
| 95 | `theorem` | [map_neg_one](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/map-neg-one.md) | 648 | `result-track:c03b93d04c732bad0c281046578fcf8ba48a85526936c05effd9ea73943c4ad4` |
| 96 | `theorem` | [map_eq_neg_one_iff](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/map-eq-neg-one-iff.md) | 651 | `result-track:808baba2bb7e8186c46168555a71067242b28c0f171088093a49eea5736ea6a8` |
| 97 | `def` | [toNonUnitalRingHom](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/tononunitalringhom.md) | 661 | `declaration-track:e18dfdb416b99032950bc6abce1add60cd136bb4bc0d9fac89baa70c3118a33b` |
| 98 | `theorem` | [toNonUnitalRingHom_injective](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/tononunitalringhom-injective.md) | 664 | `result-track:f88bba0155e84cca5c501648a43ca514474ab944571fb2fa033eaca565bb94eb` |
| 99 | `theorem` | [toNonUnitalRingHom_eq_coe](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/tononunitalringhom-eq-coe.md) | 668 | `result-track:f985c6306500d460355bea7feaf55db3d3b1d712cc501d7fa5365e15a79d1694` |
| 100 | `theorem` | [coe_toNonUnitalRingHom](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/coe-tononunitalringhom.md) | 672 | `result-track:de670bdcd2702db663413d6f23c112016ee399d8469b0738fdbf08afc18cf652` |
| 101 | `theorem` | [coe_nonUnitalRingHom_inj_iff](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/coe-nonunitalringhom-inj-iff.md) | 675 | `result-track:327feb38cbf9ba9c5ff4fd2afc2796030686e8befe0d4a63cd0aac78cc26e796` |
| 102 | `theorem` | [toNonUnitalRingHom_refl](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/tononunitalringhom-refl.md) | 680 | `result-track:222dfe6ceb99dda406e129998e6e6cd11fb692f423c2f2870d921f45636e5d0a` |
| 103 | `theorem` | [toNonUnitalRingHom_apply_symm_toNonUnitalRingHom_apply](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/tononunitalringhom-apply-symm-tononunitalringhom-apply.md) | 685 | `result-track:c3a38703710b32704fdadb7c431785b44f827f3d48abb915e819a360fbbd5e1b` |
| 104 | `theorem` | [symm_toNonUnitalRingHom_apply_toNonUnitalRingHom_apply](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/symm-tononunitalringhom-apply-tononunitalringhom-apply.md) | 690 | `result-track:0c2640d5a61fb14f04d1ba2b7f54a6d6a61a02d20c6ea16369bdc1d885abfd60` |
| 105 | `theorem` | [toNonUnitalRingHom_trans](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/tononunitalringhom-trans.md) | 695 | `result-track:48af3df0d884cddb356582755fab8b02bfdca521f4f18898ad841926e8b8995c` |
| 106 | `theorem` | [toNonUnitalRingHomm_comp_symm_toNonUnitalRingHom](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/tononunitalringhomm-comp-symm-tononunitalringhom.md) | 700 | `result-track:2a18d85d41aa39bf268b1dad79ef84a6b09e2941c9f08eb29fff10d8fc9d4608` |
| 107 | `theorem` | [symm_toNonUnitalRingHom_comp_toNonUnitalRingHom](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/symm-tononunitalringhom-comp-tononunitalringhom.md) | 706 | `result-track:ba4548ca002bda71fde2fda3480cdeb80ace5719de7294d3776898d26a42e15d` |
| 108 | `def` | [toRingHom](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/toringhom.md) | 718 | `declaration-track:eac7be40ec6fe247c5e4eb9f793af48bffbd8a095c86fb0659e24b84544f377b` |
| 109 | `theorem` | [toRingHom_injective](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/toringhom-injective.md) | 721 | `result-track:a46f8694900443fded48bdf9de83e080942e8759e04c9e1c270f846484c3037c` |
| 110 | `theorem` | [toRingHom_eq_coe](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/toringhom-eq-coe.md) | 724 | `result-track:ff8131353c56c87ff48bce787187ddc5b748a9422fe5e208a4ae62d86a113b81` |
| 111 | `theorem` | [coe_toRingHom](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/coe-toringhom.md) | 728 | `result-track:e360c9e048e01e52df9d7bbeb54de5c521097c2783ad012a418ef81e4cb1e1c2` |
| 112 | `theorem` | [coe_ringHom_inj_iff](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/coe-ringhom-inj-iff.md) | 731 | `result-track:890577f295d4305fb993ded909e2e80a599a0e33f1907c0a12d8789305b12565` |
| 113 | `theorem` | [toNonUnitalRingHom_commutes](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/tononunitalringhom-commutes.md) | 737 | `result-track:11fa844a9fc2b279c9819f0035021ad0297d495004db83015e6f91bed76c9682` |
| 114 | `abbrev` | [toMonoidHom](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/tomonoidhom.md) | 742 | `declaration-track:406dd8b130aa969f7880b3a344c5a094b74ff77d832847ee7d63076a97e045cc` |
| 115 | `abbrev` | [toAddMonoidHom](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/toaddmonoidhom.md) | 746 | `declaration-track:15566caf664e2c7c8c528898da1a0e0205b79f691510077c9e63ac98508f7da1` |
| 116 | `theorem` | [toAddMonoidMom_commutes](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/toaddmonoidmom-commutes.md) | 750 | `result-track:574e7ba23de5e0b57b1f976f3776540eccd6b9fe26b1eb686acba41162613000` |
| 117 | `theorem` | [toMonoidHom_commutes](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/tomonoidhom-commutes.md) | 755 | `result-track:0b284b9790d52da8541f74cf4566396585a3986ae629947b1e0a212c218f4c84` |
| 118 | `theorem` | [toEquiv_commutes](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/toequiv-commutes.md) | 760 | `result-track:804bc7ffd59c071774c0c1c44e529d41189b7f9e4bc39f9a027e94547c8082aa` |
| 119 | `theorem` | [toRingHom_refl](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/toringhom-refl.md) | 764 | `result-track:4ed79d8066be5014ef2fbaf022dcbb3611d054b1d0d4be09f142d23f053a5663` |
| 120 | `theorem` | [toMonoidHom_refl](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/tomonoidhom-refl.md) | 768 | `result-track:ecc6bbdde8b1e11ef3c9f1c20b58f2669d54d9ca233f281856d970f8439b502d` |
| 121 | `theorem` | [toAddMonoidHom_refl](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/toaddmonoidhom-refl.md) | 772 | `result-track:8ba6a4504a1a5c4d33d47c151a97a4e59a50ac54f62fad94b6cde2423d581c2f` |
| 122 | `theorem` | [toRingHom_apply_symm_toRingHom_apply](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/toringhom-apply-symm-toringhom-apply.md) | 775 | `result-track:848a071ef00a26ec2dcf7246ff59bdc407752526f77b271035f5b98f72274a3d` |
| 123 | `theorem` | [symm_toRingHom_apply_toRingHom_apply](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/symm-toringhom-apply-toringhom-apply.md) | 779 | `result-track:946a5ebe6b2bef5e5bd7d0201a6190412e4b162080dbadf01ab43745d2442c23` |
| 124 | `theorem` | [toRingHom_trans](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/toringhom-trans.md) | 784 | `result-track:fc2e06a4fc96b3e7ebc680543533158db174a51458252fade301dc44620718df` |
| 125 | `theorem` | [toRingHom_comp_symm_toRingHom](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/toringhom-comp-symm-toringhom.md) | 788 | `result-track:0c0ec54ae1f6314eb3a6347be407da47ec372a206d2d4d80e621ccf9b251e4aa` |
| 126 | `theorem` | [symm_toRingHom_comp_toRingHom](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/symm-toringhom-comp-toringhom.md) | 793 | `result-track:f560137e4922d76d2ca324dbb8636420581e30b0777264a7f01580f9723132e2` |
| 127 | `def` | [ofHomInv'](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/ofhominv.md) | 801 | `declaration-track:92753a5035c5cb3af1792059b45e1cc19d329ea2a643a5f66339daf24063eccb` |
| 128 | `def` | [ofHomInv](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/ofhominv-source-edition-2.md) | 818 | `declaration-track:d74839d8816edfa9bd1fd792b1b23941490588d32b335ac8f4638cae68bd128c` |
| 129 | `theorem` | [map_pow](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/map-pow.md) | 837 | `result-track:39e170d054a75dbd3b5c5486aad1a84616b35d83ced31dedc380d820b7e833c3` |
| 130 | `def` | [toRingEquiv](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/toringequiv.md) | 847 | `declaration-track:20a05bd0e879ff5aef9fe54335f820cd7dcf4627c2551b6ebae910b9f90a9261` |
| 131 | `def` | [toRingEquiv](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/toringequiv-source-edition-2.md) | 857 | `declaration-track:2251c835dbe7c5c83f59a1133b6bbb710987271348d60388158213154ac0e9ed` |
| 132 | `theorem` | [self_trans_symm](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/self-trans-symm.md) | 869 | `result-track:97372f6d53dd510b62e768ed25e2f50dbed2e69b8bdd215f25bd3e966454e7e5` |
| 133 | `theorem` | [symm_trans_self](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/symm-trans-self.md) | 873 | `result-track:8fbafa6a38c458c375a35fda30aef7777ced990af6426ad75eda8700540088cb` |
| 134 | `def` | [ofRingHom](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/ofringhom.md) | 884 | `declaration-track:23e195299db5a136087a53843759b63d1e7a8b98f9c2f90d7812635cc5ea52c6` |
| 135 | `theorem` | [coe_ringHom_ofRingHom](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/coe-ringhom-ofringhom.md) | 892 | `result-track:ef80e14d82e9d8d744477be29971e7925cb26a9dd80dc56215d9101f6f6c724b` |
| 136 | `theorem` | [ofRingHom_coe_ringHom](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/ofringhom-coe-ringhom.md) | 896 | `result-track:5ef62ef8369dd9df05a4ea98f0e05bd0e0ba6932a59ff6dca253f2a20737b609` |
| 137 | `theorem` | [ofRingHom_symm](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/ofringhom-symm.md) | 899 | `result-track:d98f902cc6619fed4594ad1f0bf7a85ee982c30e865c360aa60e85db57702e4e` |
| 138 | `theorem` | [noZeroDivisors](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/nozerodivisors.md) | 909 | `result-track:33d543471108dd1dbced3107d263e1fe4231f4e552f692cc64c38bb2821e83d5` |
| 139 | `theorem` | [isDomain](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedCoeRefl.lean/declarations/isdomain.md) | 914 | `result-track:e6945c3dcc29cf47620a4fb9bb37e6e2aa895dada414b86bb894792b7c3c99d5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=48c2210906ff157ebd280dbbd4e1943c47092cc56c2b366369028c87f10da6a4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Equiv/Variantd92a26125ea8aa647cc2557a9c2af4b4469b8269aa6ea754c945c46350e4f014.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Equiv/Variantd92a26125ea8aa647cc2557a9c2af4b4469b8269aa6ea754c945c46350e4f014.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
