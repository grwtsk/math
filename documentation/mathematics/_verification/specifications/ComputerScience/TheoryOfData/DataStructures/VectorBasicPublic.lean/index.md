# Verification target: Vector Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e8b87ce21528040692f32c678c92162795ae9acd",
  "lexical_observation_count": 105,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc1b729fe06aa832e524ef23c0df69da97266c63d6060482304d845dbbc2d345f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e8b87ce21528040692f32c678c92162795ae9acd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc1b729fe06aa832e524ef23c0df69da97266c63d6060482304d845dbbc2d345f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc1b729fe06aa832e524ef23c0df69da97266c63d6060482304d845dbbc2d345f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/instance-source-edition-2.md) | 33 | `declaration-track:39b208fc5b531a4409c2c9a6cd673f36f65edf59e66071bcef212ffb590afc7b` |
| 2 | `theorem` | [toList_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/tolist-injective.md) | 36 | `result-track:1a6ff863033342652b232c6a226c12139ab45594f58c05d174d93e3901c35d0d` |
| 3 | `theorem` | [ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/ext.md) | 41 | `result-track:02b06c0be5d4c208c9e2c8198d7c4babedfd8d7c9b918cfbda77c1e412f0de13` |
| 4 | `instance` | [zero_subsingleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/zero-subsingleton.md) | 46 | `declaration-track:22e42765b18a9b7cea87fbb5ef634a3a53262086d312cda97e1daaf980da723f` |
| 5 | `theorem` | [cons_val](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/cons-val.md) | 50 | `result-track:cd2c549a2196fcff61a715cb54544c1125f3c404cc2aadb95ba43190fb898674` |
| 6 | `theorem` | [eq_cons_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/eq-cons-iff.md) | 53 | `result-track:881e3ad584ec9fbec4594ccd14b01659a4f2f8f16df6ceb5e8e91376d20857bf` |
| 7 | `theorem` | [ne_cons_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/ne-cons-iff.md) | 58 | `result-track:3926111f2d5642d843ffe2658b3cbb0dffcd4789e6d6bd4649852da706afe52a` |
| 8 | `theorem` | [exists_eq_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/exists-eq-cons.md) | 61 | `result-track:e5a9ecb7593dd62879a3c7723aa4d1e86acaaf2ed6c4a0969ac4e0c6710683d7` |
| 9 | `theorem` | [toList_ofFn](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/tolist-offn.md) | 65 | `result-track:8f0d06e12bd078dd99ef743ce86d852809bdf472e2e266b2ef8e578f50311e94` |
| 10 | `theorem` | [mk_toList](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/mk-tolist.md) | 70 | `result-track:883276ca6e3c16831ff753c7cd3d3de50fb0ae0ba9940615f58ba52fc62deb33` |
| 11 | `theorem` | [length_val](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/length-val.md) | 74 | `result-track:f2a8bff0f10713f2a36f9436f5039a7c366b640a06aa4e8f04a826cc852ecefd` |
| 12 | `theorem` | [pmap_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/pmap-cons-source-edition-2.md) | 77 | `result-track:f2dbf9fde6532b152bbdf592060e12073751226ada5dfd6420c7deb4c0d5032b` |
| 13 | `theorem` | [pmap_cons'](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/pmap-cons.md) | 87 | `result-track:33ad0a2b3501daa15b163efc6173a5509260b408aac59d59ecd6815767d67c09` |
| 14 | `theorem` | [toList_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/tolist-map.md) | 92 | `result-track:5b4cf9133bdd3d9bb7d094d3e175de61a559e71686e98d22aa19ee956a9bdd02` |
| 15 | `theorem` | [head_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/head-map.md) | 96 | `result-track:2f856d6c05421eb45550464798657057e707de668d152e8e9396eff725137d19` |
| 16 | `theorem` | [tail_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/tail-map.md) | 101 | `result-track:04cb9bbc2648db39b808703132d4e266ada3a347c2c07604f4e0779c1516f673` |
| 17 | `theorem` | [getElem_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/getelem-map.md) | 107 | `result-track:649c47c09104790248ad18de973d068d1a52c884ce2539dfaf993fae982d41df` |
| 18 | `theorem` | [toList_pmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/tolist-pmap.md) | 112 | `result-track:9827f9cad6b09a92ec675285b2467acc344c5dcb1969f46073593922a2f672e5` |
| 19 | `theorem` | [head_pmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/head-pmap.md) | 117 | `result-track:ce8f031ca2b4800d8eab0f7c77ee4fed53d1d39e6b92ecd8382348cfbbcc1f6b` |
| 20 | `theorem` | [tail_pmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/tail-pmap.md) | 125 | `result-track:e105dbf00f940182cb934527f0f60b05a23f30d1dfba6f2c0b434d5b8156bf9a` |
| 21 | `theorem` | [getElem_pmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/getelem-pmap.md) | 133 | `result-track:5bbc108a82b2de29b247b5f389c79efde62b30816fe81f2d27b8934a7effd523` |
| 22 | `theorem` | [get_eq_get_toList](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/get-eq-get-tolist.md) | 138 | `result-track:2a67318ad7873b84c1b2c4e8140d652c905dcc8511ed4493016c129162610cab` |
| 23 | `theorem` | [get_replicate](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/get-replicate.md) | 143 | `result-track:b728d0c4a4b897753997c86d89dfd225001937c78df8b5fb8e54389cae7306d3` |
| 24 | `theorem` | [get_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/get-map-source-edition-2.md) | 148 | `result-track:57d90e265327b9ff105c2434ead0d8999949d3057f127863b04c1ad44b565788` |
| 25 | `theorem` | [map₂_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/map-nil.md) | 153 | `result-track:d01eb13339f432dd9765020d880be7302f2ea68a71d577b424811b6f6c5e6d68` |
| 26 | `theorem` | [map₂_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/map-cons.md) | 157 | `result-track:8c8106d9719ffb720c8a31c01da13a8f3c00524479ddabc029905f37deaee785` |
| 27 | `theorem` | [get_ofFn](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/get-offn.md) | 162 | `result-track:5f9d0a6206a9e872dc215d43b3ee1892c8949aeffe5e6f9e1af8fddb2708601c` |
| 28 | `theorem` | [ofFn_get](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/offn-get.md) | 166 | `result-track:42abccf9e95daba495b1411a60ef834ea300121f41f3be22bd77d3ba296f5180` |
| 29 | `def` | [_root_.Equiv.vectorEquivFin](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/root-equiv-vectorequivfin.md) | 171 | `declaration-track:6ba2a346e8cf5f30474270f7b04f7681a9615e0389bb35e442b40781d4aedd82` |
| 30 | `theorem` | [get_tail](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/get-tail.md) | 174 | `result-track:3d0473f0e0577814edba578a15aab549531ac1d1e30a68a47f80cfa01a41e626` |
| 31 | `theorem` | [get_tail_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/get-tail-succ.md) | 182 | `result-track:c7d46f1a05a3a5f2ee63c070b61d15c2b5c60cf53d2950f7707cf9f56a0eeaab` |
| 32 | `theorem` | [tail_val](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/tail-val.md) | 186 | `result-track:af210fc0bf7b113da906e21015cff6410e8de5cb109fc2b062c970390da08685` |
| 33 | `theorem` | [tail_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/tail-nil.md) | 191 | `result-track:e1b6ca92d648b382ca8f8645cedc5d024bebd9fef6988772f21fe707faba2e83` |
| 34 | `theorem` | [singleton_tail](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/singleton-tail.md) | 196 | `result-track:a7a3a8be4dd49990373a05042e4f48eca70cb95e6ecca6737eb82673e8b0f93a` |
| 35 | `theorem` | [tail_ofFn](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/tail-offn.md) | 200 | `result-track:502d5624037dd875d2f0f073db21a9f9ea94e854f2015b1adc2628536471f4ba` |
| 36 | `theorem` | [toList_tail](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/tolist-tail.md) | 207 | `result-track:72566a27f24ed2e282ec873e52719b6a1c3e5a0f6fda0bc58509f789eb28dcc7` |
| 37 | `theorem` | [toList_empty](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/tolist-empty.md) | 212 | `result-track:5d02814599e407473b0b07f800298c11283a8f75e38c81e304819fb99820c140` |
| 38 | `theorem` | [toList_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/tolist-singleton.md) | 218 | `result-track:2c21ba0fa1030c4007f84f757d3e874809e70886781dee5c8d994d8dc9af91f2` |
| 39 | `theorem` | [empty_toList_eq_ff](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/empty-tolist-eq-ff.md) | 223 | `result-track:10078e2604e0088566f8bbfa443618309662f22ac38a96489f7a9618593f4751` |
| 40 | `theorem` | [not_empty_toList](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/not-empty-tolist.md) | 227 | `result-track:f7395b49c8825e22ab31fbd853c9b143bda31ef14463cd1d1c99d127c87c2448` |
| 41 | `theorem` | [map_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/map-id.md) | 232 | `result-track:e12aee3cd65960773046b89dbeaf2bb088655446a15efaf14f98ac28f57ca93d` |
| 42 | `theorem` | [nodup_iff_injective_get](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/nodup-iff-injective-get.md) | 235 | `result-track:cd47238866f586309fcd047d1524952dd533ec81ab5254e25dbc85a40f187fde` |
| 43 | `theorem` | [head?_toList](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/head-tolist.md) | 239 | `result-track:aab2dbe647d61fa38db25288be447ca4ca17c706b5f7f81f4048a5db627b5a8a` |
| 44 | `def` | [reverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/reverse.md) | 243 | `declaration-track:34d20105cdaad12fdbdf4abe3f0aac75c4892829fe2648203265e666c5eca35a` |
| 45 | `theorem` | [toList_reverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/tolist-reverse.md) | 248 | `result-track:9f3e02892efc4df8719bb78b67a96e0711e98dd3dfd4fe174fd8d329e7d263fc` |
| 46 | `theorem` | [reverse_reverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/reverse-reverse.md) | 253 | `result-track:057af797a57e75d19384300f068bebc99ea7ea424064aa48ff88ff1be1db0380` |
| 47 | `theorem` | [get_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/get-zero.md) | 258 | `result-track:a75d5aae65ce6155fad7e4bdd1ccdb7d7ba2f46c93f228ff4f0f5da5448014c2` |
| 48 | `theorem` | [head_ofFn](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/head-offn.md) | 262 | `result-track:e480d04c117ec952a2fb1be115ea9862fc9ac240549787d0c5cd92c6997ef6ac` |
| 49 | `theorem` | [get_cons_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/get-cons-zero.md) | 265 | `result-track:8588e1a321e386af3b04893984b3a5eb49730e8879b9536515b1ec7d4559ad74` |
| 50 | `theorem` | [get_cons_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/get-cons-nil.md) | 270 | `result-track:96021eaa1c054d3d6541a0bb7523768af1f7861871f3dc9507750826d4cb7c21` |
| 51 | `theorem` | [get_cons_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/get-cons-succ.md) | 274 | `result-track:abda6966a2ee310d6ae3994f83549911acaed835ed2963cd033c442e57565328` |
| 52 | `def` | [last](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/last.md) | 278 | `declaration-track:ebeeb6516a21873c6ab19493e9f98ee352e4589e97047f1104dbae0bbaebddd3` |
| 53 | `theorem` | [last_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/last-def.md) | 282 | `result-track:4adce5c23a02168d29f362328d9cee314563d0de4b0f7a97fb69b8f1c1d107b6` |
| 54 | `theorem` | [reverse_get_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/reverse-get-zero.md) | 287 | `result-track:f27d6bc9894c9a4f98f168a6180cad1c0763bd5d107d4567bb442ddeff04bd93` |
| 55 | `def` | [scanl](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/scanl.md) | 301 | `declaration-track:e88fd209614db6a4d7f3000eacb55e0a2087f39db6bb3254135dc97414ba774f` |
| 56 | `theorem` | [scanl_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/scanl-nil.md) | 306 | `result-track:e1275e6a6737c5d3d2638ab5e5ae6db7c7465ecad5a28ba2c4512791f47c0aee` |
| 57 | `theorem` | [scanl_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/scanl-cons.md) | 317 | `result-track:a61dfbc57da6da6be6211d827eb2e28e5ee37fec9739de4b84092f1ccbf03685` |
| 58 | `theorem` | [scanl_val](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/scanl-val.md) | 324 | `result-track:28545cb3d70f94c8a4290768bb5a9d5b487f1343862c90d4e04ec12738ced9f4` |
| 59 | `theorem` | [toList_scanl](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/tolist-scanl.md) | 331 | `result-track:113482a26900c84dc076aca0852e5f4440e3af2c11a1714ac37ab337b5339ad4` |
| 60 | `theorem` | [scanl_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/scanl-singleton.md) | 339 | `result-track:2bb8dc02413f9dc3a4cc9abb7ce5c256dba03804d1ea46b1fd712738a5e8e0ec` |
| 61 | `theorem` | [scanl_head](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/scanl-head.md) | 347 | `result-track:ca75e8eb4ada4d2510d4a65a4805693ea67ac09a2948c0034911778091d595ce` |
| 62 | `theorem` | [scanl_get](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/scanl-get.md) | 362 | `result-track:52f7d54cc2567b6a6e6761ed03f90f1570154da255f810d684f6e11b643107fa` |
| 63 | `def` | [mOfFn](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/moffn.md) | 381 | `declaration-track:3dee9bf8d39a997feae321a43854238fde55924341d327a800652a2920fd343b` |
| 64 | `theorem` | [mOfFn_pure](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/moffn-pure.md) | 388 | `result-track:6c4d0fbfcf3fcb5008d960071510fdc67ee3df0b7ed7aa060f691546036b37d5` |
| 65 | `def` | [mmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/mmap.md) | 397 | `declaration-track:b682a52ede90d4af77efb5c9f741a5e84eeccd78c2b0ad212a6c997d25f1d763` |
| 66 | `theorem` | [mmap_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/mmap-nil.md) | 405 | `result-track:b0a823c17940984f4ee7b0b667b4e668b20e92bccd9e436a169ba5ef3a2dceb0` |
| 67 | `theorem` | [mmap_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/mmap-cons.md) | 409 | `result-track:6f77fadda2d61ffd17dc10360cfe528c55fe68a50b0bb70344862c1b88e5797d` |
| 68 | `def` | [inductionOn](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/inductionon-source-edition-3.md) | 426 | `declaration-track:cf1bbb85e13476f0c3612af68b9afaf0b222b9aa9f7b69cf2da9bee5a3102d16` |
| 69 | `theorem` | [inductionOn_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/inductionon-nil.md) | 438 | `result-track:d515c73f4f8783d4897f4928a47a547817b496c457a7504466da3eef36cb860c` |
| 70 | `theorem` | [inductionOn_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/inductionon-cons.md) | 444 | `result-track:0092523723362e6a4f1eb558c33972b46752bacc3a1ea9357c0c35c552262850` |
| 71 | `def` | [inductionOn₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/inductionon.md) | 453 | `declaration-track:106acb513622e8288802e811db6d90caa7780620c603c3b90130306184a19545` |
| 72 | `def` | [inductionOn₃](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/inductionon-source-edition-2.md) | 473 | `declaration-track:ae1f904951ad47605efabab09d84a9ce4614aebf0d897d0f9876ca0a5f877635` |
| 73 | `def` | [casesOn](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/caseson-source-edition-3.md) | 496 | `declaration-track:d08e8b8df24f7fcb3d1c2a495049aac15b2a40c4ef00ed387472470d5eec975d` |
| 74 | `def` | [casesOn₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/caseson.md) | 503 | `declaration-track:8b49486a05179f37551a4543c18a1dd7be30be060904a0c23475ec949264ef3c` |
| 75 | `def` | [casesOn₃](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/caseson-source-edition-2.md) | 512 | `declaration-track:c287d2d5934f63dded3ae46c6743f4e46a372318225ca6fecddb0e3af69c2139` |
| 76 | `def` | [toArray](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/toarray.md) | 520 | `declaration-track:ad3f922ac23a47b2d86628e2da43ebd86a43f8b0de093eecc12124736ba21a14` |
| 77 | `def` | [insertIdx](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/insertidx.md) | 529 | `declaration-track:03883c0adb180c5f962335956eb9964b41a804647cb559dcdb20ff3ee6a90cbb` |
| 78 | `theorem` | [insertIdx_val](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/insertidx-val.md) | 534 | `result-track:90a7f7c39288b6fcd19435fee56d917c66fc84e960eede6b719f95412dba7bd8` |
| 79 | `theorem` | [eraseIdx_val](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/eraseidx-val.md) | 539 | `result-track:9fed2ebdb897630bae5e82eaefd45b7fd8e4e2a660a9f7a879b8eb2e91381786` |
| 80 | `theorem` | [eraseIdx_insertIdx_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/eraseidx-insertidx-self.md) | 542 | `result-track:9b86f4fb16d3fe9c055abb98051e7eb8cd0a58fe2dbeca55efc9cba690a4cfca` |
| 81 | `theorem` | [eraseIdx_insertIdx'](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/eraseidx-insertidx.md) | 548 | `result-track:8391a0308ea970adbb84c9df3b60d3fe6b2ec705e20a0f1eeb958593643d3500` |
| 82 | `theorem` | [insertIdx_comm](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/insertidx-comm.md) | 567 | `result-track:393c1a4dd445a3c4b0a21ba12b96046f3dd58c7ba357ba4501dbc80fd9a6765f` |
| 83 | `def` | [set](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/set.md) | 583 | `declaration-track:007cb490da4e8770073eccf4f6d16db4439b4d32a976eaa6e1fd65ff8aa2ef99` |
| 84 | `theorem` | [toList_set](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/tolist-set.md) | 587 | `result-track:da3ad758b9b593f586d87d8d9587f3b53f6779c1ebf08226cb4eb227787a406c` |
| 85 | `theorem` | [get_set_same](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/get-set-same.md) | 593 | `result-track:75c2586d9ed1ce8f009cd8e86b26dca94fae18a843cccb8cf32339d7f4bb8ec2` |
| 86 | `theorem` | [get_set_of_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/get-set-of-ne.md) | 597 | `result-track:6d6d1283282f156de9b2fe851eea0da6beba8d2db8cda53f610ad13df750c53b` |
| 87 | `theorem` | [get_set_eq_if](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/get-set-eq-if.md) | 604 | `result-track:e58d37b8776673ffe27a3cdf5795b773321ac4bc3c41dfb0d3811cfaa5f3e3f3` |
| 88 | `theorem` | [prod_set](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/prod-set-source-edition-2.md) | 609 | `result-track:fe410c0b4e253d7aca8a4b1acf749c55c513320f260f862c0a412eb7fb7e08bd` |
| 89 | `theorem` | [prod_set'](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/prod-set.md) | 617 | `result-track:fe168b33de2ca89521551d49e14b6d476f4d7f4dddfba689f9d697727347c7ee` |
| 90 | `def` | [traverseAux](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/traverseaux.md) | 639 | `declaration-track:ce7ba83781d7d175430df47b05f5771aee5e9371ff4d8a0111c982a0def900da` |
| 91 | `def` | [traverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/traverse.md) | 644 | `declaration-track:7b1085dc578d4d12e81b4bb172f9515a781479894ec1b7e2851faf2152e2bb7e` |
| 92 | `theorem` | [traverse_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/traverse-def.md) | 652 | `result-track:7bd29dd60ff233e21de25c75f86b1ed7caefd580e1193173d91439b3579eaf14` |
| 93 | `theorem` | [id_traverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/id-traverse.md) | 657 | `result-track:94b2e4cf8e7e656a3a5e3d277fa2ff43cc083530d910457c6263c230d68510fd` |
| 94 | `theorem` | [comp_traverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/comp-traverse.md) | 671 | `result-track:2524c6bd5e62e60d226fc14aa101e777c412a8f9019776228d9183ff4f359f23` |
| 95 | `theorem` | [traverse_eq_map_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/traverse-eq-map-id.md) | 683 | `result-track:2dd7d8d94b3b2bd3db4c063c9d3ecc54bb319f7616139a6dc1e3befabcab1e29` |
| 96 | `theorem` | [naturality](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/naturality.md) | 692 | `result-track:d965d35e07fb867dccc6ac3fb339284920ba38b5f353c25a0786cf30317e54a7` |
| 97 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/instance.md) | 702 | `declaration-track:06a4c50ec535394bb6b191c27e982ae7f3412ab4fc71f1d45ea0c66a3a70780f` |
| 98 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/instance-source-edition-3.md) | 707 | `declaration-track:4e58948c5566784a0f0fc4f9d2ca0bf2486c8774730173cfb74091625e4e62f7` |
| 99 | `theorem` | [replicate_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/replicate-succ.md) | 721 | `result-track:bc7434a3c2d5ff205d2f412a9870e60ed844ad4b17617daa0f39e2f924b99362` |
| 100 | `lemma` | [get_append_cons_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/get-append-cons-zero.md) | 728 | `result-track:8031fcdfd3f5ad6c539fdcabfd8d006b3ebcd5f67b307d5e716c95afbcb915bc` |
| 101 | `theorem` | [get_append_cons_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/get-append-cons-succ.md) | 731 | `result-track:d3439d5f70ed2e2554bf2f75fca5e03d1d9e732b5f47a60ed61f40578c8474df` |
| 102 | `theorem` | [append_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/append-nil.md) | 737 | `result-track:bb309cd7956b1d933286692c7a49a901e376d943137935764353dc50b66b66cd` |
| 103 | `theorem` | [get_map₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/get-map.md) | 745 | `result-track:0faea929fa9d41daf870c0a40b2fa5ef0e9dbe992faa94948893041655bc6d9a` |
| 104 | `theorem` | [mapAccumr_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/mapaccumr-cons.md) | 757 | `result-track:b7b95193253388e68e35cc47ddd94c67f51738c52f3172c102c8ad65a4ea1108` |
| 105 | `theorem` | [mapAccumr₂_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicPublic.lean/declarations/mapaccumr-cons-source-edition-2.md) | 765 | `result-track:bf1215f2465fc64afe96ffc6bcbdfcbccafcb599a51cc415d9fdc69d5f0b87fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=76b0dff5781ddce9b124e954345b9e72ef467eafdcb00abeecd56eea995a375f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc1b729fe06aa832e524ef23c0df69da97266c63d6060482304d845dbbc2d345f.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc1b729fe06aa832e524ef23c0df69da97266c63d6060482304d845dbbc2d345f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
