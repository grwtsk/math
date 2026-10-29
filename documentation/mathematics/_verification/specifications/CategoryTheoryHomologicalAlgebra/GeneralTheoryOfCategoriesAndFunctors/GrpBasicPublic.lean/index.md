# Verification target: Grp Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1f045596438bb5f9695d010015ac89be69fd71cc",
  "lexical_observation_count": 104,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta93bc572dc528b54cb80e11a805c87ce0e379de3ebd30ee1d833eef459e36b5e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1f045596438bb5f9695d010015ac89be69fd71cc`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta93bc572dc528b54cb80e11a805c87ce0e379de3ebd30ee1d833eef459e36b5e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta93bc572dc528b54cb80e11a805c87ce0e379de3ebd30ee1d833eef459e36b5e.lean.json)

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
| 1 | `structure` | [AddGrpCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/addgrpcat.md) | 32 | `declaration-track:d2a6d9c88b5505694b416b14254cc68d5947f2516144bf25066392967d39b787` |
| 2 | `structure` | [GrpCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/grpcat.md) | 39 | `declaration-track:62f65fe634ea02a724a4a3f69274743f2ee933ae5a537f7ab8b117c37095a487` |
| 3 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/instance-source-edition-6.md) | 52 | `declaration-track:8d35ef09316641e98f282ac21b387b6307b100b3c1482a1476f5ef02767d19aa` |
| 4 | `abbrev` | [of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/of.md) | 59 | `declaration-track:a26e117e23aa711cb3991b696cad638c77717f96cf78dddcdf28e9130b7e26c9` |
| 5 | `def` | [AddGrpCat.delabOf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/addgrpcat-delabof.md) | 69 | `declaration-track:bbf9f648da2acb41d5bf23628c1bd78beb8c0948d3e48a9961fec41a78aea1cc` |
| 6 | `def` | [GrpCat.delabOf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/grpcat-delabof.md) | 73 | `declaration-track:0f5920745b619dff3cb5010919583b60b220ba0bb3210c6bc1e0b97ba972aa2c` |
| 7 | `structure` | [AddGrpCat.Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/addgrpcat-hom.md) | 79 | `declaration-track:67165d2f382c3e0f8a22dc4e9a6162d454a398f26c8025d5b0eb0f0364abbd3f` |
| 8 | `structure` | [GrpCat.Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/grpcat-hom.md) | 86 | `declaration-track:a5d6b11a04aa5808539fb2a25f10480ae312a59a80c399f87654731c51cb9b57` |
| 9 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/instance-source-edition-10.md) | 94 | `declaration-track:ae63a1b2887e8fe87906ced6846a10cf559dc20d567e8c9ace07c16a24bd9c01` |
| 10 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/instance-source-edition-13.md) | 100 | `declaration-track:e7dafcc3fa466ea82aef1ed70a8c02b7f421c76bf1acf01f879c1290c783b8d0` |
| 11 | `abbrev` | [Hom.hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/hom-hom-source-edition-2.md) | 106 | `declaration-track:681cb962ec876da90e7005da84dc42958cfa4b23c2e1cde585abbd3baa0b262d` |
| 12 | `abbrev` | [ofHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/ofhom-source-edition-2.md) | 111 | `declaration-track:f072304f4d2e1bf3703aa3b520e76ce6ec9dd9d62ed68c45058bc706ecdfd634` |
| 13 | `def` | [Hom.Simps.hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/hom-simps-hom.md) | 116 | `declaration-track:b04043ba2fd4514a90c8d37d67d743cb9f473e3c4b31cb3cff6d7a8cfbd7772e` |
| 14 | `lemma` | [coe_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/coe-id-source-edition-2.md) | 127 | `result-track:faef66d6a080429a58710bdf873eb4608de5601d319c1bda4e67a400fbb88b8d` |
| 15 | `lemma` | [coe_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/coe-comp-source-edition-2.md) | 130 | `result-track:4a42b3fb0fa9960013a1706f23126a7a23c0f94fb25a08e5f579687cdb63e556` |
| 16 | `lemma` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/ext.md) | 133 | `result-track:2132addad079b1bb00baa0c619ff80a72455ecc128e67bc855ced5ed3de0a9c1` |
| 17 | `theorem` | [coe_of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/coe-of.md) | 138 | `result-track:8e82b5d282c1292e51d895b541b070a343a63792fdc6ca9069d610b381f46674` |
| 18 | `lemma` | [hom_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/hom-id-source-edition-2.md) | 142 | `result-track:ee08a8e14847d37a6fb9eab96b70f6c33b9785b402eddbaff87e2d00bbaa17f3` |
| 19 | `lemma` | [id_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/id-apply.md) | 146 | `result-track:10fa6345c5ec37a25f75d3671c9c9315c02e35237a336cea344994fe736d570d` |
| 20 | `lemma` | [hom_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/hom-comp-source-edition-2.md) | 150 | `result-track:e9b61d38b7f90e840d3b1da5f62729c33c744a1ea5d3f3b15f358c685ae3acd4` |
| 21 | `lemma` | [comp_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/comp-apply.md) | 155 | `result-track:82cabe1ec35c21424b44f68fb7b086b6d0efc7e911384505f73d5793253a906d` |
| 22 | `lemma` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/hom-ext.md) | 159 | `result-track:3bc0c56edb96f7809afaa7a32ac8e959e43162eda22855fb7d817fd64ec90172` |
| 23 | `lemma` | [hom_ofHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/hom-ofhom-source-edition-2.md) | 163 | `result-track:b0657bd1913a3fcbca83ece4ec5965e27f7f55dc056dfefac0efaa81eaf6dc54` |
| 24 | `lemma` | [ofHom_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/ofhom-hom-source-edition-2.md) | 166 | `result-track:cc4dcdaad7cac3adf909bd7fcd729d2a73b12f237c913876833d179331a078b6` |
| 25 | `lemma` | [ofHom_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/ofhom-id-source-edition-2.md) | 170 | `result-track:cc832c2bee35d49ace40b0d11be98768bdf232ae04b982f29bc8e3b95ed75931` |
| 26 | `lemma` | [ofHom_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/ofhom-comp.md) | 173 | `result-track:100460f1652766308e585fcb4d6696b85c9b3654bb6044dadd76fd74078f3d9f` |
| 27 | `lemma` | [ofHom_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/ofhom-apply-source-edition-2.md) | 179 | `result-track:624f87186fec4070cb26c339f0aeb2adf1064ee9b2ddaee0e60b87abec74ec71` |
| 28 | `lemma` | [inv_hom_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/inv-hom-apply-source-edition-2.md) | 184 | `result-track:b21aa154e5a49eec9598ef41dee786ad004596205dbee683693c753f20f042ad` |
| 29 | `lemma` | [hom_inv_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/hom-inv-apply-source-edition-2.md) | 189 | `result-track:e17235ba82e397e39108ebdf3002b2467661063bc0aa3aeece5dda8a24d34655` |
| 30 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/instance-source-edition-2.md) | 193 | `declaration-track:3986dc093142800690b2b076b1dffa38cdb095a5382e10186cf4d52d5b84b7d6` |
| 31 | `instance` | [hasForgetToMonCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/hasforgettomoncat.md) | 197 | `declaration-track:1fb647e6e31d6342e9ad040369ded710cb377617e913610cf06cdde859d28d24` |
| 32 | `lemma` | [forget₂_map_ofHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/forget-map-ofhom.md) | 201 | `result-track:580d2003bf76167819f352c57ad2cb73ef619189152aaf31e8d8a00596da9cfa` |
| 33 | `lemma` | [forget₂_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/forget-map-source-edition-2.md) | 205 | `result-track:cfdac668136b8dc7e024f22b6c509b2f329278727b7ee2899fa82822c58368ba` |
| 34 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/instance-source-edition-12.md) | 209 | `declaration-track:d7eebb3ca5681a608d5ae37a18040ae3d3b6d1e5bb415693f763088c7e34dae7` |
| 35 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/instance-source-edition-3.md) | 212 | `declaration-track:5db0e13945d53453d9c027baa7ae95dcabb0ac96e2651b5fa2f10170ccae8395` |
| 36 | `theorem` | [one_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/one-apply-source-edition-2.md) | 216 | `result-track:a9cca44b50290a8e8f991bd77da3fcd324d1be58f015e873c1755a01974c8809` |
| 37 | `lemma` | [ofHom_injective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/ofhom-injective-source-edition-2.md) | 220 | `result-track:51328d49834dcec4d1ad518e08298747f736ec6b97fcb29f5880219034ecdb59` |
| 38 | `def` | [fullyFaithfulForget₂ToMonCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/fullyfaithfulforget-tomoncat.md) | 229 | `declaration-track:4506515238b4fcb72da920e2e837f097ca264009101e9909fd95495f7f7ea333` |
| 39 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/instance-source-edition-4.md) | 233 | `declaration-track:800eeaa87e5a6029c9a181d6dab929467dc56869696154ea3ca7ad0d6cf5cd47` |
| 40 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/example.md) | 238 | `declaration-track:3fae1b57d80bddb882ac0c8f67423fea91263167de5fbf77228db1a3150a24b0` |
| 41 | `def` | [uliftFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/uliftfunctor-source-edition-2.md) | 243 | `declaration-track:f138f9911310da46bdad00b8db064ba01ed0e41c16e937b2510d12bd440d7c1a` |
| 42 | `structure` | [AddCommGrpCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/addcommgrpcat.md) | 253 | `declaration-track:55c5a1e652b45f3a8fdcd12ad9bf831d732043cdfdeaa1b71ee6ca2a591fa7a2` |
| 43 | `structure` | [CommGrpCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/commgrpcat.md) | 260 | `declaration-track:45625c1d434dd13df5a2c4947e2a881184ddfd9f40340dc44cba10010d767f42` |
| 44 | `abbrev` | [Ab](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/ab.md) | 271 | `declaration-track:5d1a62210a56968ef6569704c7f3df0c8ed23e2fd900afbb44806e9c1385e312` |
| 45 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/instance.md) | 276 | `declaration-track:2df577cfefb197e6bde3eedef59bbd7eb04d5c9914d0fc6b4049b7d8ad2be2ef` |
| 46 | `abbrev` | [of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/of-source-edition-2.md) | 283 | `declaration-track:d8925c7d42a8cea942e64342604fea7dadf3dd67f3936ed90b1edcc33046750a` |
| 47 | `def` | [AddCommGrpCat.delabOf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/addcommgrpcat-delabof.md) | 293 | `declaration-track:e50cb271db4701947cb9988656e5b323f588d41997c47532a80bd2a8a7459466` |
| 48 | `def` | [CommGrpCat.delabOf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/commgrpcat-delabof.md) | 297 | `declaration-track:e767142115d988c642a3d20b07a6f949d081ff4c9fda895d670266eb48a1e3ed` |
| 49 | `structure` | [AddCommGrpCat.Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/addcommgrpcat-hom.md) | 303 | `declaration-track:1c7a9ae2b40fca1484d717c35bb04f7402b0680d06800941b2cfef637dffede6` |
| 50 | `structure` | [CommGrpCat.Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/commgrpcat-hom.md) | 310 | `declaration-track:6d95f91b48ff0d723ee1dd10d467ffb85611b0c0cdb358799fc1b58da639adb3` |
| 51 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/instance-source-edition-7.md) | 318 | `declaration-track:8e90d29ee7d03e86ab31646c44623a8a6ac2132cf1224f737959a2dfd9487bd0` |
| 52 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/instance-source-edition-14.md) | 324 | `declaration-track:f919a222670d729fa607398ed1594f7a2858f01d16c5aaf3478bb2317f946a56` |
| 53 | `abbrev` | [Hom.hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/hom-hom.md) | 330 | `declaration-track:44f6701fdf0e648011d71cf355c745148f9e9317507d3d5edcba8595215821d4` |
| 54 | `abbrev` | [ofHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/ofhom.md) | 335 | `declaration-track:6102d0581dfc1a77a664aa7c637bc52db1e3131501b895126fedbede5dd4f564` |
| 55 | `def` | [Hom.Simps.hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/hom-simps-hom-source-edition-2.md) | 340 | `declaration-track:bc3f54cba8385f7a24081de74931c4bc951ca9082c5eb941ba8e073e35ef833a` |
| 56 | `lemma` | [coe_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/coe-id.md) | 351 | `result-track:8d23405714dd7a60b1a325aa82b8e59255c76ea51946d344a79ba086aeb04831` |
| 57 | `lemma` | [coe_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/coe-comp.md) | 354 | `result-track:3e36cc6b303f8c2e71c07ecd3020da6533eba33ab0861c51086d7b0113df9455` |
| 58 | `lemma` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/ext-source-edition-2.md) | 357 | `result-track:bdc05d90c84d9a8c0d43dbf139dfc49292761e2cadc85c78ecd5fc7d767d7334` |
| 59 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/instance-source-edition-8.md) | 361 | `declaration-track:8f4f4c09c1c5224d8d17e99f1a8b5cbe114e2136c476c2690a6c5d6b7a62663c` |
| 60 | `theorem` | [coe_of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/coe-of-source-edition-2.md) | 366 | `result-track:9e1a5f74b94a6dff816c1782e3f21a261864be43a59bef27e520fed4e0477ffb` |
| 61 | `lemma` | [hom_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/hom-id.md) | 370 | `result-track:0f56988915cacbf64e54b7d0096a55f218b69b45df82189b783442d54d11bcd4` |
| 62 | `lemma` | [id_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/id-apply-source-edition-2.md) | 374 | `result-track:4a80a431515d693dcbb6e90ec0301109ff9e58a83af62b7b0394f2c43439f0d7` |
| 63 | `lemma` | [hom_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/hom-comp.md) | 378 | `result-track:dc31a14992bd8c288db3c0d88c95f1c9716bf98446c0adc65351a8c7bc5a1ca0` |
| 64 | `lemma` | [comp_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/comp-apply-source-edition-2.md) | 383 | `result-track:9005d8171adcc7caa0bbef099c7be84e4293b1defc016fb3dbe3cc72a2d35817` |
| 65 | `lemma` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/hom-ext-source-edition-2.md) | 387 | `result-track:617502f1f8070f47ca9af997b794c983659a4081aeae662f90f3f4be67dfd74c` |
| 66 | `lemma` | [hom_ofHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/hom-ofhom.md) | 391 | `result-track:681a04b455284ff3b934a7d867175a7803002c311674ccb70f988416e59b281a` |
| 67 | `lemma` | [ofHom_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/ofhom-hom.md) | 394 | `result-track:250c05915a12b39dc235baa00c481ee36643f92d4c0a27312f0473ab4637ed0b` |
| 68 | `lemma` | [ofHom_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/ofhom-id.md) | 398 | `result-track:77398882dfa76ed9e9870a5a9ec87a8a0dd728d3c41e14f26cadea10b0a03688` |
| 69 | `lemma` | [ofHom_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/ofhom-comp-source-edition-2.md) | 401 | `result-track:35e1606f91c5bc86c348040727c7cc999bf0a2845f6610860479ab328fe3a108` |
| 70 | `lemma` | [ofHom_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/ofhom-apply.md) | 407 | `result-track:1202b55d4a4ce8e991a34351b68bc27f879f516835898de6f8b7dc62cf0609c7` |
| 71 | `lemma` | [inv_hom_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/inv-hom-apply.md) | 412 | `result-track:83b5446b02f1e93029acc21b57451b6317850b83b25470de07b482cb31152488` |
| 72 | `lemma` | [hom_inv_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/hom-inv-apply.md) | 417 | `result-track:1487187d29af2be58c04dd60af1d39a98458ee27f12d5feb3bcf8a285abcceaf` |
| 73 | `instance` | [hasForgetToGroup](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/hasforgettogroup.md) | 421 | `declaration-track:dbb6db572d2d4e0ac457275b4dab2e6637b1c0a504295c731a540f383fbf0ba2` |
| 74 | `lemma` | [forget₂_grp_map_ofHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/forget-grp-map-ofhom.md) | 425 | `result-track:21f9f0575b6e74cd0c7a69460b38ac4e6255304ab51eb7878c9212922c9a60d6` |
| 75 | `lemma` | [forget₂_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/forget-map.md) | 429 | `result-track:4c3c2d6598e19fa6a5ca873d5a847b35bf09f8448ee54d19aa70f213ef367a39` |
| 76 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/instance-source-edition-5.md) | 433 | `declaration-track:82d53df34620fbb7e9482a97eba2d914f7e3f7ba1ba58bf662ae34dcc30360db` |
| 77 | `def` | [fullyFaithfulForget₂ToGrp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/fullyfaithfulforget-togrp.md) | 438 | `declaration-track:950c65c2679d77917477f438488038867c65328f4d28aab28d15e1b0e84e98fc` |
| 78 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/instance-source-edition-15.md) | 442 | `declaration-track:f964e99237c8ed8b8053de352bef4e5132a94582473bb558a75d9574631953c7` |
| 79 | `instance` | [hasForgetToCommMonCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/hasforgettocommmoncat.md) | 446 | `declaration-track:bb129285eeaeac57b04680ec89b41042b2da2f962aefc9ab60c67524e1279bbf` |
| 80 | `lemma` | [forget₂_commMonCat_map_ofHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/forget-commmoncat-map-ofhom.md) | 450 | `result-track:df3c7a440f33ba676863e043e0d2389d5865d6eb7028b897114a7e2b842a02cf` |
| 81 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/instance-source-edition-9.md) | 455 | `declaration-track:9ee39c910034038c7582f14b542fd6d33b524b76416d171de55813735727dca8` |
| 82 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/instance-source-edition-11.md) | 458 | `declaration-track:ce61c08fc1a5946e544c2c2c67f5ae72817c9df16c8ab1b6f016214f1bcd34a7` |
| 83 | `theorem` | [one_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/one-apply.md) | 462 | `result-track:48b61befe62be05dcb762ccd26e65166fb5e5456f0039ed3ba83d55dbd5a5fc8` |
| 84 | `lemma` | [ofHom_injective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/ofhom-injective.md) | 466 | `result-track:4f75edfdc160bd3b0f4f431e927cd77cdffa302a026b4fb8c51439132973f8d2` |
| 85 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/example-source-edition-2.md) | 474 | `declaration-track:aa4e40ca1504e0e1e05960c24a2ed1c968ee826e2fd29382c385a3c351376781` |
| 86 | `def` | [uliftFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/uliftfunctor.md) | 479 | `declaration-track:26a9fb8a470a1ead4deb01a6bfa157a5a6f8c9d566ce9517dc90bf6c2f1f08be` |
| 87 | `def` | [asHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/ashom.md) | 496 | `declaration-track:5868018a85222a7becfb1bc03bb5fce8bd8f1a0acacb894d4c5659823982f974` |
| 88 | `theorem` | [asHom_injective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/ashom-injective.md) | 499 | `result-track:fe767a5e647d6a1730c77b331c2ec17987073a09d9ec7de39cb6795be64c7c03` |
| 89 | `theorem` | [int_hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/int-hom-ext.md) | 503 | `result-track:38d9931362dd6e58e41d473d6c702cad6f9d28c657cd9c8b2444e65ea407c3b6` |
| 90 | `theorem` | [injective_of_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/injective-of-mono.md) | 509 | `result-track:f44ebce659f070ba3d00ba65292b8b804ea1d4d0e19f7d886365d0c9c47e0f4d` |
| 91 | `def` | [MulEquiv.toGrpIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/mulequiv-togrpiso.md) | 519 | `declaration-track:2ed6cbcf5c486e23fd9f747d5f2d3dd2df3939134e60e82b25f7914ffc9aa2ee` |
| 92 | `def` | [MulEquiv.toCommGrpIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/mulequiv-tocommgrpiso.md) | 529 | `declaration-track:bccbd9e46931da63377584bcca0a604a88a9d79d471973e20915eaab478aeefb` |
| 93 | `def` | [groupIsoToMulEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/groupisotomulequiv.md) | 541 | `declaration-track:811cb11aec7337b78f08f5d90402445cff77ae67d60a3930d7722ef5c9bdf94a` |
| 94 | `def` | [commGroupIsoToMulEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/commgroupisotomulequiv.md) | 549 | `declaration-track:28cba835f75ec7e922d1c8a785c9e188564326e0b8311d67078b8bc3941f0c89` |
| 95 | `def` | [mulEquivIsoGroupIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/mulequivisogroupiso.md) | 560 | `declaration-track:a7cf4af170e688d6cd6c2aed8f640d11ed2a597b001efe95b7dc7c3c5be675aa` |
| 96 | `def` | [mulEquivIsoCommGroupIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/mulequivisocommgroupiso.md) | 571 | `declaration-track:8d90803edbe49a7868ef0868d8ab973913a7a539205ea21e23b469c5ce63a6b5` |
| 97 | `def` | [isoPerm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/isoperm.md) | 583 | `declaration-track:0dbd2dcdf7417ab94f096eb6fec906fe3d70af1a5a4e247d4349a95193b3e77b` |
| 98 | `def` | [mulEquivPerm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/mulequivperm.md) | 595 | `declaration-track:a802f810c99b238b1902756a73edf8af0bbe089da109e8577b11b652855a8fab` |
| 99 | `instance` | [GrpCat.forget_reflects_isos](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/grpcat-forget-reflects-isos.md) | 601 | `declaration-track:2c0dfe2fc3852188b5afae6701e9641918906e4ec8d93130af0f1490e93ae3e6` |
| 100 | `instance` | [CommGrpCat.forget_reflects_isos](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/commgrpcat-forget-reflects-isos.md) | 608 | `declaration-track:891aaa2d44e1f34e36bd61a07ff036fb39c77d33a7ef387281d419cf6deac8c2` |
| 101 | `abbrev` | [GrpMax.](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/grpmax.md) | 621 | `declaration-track:d90f429cab4bdd9894a66d290fbfefb0e685853d5eed5ce9e7050dd9463613fa` |
| 102 | `abbrev` | [AddGrpMax.](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/addgrpmax.md) | 625 | `declaration-track:00bddcf4d5802bf3edf8b512dec47b387313143533b945d2c28d48b5088758f9` |
| 103 | `abbrev` | [CommGrpMax.](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/commgrpmax.md) | 631 | `declaration-track:32682ec0fc54b16ae2ce9252e183f24742e1051c169ea251447f8cc6757710f8` |
| 104 | `abbrev` | [AddCommGrpMax.](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBasicPublic.lean/declarations/addcommgrpmax.md) | 635 | `declaration-track:bdf9e60d80a32bdfda91b8932b7ad359bcdfe352bd4b019321fa8426fd83c32f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1f3cddb554874eda9b675b2bc3c728dd6e7031071971fa6e72afe2a7f65b7f0a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta93bc572dc528b54cb80e11a805c87ce0e379de3ebd30ee1d833eef459e36b5e.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta93bc572dc528b54cb80e11a805c87ce0e379de3ebd30ee1d833eef459e36b5e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
