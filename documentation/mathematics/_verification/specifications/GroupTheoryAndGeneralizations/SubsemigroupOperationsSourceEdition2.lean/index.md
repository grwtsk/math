# Verification target: Subsemigroup Operations Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "01690fee987de4416200196ad3922bcc51e7df6e",
  "lexical_observation_count": 110,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Operations/Variant8e2d4ad8078612765b3f9da2f0a55a44d3fedfba4d2b1c8801219fd06cf0bbea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `01690fee987de4416200196ad3922bcc51e7df6e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Operations/Variant8e2d4ad8078612765b3f9da2f0a55a44d3fedfba4d2b1c8801219fd06cf0bbea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Operations/Variant8e2d4ad8078612765b3f9da2f0a55a44d3fedfba4d2b1c8801219fd06cf0bbea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Prod` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subsemigroup.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.TypeTags.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Subsemigroup.toAddSubsemigroup](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/subsemigroup-toaddsubsemigroup-source-edition-2.md) | 80 | `declaration-track:4e365cf19c0307d2aca1cd33dc323b169ba306607d0611a41753af3e57de0e4d` |
| 2 | `abbrev` | [AddSubsemigroup.toSubsemigroup'](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/addsubsemigroup-tosubsemigroup.md) | 93 | `declaration-track:636fb87e8200787ff8d34e86383a939bddbdda92ab85af684614f2d5b329b8f9` |
| 3 | `theorem` | [Subsemigroup.toAddSubsemigroup_closure](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/subsemigroup-toaddsubsemigroup-closure-source-edition-2.md) | 96 | `result-track:9a98ecfe6b8280bf30af162920454960cadc68b147d86175f640e34fb1ff4213` |
| 4 | `theorem` | [AddSubsemigroup.toSubsemigroup'_closure](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/addsubsemigroup-tosubsemigroup-closure-source-edition-2.md) | 104 | `result-track:33c0e6150c888c5cc2383a041c600e288589bda2e55b423f8a76e25a4dc5a0c7` |
| 5 | `def` | [AddSubsemigroup.toSubsemigroup](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/addsubsemigroup-tosubsemigroup-source-edition-2.md) | 121 | `declaration-track:e8c642ba3f0ef5f162ea8e6247469099b9997b2e4bc5d03efb56d5258e983d96` |
| 6 | `abbrev` | [Subsemigroup.toAddSubsemigroup'](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/subsemigroup-toaddsubsemigroup.md) | 134 | `declaration-track:08e4d468c32405aae10bbb66dc62ed82c88588dce75bd1ae67653486d0785c75` |
| 7 | `theorem` | [AddSubsemigroup.toSubsemigroup_closure](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/addsubsemigroup-tosubsemigroup-closure.md) | 137 | `result-track:16bb409cf9432c4fb012098a6300c32326268f14e2f56f7f725a6a54c6d7cc62` |
| 8 | `theorem` | [Subsemigroup.toAddSubsemigroup'_closure](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/subsemigroup-toaddsubsemigroup-closure.md) | 145 | `result-track:483839dc7122ed40d82e7277962393b132200160198e5de9fafb56a7c2e3d206` |
| 9 | `def` | [comap](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/comap.md) | 170 | `declaration-track:b9cdda2d18162748320386f9db234e7be2f1c35a32662b12fb6facb3702bdaa4` |
| 10 | `theorem` | [coe_comap](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/coe-comap.md) | 176 | `result-track:ae7381bd4808efb62619ed265d2611e4c6c34eadac6389665daaf824d193fb4e` |
| 11 | `theorem` | [mem_comap](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/mem-comap.md) | 180 | `result-track:ed018b2ee122aa36b37da41b185be18c15ecddca0bbdc153ca134f2219fb67f9` |
| 12 | `theorem` | [comap_comap](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/comap-comap.md) | 184 | `result-track:67dc01e155ed1a9371b0ef7c30b880bfe4f0e7e179721488c7429a79d249ae9c` |
| 13 | `theorem` | [comap_id](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/comap-id.md) | 189 | `result-track:f159a910ad2ee1d425cbfb1752b67196d91e806ed48f51d9bdf459c89b707c6f` |
| 14 | `def` | [map](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/map.md) | 196 | `declaration-track:6d2584b93a7a4ab398674657b73ba0b1e7eaf42718e651501d36d9d4bf2a1e95` |
| 15 | `theorem` | [coe_map](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/coe-map.md) | 203 | `result-track:7166fdff6fbff39b504eaac54c7b04d8dbe85c80030d368299afb5147137d3aa` |
| 16 | `theorem` | [mem_map](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/mem-map.md) | 207 | `result-track:9f3e11d9cbeb728bb5674a288417158a385b12385296fe71fe00eab9451a0164` |
| 17 | `theorem` | [mem_map_of_mem](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/mem-map-of-mem.md) | 211 | `result-track:dbc04954fdcbb35593f60f4976c5ebc9e49ffd5c061872a3a7bd3904ab3d2e75` |
| 18 | `theorem` | [apply_coe_mem_map](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/apply-coe-mem-map.md) | 215 | `result-track:871af7c7c3e26ead95b2f549998e35bcea192c9efc2f75b9a83e98ddd82163ac` |
| 19 | `theorem` | [map_map](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/map-map.md) | 219 | `result-track:0746995bb0de444d33e0b0882dc79ae78c67217dc349daa5cfa9a863fc91159e` |
| 20 | `theorem` | [mem_map_iff_mem](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/mem-map-iff-mem.md) | 227 | `result-track:4378dd5dc1ad959af7deb407c7a117bda62e7b9159426d61feb7f0a6ed7bb4ca` |
| 21 | `theorem` | [map_le_iff_le_comap](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/map-le-iff-le-comap.md) | 232 | `result-track:85c5868d75806ea2471b48cfd8f4245d7ae6307e7a909985d25b41cc47f79b26` |
| 22 | `theorem` | [gc_map_comap](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/gc-map-comap.md) | 237 | `result-track:5d5e333e16475040ce465c4cb933ce1c2ad9ca255bdcc0d32c2ce24462660378` |
| 23 | `theorem` | [map_le_of_le_comap](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/map-le-of-le-comap.md) | 241 | `result-track:9257abc8b824924c2b90d9603e9f098648f58d13949db0c2c48a293d23292af8` |
| 24 | `theorem` | [le_comap_of_map_le](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/le-comap-of-map-le.md) | 245 | `result-track:11038e2d5b55633d1137602d155657e3f0659b64ab85a888131d1ff86b43f1fc` |
| 25 | `theorem` | [le_comap_map](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/le-comap-map.md) | 249 | `result-track:ad4f4776deaf05165540a4765d31c5c1d17396239431c5144d27240bf6bf848f` |
| 26 | `theorem` | [map_comap_le](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/map-comap-le.md) | 253 | `result-track:38007575ca66920a04697812dbaddd800742147e7c68fb8ec46ab5bc9a7d3265` |
| 27 | `theorem` | [monotone_map](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/monotone-map.md) | 257 | `result-track:5dfb07be1425594b85c48984c452f0bd1a1e8ea1ea09c6889af200541c17b9ce` |
| 28 | `theorem` | [monotone_comap](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/monotone-comap.md) | 261 | `result-track:3cb892802ab02f18ba18ad6912442021d497d3aae78f981cee94a5f3d04027d4` |
| 29 | `theorem` | [map_comap_map](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/map-comap-map.md) | 265 | `result-track:0c3d86cc53670d33423016e5b5446e9f900aca325c5b8b707de121a75808b4d1` |
| 30 | `theorem` | [comap_map_comap](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/comap-map-comap.md) | 269 | `result-track:7c1ff02a3ee6d170da8202c3f93641df3cd8a8bba2192a587d81916725074730` |
| 31 | `theorem` | [map_sup](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/map-sup.md) | 274 | `result-track:6e5093ae4c503ec3c6604bc90a8c72366848758e92b7e077ca49c98f4e7058cc` |
| 32 | `theorem` | [map_iSup](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/map-isup.md) | 278 | `result-track:0f2bafc955f5eac307ae9b6c5a3b46a6d562ee33a16d7a88df2cc956209951ed` |
| 33 | `theorem` | [map_inf](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/map-inf.md) | 283 | `result-track:7b9479393030f279bd72e991c4a6b76a9340df99e18eccffda0ea2c43c6ec5e8` |
| 34 | `theorem` | [map_iInf](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/map-iinf.md) | 287 | `result-track:12b12aeea5e7e9b5c2f9180e3e43dface99bfc7ee2d50f31cb3334fb01b200a6` |
| 35 | `theorem` | [comap_inf](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/comap-inf.md) | 293 | `result-track:bd965555c76bd1e8bb0a6a5406a85f0b8d13a17ae6f12b1714a8e05fcd6def9f` |
| 36 | `theorem` | [comap_iInf](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/comap-iinf.md) | 297 | `result-track:5dc92a02c16ae30f3d6cc9008f66844512cb299cf56e7beb6447c3df3cb23132` |
| 37 | `theorem` | [map_bot](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/map-bot.md) | 302 | `result-track:2feecc42d42bdbc7ea83c56c4e0627e670c66878bf238e24af54911e1e5f994b` |
| 38 | `theorem` | [comap_top](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/comap-top.md) | 306 | `result-track:2bd6ccc17b65316f172e39568f11d17ef7f69f24cd44a39171588af5f6b659f5` |
| 39 | `theorem` | [map_id](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/map-id.md) | 310 | `result-track:7732e006dd6cc0a35b894734421f80f7dfa9e9d13a17aa0aadb123b5de09b712` |
| 40 | `def` | [gciMapComap](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/gcimapcomap.md) | 319 | `declaration-track:dc31b37e53dcc8e66b857d949c8a75cb349fd5fd01cb12a8b07fb8ce4056a6ed` |
| 41 | `theorem` | [comap_map_eq_of_injective](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/comap-map-eq-of-injective.md) | 326 | `result-track:84f666f5f39fbc0f3b5964b29c752376d14b3912a2e55c8ada0041655654ab6b` |
| 42 | `theorem` | [comap_surjective_of_injective](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/comap-surjective-of-injective.md) | 330 | `result-track:c28bda99242d03965c4fb8d78a9f87c2615533d645b18124dae82e14011e0508` |
| 43 | `theorem` | [map_injective_of_injective](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/map-injective-of-injective.md) | 334 | `result-track:e07f9c135cfd4da178c302828739d68bd0059b9766dc51e229ab3c2f22dd516a` |
| 44 | `theorem` | [comap_inf_map_of_injective](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/comap-inf-map-of-injective.md) | 338 | `result-track:2089dc0a61887c72a3c21a7aac18dd9011aba161b437066027b1b5b3b52bbd79` |
| 45 | `theorem` | [comap_iInf_map_of_injective](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/comap-iinf-map-of-injective.md) | 342 | `result-track:dbd05d02162c412f80ca15f8718496ef6ff61e9e116e409b8a24df1f666bd151` |
| 46 | `theorem` | [comap_sup_map_of_injective](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/comap-sup-map-of-injective.md) | 347 | `result-track:36652a4ff95c4f067b8dcee4e65352330e2de146177871c5d98caabfdb2ea527` |
| 47 | `theorem` | [comap_iSup_map_of_injective](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/comap-isup-map-of-injective.md) | 351 | `result-track:6e1deb2b209326f7036bc2cead3e1a971feed1f00a9f56fa1898043abb51ef27` |
| 48 | `theorem` | [map_le_map_iff_of_injective](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/map-le-map-iff-of-injective.md) | 356 | `result-track:94805ceef3e3865ea5f510e2199fea8e6839af73a40bd397e07cf7fba95e2cac` |
| 49 | `theorem` | [map_strictMono_of_injective](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/map-strictmono-of-injective.md) | 360 | `result-track:63679d14b005c1cbc09d2128b45b37004f7bf9a316eb705d0c387eef447b1f6b` |
| 50 | `def` | [giMapComap](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/gimapcomap.md) | 372 | `declaration-track:c0a39a5872ece3516301d9f8df9a38cb68416cae2cad49dc3021605d868ce684` |
| 51 | `theorem` | [map_comap_eq_of_surjective](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/map-comap-eq-of-surjective.md) | 378 | `result-track:8c5ae9b0907ede75c8206a4a323657cfac0e54b5547e22bbef96f918921d3e9b` |
| 52 | `theorem` | [map_surjective_of_surjective](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/map-surjective-of-surjective.md) | 382 | `result-track:fb96cb5c2d3345f136c4e536e22f23da9d14377f31f1ff0563ebd2ad24eaa1b7` |
| 53 | `theorem` | [comap_injective_of_surjective](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/comap-injective-of-surjective.md) | 386 | `result-track:55493231299995d738289d31bc026b80de12e5d8e939eb308434ecadf4a24e54` |
| 54 | `theorem` | [map_inf_comap_of_surjective](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/map-inf-comap-of-surjective.md) | 390 | `result-track:aaaaab48cb9d8e46069a1905fb5bb65265a361a7dcfe5c5ec3966150c4eacb86` |
| 55 | `theorem` | [map_iInf_comap_of_surjective](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/map-iinf-comap-of-surjective.md) | 395 | `result-track:e8e6240a0fbe79ff4c29a10180b9721c000bc73d4901318ffe519d3bae68824b` |
| 56 | `theorem` | [map_sup_comap_of_surjective](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/map-sup-comap-of-surjective.md) | 400 | `result-track:3b99c7a27eee9fad20cabc2fd948bc3b8df047f16e3d4a625d04af7508df64c2` |
| 57 | `theorem` | [map_iSup_comap_of_surjective](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/map-isup-comap-of-surjective.md) | 405 | `result-track:b90d06a856b280873a89d7f5a9d89315cb6f1defa99970394ddad9a9b17e3c28` |
| 58 | `theorem` | [comap_le_comap_iff_of_surjective](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/comap-le-comap-iff-of-surjective.md) | 410 | `result-track:f24cf99e4f253850c416568732699eeb4838fca7c3c27e637f86dcc961ff9526` |
| 59 | `theorem` | [comap_strictMono_of_surjective](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/comap-strictmono-of-surjective.md) | 414 | `result-track:31bf6c027393640f8e0c4d05b3fc91f87596bd88004712735209e7707f00b17c` |
| 60 | `def` | [topEquiv](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/topequiv.md) | 428 | `declaration-track:aa400b4af9988359426284b47b9cede835cdf729706b36859693e11889c87906` |
| 61 | `theorem` | [topEquiv_toMulHom](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/topequiv-tomulhom.md) | 436 | `result-track:dfd57271abaa9f3810e7e5c2e377831dda67a0e1ad6fb3c350073007252ffc65` |
| 62 | `def` | [equivMapOfInjective](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/equivmapofinjective.md) | 442 | `declaration-track:fd9bb467b478c498e8d59cb0c3b709f246ed1c5d918d940bf9b8fbbd80f5d32e` |
| 63 | `theorem` | [coe_equivMapOfInjective_apply](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/coe-equivmapofinjective-apply.md) | 446 | `result-track:e93eb65f6ed282b7ab535909ae6dcd9b0726efe39c4db5c92015f0869e9a3d3a` |
| 64 | `theorem` | [closure_closure_coe_preimage](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/closure-closure-coe-preimage.md) | 451 | `result-track:d8e34a34f35b2caa867063704605e7923452c99d525c32d24619688201cb3da4` |
| 65 | `def` | [prod](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/prod.md) | 461 | `declaration-track:998eabc4152434108857da6e725b6d262d4d582b100f205af48fcc7adf95ae56` |
| 66 | `theorem` | [coe_prod](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/coe-prod.md) | 466 | `result-track:0bb6d978247701f936ba9a9522485e0079e93860fd449678b8c5b321536f8a38` |
| 67 | `theorem` | [mem_prod](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/mem-prod.md) | 471 | `result-track:ef5d91e0f832e702030f5171be17052f0e4ed4e0e25c8284461b4745ec5101e9` |
| 68 | `theorem` | [prod_mono](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/prod-mono.md) | 476 | `result-track:1af26c6129ddf3df3a07c831743d954b14cc192607909a24c4d34a30fde39d06` |
| 69 | `theorem` | [prod_top](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/prod-top.md) | 481 | `result-track:502569f761acda22f963b9b5fbef8adbd75abe1164cd5785b2cbb1cc038e6f2f` |
| 70 | `theorem` | [top_prod](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/top-prod.md) | 485 | `result-track:caf4c76c307f518da96579a72906768c11c4c514bf16cf8af0e706e98037f374` |
| 71 | `theorem` | [top_prod_top](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/top-prod-top.md) | 489 | `result-track:46f4a1970d03f6edf6d4a81c42d2483d6335650093f0d5acad3d6620ff118f32` |
| 72 | `theorem` | [bot_prod_bot](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/bot-prod-bot.md) | 493 | `result-track:0d2de0179e1cfe02ff53256e59928e69e07bcab2b6780f7bfd13fb0c5c034a80` |
| 73 | `def` | [prodEquiv](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/prodequiv.md) | 499 | `declaration-track:7c891f5d242c1c89ef154418a84617af4330435d76544ff45816bafe35bb2fba` |
| 74 | `theorem` | [mem_map_equiv](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/mem-map-equiv.md) | 506 | `result-track:668bc5ca8f8e88ea62085a8425689d6b25c4374f745f0dbd3632f7d0b8cdd01c` |
| 75 | `theorem` | [map_equiv_eq_comap_symm](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/map-equiv-eq-comap-symm.md) | 511 | `result-track:9d6f85ba3ca858ea3e6f2af7c9ce7b7a797d514b5187d14ae041fdfeb2754f73` |
| 76 | `theorem` | [comap_equiv_eq_map_symm](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/comap-equiv-eq-map-symm.md) | 516 | `result-track:13d78abc88abbea4724c8a77890b5f5dec775822cce4f10d4c6c3176738cbdc2` |
| 77 | `theorem` | [map_equiv_top](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/map-equiv-top.md) | 521 | `result-track:c401915d1df95dd2518dbcfabc943b3da586f4c2697c81e6b09c5b46373e8dc1` |
| 78 | `theorem` | [le_prod_iff](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/le-prod-iff.md) | 525 | `result-track:bf976785f8f10659aafbf42d1cbb4d0ef34ae2b36af0c4793053760c6f151a2c` |
| 79 | `def` | [srange](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/srange.md) | 547 | `declaration-track:ef970fa8e425e768df39c28340571f1c0a70a6f3996d5904efe46b0ebdb0f837` |
| 80 | `theorem` | [coe_srange](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/coe-srange.md) | 551 | `result-track:f372eb3e3366c2371da15b6cef0d880a60adbdbbcef4ffb8f79949bd6011173a` |
| 81 | `theorem` | [mem_srange](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/mem-srange.md) | 555 | `result-track:d24dcfac2c22d117681db2d546cb8b25b87705f513197ab9c6ba52dcb758720c` |
| 82 | `theorem` | [srange_mk_aux_mul](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/srange-mk-aux-mul.md) | 559 | `result-track:ab4e25df403b131c20cd36385903c9eda46b9630bbc884b2255e69f828910930` |
| 83 | `theorem` | [srange_mk](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/srange-mk.md) | 564 | `result-track:39521a600b9f883e4a566389119897aa756c7e622a08228804c36ba0dcf021db` |
| 84 | `theorem` | [srange_eq_map](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/srange-eq-map.md) | 568 | `result-track:c25a59b9883ab894f02cee5753597c60d08e9831045e8ef3f8316437b55612d7` |
| 85 | `theorem` | [map_srange](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/map-srange.md) | 572 | `result-track:5320fc50bdf7211687a2485c121bba054e0c7618c71a4aedab76cbd27efc82d9` |
| 86 | `theorem` | [srange_eq_top_iff_surjective](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/srange-eq-top-iff-surjective.md) | 576 | `result-track:bd41d5bed4f80c0ec9671099b906f2a0fed109464a38d3f7a169796601757f67` |
| 87 | `theorem` | [srange_eq_top_of_surjective](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/srange-eq-top-of-surjective.md) | 586 | `result-track:26ac545bea8f9d5e467a40b9dd18fcb8ec819589012b8b709222144bdfb22f25` |
| 88 | `theorem` | [mclosure_preimage_le](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/mclosure-preimage-le.md) | 593 | `result-track:83631bd3fd269545fe3c9c9fc0e4a6cdd670fec55afd4ea34d680213830c9800` |
| 89 | `theorem` | [map_mclosure](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/map-mclosure.md) | 601 | `result-track:03be598a9dd3fddf15c016e9a7c9696c032bc4a73743f440ce0ca28212d3040b` |
| 90 | `def` | [restrict](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/restrict.md) | 607 | `declaration-track:209bda96b8090a0bd93b3645cc8d7b78847444eee09973a0de49b0c4bc23b402` |
| 91 | `theorem` | [restrict_apply](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/restrict-apply.md) | 611 | `result-track:df3736ec3b03db828c0cdf7cb8fc711b20f0b118899ce67a45518dc6f58f4c82` |
| 92 | `def` | [codRestrict](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/codrestrict.md) | 618 | `declaration-track:e68f150141a40ab823d128dc66d54cdfa738d0dc45d218a306f543afb7208e83` |
| 93 | `def` | [srangeRestrict](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/srangerestrict.md) | 625 | `declaration-track:4fa7b3bac64d6eefcfadcdd6077ab34dc04fda42d3d7cfd4b1d4daf09467f898` |
| 94 | `theorem` | [coe_srangeRestrict](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/coe-srangerestrict.md) | 629 | `result-track:f679fa01daf4e1544540dfbb2aa48c95a72c0bb86c16f768fbdaabf3c12a32bd` |
| 95 | `theorem` | [srangeRestrict_surjective](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/srangerestrict-surjective.md) | 633 | `result-track:5ef0a2e694f0ce582b90fa3705eb9b5dd2f74f36d6515122f5af86f26851aab6` |
| 96 | `theorem` | [prod_map_comap_prod'](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/prod-map-comap-prod.md) | 637 | `result-track:2575148ea46dacfcd67751f9cdddca8505b825f56ee2e5d74377010cc870fe86` |
| 97 | `def` | [subsemigroupComap](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/subsemigroupcomap.md) | 645 | `declaration-track:da5d5923be7467a71e0f66b979bf49168e5799af877a731ab767185aaa6e2710` |
| 98 | `def` | [subsemigroupMap](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/subsemigroupmap-source-edition-2.md) | 655 | `declaration-track:d2e27814096f1864b219c26fc8e9c29b2fa3cd9df1c26444c32234a14467518e` |
| 99 | `theorem` | [subsemigroupMap_surjective](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/subsemigroupmap-surjective.md) | 661 | `result-track:864336dcb6bdec03b1741be40a5494e1c6bd406117900db18631952343ed8b0c` |
| 100 | `theorem` | [srange_fst](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/srange-fst.md) | 675 | `result-track:f32fc1dde785c263f3219542413647209b4dbe9c461eb31c48ceebc38b431cfa` |
| 101 | `theorem` | [srange_snd](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/srange-snd.md) | 679 | `result-track:4fefe256f5ae4b769d98be8f8702b59286bd40a78f166e77bbd2bdbe89e388e4` |
| 102 | `theorem` | [prod_eq_top_iff](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/prod-eq-top-iff.md) | 683 | `result-track:6ecc6b6fb57c0f19fc93cf088b9107149d8dfd67816e6f00504cd9a0b2616b86` |
| 103 | `def` | [inclusion](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/inclusion.md) | 690 | `declaration-track:dd9090a9495a4499391e11ad7902f0950a339005c9ced4f2d511eafbaf7c6aca` |
| 104 | `theorem` | [range_subtype](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/range-subtype.md) | 694 | `result-track:55a21b3a24d3755b4875c5948e0772dd1d84afbf3e34c9a575a9e95c1d6baf31` |
| 105 | `theorem` | [eq_top_iff'](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/eq-top-iff.md) | 698 | `result-track:db4c4d8b65e829c8d79a8859481ba0704ff14b24e4d273a5f1a92a3600efc339` |
| 106 | `def` | [subsemigroupCongr](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/subsemigroupcongr.md) | 712 | `declaration-track:1735e9ff7a7701de55d169ad53072edbed52d019386410058810110a3b413438` |
| 107 | `def` | [ofLeftInverse](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/ofleftinverse.md) | 724 | `declaration-track:d64353d32026a40ffd1f23af0e342d5cb774cb95f3d6a855d7f6e56c8ed1ed22` |
| 108 | `def` | [subsemigroupMap](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/subsemigroupmap.md) | 741 | `declaration-track:ad338ebca47481644748ba295b79636a41ce9e168dd940975509038f6a591a36` |
| 109 | `theorem` | [map_comap_eq](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/map-comap-eq.md) | 755 | `result-track:54e22b7a13e90fde58de7552596e7df9e7cc4fd41dd4facf50f9c299a0cd368b` |
| 110 | `theorem` | [map_comap_eq_self](../../../../GroupTheoryAndGeneralizations/SubsemigroupOperationsSourceEdition2.lean/declarations/map-comap-eq-self.md) | 759 | `result-track:7b4725b9a9d1d199a2f9a2784422a8170a3929ed3eefd5eb8f40e562836cae1e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9adba24c14b8f3d7e1c69bd71e44a0991f08f78fa1c6d880508591b51bc097ab -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Operations/Variant8e2d4ad8078612765b3f9da2f0a55a44d3fedfba4d2b1c8801219fd06cf0bbea.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Operations/Variant8e2d4ad8078612765b3f9da2f0a55a44d3fedfba4d2b1c8801219fd06cf0bbea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
