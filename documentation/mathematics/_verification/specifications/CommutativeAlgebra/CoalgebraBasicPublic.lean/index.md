# Verification target: Coalgebra Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7abb2ed7b2accf77634e93f84ae81e4522fea368",
  "lexical_observation_count": 71,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variante6bb06a7731bb0a853f93ca79a108a0f88c1f9d7e50e8136b6937d05d2da7d94.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7abb2ed7b2accf77634e93f84ae81e4522fea368`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variante6bb06a7731bb0a853f93ca79a108a0f88c1f9d7e50e8136b6937d05d2da7d94.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variante6bb06a7731bb0a853f93ca79a108a0f88c1f9d7e50e8136b6937d05d2da7d94.lean.json)

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
| 1 | `class` | [CoalgebraStruct](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/coalgebrastruct.md) | 36 | `declaration-track:73d8f79c6d5c06cca1cb331a8c06fa22f6cfb99013087cabcaa33ac8a6069bc2` |
| 2 | `structure` | [Coalgebra.Repr](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/coalgebra-repr.md) | 50 | `declaration-track:b0eb3e755694491bc5f9960a8821549897ac5b15f06311315e47a8110be27912` |
| 3 | `def` | [Coalgebra.Repr.arbitrary](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/coalgebra-repr-arbitrary.md) | 62 | `declaration-track:ae0c53f64b2db3f9f163b549dc2be35dde00c118db2c96ae44f3bd2dac421545` |
| 4 | `class` | [Coalgebra](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/coalgebra-source-edition-2.md) | 79 | `declaration-track:4149095614174d87e50d4853858b0e76d6d6b12bfbc81c9c8da516cdffd568b3` |
| 5 | `abbrev` | [Repr.ι](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/repr.md) | 94 | `declaration-track:f4d7073ea67cefc4269da02190ef7663957a5072c060195058bf8f456288b10d` |
| 6 | `theorem` | [coassoc_apply](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/coassoc-apply.md) | 97 | `result-track:f6d01515ff744f99be75ef6580c45a9d1688ecbc94ab2ad9f64143461873b63c` |
| 7 | `theorem` | [coassoc_symm_apply](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/coassoc-symm-apply.md) | 102 | `result-track:a06a47bdb101e361f4109e7d2d75c76b56790c7375bb6e6928e4a502689e4a9b` |
| 8 | `theorem` | [coassoc_symm](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/coassoc-symm.md) | 107 | `result-track:458b82a5c2021b185b3187d096ee7c27d1c0dbd248c2f9705f5dd1d99cc67d5c` |
| 9 | `theorem` | [rTensor_counit_comul](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/rtensor-counit-comul.md) | 113 | `result-track:0cd45982e918b4db28fa8408ae45ba5d514b9e840ac995419adfc01a32c0b6df` |
| 10 | `theorem` | [lTensor_counit_comul](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/ltensor-counit-comul.md) | 117 | `result-track:2ee81906b1c1643b21914eae0a0b0ddc9ba3315b00eb6bebc8dc82c1310ec01e` |
| 11 | `lemma` | [sum_counit_tmul_eq](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/sum-counit-tmul-eq.md) | 121 | `result-track:1c710395db99b0ffca3ede9d440091cba0aa3601f04bbc7261eb37b66adf892f` |
| 12 | `lemma` | [sum_tmul_counit_eq](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/sum-tmul-counit-eq.md) | 126 | `result-track:e43d020de8568c71e404111cbc3c86d688c7639e7edbcc3503d11add00b8ac7a` |
| 13 | `lemma` | [sum_tmul_tmul_eq](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/sum-tmul-tmul-eq.md) | 131 | `result-track:705fcbe679b9772659f8214e9cbc694db613e9897ccedd2d307bb954ab53a94e` |
| 14 | `theorem` | [sum_counit_tmul_map_eq](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/sum-counit-tmul-map-eq.md) | 141 | `result-track:de49cc4777481b306940663e802b1912ff59851323decb0ee7f913e865d511ef` |
| 15 | `theorem` | [sum_map_tmul_counit_eq](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/sum-map-tmul-counit-eq.md) | 149 | `result-track:f466ec66611ee252fcb5a60fcec1e460c58804ddc42397714b536e6c4a87efb7` |
| 16 | `theorem` | [sum_map_tmul_tmul_eq](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/sum-map-tmul-tmul-eq.md) | 157 | `result-track:629eebc1a5e014817e5f9751c180763985bef9ceaf533eb8dc36d79a747fb5c4` |
| 17 | `lemma` | [sum_counit_smul](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/sum-counit-smul.md) | 169 | `result-track:e481ec5d415fd130c5f8a1309a84f9e935356dbf988298c77631cb208b656e0c` |
| 18 | `lemma` | [lift_lsmul_comp_counit_comp_comul](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/lift-lsmul-comp-counit-comp-comul.md) | 174 | `result-track:e200a93cd6c293dd52c66d495771848b97d6879182561b43a9c20ccf19726fff` |
| 19 | `class` | [IsCocomm](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/iscocomm.md) | 186 | `declaration-track:0b224ab4c0ad8f97766b087d3d3261962aacf22d87f3f82fab143552d825d896` |
| 20 | `lemma` | [comm_comp_comul](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/comm-comp-comul.md) | 192 | `result-track:c2a3fa0b0c3ccca1322ab5cd95c68141b04d904c9c20c085ca8aeffed2024ba8` |
| 21 | `lemma` | [comm_comul](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/comm-comul.md) | 196 | `result-track:eb720ac9d0b85a230d279b4d94e824b9ff0448ebe75cb66617da161e3dfd6477` |
| 22 | `instance` | [toCoalgebra](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/tocoalgebra.md) | 207 | `declaration-track:2d23eddb2847beeef71cbdd12b7670ec6d181763ef2d99f3ea5e922f0449434f` |
| 23 | `theorem` | [comul_apply](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/comul-apply-source-edition-2.md) | 215 | `result-track:7c2f6edcd2d69d0728e12f311ec7b36e7810d6ec1ac55d8fde3ec13f73c8f7f3` |
| 24 | `theorem` | [counit_apply](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/counit-apply-source-edition-2.md) | 218 | `result-track:c2a19b75f47f48b82d8d233888dcb9ad87597febb0c5ecf19e0dd4dea3be2c3d` |
| 25 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/instance-source-edition-2.md) | 220 | `declaration-track:f99af373d7e67cee6cb52b81ec1730a713a7b0336226f593060468e44dd8b1a3` |
| 26 | `instance` | [instCoalgebraStruct](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/instcoalgebrastruct-source-edition-4.md) | 231 | `declaration-track:e75417784436703098deaca6d63b6af22d8629504a0f6dd50a550df88916bd78` |
| 27 | `theorem` | [comul_apply](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/comul-apply.md) | 238 | `result-track:68080f4d15e9b1e638864c70b5d7c4878195e39faeb6ee3622840141a39a58c6` |
| 28 | `theorem` | [counit_apply](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/counit-apply.md) | 244 | `result-track:04b1ea5801fa9c63f98d3122acecddfe40434fa7777e9ae921df2c0bfafd5a87` |
| 29 | `theorem` | [comul_comp_inl](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/comul-comp-inl.md) | 246 | `result-track:815a51289b0133f0d8cc2048b815fa059af0092289b4d15161f5833035b680da` |
| 30 | `theorem` | [comul_comp_inr](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/comul-comp-inr.md) | 250 | `result-track:272d284d8195081ffd95b66d03b21903ec56f101e81f94a15074b925192cc8c6` |
| 31 | `theorem` | [comul_comp_fst](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/comul-comp-fst.md) | 254 | `result-track:a9e5ab077d8c3b4e98d9144e362938e17a12bda9b4172e06f8922e4357c0e4b7` |
| 32 | `theorem` | [comul_comp_snd](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/comul-comp-snd.md) | 262 | `result-track:bb7283e880444152be8b50ce8aa758ce0efe3a037072acd3810df3e558dcb8a4` |
| 33 | `theorem` | [counit_comp_inr](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/counit-comp-inr.md) | 270 | `result-track:e2ebb943c495d297d8965db1dc9abdf31f14528156c07b47ec1ce8089bd440aa` |
| 34 | `theorem` | [counit_comp_inl](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/counit-comp-inl.md) | 272 | `result-track:2eb58053e18579f882bb2eba82b9bf1d7ec254943f0cd115756e95143922b031` |
| 35 | `instance` | [instCoalgebra](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/instcoalgebra-source-edition-3.md) | 274 | `declaration-track:5fc2de5437a60591abba1484932c1760f6a72dc404a66a363d3901ac5fce4661` |
| 36 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/instance.md) | 299 | `declaration-track:882d74db55e7ffaa5df3391de5a5a3f086cd408178a99355e4e8dd341897a706` |
| 37 | `instance` | [instCoalgebraStruct](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/instcoalgebrastruct-source-edition-3.md) | 314 | `declaration-track:c3e2bab51f1fd46edaf0daed352c287a4ed3cda1be9e4ed862978db21132427a` |
| 38 | `theorem` | [comul_single](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/comul-single-source-edition-3.md) | 320 | `result-track:ccefd5440fc9c332df777204311e0ccdb181d8a6a17e3f22df1f26103ae573e5` |
| 39 | `theorem` | [counit_single](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/counit-single-source-edition-2.md) | 326 | `result-track:b2fb3e08381939ce3785ab56cd540cf9bc31d1c6c32cda5700113915fd0c3771` |
| 40 | `theorem` | [comul_comp_lsingle](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/comul-comp-lsingle.md) | 329 | `result-track:3403867a7f0878a22dc69020a5a4e2dd3dd448731dcbaf7aa87a1ea01f367740` |
| 41 | `theorem` | [comul_comp_lapply](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/comul-comp-lapply-source-edition-2.md) | 333 | `result-track:71e996d4af841606385307336bf1cf09a76db21b811e6d64812ea065411dc548` |
| 42 | `theorem` | [counit_comp_lsingle](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/counit-comp-lsingle.md) | 339 | `result-track:7c02ef7fa795da9349ffe7e63627c79c8f51431140f34636f914f5855ccc1c64` |
| 43 | `instance` | [instCoalgebra](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/instcoalgebra.md) | 352 | `declaration-track:12f1f9e5e037eb952fff608160e801a8392d6db92be6379184a29b1b1b048505` |
| 44 | `instance` | [instIsCocomm](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/instiscocomm-source-edition-2.md) | 368 | `declaration-track:572683cac29b8864b8da008303f8856636580d8bd88a6cff87530923dab6d945` |
| 45 | `instance` | [instCoalgebraStruct](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/instcoalgebrastruct.md) | 382 | `declaration-track:0bf5c5e8d59467cb1b65128294abef13f88c72ad5b484361397517a91adbdf87` |
| 46 | `theorem` | [comul_single](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/comul-single-source-edition-2.md) | 388 | `result-track:727b509084c2461c0ea4b557bae549fafeaaec3ba4bff979c0f55d026fcab5e9` |
| 47 | `theorem` | [counit_single](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/counit-single-source-edition-3.md) | 394 | `result-track:f34cdbe1fd856607eaf537a234e825f4cdb9221e8c056efd515d23bf8a72374c` |
| 48 | `theorem` | [comul_comp_lsingle](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/comul-comp-lsingle-source-edition-2.md) | 397 | `result-track:72548cec0172c006f638a9d9ddb3d4c8c022c96947122dbdb2bf4fc7853880af` |
| 49 | `theorem` | [comul_comp_lapply](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/comul-comp-lapply.md) | 401 | `result-track:5fd9afc92d512de2ddbe3ca33ed09003375b95a0cceecc73ef57b5460e91e95c` |
| 50 | `theorem` | [counit_comp_lsingle](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/counit-comp-lsingle-source-edition-2.md) | 406 | `result-track:967017e476b470ef97693155bec2a0ba034af583f8830d6c2e5ef89d7d4d3e2d` |
| 51 | `instance` | [instCoalgebra](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/instcoalgebra-source-edition-4.md) | 417 | `declaration-track:6c1731bd72b8e82e385d34518a8945be8fbdb020288648038c1dfbf17cba27ea` |
| 52 | `instance` | [instIsCocomm](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/instiscocomm-source-edition-3.md) | 433 | `declaration-track:ed6bd4586864ab3e1c1e48312b84e68395244736e44d8cc6617fceafc264c179` |
| 53 | `instance` | [instCoalgebraStruct](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/instcoalgebrastruct-source-edition-2.md) | 447 | `declaration-track:8fd5bd877212278957273aa076db52c76056b56e34b9f4636c0b5e2e018a4e7f` |
| 54 | `theorem` | [comul_single](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/comul-single.md) | 451 | `result-track:5b496d5da1579ffdee14ec4c454ce1144a90b6fecc5d7099a71743fdcbc3e7a2` |
| 55 | `theorem` | [counit_single](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/counit-single.md) | 455 | `result-track:4753019331655d533bf043a295aafe6e9d86c38aa0909bd513e6feb39cd9fb47` |
| 56 | `theorem` | [comul_comp_single](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/comul-comp-single.md) | 458 | `result-track:1c624088569699658a9867c3aacb06efa075d0573d84f448efb12f217f9f11d2` |
| 57 | `theorem` | [comul_comp_proj](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/comul-comp-proj.md) | 462 | `result-track:4a057ac1b208e22f3d5b114e3ee0dc4c9626895d45cebf712dbee1d9898c98ce` |
| 58 | `theorem` | [counit_comp_single](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/counit-comp-single.md) | 467 | `result-track:74f5953bcf679f4385b47b2eb2b66ef78437695f9943bdea99c2a889ea7b2dd8` |
| 59 | `theorem` | [counit_comp_dFinsuppCoeFnLinearMap](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/counit-comp-dfinsuppcoefnlinearmap.md) | 469 | `result-track:c394cc124c27d48e8b8f0d1c6edb8711e8ad4f1e0c535d189e1830745a7646c5` |
| 60 | `theorem` | [counit_coe_dFinsupp](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/counit-coe-dfinsupp.md) | 476 | `result-track:62bf2c7105f37f5968b3df32a51d7adbe392dcd745f7456ea16eba7724e456c5` |
| 61 | `theorem` | [comul_comp_dFinsuppCoeFnLinearMap](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/comul-comp-dfinsuppcoefnlinearmap.md) | 480 | `result-track:f9149659749fe2c121530eccca66eddefd7aeaae2207948f2c82f2a21b8e3f3f` |
| 62 | `theorem` | [comul_coe_dFinsupp](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/comul-coe-dfinsupp.md) | 489 | `result-track:fe80e3d76bfc22aa30ece8654c88aaa745b2872e76621acf70993608cc4163be` |
| 63 | `theorem` | [counit_comp_finsuppLcoeFun](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/counit-comp-finsupplcoefun.md) | 495 | `result-track:b8cb248da03aebce259c815dc75b0d25846d4a99825b50b622227638a6741da2` |
| 64 | `theorem` | [counit_coe_finsupp](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/counit-coe-finsupp.md) | 501 | `result-track:2f0481beef9709849deadbb8c0442bae582a35d3942e35ef7ff7111d6737c4dd` |
| 65 | `theorem` | [comul_comp_finsuppLcoeFun](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/comul-comp-finsupplcoefun.md) | 505 | `result-track:c7b8987f69ffb4d6500da0f841a0cab92d766f7e9a1aafafe76cc43c956d1098` |
| 66 | `theorem` | [comul_coe_finsupp](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/comul-coe-finsupp.md) | 512 | `result-track:558e6ed40723af54803247ed456ea00c7eb52145a857796934c1a88b9716f6d4` |
| 67 | `instance` | [instCoalgebra](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/instcoalgebra-source-edition-2.md) | 524 | `declaration-track:2a0a9a33e950fe2dd93e480743a0a29b419e8fc1151e673736b5b3149b305864` |
| 68 | `instance` | [instIsCocomm](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/instiscocomm.md) | 540 | `declaration-track:441377d7e249972c4e96bfbe14ed4f62ae770c845ddcf566f2de70ed126565b7` |
| 69 | `abbrev` | [coalgebraStruct](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/coalgebrastruct-source-edition-2.md) | 551 | `declaration-track:97e22631a4b294344e76fc43faf31659eb5b05715d9ca6e9a941502f50ea96a6` |
| 70 | `abbrev` | [coalgebra](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/coalgebra.md) | 557 | `declaration-track:028012b6d68c44c3d6d0742163c93eb54e874db629a60de25cd95ce12caa4d4d` |
| 71 | `lemma` | [coalgebraIsCocomm](../../../../CommutativeAlgebra/CoalgebraBasicPublic.lean/declarations/coalgebraiscocomm.md) | 579 | `result-track:a973333a4e31346d2ca4745fa330a19d95b8393eab54cf27671f6162f08361dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8ada678e8c3076273612790040c1f2cfe69e9fd8036a219a9aa28c76df64942b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variante6bb06a7731bb0a853f93ca79a108a0f88c1f9d7e50e8136b6937d05d2da7d94.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variante6bb06a7731bb0a853f93ca79a108a0f88c1f9d7e50e8136b6937d05d2da7d94.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
