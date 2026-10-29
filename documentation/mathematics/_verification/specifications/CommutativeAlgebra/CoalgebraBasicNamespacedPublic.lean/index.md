# Verification target: Coalgebra Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f6f408a7e1b4e3c6605514aca81133f818c0c9cf",
  "lexical_observation_count": 71,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantb84bfba7eafa493d427d3ef5c26d0fbe75f393724041d56ff8365328563595d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f6f408a7e1b4e3c6605514aca81133f818c0c9cf`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantb84bfba7eafa493d427d3ef5c26d0fbe75f393724041d56ff8365328563595d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variantb84bfba7eafa493d427d3ef5c26d0fbe75f393724041d56ff8365328563595d3.lean.json)

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
| 1 | `class` | [CoalgebraStruct](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/coalgebrastruct.md) | 44 | `declaration-track:1551533c93044418fd87191add22529e3791eed575e7e06039064d9377247498` |
| 2 | `structure` | [Coalgebra.Repr](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/coalgebra-repr.md) | 58 | `declaration-track:bfcd91177b33438200654364bb33f27f08174f70c7c3bea3c502ed86e819f59b` |
| 3 | `def` | [Coalgebra.Repr.arbitrary](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/coalgebra-repr-arbitrary.md) | 70 | `declaration-track:4b1eda1b84ba561ddf1191337520ed04e582710d15330b59f0865e1de02e8c4b` |
| 4 | `class` | [Coalgebra](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/coalgebra.md) | 87 | `declaration-track:4420f7db92f18dccf5f2c3d4ce6dd7b3c8ed0aa5ebde08f19e471bc351989075` |
| 5 | `abbrev` | [Repr.ι](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/repr.md) | 102 | `declaration-track:6409457ce27399b87590dc34fb7d4d70559d1f8faadc2130bd522605025da98f` |
| 6 | `theorem` | [coassoc_apply](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/coassoc-apply.md) | 105 | `result-track:168e856a7d8c9066906dd355726f96b17c5dfe62b9a82c69279c8c3b609d7b92` |
| 7 | `theorem` | [coassoc_symm_apply](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/coassoc-symm-apply.md) | 110 | `result-track:2c8bcb10ea1001860098f9f171c48298a1f5c69fb90c51adbb98d60257766c83` |
| 8 | `theorem` | [coassoc_symm](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/coassoc-symm.md) | 115 | `result-track:10b0eb4f196598ece20b287896254817d4825bd8d19022536f2edfa8ee66bdbb` |
| 9 | `theorem` | [rTensor_counit_comul](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/rtensor-counit-comul.md) | 121 | `result-track:4735f5290a7fe56208595a6ce3d3483c4a72620e644a5c548e107b1687fab8c9` |
| 10 | `theorem` | [lTensor_counit_comul](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/ltensor-counit-comul.md) | 125 | `result-track:296d28b30d9915848bb7d83a7ebdc784a101076e78c8b8f757c17865e0792c81` |
| 11 | `lemma` | [sum_counit_tmul_eq](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/sum-counit-tmul-eq.md) | 129 | `result-track:e2e8986f9203295e7fe9bc952fc10105b4cfd7c2df2b10c3820f8c4d5205adb5` |
| 12 | `lemma` | [sum_tmul_counit_eq](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/sum-tmul-counit-eq.md) | 134 | `result-track:2ce018eee380c147c9f79976f76a780b7ba7731282b045e1a5010211b33714ba` |
| 13 | `lemma` | [sum_tmul_tmul_eq](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/sum-tmul-tmul-eq.md) | 139 | `result-track:c9710298d5dfa11450aba0e733c62d393b4c209b606834e6b59d9321b835b824` |
| 14 | `theorem` | [sum_counit_tmul_map_eq](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/sum-counit-tmul-map-eq.md) | 149 | `result-track:3a7fdeba02acbb172bb189bded07393a908f9cd86678c961c493ffdeeb4a0289` |
| 15 | `theorem` | [sum_map_tmul_counit_eq](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/sum-map-tmul-counit-eq.md) | 157 | `result-track:a6022e3fa60b3482e54049d8bce56dd7706de5b96067ff1f0feebd5ed155a792` |
| 16 | `theorem` | [sum_map_tmul_tmul_eq](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/sum-map-tmul-tmul-eq.md) | 165 | `result-track:df2fc9e6986174af70aa78f183c28ca865466c6d13624094568c890d3108e65b` |
| 17 | `lemma` | [sum_counit_smul](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/sum-counit-smul.md) | 177 | `result-track:1202018723b3307dfe0f2ad904af64b7106c29558040383ac9c0a23bb76e2f59` |
| 18 | `lemma` | [lift_lsmul_comp_counit_comp_comul](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/lift-lsmul-comp-counit-comp-comul.md) | 182 | `result-track:caf6ae283042aaa5c02da9d683bad98d6d090acbee45532d667e3b7eb2afdd53` |
| 19 | `class` | [IsCocomm](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/iscocomm.md) | 194 | `declaration-track:a80898b1218d849aa45180949c9f25b5a0ab456b1b90eb13dd22dbbe2101e581` |
| 20 | `lemma` | [comm_comp_comul](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/comm-comp-comul.md) | 200 | `result-track:9aac6d7390d607c72c9e9d41ac63a002fc0ef8508be70d2a7de6dd0b1aefbd79` |
| 21 | `lemma` | [comm_comul](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/comm-comul.md) | 204 | `result-track:5ac381409c382638da7348234ab9d50341b743b00775a8c7a5c28c72b02cd7c8` |
| 22 | `instance` | [toCoalgebra](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/tocoalgebra.md) | 215 | `declaration-track:55663ac8c36017fd25b89a47f90c3eb90eb1ef888d444c7c8128291ae3d467d2` |
| 23 | `theorem` | [comul_apply](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/comul-apply.md) | 223 | `result-track:18991dce6cd993890a2feca4b73042184d2202a702442bef145ea63719f0cd31` |
| 24 | `theorem` | [counit_apply](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/counit-apply-source-edition-2.md) | 226 | `result-track:b8f364553f2928ac91033e7feb7c5526ee96860b1608fc41e3ddafbaac4330c7` |
| 25 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 228 | `declaration-track:b46c5c04c18ec6ec31c394e759e5c766c3ef53e49fd0ef31c5aff3485bb5707b` |
| 26 | `instance` | [instCoalgebraStruct](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/instcoalgebrastruct-source-edition-4.md) | 239 | `declaration-track:ff9d6f787c04e0ebfd5d8c31a46ee7a1a4e7848ef6c521c128a6d9d1171f7566` |
| 27 | `theorem` | [comul_apply](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/comul-apply-source-edition-2.md) | 246 | `result-track:abe0d9cfd3e88b67466e37c488ed7697888495ffb7dd9301aefa6304785bf3e4` |
| 28 | `theorem` | [counit_apply](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/counit-apply.md) | 252 | `result-track:1be3dd7b3086cdcd685376ba1a0bc2a0d06678432d32f9e350032f106cb3195a` |
| 29 | `theorem` | [comul_comp_inl](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/comul-comp-inl.md) | 254 | `result-track:aff0e4162d8c3be21df32a23dbb44453c9bbd55abfa75ae6e9d0b9aac5652186` |
| 30 | `theorem` | [comul_comp_inr](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/comul-comp-inr.md) | 258 | `result-track:60beae3a2dc3bd61375f3e162a7aa107a707270f6390377392e9a840a6a4f599` |
| 31 | `theorem` | [comul_comp_fst](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/comul-comp-fst.md) | 262 | `result-track:a8f785532bfd0a80a43bd0a6a0b62e753c1d13b2822d0b9716893a6bcdcf2d3f` |
| 32 | `theorem` | [comul_comp_snd](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/comul-comp-snd.md) | 270 | `result-track:0ba9548639a6c92e02eaf6cc7ca0844d04eebc153d5557fec857b2dd6fc00682` |
| 33 | `theorem` | [counit_comp_inr](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/counit-comp-inr.md) | 278 | `result-track:9a88380b397bf1d94d0e53cbf7398657e079cc76f5b14728c7d3d0a261f412c2` |
| 34 | `theorem` | [counit_comp_inl](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/counit-comp-inl.md) | 280 | `result-track:9e4a42243bc9a75a444a8b3bdf6782a841fa95468c38f33b9c233f157b610c9d` |
| 35 | `instance` | [instCoalgebra](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/instcoalgebra.md) | 282 | `declaration-track:33e440e8971ea2b342d69455d336bda8440a352e391c63b200d22f45467fc2c5` |
| 36 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/instance.md) | 307 | `declaration-track:70d28c686c5ba23d5319d3d90bdfa23db691dc5e2a2fe6597119074dfc4717e2` |
| 37 | `instance` | [instCoalgebraStruct](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/instcoalgebrastruct.md) | 322 | `declaration-track:1045b58d5e6b0f0c6622e1a07d62afdab86dfdeec7f8e4682991e4634638719e` |
| 38 | `theorem` | [comul_single](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/comul-single-source-edition-2.md) | 328 | `result-track:8867370ceb76d49a2ddd9e5e681eed08bb80b080a6c39b52f6d5d5ef27a3b01a` |
| 39 | `theorem` | [counit_single](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/counit-single-source-edition-3.md) | 334 | `result-track:efcce2d05bcbba6f0cbb6f323f361a5c4a1884a3103463cab37b61c914e5f597` |
| 40 | `theorem` | [comul_comp_lsingle](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/comul-comp-lsingle-source-edition-2.md) | 337 | `result-track:77c744513a234ba7a42b66d2c6e431fe017076fd8fb1d03d9a24ef8c01f2a8d3` |
| 41 | `theorem` | [comul_comp_lapply](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/comul-comp-lapply-source-edition-2.md) | 341 | `result-track:ff98c95e50e6a492d3f9266029db40fc4ecae0b76c35871dbfcff02afb17db32` |
| 42 | `theorem` | [counit_comp_lsingle](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/counit-comp-lsingle.md) | 347 | `result-track:0f5deeb1e4e890f3bcb918b99d2cfd05958100165cc6b4f75839c1529980f128` |
| 43 | `instance` | [instCoalgebra](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/instcoalgebra-source-edition-3.md) | 360 | `declaration-track:7701754d34d6cb236998d7faedaefe0b09c3e369702983757a63de317f701763` |
| 44 | `instance` | [instIsCocomm](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/instiscocomm-source-edition-2.md) | 376 | `declaration-track:e5e16cc19f20310528519b9a5a9211eadb642122a2ef372ba88281747a778998` |
| 45 | `instance` | [instCoalgebraStruct](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/instcoalgebrastruct-source-edition-2.md) | 390 | `declaration-track:49c9f7f64a4ad7ab7acd79df34ad09574117c097621de717ab538d1f9fdf3d7b` |
| 46 | `theorem` | [comul_single](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/comul-single.md) | 396 | `result-track:6e45bac3d5325139bbe62869ee922203b3f74c029831945711bcae5a3fb576d3` |
| 47 | `theorem` | [counit_single](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/counit-single.md) | 402 | `result-track:997b583b24e01e5555a2dd646a75e77921dffed32e837807e64144a6684e40ec` |
| 48 | `theorem` | [comul_comp_lsingle](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/comul-comp-lsingle.md) | 405 | `result-track:270a346ea9653506581309438eee8a40009cc6eba44fc7cc2b74a48c4aa35124` |
| 49 | `theorem` | [comul_comp_lapply](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/comul-comp-lapply.md) | 409 | `result-track:7cb9d9e85f1c28a361dbf401bc542e39c914b353ab9c556fc86213df0b213314` |
| 50 | `theorem` | [counit_comp_lsingle](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/counit-comp-lsingle-source-edition-2.md) | 414 | `result-track:515c0c23a7c850dc4973576bdbf1f835256567b13ce6dbc0dcf3de081f311800` |
| 51 | `instance` | [instCoalgebra](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/instcoalgebra-source-edition-4.md) | 425 | `declaration-track:7b8a93401275a0f8a6c1fc1d9acabcda62ddebcc3923909624a66561b5383af7` |
| 52 | `instance` | [instIsCocomm](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/instiscocomm.md) | 441 | `declaration-track:9b534f763a0651a3536cc26f648e00d9396da0cb0e6a58db24d178fabe995460` |
| 53 | `instance` | [instCoalgebraStruct](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/instcoalgebrastruct-source-edition-3.md) | 455 | `declaration-track:e3baeeaea677cad22f623ef32a0b7e879468cb336a243acbffd51331828634f8` |
| 54 | `theorem` | [comul_single](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/comul-single-source-edition-3.md) | 459 | `result-track:d4e8b1a3dfab097d0e27aff39d6ac2757149073b3e95c45ba0b106a6fc287abd` |
| 55 | `theorem` | [counit_single](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/counit-single-source-edition-2.md) | 463 | `result-track:db9a4c7cff12087921c6fb472a0441d930949129b97138446370c3a1cb62aad9` |
| 56 | `theorem` | [comul_comp_single](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/comul-comp-single.md) | 466 | `result-track:07165bb295b7fc4929e8a7aaf8dcfca597d57567f4933893d6ff454b15ce007e` |
| 57 | `theorem` | [comul_comp_proj](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/comul-comp-proj.md) | 470 | `result-track:dfd2acae1571294a147ba33860ccd021c2a4b4271485169c7dd54b7dc38e9cf2` |
| 58 | `theorem` | [counit_comp_single](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/counit-comp-single.md) | 475 | `result-track:434c99511ac7acff0c5baeb9a98104f61a722bc1043346822cb39a13c100bd90` |
| 59 | `theorem` | [counit_comp_dFinsuppCoeFnLinearMap](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/counit-comp-dfinsuppcoefnlinearmap.md) | 477 | `result-track:8e26c0e08210fbd3e1265070c28be9daa4ebfd8410f339d10bd1b05184581c59` |
| 60 | `theorem` | [counit_coe_dFinsupp](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/counit-coe-dfinsupp.md) | 484 | `result-track:6e591770a51b85c8301b8f56e7d5d97548b706c64d7bace1649801876c7022c2` |
| 61 | `theorem` | [comul_comp_dFinsuppCoeFnLinearMap](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/comul-comp-dfinsuppcoefnlinearmap.md) | 488 | `result-track:47f2c72aa551c7ebe947c43e104d7133f14dbcd1c0305cf408828b7555e2c3db` |
| 62 | `theorem` | [comul_coe_dFinsupp](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/comul-coe-dfinsupp.md) | 497 | `result-track:3ff9aa6095fdbaee66c31d157049c4ff3242c923b69b1580a133463f2036cc60` |
| 63 | `theorem` | [counit_comp_finsuppLcoeFun](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/counit-comp-finsupplcoefun.md) | 503 | `result-track:3a5d45b89915d6d3a4815ed9a5cb73d378e99cb088bc66099efa73132320171f` |
| 64 | `theorem` | [counit_coe_finsupp](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/counit-coe-finsupp.md) | 509 | `result-track:9b0463c827c408851ea2832ad704cab400581d4cf8618534c2d698948af6fda9` |
| 65 | `theorem` | [comul_comp_finsuppLcoeFun](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/comul-comp-finsupplcoefun.md) | 513 | `result-track:f204f5727c686fb119560efc0d59ae5bcd9508f0ee9f03682928fcac392b739e` |
| 66 | `theorem` | [comul_coe_finsupp](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/comul-coe-finsupp.md) | 520 | `result-track:fcd76cb8533c8cbc99d8183247261c92b7cca5b6bfd62dbe891fbbb7c2daa24b` |
| 67 | `instance` | [instCoalgebra](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/instcoalgebra-source-edition-2.md) | 532 | `declaration-track:52792071dbe9b0934e92016c582549e27f26f5db81e33c113ac2e4623a31bd77` |
| 68 | `instance` | [instIsCocomm](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/instiscocomm-source-edition-3.md) | 548 | `declaration-track:fff182aea1c10d83834b15891766506df8c5c259ce37a28526a9cab57031fd0f` |
| 69 | `abbrev` | [coalgebraStruct](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/coalgebrastruct-source-edition-2.md) | 559 | `declaration-track:e9559f6bba0586a160afe1a40f10226639e0bc8dfc8276e4b9f50c9b712163c5` |
| 70 | `abbrev` | [coalgebra](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/coalgebra-source-edition-2.md) | 565 | `declaration-track:c4504ec36464bcb88cb832b5702930de95b3c238c224e93231bce0a4e9ff56a8` |
| 71 | `lemma` | [coalgebraIsCocomm](../../../../CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/declarations/coalgebraiscocomm.md) | 587 | `result-track:096d3a5aa01d88ec63b656c42b3d30021a42d934394c0c9a6960c335a5f5beff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ad6a33873edb128aec73a6776ef3d626b35a1bdbc23bc6fd334437eb7f6b3fd0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variantb84bfba7eafa493d427d3ef5c26d0fbe75f393724041d56ff8365328563595d3.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variantb84bfba7eafa493d427d3ef5c26d0fbe75f393724041d56ff8365328563595d3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
