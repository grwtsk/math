# Verification target: Basic Basic Public Ext DHash Map

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "67be6c8517a0068d9683dd6b9a8305b11e7c9666",
  "lexical_observation_count": 66,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant564092bfa7f9a408d3e72351adc655c27f7a30f39224d08c6f8baafc477782ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `67be6c8517a0068d9683dd6b9a8305b11e7c9666`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant564092bfa7f9a408d3e72351adc655c27f7a30f39224d08c6f8baafc477782ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant564092bfa7f9a408d3e72351adc655c27f7a30f39224d08c6f8baafc477782ca.lean.json)

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
| 1 | `structure` | [ExtDHashMap](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/extdhashmap.md) | 64 | `declaration-track:f8616bacd39bde241383a7accda0df22041d132a40856a3499a8facf280c0ba8` |
| 2 | `abbrev` | [mk](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/mk.md) | 73 | `declaration-track:c172fd404e4efb8a478f72c3cf4e1e0628d61bea12e2501fac77c1698134647d` |
| 3 | `def` | [lift](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/lift.md) | 77 | `declaration-track:2823c626a05eafb5e659e356b97e5e46e7e9156447e4856df91a7098e1d21def` |
| 4 | `def` | [lift₂](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/lift-source-edition-2.md) | 81 | `declaration-track:e53d308b61e44d6d30518d58c8909d4a85be37b1a842f0d2ef87068716cb9b94` |
| 5 | `def` | [pliftOn](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/plifton.md) | 85 | `declaration-track:afeebff56a6ce8e4877a169e46bf55b4ea20e3f573798eb287b996b8ead401a7` |
| 6 | `theorem` | [inductionOn](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/inductionon-source-edition-2.md) | 90 | `result-track:e8ccb573ad8f408a3bc9b7c4d47699291b24b9124c9358f9eb74abfefe6df866` |
| 7 | `theorem` | [inductionOn₂](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/inductionon.md) | 95 | `result-track:1e70f55567c20a08be3c67ba3f2d3422dab738f8872debdba0f335b493170d98` |
| 8 | `theorem` | [sound](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/sound.md) | 99 | `result-track:5fe233aef24f4fd6ef8efb218d2e728cd7b355ad7d2fb604d7b4ab7a88129fa4` |
| 9 | `theorem` | [exact](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/exact.md) | 102 | `result-track:977010aed6926e247c6d5fd318c3923412ce9c305e3a035f8a0fbe3b13ef263f` |
| 10 | `def` | [emptyWithCapacity](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/emptywithcapacity.md) | 106 | `declaration-track:5892dad44416b436c5a54080dfd84e62bf0f5253659ff710f4e133c94939581c` |
| 11 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/instance.md) | 110 | `declaration-track:04b5b669f9f2275474239a20fc88ae6630fdde5189a602484a4426949b0eddb6` |
| 12 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/instance-source-edition-13.md) | 113 | `declaration-track:d381edc7e6bda0b11270710596a407ab18f44d3648f9897b39db28a807fb4371` |
| 13 | `def` | [insert](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/insert.md) | 117 | `declaration-track:a8991478286e78188b8791dbaef77209b414cc11c6f10a422e4fc29737aa9b60` |
| 14 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/instance-source-edition-12.md) | 122 | `declaration-track:c7178fb74b95333b1a155dd24d14f92b9cfbfb2eebb187c07e151e614b3a330b` |
| 15 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/instance-source-edition-10.md) | 125 | `declaration-track:b659b69c17179e752a2939c1e96af3ac6a307fa793ffdc0d752048713f0c5252` |
| 16 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/instance-source-edition-3.md) | 128 | `declaration-track:37d0436134c62d79d0d3bc1a3afcd90b3a87e81420a542e4797740b87a57d0be` |
| 17 | `def` | [insertIfNew](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/insertifnew.md) | 132 | `declaration-track:77406e25d7fe748efb55ea73439e5e71d8bac5b19b1bf815c91d50ed30fdba97` |
| 18 | `def` | [containsThenInsert](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/containstheninsert.md) | 138 | `declaration-track:eeb18c65e39b617720f42836ee27e1f5fd2d3aae67dc748b2f2baafee2d68673` |
| 19 | `def` | [containsThenInsertIfNew](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/containstheninsertifnew.md) | 148 | `declaration-track:21d42a71f0c4da49e5ef856507bb539c0a81be47f145c3413432b79aea82fa8c` |
| 20 | `def` | [getThenInsertIfNew?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/gettheninsertifnew-source-edition-2.md) | 158 | `declaration-track:dab9f9605c0dd445fd8e6fdf72cef39a0a9d8a3b0d33cfe0d25478446b5e8ebd` |
| 21 | `def` | [get?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/get-source-edition-4.md) | 168 | `declaration-track:dc1aea80a6afd1d76ec4ee4000645ac0831e3f6eb15b1cc4411b0f8298df2966` |
| 22 | `def` | [contains](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/contains.md) | 173 | `declaration-track:002ee6c8a6f58a9ea051ed95d89cb75580fc6bbb3df69a2b61781013e112074d` |
| 23 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/instance-source-edition-14.md) | 177 | `declaration-track:fddabd4d16ba7d26ebf3054a314bca521e80d5ca6b22040d78fc32669d278a0b` |
| 24 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/instance-source-edition-5.md) | 180 | `declaration-track:5dce309b9689baa339c3e2f4ae718a64b470427f9c29af65c4e262a00bad09ee` |
| 25 | `def` | [get](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/get-source-edition-2.md) | 184 | `declaration-track:429bbdc08283149d395db153944099a0d2e616134e84240340c3ef5a5e0fe438` |
| 26 | `def` | [get!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/get.md) | 190 | `declaration-track:29b8269e150c34773578de95233e12e3c4c02f230136fd09dfd18c9bf686daef` |
| 27 | `def` | [getD](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/getd-source-edition-2.md) | 195 | `declaration-track:a3a4cf179f2c56afac87944381ca92c3572e5e37c17eb67d556c4c57db787061` |
| 28 | `def` | [erase](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/erase.md) | 200 | `declaration-track:2a43913c5c23eda99df512abb3d3b61275cebd54e37ec4008b63c2739bd7b8a5` |
| 29 | `def` | [get?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/get-source-edition-3.md) | 210 | `declaration-track:a22053e5d1152d5d91f3c26a032cd2aa0bdf64a43721da61d265ed44828fad73` |
| 30 | `def` | [get](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/get-source-edition-5.md) | 216 | `declaration-track:dfc6615a5faeaef3e2daadb56579e7385ac3d34914f11b0e56c73c058c09a860` |
| 31 | `def` | [getD](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/getd.md) | 222 | `declaration-track:6638547dafe5093acded5be3525cf05881cbf9db6a6511859a341b0dbc958fc8` |
| 32 | `def` | [get!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/get-source-edition-6.md) | 228 | `declaration-track:fd80d0a73fd60335bb8ee9db85384f707eb852c0c620c3d63d55ba6230e37ca3` |
| 33 | `def` | [getThenInsertIfNew?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/gettheninsertifnew.md) | 234 | `declaration-track:9277d4d2d079ad5d53d1050dfc6e8f1e69e8dac9bba870c8286e68683e5a7af7` |
| 34 | `def` | [getKey?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/getkey-source-edition-2.md) | 251 | `declaration-track:925cf66c2205ec7a877bd1f58d5492a6bd6e46920cf7368d3778a8d01a787ec4` |
| 35 | `def` | [getKey](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/getkey-source-edition-3.md) | 255 | `declaration-track:a090c106900ab8ebedc6bbe8af3d7e6f620f4066c35adfaa160dc8522f83bf9a` |
| 36 | `def` | [getKey!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/getkey.md) | 260 | `declaration-track:56aa965a74a7b270e92019c4c4ade9c09737c00488cd347e42d373f08679fdd8` |
| 37 | `def` | [getKeyD](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/getkeyd.md) | 264 | `declaration-track:61d8a2cc2b7de211385a547e03ce39bb24ace78012c8179520c74e9d7fa79fd3` |
| 38 | `def` | [size](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/size.md) | 269 | `declaration-track:1c4b5ae813faf33d119017bfb19802c9e29c5a742ee5bb9d068b94687cda1af4` |
| 39 | `def` | [isEmpty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/isempty.md) | 273 | `declaration-track:71886f0e81ccb03d8008296467de95a9d403ba887bb84d902fdf81f1d1226275` |
| 40 | `def` | [filter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/filter.md) | 279 | `declaration-track:25ed5c142717643727d465256a28081998688ef83cf6d3598f54b317e70cc964` |
| 41 | `def` | [map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/map.md) | 285 | `declaration-track:5cd6442ca4f50c5efbeeec307c9a72304675da2c489f6ad2579acfaed89715ea` |
| 42 | `def` | [filterMap](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/filtermap.md) | 291 | `declaration-track:fcb1e0ab519b1dfea45a804f5899ee35d2334fc8e22bc5a6b1e5b8f6a0b19faa` |
| 43 | `def` | [modify](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/modify.md) | 297 | `declaration-track:45bfd6db5c7e7c9f8881d8e561231a094e7ba657154e0ee381f328c976b8b2af` |
| 44 | `def` | [Const.modify](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/const-modify.md) | 303 | `declaration-track:752a6d748f373fac3a8509df0e02f08fd7709f9c407a23b217d8d238f4bf6280` |
| 45 | `def` | [alter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/alter.md) | 309 | `declaration-track:c35604cb7fa506833f9ff17172a2a9a0ecff46f0f53a9a53737c10c77ce8439c` |
| 46 | `def` | [Const.alter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/const-alter.md) | 315 | `declaration-track:3320a18ab590a2174d0e0a98ba598b48e8b442f5928aae2541cd821f3d791b56` |
| 47 | `def` | [insertMany](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/insertmany.md) | 326 | `declaration-track:987c5058b9e66a64be17619393d8c7cadec9cfce70d7410f44787fcd7679b1af` |
| 48 | `def` | [Const.insertMany](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/const-insertmany.md) | 335 | `declaration-track:a2816be922483596c89bf888ede25850989c8d9d981a6fec07de582f9b3942e0` |
| 49 | `def` | [Const.insertManyIfNewUnit](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/const-insertmanyifnewunit.md) | 345 | `declaration-track:858f3ca298c6dddc7b1c8c955973bdb95294878c96ee2d1f32496208ce1a9ec5` |
| 50 | `def` | [union](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/union.md) | 355 | `declaration-track:551396f02bf6e5af30690b1797b9b207962675ed5c34fa69170b20b2d7297aa0` |
| 51 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/instance-source-edition-11.md) | 363 | `declaration-track:c44c528d25aef41889dfbe84cff73d035f26d01a37269d33c68d3286c2e5bcee` |
| 52 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/instance-source-edition-4.md) | 365 | `declaration-track:4289c457b721c12503ac76fd1f9928b533e7f00a85119dcfba65c5bc88da08ba` |
| 53 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/instance-source-edition-2.md) | 368 | `declaration-track:06e4b527e95554fc8bf1c1ea67994ad641c182d09f667f1b659eb4f8e20545e3` |
| 54 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/instance-source-edition-9.md) | 371 | `declaration-track:a9c96189ffc805cc253ee821f38e41313eca7c5f2250cda5e382773f7e8d82cd` |
| 55 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/instance-source-edition-7.md) | 374 | `declaration-track:787ec8f90749d4e984fc0436acf1d305e03b4188d55cf378a43527d823a0441a` |
| 56 | `def` | [beq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/beq.md) | 382 | `declaration-track:f8b628161675b5f290695a72cf6799a67c382387d1972e3f7dace966d6f4979c` |
| 57 | `theorem` | [beq_of_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/beq-of-eq.md) | 385 | `result-track:106fdac6aef9bf4d556e9b2d44d5a2d939ce5b53783aeba51bc773491b19c0f3` |
| 58 | `theorem` | [eq_of_beq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/eq-of-beq.md) | 388 | `result-track:133ad56520ed9f945be8aa70598eaba4ee1c6e8c028ce062240d581cee47b059` |
| 59 | `def` | [inter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/inter.md) | 394 | `declaration-track:53a6f443f39baa38cb89d5d81175ea9b795cb05adffff07f39b3aab39890a4b2` |
| 60 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/instance-source-edition-6.md) | 402 | `declaration-track:73e5847fd301e3cc065ecd504a08ec72afed86e1afa39c3897370bd57918ceab` |
| 61 | `def` | [diff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/diff.md) | 405 | `declaration-track:805061ee07b418f71e506651d7fadbf7e4a5b518d9dd51e46bcb317b25e41d5c` |
| 62 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/instance-source-edition-8.md) | 413 | `declaration-track:7f25cfe54c3c23691ef90f9ba01bbf26e640b7eb4339551975323c5c51d0f07c` |
| 63 | `def` | [Const.unitOfArray](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/const-unitofarray.md) | 416 | `declaration-track:aa73db38ea099d1f10c3e2783f50d5edbc11e8f0ccdc0f5a4f73a8cfbc953863` |
| 64 | `def` | [ofList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/oflist.md) | 421 | `declaration-track:092b6ca753d16887320d76359b0e21ac43a5a2e95e5047d9f5a3af87e930b344` |
| 65 | `def` | [Const.ofList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/const-oflist.md) | 426 | `declaration-track:0d23bf2acb45bec9cf9d99223f55031647e9ae20945605c634f558388750142c` |
| 66 | `def` | [Const.unitOfList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtDHashMap.lean/declarations/const-unitoflist.md) | 431 | `declaration-track:a1f76255ba946519243b8ed300d14bc47ad72e1bd08495cfca763c1f7fad45f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a2ad2da5b30b4f0661fc0861b1f8b1a32897a9365b3153e07d7d5f0987051a57 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant564092bfa7f9a408d3e72351adc655c27f7a30f39224d08c6f8baafc477782ca.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant564092bfa7f9a408d3e72351adc655c27f7a30f39224d08c6f8baafc477782ca.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
