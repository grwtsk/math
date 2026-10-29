# Verification target: Model Public Bucket

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "528f47ab01ff5445a14fc8945038fcd0aef051c9",
  "lexical_observation_count": 105,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Model/Variantb11d7591bd446f17b54c7d76cb8055a8efb7f3f3d6618b1a3a86439e607fc8ad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `528f47ab01ff5445a14fc8945038fcd0aef051c9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Model/Variantb11d7591bd446f17b54c7d76cb8055a8efb7f3f3d6618b1a3a86439e607fc8ad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Model/Variantb11d7591bd446f17b54c7d76cb8055a8efb7f3f3d6618b1a3a86439e607fc8ad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Array.Bootstrap` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.UInt.Lemmas` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bucket](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/bucket.md) | 49 | `declaration-track:9d3f2d1169c24be3b0b973f113cd6c83d175fa6a9605adf0e6e35de5c403ba8f` |
| 2 | `theorem` | [bucket_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/bucket-eq.md) | 54 | `result-track:ffb37131909e5f2959fc4c3997723c4af70218d3f7708f0bd7a764d8b295c989` |
| 3 | `def` | [updateBucket](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/updatebucket.md) | 60 | `declaration-track:6b91f23fd7161865df7b1447cfc5dde18ca0621526c8bddd332f62f777af8f37` |
| 4 | `def` | [updateAllBuckets](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/updateallbuckets.md) | 66 | `declaration-track:19079d1e9246779e1ff35623e176a83136520ee4632df7c7038fde2baa204d0b` |
| 5 | `def` | [withComputedSize](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/withcomputedsize.md) | 71 | `declaration-track:85c4f5b939982f89e7c275d3155f5c02eb6c27c5c69419b5ce8db4518e70288e` |
| 6 | `theorem` | [size_updateBucket](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/size-updatebucket.md) | 75 | `result-track:a36fe7fa092c76be2e3984b6d040a72e7ba1af4d31705bd37816d50dfde4e97a` |
| 7 | `theorem` | [size_updateAllBuckets](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/size-updateallbuckets.md) | 80 | `result-track:1e7274ab2efa5ef921e257cf4c397eb59e7a9a711b7158df7807dcfa89190f1f` |
| 8 | `theorem` | [buckets_size_withComputedSize](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/buckets-size-withcomputedsize.md) | 85 | `result-track:a4d781ec461a052c8fbf6289fbf775c05d13500a0439a42fc34be02ae28d83e8` |
| 9 | `theorem` | [size_withComputedSize](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/size-withcomputedsize.md) | 90 | `result-track:14b2ee70097b5af5cd00e28a3250eab1bb6107b1e4ecebf8d2356f26110267e4` |
| 10 | `theorem` | [buckets_withComputedSize](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/buckets-withcomputedsize.md) | 94 | `result-track:bbc8126f5c142cff8f49fb6bfb43a5543e2ac893cda2e6fe7df46660032203fa` |
| 11 | `theorem` | [bucket_updateBucket](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/bucket-updatebucket.md) | 98 | `result-track:478e210344e338269fe80d1bbd0388cdd1c9b9216f0b21729adf50533f90e5e0` |
| 12 | `theorem` | [exists_bucket_of_uset](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/exists-bucket-of-uset.md) | 104 | `result-track:8bad71c53f0139dee1acbf75411c8859c0ccda5c92ea99d5ab6598f9c3652421` |
| 13 | `theorem` | [exists_bucket_of_update](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/exists-bucket-of-update.md) | 134 | `result-track:3e9c7ecf7327b0478163d111ce6e5361e6b3a682e499e676e207d71e96a0e467` |
| 14 | `theorem` | [exists_bucket'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/exists-bucket-source-edition-2.md) | 144 | `result-track:c98d79ad3257842d12ea79ed862de9d2d359fd711873911a5bfb30ca73ad5990` |
| 15 | `theorem` | [exists_bucket](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/exists-bucket.md) | 152 | `result-track:3718d9993879006dab970bbd8113fd0e295ab7d914350742eab736a368e047b0` |
| 16 | `theorem` | [apply_bucket](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/apply-bucket.md) | 160 | `result-track:1a404d2856c83debbec10ad02358e718b3840206e0742b1b868db68d638acc54` |
| 17 | `theorem` | [apply_bucket_with_proof](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/apply-bucket-with-proof.md) | 172 | `result-track:24109da7a718e1d12c5eae56821be7e68f6a2fecec6d5ccdfadd72d59d5becc1` |
| 18 | `theorem` | [toListModel_updateBucket](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/tolistmodel-updatebucket.md) | 188 | `result-track:a51ea4f44e775d4958fbab975ef1e5f36d8e2079f91c6158678b0b1d017722e7` |
| 19 | `theorem` | [toListModel_updateAllBuckets](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/tolistmodel-updateallbuckets.md) | 202 | `result-track:e894311dbe19fa63ec71c14bfaa638ecbf97cff1ed9d9e856219217c02c77464` |
| 20 | `theorem` | [replicate](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/replicate.md) | 232 | `result-track:def87817ff8c3e6b38d7049ea05914201ed393005161da5fc72dce6020278ad2` |
| 21 | `theorem` | [uset](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/uset.md) | 236 | `result-track:12adf1e50f4ab99b321168dfc17f522421edc5c539be6dd126c78f6fd424624d` |
| 22 | `theorem` | [updateBucket](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/updatebucket-source-edition-2.md) | 248 | `result-track:8482ea97d895193d377ddc206676c75509737bf000b242412cabd20e70b8e9c0` |
| 23 | `theorem` | [updateAllBuckets](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/updateallbuckets-source-edition-2.md) | 260 | `result-track:aa8b28753b94694cc301c78af324b5ad182d069a16df66287fabd34d4be5df54` |
| 24 | `def` | [replaceₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/replace.md) | 277 | `declaration-track:485109c9e554fd363a88f7ea04aa58a2d69affdd4088586b12c30e899b70a64b` |
| 25 | `def` | [consₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/cons.md) | 281 | `declaration-track:a9a0fc60a055530ff2f7e206c9c1fbb280fd51173fb978158067ef0488d8eb47` |
| 26 | `def` | [get?ₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/get-source-edition-2.md) | 285 | `declaration-track:5d31bab190958c7dd5a7839108a98a5944ff2ec992e0b610244d8948da786ca6` |
| 27 | `def` | [getKey?ₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/getkey-source-edition-2.md) | 289 | `declaration-track:5f7c82130f83282e2aed50e289e4335fb146679639b75d81115ba068685b8682` |
| 28 | `def` | [containsₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/contains.md) | 294 | `declaration-track:49ce965e03933e74a3ea53f981d8f64a92afae53dc66859467ae0454597f48ab` |
| 29 | `def` | [getₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/get.md) | 298 | `declaration-track:20a3475edf05bda3d339a474000e047d876c750ee47503ee02356024ccfc15c8` |
| 30 | `def` | [getEntryₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/getentry-source-edition-2.md) | 302 | `declaration-track:7407424269cc5d44d938319fae7eea2c71d92ae8be5a7858036675c8a566f164` |
| 31 | `def` | [getEntry?ₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/getentry-source-edition-3.md) | 306 | `declaration-track:fafea1a5deaf02e7b94e6678c9b27584db36bc7d25ef81dcdcc48ad1387d765c` |
| 32 | `def` | [getEntryDₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/getentryd.md) | 310 | `declaration-track:ab10e351a18c3e90bbcf2cf560493069d95fc5df188daf2ac036a9470fac2c15` |
| 33 | `def` | [getEntry!ₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/getentry.md) | 314 | `declaration-track:3c809dd61a80e559a00905313c2a55c140b645794a58d8e9a7ac78c434dd2456` |
| 34 | `def` | [getDₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/getd.md) | 318 | `declaration-track:ec0d7090a3b71110416576030e70a5ee482a1a77249f2aeaf8b5fc8e7b14b18d` |
| 35 | `def` | [get!ₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/get-source-edition-3.md) | 322 | `declaration-track:9a77f933a7716ad73c6d823e4496a741aad115f20c68ef085c9e3c6d04c5c4a6` |
| 36 | `def` | [getKeyₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/getkey.md) | 326 | `declaration-track:5efd4c54268c47d46e4ba86071f526bc4dd1f5acd3f937f103d676e5132646d0` |
| 37 | `def` | [getKeyDₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/getkeyd.md) | 330 | `declaration-track:c47838ad1c82dbcb3ef18a0d4c6a541fb2cd2e528b6f67bc443f8a58efc5bb25` |
| 38 | `def` | [getKey!ₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/getkey-source-edition-3.md) | 334 | `declaration-track:ad7887dba917c085aca73f32396d58c33464f281bc71f91df5996a584b476faa` |
| 39 | `def` | [insertₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/insert.md) | 338 | `declaration-track:abaa181118b20a2d9ba5cd89045259a2920bb17ff5b886ac11529f697152f53e` |
| 40 | `def` | [insertIfNewₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/insertifnew.md) | 342 | `declaration-track:5d218d3dbcc88c33a1a137cf968c9871a0ec2e34f54e54e9ae739587e85239b6` |
| 41 | `def` | [eraseₘaux](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/erase-aux.md) | 346 | `declaration-track:6aeaf6025a64f1023370706d0dae73dcd60dd42883cff226bf9407978616125f` |
| 42 | `def` | [eraseₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/erase.md) | 350 | `declaration-track:ddccb829324218d78b00d9936e9ba9992ac2b4a4c2f51562074e65621885baed` |
| 43 | `def` | [alterₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/alter.md) | 354 | `declaration-track:9b46b62548b5f7d8f785c1c40c320b2393bbe36a7d8c5d2d2e0b9b5c40ee018d` |
| 44 | `def` | [modifyₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/modify-source-edition-2.md) | 368 | `declaration-track:cfb0abbb8418164cf6e1dbeeaa54741031c659f412b314eaf1285e744872464c` |
| 45 | `def` | [alterₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/alter-source-edition-2.md) | 376 | `declaration-track:a55cb1b171278d74c1e2b00780a4fde26b1c927d13babb70f8df6cd88e8e146a` |
| 46 | `def` | [modifyₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/modify.md) | 390 | `declaration-track:7a1b831fc4981f589ae0310cb1889c91fab52b29108551de0401469a03269fbf` |
| 47 | `def` | [filterMapₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/filtermap.md) | 397 | `declaration-track:a3361d45a339c9374bb50236ac03e96c234c3dc3f0ae982e5cd975ff45f2987c` |
| 48 | `def` | [mapₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/map.md) | 401 | `declaration-track:a3bddef4125fd25e6416ef1c9ece08fc2c44ce37fdd906a7c17e65eca57d1b98` |
| 49 | `def` | [filterₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/filter.md) | 405 | `declaration-track:2e4a957691aa13c53ce70978f90450d53ff1bf4bf87b9d335e4b66fb9dfd0497` |
| 50 | `def` | [insertListₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/insertlist.md) | 409 | `declaration-track:c5d7d9c4ced93be9fa5e73426b5d675dcfb12438e197461a0afc5d5cf0744f22` |
| 51 | `def` | [eraseListₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/eraselist.md) | 415 | `declaration-track:7b96fea59d498cacd777bf50fcb8abb42e77588e44b41a1bf9020942ea113160` |
| 52 | `def` | [diffₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/diff.md) | 421 | `declaration-track:1370a029594f5a0363bfca038f51ca4c3523ce2d7cb1206a094d16691c2b3ffd` |
| 53 | `def` | [insertListIfNewₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/insertlistifnew.md) | 428 | `declaration-track:a9471b4e74094bf8f8c8ef66680a2d5e89978190754debb893d59d0ebebf2f30` |
| 54 | `def` | [unionₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/union.md) | 434 | `declaration-track:932cb1b56d43b8a372bc04fcce8808be72acd2d294573ff29343339324bdf96e` |
| 55 | `def` | [interSmallerFnₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/intersmallerfn.md) | 441 | `declaration-track:b7eef75c74ed9c0b6481be878296a56f724f70177093e7b2fd70264d9ad5e813` |
| 56 | `def` | [Const.get?ₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/const-get-source-edition-3.md) | 451 | `declaration-track:b51fbac6a51c50f885388271c8234d273e202eefb9f1dc8864b33a28b20131c1` |
| 57 | `def` | [Const.getₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/const-get.md) | 455 | `declaration-track:02ec5e117d46e5e9e76d8b0afb1a1a840cb7a511a8a12eaeaef7d39ea868bae1` |
| 58 | `def` | [Const.getDₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/const-getd.md) | 459 | `declaration-track:0c16216c7b9d41e2518ff9d622d8b001ece5161a2c0fa1ff8d27eb094249cbeb` |
| 59 | `def` | [Const.get!ₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/const-get-source-edition-2.md) | 463 | `declaration-track:613afad028ba8bcfda24a2423b52cae543a5d40b76bce906a4c60b3e97fa58eb` |
| 60 | `def` | [Const.insertListₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/const-insertlist.md) | 467 | `declaration-track:632b26e8e7192bba73ced7193c35609a935d0b28991340afc162bd81d50e95ab` |
| 61 | `def` | [Const.insertListIfNewUnitₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/const-insertlistifnewunit.md) | 474 | `declaration-track:60957c99b083a9c85727ff0b06f469c17faa8c1940089c48d201235fcc9b40bf` |
| 62 | `theorem` | [reinsertAux_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/reinsertaux-eq.md) | 484 | `result-track:9debb305c63bf58c1df463ad35ad3a009e640de788ba68a8161c0a07757c2ff9` |
| 63 | `theorem` | [get?_eq_get?ₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/get-eq-get-source-edition-3.md) | 488 | `result-track:efc1ef351f6c67c1c8585a304971be3391db78769c3dc30c9039048b1031e676` |
| 64 | `theorem` | [get_eq_getₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/get-eq-get-source-edition-2.md) | 491 | `result-track:82980cd461c127979c852ff5f573bcd06be52ce969265966abf971ba11154422` |
| 65 | `theorem` | [getEntry_eq_getEntryₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/getentry-eq-getentry-source-edition-2.md) | 494 | `result-track:c90eb8c7d1445b6c6b095aeeeacca150116a2d9158ab9f9b369fcbbb887af21e` |
| 66 | `theorem` | [getEntry?_eq_getEntry?ₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/getentry-eq-getentry.md) | 497 | `result-track:8c5a8ae8d79db248dd8eafe30ed249326245eda5aee201c4bdd2eeceeb287a38` |
| 67 | `theorem` | [getEntryD_eq_getEntryDₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/getentryd-eq-getentryd.md) | 500 | `result-track:d3166297515250dda58febbad7fbfba8a191b6ecfd699b65d9052211aee21b22` |
| 68 | `theorem` | [getEntry!_eq_getEntry!ₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/getentry-eq-getentry-source-edition-3.md) | 503 | `result-track:cf73782a81a64c1524f99e161a7ba37d42fd47d6189b6e3c3f1907a119a3d2cc` |
| 69 | `theorem` | [getD_eq_getDₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/getd-eq-getd.md) | 506 | `result-track:93776b04a9a502c10936f88dde880f162ac1ef97c0bc6008dbcf3c008d6ab66e` |
| 70 | `theorem` | [get!_eq_get!ₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/get-eq-get.md) | 510 | `result-track:3d4ee342c2ee5ad5aa31bc29a4000dbf8edb5308f9542e03b9fa395c5a705578` |
| 71 | `theorem` | [getKey?_eq_getKey?ₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/getkey-eq-getkey-source-edition-3.md) | 514 | `result-track:f058ba243d63e2df83f5a56561828b71bbe8862ff3b1db2ad309ace8e295839f` |
| 72 | `theorem` | [getKey_eq_getKeyₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/getkey-eq-getkey-source-edition-2.md) | 517 | `result-track:bbaba3c29983e045de54329a8b97be38ff5fc8edb644a2422c7980e0656a14e4` |
| 73 | `theorem` | [getKeyD_eq_getKeyDₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/getkeyd-eq-getkeyd.md) | 520 | `result-track:493d069e0cee43ab98a928306884bce734e2155095d820eea3de214abd53b231` |
| 74 | `theorem` | [getKey!_eq_getKey!ₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/getkey-eq-getkey.md) | 524 | `result-track:33f33b49617103e8e352c073a48b72e0ce436be1ee864df01cdb3048199b5651` |
| 75 | `theorem` | [contains_eq_containsₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/contains-eq-contains.md) | 528 | `result-track:ba0de5595a6c1649573c893d8532e06fcddd304919ea3d2a1415bc0ece30b719` |
| 76 | `theorem` | [insert_eq_insertₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/insert-eq-insert.md) | 531 | `result-track:e146a35edb5404340246686411ccc4e163ada17b0b3bf0ac7bd3cf10721e90fe` |
| 77 | `theorem` | [alter_eq_alterₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/alter-eq-alter-source-edition-2.md) | 535 | `result-track:62c99f0663faf7368159966b3923dc36640df3f8fc86f1748caaa940a218de1c` |
| 78 | `theorem` | [modify_eq_alter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/modify-eq-alter.md) | 544 | `result-track:566819f65391a7947584cef49960ba2c7fed8a5d6edab5b7b4e847878c91b8cc` |
| 79 | `theorem` | [modify_eq_modifyₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/modify-eq-modify-source-edition-2.md) | 557 | `result-track:dacece6325d65bf6ee087582e338d369f4ae83962f5627225a3acf5768a35a6b` |
| 80 | `theorem` | [alter_eq_alterₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/alter-eq-alter.md) | 565 | `result-track:45663d55f6dc3f0d6aec062a7515a18fe7df36229acb2e68d2a80ebb740fc5dc` |
| 81 | `theorem` | [modify_eq_alter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/modify-eq-alter-source-edition-2.md) | 574 | `result-track:c3d74acc68c14d09a188eca9548559bf84ba4c6ec75c41637c6cf672ff7feee3` |
| 82 | `theorem` | [modify_eq_modifyₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/modify-eq-modify.md) | 587 | `result-track:1df7a358393a36e174aa2ace5736aa20249b8bd5bde4af908bbc71aac12a2ce8` |
| 83 | `theorem` | [containsThenInsert_eq_insertₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/containstheninsert-eq-insert.md) | 593 | `result-track:c84db20de71f5a8273aca37ca3672c923e6412b57db0554ab27b10be9ae3230e` |
| 84 | `theorem` | [containsThenInsert_eq_containsₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/containstheninsert-eq-contains.md) | 603 | `result-track:f3c594984ffbedb0c19ce2791927c82cca05a2517c52e0c98bc9b002f298502c` |
| 85 | `theorem` | [containsThenInsertIfNew_eq_insertIfNewₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/containstheninsertifnew-eq-insertifnew.md) | 609 | `result-track:7dfd1453a1c82479a83bfb893927ca249379b9784ef7c9d7879f8d82028be548` |
| 86 | `theorem` | [containsThenInsertIfNew_eq_containsₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/containstheninsertifnew-eq-contains.md) | 617 | `result-track:aaadd7c5644b13be0042b69abcb488c668159537bb753cb482e77fbe74fd0c35` |
| 87 | `theorem` | [insertIfNew_eq_insertIfNewₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/insertifnew-eq-insertifnew.md) | 623 | `result-track:e853d8ae8b1a97acf31ca58be39e1a29945d1bd2d479c91754c6706c7a12f495` |
| 88 | `theorem` | [getThenInsertIfNew?_eq_insertIfNewₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/gettheninsertifnew-eq-insertifnew.md) | 626 | `result-track:4e9c7ef169f53b2fe0c9d84c2d86ffaabbecc1bb251321b69043861c40373a42` |
| 89 | `theorem` | [getThenInsertIfNew?_eq_get?ₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/gettheninsertifnew-eq-get.md) | 632 | `result-track:98148939b1b27abce0a77d8baca50c671a7e394c6d3469df8e6c0d6b6ef3ecf3` |
| 90 | `theorem` | [erase_eq_eraseₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/erase-eq-erase.md) | 638 | `result-track:9855061b9309273c51458b2efdc6c20f411ad2cb0329f258685128db9bfb8408` |
| 91 | `theorem` | [filterMap_eq_filterMapₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/filtermap-eq-filtermap.md) | 648 | `result-track:b6bc7f66bf6ef0ba129cd5b278fa771da7c4b61ad2dfc20fde0bb0d172342882` |
| 92 | `theorem` | [map_eq_mapₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/map-eq-map.md) | 651 | `result-track:98d3f64da96f3a1fc58f28afbf3360a1aece9479fd4f0d5d7767ee85c7b28daa` |
| 93 | `theorem` | [filter_eq_filterₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/filter-eq-filter.md) | 654 | `result-track:284c6011efffdd3380706131d23e470cf84d6a381004698a527594a4577bd86f` |
| 94 | `theorem` | [insertMany_eq_insertListₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/insertmany-eq-insertlist.md) | 657 | `result-track:1523a6c4d7f762151523f40b9348fba6002df309ddf2c598af7e761a3ce5c116` |
| 95 | `theorem` | [eraseManyEntries_eq_eraseListₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/erasemanyentries-eq-eraselist.md) | 670 | `result-track:2612e0a1237ae3f894f974badccce383eeb36760c067796917427c81733fc65b` |
| 96 | `theorem` | [insertManyIfNew_eq_insertListIfNewₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/insertmanyifnew-eq-insertlistifnew.md) | 684 | `result-track:5506c332c2d54bb29b2fd1b9b2a342eaec25821a49879c8ce39ab85327a0e90a` |
| 97 | `theorem` | [interSmallerFn_eq_interSmallerFnₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/intersmallerfn-eq-intersmallerfn.md) | 698 | `result-track:c2bbbe8b8803d2bdc2d07477983c6439b5e83e9b9d8e41578171a60f7e42f6fe` |
| 98 | `theorem` | [Const.get?_eq_get?ₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/const-get-eq-get-source-edition-2.md) | 710 | `result-track:9c79fbd673e9fba6e989017c0a8cad2f36b2d50782ebc6d17adb88fda2c549f6` |
| 99 | `theorem` | [Const.get_eq_getₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/const-get-eq-get.md) | 713 | `result-track:7c05ad6ff5606bbc6830da338ad911f33aab278a5638b3378079ed19cafd9edc` |
| 100 | `theorem` | [Const.getD_eq_getDₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/const-getd-eq-getd.md) | 716 | `result-track:b7cbb1ec0c3f78bba8b7d1f19a9069ffc2f83e7e698b9839d6a7085947cd1179` |
| 101 | `theorem` | [Const.get!_eq_get!ₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/const-get-eq-get-source-edition-3.md) | 720 | `result-track:b2e7e628cf902f219989fce150ab29dd17c717e5a9a33241fabc82019d5f992b` |
| 102 | `theorem` | [Const.getThenInsertIfNew?_eq_insertIfNewₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/const-gettheninsertifnew-eq-insertifnew.md) | 724 | `result-track:3332775b52e3ec4f157da2e5ae0f15b243d321699719f47e7991be0eeb027d9b` |
| 103 | `theorem` | [Const.getThenInsertIfNew?_eq_get?ₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/const-gettheninsertifnew-eq-get.md) | 730 | `result-track:44a47167572db5721f391674704ca6e7c78ee2bf2431a93911abf063d36d1417` |
| 104 | `theorem` | [Const.insertMany_eq_insertListₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/const-insertmany-eq-insertlist.md) | 736 | `result-track:315e31037a5dea5bd77655d79f49b62668c07a9bb85cb879bf62840510b38c9d` |
| 105 | `theorem` | [Const.insertManyIfNewUnit_eq_insertListIfNewUnitₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ModelPublicBucket.lean/declarations/const-insertmanyifnewunit-eq-insertlistifnewunit.md) | 751 | `result-track:72f0a78652b62469a7370c727b405ef7e6e0a7efcfc14cbcb5caaeed98c6089d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f42700b8498b895639abe2bdcf1081fca864c61b1a8fe5934685cdff827dfcb0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Model/Variantb11d7591bd446f17b54c7d76cb8055a8efb7f3f3d6618b1a3a86439e607fc8ad.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Model/Variantb11d7591bd446f17b54c7d76cb8055a8efb7f3f3d6618b1a3a86439e607fc8ad.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
