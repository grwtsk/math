# Verification target: Topology Path Path

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aec8ccb7153a1169a54f9497118a91927c1439b0",
  "lexical_observation_count": 89,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Path/Variant9b9eb0ea3f40e67534e84e061c0ee8bc1fcb3117a4c925780fef61674bd37d23.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/TopologyPathPath.lean/index.md) · [Full source](../../../../GeneralTopology/TopologyPathPath.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aec8ccb7153a1169a54f9497118a91927c1439b0`.

Source path: `GRWTSK/Topology/GeneralTopology/Path/Variant9b9eb0ea3f40e67534e84e061c0ee8bc1fcb3117a4c925780fef61674bd37d23.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Path/Variant9b9eb0ea3f40e67534e84e061c0ee8bc1fcb3117a4c925780fef61674bd37d23.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order.ProjIcc` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.CompactOpen` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UnitInterval` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Path](../../../../GeneralTopology/TopologyPathPath.lean/declarations/path.md) | 54 | `declaration-track:7689f267811e5eff05e0416a78e9c74b16caf21319298756d929076516834c34` |
| 2 | `instance` | [Path.instFunLike](../../../../GeneralTopology/TopologyPathPath.lean/declarations/path-instfunlike.md) | 60 | `declaration-track:642d991f238ed0481b59cdfa4cefb918295fca43a9b9682b6231c7717be711f9` |
| 3 | `instance` | [Path.continuousMapClass](../../../../GeneralTopology/TopologyPathPath.lean/declarations/path-continuousmapclass.md) | 66 | `declaration-track:e192e22fb056443a0ffc4453b00a1790f3a09e3dc53cffd46ffdbb5b1f7235da` |
| 4 | `theorem` | [Path.ext](../../../../GeneralTopology/TopologyPathPath.lean/declarations/path-ext.md) | 70 | `result-track:857533a08803db5ba8759b21048345b3aed07d8fd173a516ba769caba788f7b0` |
| 5 | `theorem` | [coe_mk'](../../../../GeneralTopology/TopologyPathPath.lean/declarations/coe-mk-source-edition-2.md) | 78 | `result-track:7ae4f60de4cb737f9010052088e5c6a501af26652793411356e7d88e0de0b93e` |
| 6 | `theorem` | [coe_mk_mk](../../../../GeneralTopology/TopologyPathPath.lean/declarations/coe-mk-mk.md) | 80 | `result-track:8ee9c2e8755caacaa0ae5a090cbb8fc3ed61e133e33954350a674dbdb1c12f39` |
| 7 | `theorem` | [continuous](../../../../GeneralTopology/TopologyPathPath.lean/declarations/continuous.md) | 87 | `result-track:fbc01c2b91d3b14ac649fc99b9470adc3e24fce9cf754ac460029b9f4c50132b` |
| 8 | `theorem` | [source](../../../../GeneralTopology/TopologyPathPath.lean/declarations/source.md) | 91 | `result-track:6374beeac2e1a532eecdd35eaf7c88d994e31d723068e5e91af46c9978489845` |
| 9 | `theorem` | [target](../../../../GeneralTopology/TopologyPathPath.lean/declarations/target.md) | 95 | `result-track:f72f26197366e4e7b7d4d4b7fd30f14490b646faf211293cbbab9e85d7222532` |
| 10 | `def` | [simps.apply](../../../../GeneralTopology/TopologyPathPath.lean/declarations/simps-apply.md) | 100 | `declaration-track:99ded20d671c34a3dd35ea1fe0d8a4bedd1f2239561ccfb459b354ad85146d97` |
| 11 | `theorem` | [coe_toContinuousMap](../../../../GeneralTopology/TopologyPathPath.lean/declarations/coe-tocontinuousmap.md) | 106 | `result-track:89da73bd9ee05ce834c3d37b576015a7e49277a6d9a7ad1722d8894a8d91a773` |
| 12 | `theorem` | [coe_mk](../../../../GeneralTopology/TopologyPathPath.lean/declarations/coe-mk.md) | 113 | `result-track:158919c04d87d363cbb7023bd102278b96d0cede12f98d52c2069552cdb8aaf2` |
| 13 | `instance` | [instHasUncurryPath](../../../../GeneralTopology/TopologyPathPath.lean/declarations/insthasuncurrypath.md) | 117 | `declaration-track:31c05957b3afcd7de59a7f0310bb740cac7aa3293523ba6671cc2d7f394253c9` |
| 14 | `def` | [refl](../../../../GeneralTopology/TopologyPathPath.lean/declarations/refl.md) | 123 | `declaration-track:5595df54f387c6c455d3351de5994f0c14e5a6cba4538eab67c7db912c92d06d` |
| 15 | `theorem` | [refl_range](../../../../GeneralTopology/TopologyPathPath.lean/declarations/refl-range.md) | 129 | `result-track:090a3d89915fa2bc7592c99def872a7b0a5ac5eb37732eeaa74da31c1ffa2729` |
| 16 | `def` | [symm](../../../../GeneralTopology/TopologyPathPath.lean/declarations/symm.md) | 133 | `declaration-track:5af56dc79de860096100d5bb3f488a74bdf7f824604b5e7aeda0093831d12156` |
| 17 | `theorem` | [symm_symm](../../../../GeneralTopology/TopologyPathPath.lean/declarations/symm-symm.md) | 140 | `result-track:a28fbc037afda876c51da50c6d29110a49a2b71fd0b805a1afbdeaa6fc61f46d` |
| 18 | `theorem` | [symm_bijective](../../../../GeneralTopology/TopologyPathPath.lean/declarations/symm-bijective.md) | 145 | `result-track:f5a56b790d17646fb3cf17a70ed73c1e196522091a6ac2dcb1d8b0abea0f7d98` |
| 19 | `theorem` | [refl_symm](../../../../GeneralTopology/TopologyPathPath.lean/declarations/refl-symm.md) | 149 | `result-track:00335072f35d5524bbef83ef1cfc213944e60b3864f6219509bd9e91f1af89b4` |
| 20 | `theorem` | [symm_range](../../../../GeneralTopology/TopologyPathPath.lean/declarations/symm-range.md) | 152 | `result-track:eb2450ec929043f8b00cb7cfea37998ed023dae2b99115c1f4ce104af811aad5` |
| 21 | `instance` | [instTopologicalSpace](../../../../GeneralTopology/TopologyPathPath.lean/declarations/insttopologicalspace.md) | 163 | `declaration-track:193131c3d1564363a0b8306a12efc15e39176e4a51299cd99b0a3626f4b99311` |
| 22 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyPathPath.lean/declarations/instance.md) | 166 | `declaration-track:a290a8ec437f7933e6559ed8be78bcc22011ae3ae9ecedca0be2ba4a557d21d4` |
| 23 | `theorem` | [continuous_uncurry_iff](../../../../GeneralTopology/TopologyPathPath.lean/declarations/continuous-uncurry-iff.md) | 168 | `result-track:b0583a77c2c5ea36a21afb5a13229abf8da7b9c25989eb3426c90dbb738567bd` |
| 24 | `def` | [extend](../../../../GeneralTopology/TopologyPathPath.lean/declarations/extend.md) | 175 | `declaration-track:1c04a657b98ea1b5f682780ea691b4aaa450bb7c54869bd9c1d2a92a4dd3055a` |
| 25 | `theorem` | [_root_.Continuous.pathExtend](../../../../GeneralTopology/TopologyPathPath.lean/declarations/root-continuous-pathextend.md) | 180 | `result-track:de3c64df4010a90b6822b6425be3318a70b82d3da5f4a24c9a270e84416bd5d2` |
| 26 | `theorem` | [continuous_extend](../../../../GeneralTopology/TopologyPathPath.lean/declarations/continuous-extend.md) | 188 | `result-track:fdc0161229138c9c5e05e5ecf133f4b3d7332ba2aa67c925f3a058507cdc02b5` |
| 27 | `theorem` | [_root_.Filter.Tendsto.pathExtend](../../../../GeneralTopology/TopologyPathPath.lean/declarations/root-filter-tendsto-pathextend.md) | 191 | `result-track:9480fbb6fe96928a7535b82926d537bb55ad6f8ac26dad182ff8cbf75c878215` |
| 28 | `theorem` | [_root_.ContinuousAt.pathExtend](../../../../GeneralTopology/TopologyPathPath.lean/declarations/root-continuousat-pathextend.md) | 200 | `result-track:13081fc6b34f65113ebd28463a7ee5fa72560da2fbcee55ebbe0883b234e2d17` |
| 29 | `theorem` | [extend_extends](../../../../GeneralTopology/TopologyPathPath.lean/declarations/extend-extends.md) | 209 | `result-track:0296fb7ca29d78621437ed0dc60aa335a7f89b5e5486a09f53cdf18b72ce2d78` |
| 30 | `theorem` | [extend_zero](../../../../GeneralTopology/TopologyPathPath.lean/declarations/extend-zero.md) | 213 | `result-track:c5a175ed3ac5795cfec96669e51f6c959ab7d5f356f1310983bd4d1993d78631` |
| 31 | `theorem` | [extend_one](../../../../GeneralTopology/TopologyPathPath.lean/declarations/extend-one.md) | 215 | `result-track:17633e44c511c6f881cacfed70bcaf85043cc138ab4d03b20e7421cc27d5b5c2` |
| 32 | `theorem` | [extend_extends'](../../../../GeneralTopology/TopologyPathPath.lean/declarations/extend-extends-source-edition-2.md) | 217 | `result-track:a312bfff993b4b595e28fd5cc52574229d184e35e22ec3c18139e2223e92fc25` |
| 33 | `theorem` | [extend_range](../../../../GeneralTopology/TopologyPathPath.lean/declarations/extend-range.md) | 221 | `result-track:172cdab4d04b21b5cb04a473048e3095abd1ea319817b891339e8923d803f152` |
| 34 | `theorem` | [image_extend_of_subset](../../../../GeneralTopology/TopologyPathPath.lean/declarations/image-extend-of-subset.md) | 225 | `result-track:78c255fb7d2acf49ecbb953b08a9d6e4b3899d174cbc0561be80bd072ef91057` |
| 35 | `theorem` | [extend_of_le_zero](../../../../GeneralTopology/TopologyPathPath.lean/declarations/extend-of-le-zero.md) | 230 | `result-track:f90f2e827a115b17024dc0c75209b198b7668dd6f273e51bab31972f1331e9d6` |
| 36 | `theorem` | [extend_of_one_le](../../../../GeneralTopology/TopologyPathPath.lean/declarations/extend-of-one-le.md) | 234 | `result-track:6034a2ec5812da51e2898971fb11d7de763d4d519a842abc481020ba0861e9aa` |
| 37 | `theorem` | [refl_extend](../../../../GeneralTopology/TopologyPathPath.lean/declarations/refl-extend.md) | 239 | `result-track:b7f0ab3ed49e9d66eb457b05d9cddce8378efb7e8d9295011b66d61f15c2944c` |
| 38 | `theorem` | [extend_symm_apply](../../../../GeneralTopology/TopologyPathPath.lean/declarations/extend-symm-apply.md) | 242 | `result-track:e0683cfe815a8ceec9b95b7b1b2e0b8c5a3d63de7ac1a120d55100dd4bbb37d2` |
| 39 | `theorem` | [extend_symm](../../../../GeneralTopology/TopologyPathPath.lean/declarations/extend-symm.md) | 246 | `result-track:dbcfc9019860bf152a423040b7f7c8183032dd6f7376f3208338b9b9d99a6cc5` |
| 40 | `def` | [ofLine](../../../../GeneralTopology/TopologyPathPath.lean/declarations/ofline.md) | 250 | `declaration-track:c3ecc5f75a4653b9fed7373dbc13f6cef4dc74fb02df129c7e973e7fe0463842` |
| 41 | `theorem` | [ofLine_mem](../../../../GeneralTopology/TopologyPathPath.lean/declarations/ofline-mem.md) | 256 | `result-track:cea9c9576439c52b1104fc2d20f9f58919db021039fbcc12525e11d4697ad17b` |
| 42 | `theorem` | [ofLine_extend](../../../../GeneralTopology/TopologyPathPath.lean/declarations/ofline-extend.md) | 260 | `result-track:9b7c1965b9bd82fb142b8de48801bc6ca393ab046966bb21f79283764fbc631f` |
| 43 | `def` | [trans](../../../../GeneralTopology/TopologyPathPath.lean/declarations/trans.md) | 269 | `declaration-track:1164528fc5652b733d2bb0423204e1ec40adaaa671ca6644e06f92c444747e87` |
| 44 | `theorem` | [trans_apply](../../../../GeneralTopology/TopologyPathPath.lean/declarations/trans-apply.md) | 279 | `result-track:aa7983639b0648b2ce88abeb81ade63d8c160bddae029442a9374df8656326c5` |
| 45 | `theorem` | [trans_symm](../../../../GeneralTopology/TopologyPathPath.lean/declarations/trans-symm.md) | 286 | `result-track:595eb2acab1ba790b5d8c724f0b06f98f0c4370094d88784419448bc664316b0` |
| 46 | `theorem` | [extend_trans_of_le_half](../../../../GeneralTopology/TopologyPathPath.lean/declarations/extend-trans-of-le-half.md) | 300 | `result-track:7e5d3b0e58aa020bc1ca7445d390b3565126e722062e411e6a6431fcdfba35e8` |
| 47 | `theorem` | [extend_trans_of_half_le](../../../../GeneralTopology/TopologyPathPath.lean/declarations/extend-trans-of-half-le.md) | 306 | `result-track:06f0fadb5148521dfd9287dc342ebbb6971d75292714ecf79af1a68898851f4e` |
| 48 | `theorem` | [refl_trans_refl](../../../../GeneralTopology/TopologyPathPath.lean/declarations/refl-trans-refl.md) | 314 | `result-track:882bf126df47797e6058374d1de2f54e7b09f82585f5e7c9576c8628400ab99f` |
| 49 | `theorem` | [trans_range](../../../../GeneralTopology/TopologyPathPath.lean/declarations/trans-range.md) | 319 | `result-track:91ae84ff60e49f3dd6e65802e4a54f115e2de174b6fef23c81413a4ee50abf82` |
| 50 | `def` | [map'](../../../../GeneralTopology/TopologyPathPath.lean/declarations/map.md) | 329 | `declaration-track:4bc62a14be1623edba421b0af9817975c3a856766c4f8cd331970c23b155f8e4` |
| 51 | `def` | [map](../../../../GeneralTopology/TopologyPathPath.lean/declarations/map-source-edition-2.md) | 336 | `declaration-track:4cfcb38def096dbf6832d502bc2806796c41db04a9439a0af3b14c05cef90d40` |
| 52 | `theorem` | [map_coe](../../../../GeneralTopology/TopologyPathPath.lean/declarations/map-coe.md) | 340 | `result-track:dde49f49c3de08d9b47837fa3b1bac479baf0c261711312c573ab10e4476856d` |
| 53 | `theorem` | [map_symm](../../../../GeneralTopology/TopologyPathPath.lean/declarations/map-symm.md) | 346 | `result-track:15d68e11b1f0176c592ae168afd3eb6a7bde62ddcd82175fee1225206e0ee700` |
| 54 | `theorem` | [map_trans](../../../../GeneralTopology/TopologyPathPath.lean/declarations/map-trans.md) | 351 | `result-track:d9c4b9d25d2e8274be6546871e1e503fcb2bbf572b05e5b12261aa01fb937655` |
| 55 | `theorem` | [map_id](../../../../GeneralTopology/TopologyPathPath.lean/declarations/map-id.md) | 358 | `result-track:e2f4f0b40562c8177c064559d89a5fcda69ae093016f4f48867c0f5655df6f69` |
| 56 | `theorem` | [map_map](../../../../GeneralTopology/TopologyPathPath.lean/declarations/map-map.md) | 363 | `result-track:6a224f4fe247df39f40b20ee3b47be317a46c5bdb5707658b5dd05ae4f9fecd4` |
| 57 | `def` | [cast](../../../../GeneralTopology/TopologyPathPath.lean/declarations/cast.md) | 370 | `declaration-track:b99efd9e28ca8a2dec6fd6b219335c422befd3bda2a686f14070dd382da29c1c` |
| 58 | `theorem` | [symm_cast](../../../../GeneralTopology/TopologyPathPath.lean/declarations/symm-cast.md) | 377 | `result-track:9389a5893aab0fff454d49b3ecf7f96f5080288a04fbb895e9f1c1585997040b` |
| 59 | `theorem` | [trans_cast](../../../../GeneralTopology/TopologyPathPath.lean/declarations/trans-cast.md) | 382 | `result-track:80780ac771ec30721eaa9ff1da03e484f80ff8300da84cb62a21c75a215cf5bb` |
| 60 | `theorem` | [extend_cast](../../../../GeneralTopology/TopologyPathPath.lean/declarations/extend-cast.md) | 388 | `result-track:ae8e65064322ca18edd4e7c35cc7621d9285317a98a80d0eff0bed57cd2e4039` |
| 61 | `theorem` | [cast_coe](../../../../GeneralTopology/TopologyPathPath.lean/declarations/cast-coe.md) | 392 | `result-track:4684ba04b2258b9f40fb4e51329fa8912de47c9789a366b7333970ea2771ed3b` |
| 62 | `theorem` | [symm_continuous_family](../../../../GeneralTopology/TopologyPathPath.lean/declarations/symm-continuous-family.md) | 396 | `result-track:e05e480bb83c5d773080e8b24420a741e6269a1d28adbe81049f4a9abe8eef86` |
| 63 | `theorem` | [continuous_symm](../../../../GeneralTopology/TopologyPathPath.lean/declarations/continuous-symm.md) | 402 | `result-track:4aa970ce29d17da8006888b7c5fbe7009dbb4611bee94d5ef28b5b1ca316f70f` |
| 64 | `theorem` | [continuous_uncurry_extend_of_continuous_family](../../../../GeneralTopology/TopologyPathPath.lean/declarations/continuous-uncurry-extend-of-continuous-family.md) | 406 | `result-track:a7f4fe39a681eee21e58eb6e375a5fd540475a39e6e2a93e508d8d4345d16605` |
| 65 | `theorem` | [trans_continuous_family](../../../../GeneralTopology/TopologyPathPath.lean/declarations/trans-continuous-family.md) | 413 | `result-track:9d85d91433d7e76f1e7762fe63ea073afb3d70108fa7f0c3c9c4c86e17ca0874` |
| 66 | `theorem` | [_root_.Continuous.path_trans](../../../../GeneralTopology/TopologyPathPath.lean/declarations/root-continuous-path-trans.md) | 434 | `result-track:1a467a054e971ecf8f1164f355c5ff48f35f374e3f837d0e707e8c911695554d` |
| 67 | `theorem` | [continuous_trans](../../../../GeneralTopology/TopologyPathPath.lean/declarations/continuous-trans.md) | 441 | `result-track:21347277baa7edd0b247f507d10126f05caa6b6cff2b21658bea5be1c2ecef75` |
| 68 | `def` | [prod](../../../../GeneralTopology/TopologyPathPath.lean/declarations/prod.md) | 452 | `declaration-track:187ee94d24c9661b33a7749fe319bd3a2d03d6984c0adfa422b312c06e7fea6c` |
| 69 | `theorem` | [prod_coe](../../../../GeneralTopology/TopologyPathPath.lean/declarations/prod-coe.md) | 458 | `result-track:20449a2e94207ae6437a28df3dd6518d6c7756b91039abffa47a20914195ce62` |
| 70 | `theorem` | [trans_prod_eq_prod_trans](../../../../GeneralTopology/TopologyPathPath.lean/declarations/trans-prod-eq-prod-trans.md) | 463 | `result-track:b18dfa51243a0449aa70272a9d9ea62a0e807dc2e6e584bbd4db106092becbc1` |
| 71 | `def` | [pi](../../../../GeneralTopology/TopologyPathPath.lean/declarations/pi.md) | 479 | `declaration-track:d4ed97d62cf9ba3d198d2aa4a018382a68013139db10b3de05c45bee3bf546a6` |
| 72 | `theorem` | [pi_coe](../../../../GeneralTopology/TopologyPathPath.lean/declarations/pi-coe.md) | 485 | `result-track:bb7a9c1ec7ef7fee9ae175a4379f03551ae5ecb988e2f7c6cab44fd388b7b125` |
| 73 | `theorem` | [trans_pi_eq_pi_trans](../../../../GeneralTopology/TopologyPathPath.lean/declarations/trans-pi-eq-pi-trans.md) | 489 | `result-track:1c7034e0b7e5a3d5d691318d394531f90ed4a8a648f80d171e66f90ba734cb04` |
| 74 | `def` | [mul](../../../../GeneralTopology/TopologyPathPath.lean/declarations/mul.md) | 504 | `declaration-track:5ffbbadfff0b3ec426f8fe83d1a4226a731a654d6b0ac22b8c85a01d6ce8cf60` |
| 75 | `theorem` | [mul_apply](../../../../GeneralTopology/TopologyPathPath.lean/declarations/mul-apply.md) | 509 | `result-track:e4f3b39ba73e719787080d9ecc1f7a25e33da610be2531c754f3ede2ff5d0c42` |
| 76 | `def` | [truncate](../../../../GeneralTopology/TopologyPathPath.lean/declarations/truncate.md) | 518 | `declaration-track:04a91af4bf5450166d90f86ded6dca50e1353d662854070eb216d0cd5fd4c203` |
| 77 | `def` | [truncateOfLE](../../../../GeneralTopology/TopologyPathPath.lean/declarations/truncateofle.md) | 543 | `declaration-track:00711846c412c43a4c6bc7976148b79012a29badd1f2c08da7425af39fd3f4d8` |
| 78 | `theorem` | [truncate_range](../../../../GeneralTopology/TopologyPathPath.lean/declarations/truncate-range.md) | 547 | `result-track:4125ffb4c243f24f49b285e2cb83c09b61c1eb8f905abec8afab64cc37735bf4` |
| 79 | `theorem` | [truncate_continuous_family](../../../../GeneralTopology/TopologyPathPath.lean/declarations/truncate-continuous-family.md) | 557 | `result-track:90decfe0a8ed834b7a3d922a73d1d464be97fe8c64e77720871f922db7158ebe` |
| 80 | `theorem` | [truncate_const_continuous_family](../../../../GeneralTopology/TopologyPathPath.lean/declarations/truncate-const-continuous-family.md) | 564 | `result-track:58bbc8e258e46bda0e00164ab0dd936abcb49f483eab84d2c2ab58d1a6060a59` |
| 81 | `theorem` | [truncate_self](../../../../GeneralTopology/TopologyPathPath.lean/declarations/truncate-self.md) | 570 | `result-track:3280259b95e3d3a715841bf7393c9dea9634bb5707d6cecfce27ed8d1636eb33` |
| 82 | `theorem` | [truncate_zero_zero](../../../../GeneralTopology/TopologyPathPath.lean/declarations/truncate-zero-zero.md) | 575 | `result-track:bbc146c44bcbcd006d647f506cdf257672515d8939c83437c3312c4f1587e0af` |
| 83 | `theorem` | [truncate_one_one](../../../../GeneralTopology/TopologyPathPath.lean/declarations/truncate-one-one.md) | 579 | `result-track:b5e516730c16e57e58cf1369b9fc6cf75af635becf2266388b9b0785c98bd7e6` |
| 84 | `theorem` | [truncate_zero_one](../../../../GeneralTopology/TopologyPathPath.lean/declarations/truncate-zero-one.md) | 584 | `result-track:fa843b5d4f2b7b0942b3d30fe6026c1de0bf66ab4f6be594ad1a856942d33a41` |
| 85 | `def` | [reparam](../../../../GeneralTopology/TopologyPathPath.lean/declarations/reparam.md) | 597 | `declaration-track:889dce0ab6008ca34df266484ba13800857568df68f22990e6248375b9a5b8e5` |
| 86 | `theorem` | [coe_reparam](../../../../GeneralTopology/TopologyPathPath.lean/declarations/coe-reparam.md) | 605 | `result-track:3047b8426642c8c740fd0ef8b7640c8b39e2606ca36b8458c1365ca2cd7c2fc0` |
| 87 | `theorem` | [reparam_id](../../../../GeneralTopology/TopologyPathPath.lean/declarations/reparam-id.md) | 610 | `result-track:339a6c574be33abb8d0dbec67ada498e11a3d96958aac65bb4e9af785bcab75b` |
| 88 | `theorem` | [range_reparam](../../../../GeneralTopology/TopologyPathPath.lean/declarations/range-reparam.md) | 614 | `result-track:56a8f7b1eeb1215ff004ab1b63e46454a3181f0e64b468e89b0d46422f0b067b` |
| 89 | `theorem` | [refl_reparam](../../../../GeneralTopology/TopologyPathPath.lean/declarations/refl-reparam.md) | 628 | `result-track:09e8d8654800f7fb20715afa90b56e2e6fc20a53eb9b6b31b84950f789806ea9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=61f80e8573a495373d1e49f1d34c5ecf19210848d07692034cc2ae6cbf2d910e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Path/Variant9b9eb0ea3f40e67534e84e061c0ee8bc1fcb3117a4c925780fef61674bd37d23.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Path/Variant9b9eb0ea3f40e67534e84e061c0ee8bc1fcb3117a4c925780fef61674bd37d23.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
