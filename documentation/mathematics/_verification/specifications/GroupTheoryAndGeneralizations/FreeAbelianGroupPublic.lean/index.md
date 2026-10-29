# Verification target: Free Abelian Group Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "314b05e3565c6047316ccf1324242bbb9ca8d542",
  "lexical_observation_count": 71,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/FreeAbelianGroup/Variant6699381e6dbdc4bb60ec2c74d123a896394192f22821bac49095cbed64ce95a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `314b05e3565c6047316ccf1324242bbb9ca8d542`.

Source path: `GRWTSK/Algebra/GroupTheory/FreeAbelianGroup/Variant6699381e6dbdc4bb60ec2c74d123a896394192f22821bac49095cbed64ce95a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/FreeAbelianGroup/Variant6699381e6dbdc4bb60ec2c74d123a896394192f22821bac49095cbed64ce95a3.lean.json)

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
| 1 | `def` | [FreeAbelianGroup](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/freeabeliangroup.md) | 96 | `declaration-track:3587aa3852bdd3a457c8d87680e84923ad78a471d9773aff4854272f5284f658` |
| 2 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/instance.md) | 100 | `declaration-track:1a536c79b585ce92bdafc5b0baf86348d21ca0cfa0f506b86eebc2a9c8e16844` |
| 3 | `def` | [of](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/of.md) | 108 | `declaration-track:a0335eb6c184d20a0e1e0336330ed34f132a10e450d394da2493db8056d3b8a9` |
| 4 | `def` | [lift](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/lift.md) | 112 | `declaration-track:8f51d74cbe570c3aa28e4b193c3ab218230cdf3403a6f2859419ac8b4bffe81b` |
| 5 | `theorem` | [lift_apply_of](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/lift-apply-of.md) | 124 | `result-track:4c15642062e14526aca771f501b116d29f289633f8c81a8f128babd4ba4b96c4` |
| 6 | `theorem` | [lift_unique](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/lift-unique.md) | 128 | `result-track:51435200fca9329438751821ad811a179048cfc74e7c4f127a392f89017467ee` |
| 7 | `theorem` | [lift_ext](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/lift-ext.md) | 134 | `result-track:ae6c3dd3d92f4a52a813b1ef19ddcc767d5729d5d3ce2c899843edc10a3b4e25` |
| 8 | `theorem` | [lift_comp_apply](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/lift-comp-apply.md) | 137 | `result-track:cc14ba25aa96dd6bd90097253cdad9b3bbf3658704ac185d864e8f9e145973a4` |
| 9 | `theorem` | [of_injective](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/of-injective.md) | 149 | `result-track:e94714f1effc8f38069933cb1f5c263596f588a61a0b3fcb8c6feb3df31744df` |
| 10 | `theorem` | [of_ne_zero](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/of-ne-zero.md) | 159 | `result-track:40e54a717334e01270ad9ddcd32888dbbaf3c2bcc2e1c556505e25daba956022` |
| 11 | `theorem` | [zero_ne_of](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/zero-ne-of.md) | 167 | `result-track:84de967f9ca065cc0cbd2baea8a5b875c7158bca883b7aea31ca99937968e0ab` |
| 12 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/instance-source-edition-6.md) | 169 | `declaration-track:fd6d7ad5a494785068e95e758ec0d0da21c2a611cf7ca9c52f5ff52484030ee2` |
| 13 | `theorem` | [induction_on](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/induction-on-source-edition-2.md) | 175 | `result-track:9bd78318c17994cab4bd64715281bec9c6dd2605530e2940b9babad044a7ef4a` |
| 14 | `theorem` | [lift_add_apply](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/lift-add-apply.md) | 182 | `result-track:dd8298f8b03d8e5200e8e9cd418f75d44a60d0c9a077b59daf86791afc07edfb` |
| 15 | `lemma` | [lift_add](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/lift-add.md) | 190 | `result-track:e94826ac5aa018e77e9b7b356a7221c63612f301627ecc47e3f7912ae2b8cc99` |
| 16 | `def` | [liftAddEquiv](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/liftaddequiv.md) | 198 | `declaration-track:d0888cc3e112c2f7f1bfd0925d810854d55047bbd41a2f0bab42c85540b5eb5c` |
| 17 | `def` | [liftAddGroupHom](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/liftaddgrouphom.md) | 204 | `declaration-track:d9ce3e4d2724a05963c62081c4d3124daa77366f0057f22027419b1ae233aaee` |
| 18 | `lemma` | [lift_neg](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/lift-neg.md) | 207 | `result-track:8582567f1c233101a7cef45a50d5b4e696194228d7a6e3cb2868a58ed407875f` |
| 19 | `lemma` | [lift_neg_apply](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/lift-neg-apply.md) | 209 | `result-track:cfcb534aa00d3a8c99e974fb6828aa5486371d13fa979882b283529e88081047` |
| 20 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/instance-source-edition-5.md) | 216 | `declaration-track:f6e97f5b1e6adb9dee87e0860b1ffa79c4eae2da2d447a2b0200890829fb4ced` |
| 21 | `theorem` | [induction_on'](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/induction-on.md) | 221 | `result-track:6c0a4ee9b4e3d6c1b2783a222722a374442f54da256b3facace5ade6ed65b855` |
| 22 | `theorem` | [map_pure](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/map-pure.md) | 228 | `result-track:b0570a0e6f6a46f5f9e84eb7a87d2e4e0c37e49bd6139f49d1b0374cd257c1b8` |
| 23 | `theorem` | [map_zero](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/map-zero.md) | 232 | `result-track:cd8c1109a3cbe162c759acf8d81a05c1e973e31796523eef45c267899861401d` |
| 24 | `theorem` | [map_add](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/map-add.md) | 236 | `result-track:346fe41685b9fe9f3e3635947851b1411927933f54110ce7d60e7b3572c7dcf4` |
| 25 | `theorem` | [map_neg](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/map-neg.md) | 241 | `result-track:8e31682107fa36247f74aaa471299e4c7544ec7f3954837b0342b91cef04e931` |
| 26 | `theorem` | [map_sub](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/map-sub.md) | 245 | `result-track:b6f7ed241913e706be6de0e892323620a84bdacb4c671b372e1d5c0d278641b4` |
| 27 | `theorem` | [map_of](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/map-of.md) | 250 | `result-track:1892a655f845f442bd39feff7996c446e0e3d84185b6ae120877d638450b6cc6` |
| 28 | `theorem` | [pure_bind](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/pure-bind.md) | 253 | `result-track:accb2c2f3b924f2e707734c244b194f290eec4a0732cb15c28b8d6d4ae387fce` |
| 29 | `theorem` | [zero_bind](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/zero-bind.md) | 257 | `result-track:89ca573c3a01507a8c9661f14cfa20b1d418b543cd740e2f34b1c56f48031a58` |
| 30 | `theorem` | [add_bind](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/add-bind.md) | 261 | `result-track:3893b5602f88b700a528aa5fb5056c959a14442a44bb0af7aa90829d979c223b` |
| 31 | `theorem` | [neg_bind](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/neg-bind.md) | 266 | `result-track:1503a19b42bd92446b1436ce3e7dab691cc8871e297344bacf365f40f46e7645` |
| 32 | `theorem` | [sub_bind](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/sub-bind.md) | 270 | `result-track:c2000bee653e170f73ab7e61c606fc90eacfcfee443bcb9abc96bca117b405f2` |
| 33 | `theorem` | [pure_seq](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/pure-seq.md) | 275 | `result-track:28eabbac14ea9fa9a3595f48c93c6c934db488c3ef016dbdc524fc39676901b2` |
| 34 | `theorem` | [zero_seq](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/zero-seq.md) | 279 | `result-track:49bca2c255bb3f2fe24a8282f548dd5151f9457b8313ccb422cba087b58dcf44` |
| 35 | `theorem` | [add_seq](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/add-seq.md) | 283 | `result-track:809e86ce9399516dccb6ca878f1c87ff8ef48b2e993ba62eabb6e95a3ae76701` |
| 36 | `theorem` | [neg_seq](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/neg-seq.md) | 288 | `result-track:e1c946584926fcd73ce98e89e10c6cbd9a45095d08e4f139360de8de71b95836` |
| 37 | `theorem` | [sub_seq](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/sub-seq.md) | 292 | `result-track:bcbb420994ed18c336d744bc237ab0b6bf9e83f1398ad6630492d02cd7a77c70` |
| 38 | `def` | [seqAddGroupHom](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/seqaddgrouphom.md) | 298 | `declaration-track:5d39db93cb3ba3cff84025858c47052f8a9c248a22553f864f25e35fc75c0aa4` |
| 39 | `theorem` | [seq_zero](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/seq-zero.md) | 304 | `result-track:bd132176c8e97cfb256ce0f5e41e78c0636f1289cc8873417bbdc9536e06a336` |
| 40 | `theorem` | [seq_add](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/seq-add.md) | 308 | `result-track:6873c0fa195aa7231486fc496e00e63c1ddb237ea2dd7e9fe30e691ddd30ffc3` |
| 41 | `theorem` | [seq_neg](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/seq-neg.md) | 313 | `result-track:c0f3af76a89470bee206343b7c3d1fd15c2a5dbd911781f2fa68e8f264901a78` |
| 42 | `theorem` | [seq_sub](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/seq-sub.md) | 317 | `result-track:1127bc125338d8c14d3d62c6a1ad1df3c744b6a41af5a6788aff785a423ee030` |
| 43 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/instance-source-edition-3.md) | 321 | `declaration-track:498b17935498e45cdd587b239f2987383adf6c486f027638284e4601e1771afb` |
| 44 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/instance-source-edition-2.md) | 330 | `declaration-track:3a41ee4d97b2236c8f0ed95316722a2701d5cd691904c241b7fd27ecb21cd0cb` |
| 45 | `def` | [map](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/map.md) | 353 | `declaration-track:4218466b7643fb2634c050ef8bb8512075202ba6649335fe9bd3afd138f4ddc7` |
| 46 | `theorem` | [lift_comp](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/lift-comp.md) | 356 | `result-track:ebd9445429dd45b7acb608c3f73d5a9888cc778679075a4b2f4a91cf4d69d95c` |
| 47 | `theorem` | [map_id](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/map-id.md) | 364 | `result-track:9380c2350ae02b76a01207ec56376c84cc5a169d58c4e71b1af149f0a20822da` |
| 48 | `theorem` | [map_id_apply](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/map-id-apply.md) | 368 | `result-track:216dee15295c6c4b88a8ac9c38cc4ac5911d40c08275b2fc8fcbf9991108e7f4` |
| 49 | `theorem` | [map_comp](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/map-comp.md) | 372 | `result-track:81ce8a139ecd37f31b6f370dd0a49a6d405deded06b3cc0f8af2a4d37cd92341` |
| 50 | `theorem` | [map_comp_apply](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/map-comp-apply.md) | 375 | `result-track:cb1f92a5ae1431a1f1a2c97696aa83f20ea7da51b91f49741bc4d7f4008d0942` |
| 51 | `theorem` | [map_of_apply](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/map-of-apply.md) | 382 | `result-track:89e2909b8c5920d4a12c817cecbeee4f93f50df03d4f7967b801ecbc5dafeb1b` |
| 52 | `instance` | [mul](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/mul.md) | 391 | `declaration-track:356514d71ab0edfc750e0dfe816830d7476aef11216ba8fba54729dff721e56b` |
| 53 | `theorem` | [mul_def](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/mul-def.md) | 396 | `result-track:658561eb61f3fce232497ae0b1885b85eb6fc7a563fb98f31b04643cb0b2bafa` |
| 54 | `theorem` | [of_mul_of](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/of-mul-of.md) | 401 | `result-track:9b4c198a12ed9bc23698fc6311beb74f4c1e8b73dc1e95489aa2690858c8cb19` |
| 55 | `theorem` | [of_mul](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/of-mul.md) | 404 | `result-track:b3ba491f5f42a9b94cee93cfe4572c71e725154ad06d7d2b73a2251938b89606` |
| 56 | `instance` | [distrib](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/distrib.md) | 407 | `declaration-track:772863e2fb5ff08e30194d60f75b1d89c94bdca444c750d327ee58100e61b349` |
| 57 | `instance` | [nonUnitalNonAssocRing](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/nonunitalnonassocring.md) | 411 | `declaration-track:fda3db53df9a1626b1197c8e9a18b28c7ab85f84f903802de25016f0a89c6367` |
| 58 | `instance` | [one](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/one.md) | 422 | `declaration-track:39da31bce276487a8e6423e440ea073b737912117dcc7b7ad5156d579eab510f` |
| 59 | `theorem` | [one_def](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/one-def.md) | 425 | `result-track:2336a1e8252dd6d8458729bb65bc90f66dfbb3fdcd5563f9f7549cc2ac59e169` |
| 60 | `theorem` | [of_one](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/of-one.md) | 428 | `result-track:57e4e64909c5dd54f4a9d2482095c4bc87cb30278138fd283dfe844ed8a907e2` |
| 61 | `instance` | [nonUnitalRing](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/nonunitalring.md) | 433 | `declaration-track:c5143e21f9ead15db9014f444b13e58ee1f58990da48fce033bbe7fdcb16f806` |
| 62 | `instance` | [ring](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/ring.md) | 455 | `declaration-track:9c0662b24c14c6c21626fd1276440c394c6ab7bf691204772e7219d4ac37dfc3` |
| 63 | `def` | [ofMulHom](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/ofmulhom.md) | 474 | `declaration-track:922bc7514f934e850ae1770c370be53363fc314bc2fab3a29400072186a73f1c` |
| 64 | `theorem` | [ofMulHom_coe](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/ofmulhom-coe.md) | 480 | `result-track:833d4463e4cb0441b5f9e1099a5f2d50e4e2011df6eb5009609b7e6f46cbd180` |
| 65 | `def` | [liftMonoid](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/liftmonoid.md) | 484 | `declaration-track:125bdbeb66102169392bdc66c6e4b01c3c302fa995aaeea2374b2d567e5dc2da` |
| 66 | `theorem` | [liftMonoid_coe_addMonoidHom](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/liftmonoid-coe-addmonoidhom.md) | 513 | `result-track:50579c9c27c96e0a7889e394ea00177e06a1165973e0a79d77de5c7616996435` |
| 67 | `theorem` | [liftMonoid_coe](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/liftmonoid-coe.md) | 517 | `result-track:14beb0ee45d77477bde4874de2655aeb30c137b6065a7c3dccd0d19c46de0198` |
| 68 | `theorem` | [liftMonoid_symm_coe](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/liftmonoid-symm-coe.md) | 521 | `result-track:1b226a23b6fb892b1de8fb97610f39fc1a15eec2bd505e5927a8b26204da790a` |
| 69 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/instance-source-edition-4.md) | 527 | `declaration-track:ca8c5c2334913308793aff7db2f0eda55faeb1d0c038bb60afddce76dae2dee8` |
| 70 | `def` | [uniqueEquiv](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/uniqueequiv.md) | 545 | `declaration-track:75b9d9f80ff6299c208539bfbb1e9371fa1a4f5b63b2af1139a97635cf60295e` |
| 71 | `def` | [equivOfEquiv](../../../../GroupTheoryAndGeneralizations/FreeAbelianGroupPublic.lean/declarations/equivofequiv.md) | 560 | `declaration-track:868e1c92223169466950a53ec8bb8dec41e36528f5ae86f1cc800a291e7760c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=973e8c87703e825f7119a3316b6d804353f1d3e4a3a9ee10d6e594bfdfbe8589 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/FreeAbelianGroup/Variant6699381e6dbdc4bb60ec2c74d123a896394192f22821bac49095cbed64ce95a3.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/FreeAbelianGroup/Variant6699381e6dbdc4bb60ec2c74d123a896394192f22821bac49095cbed64ce95a3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
