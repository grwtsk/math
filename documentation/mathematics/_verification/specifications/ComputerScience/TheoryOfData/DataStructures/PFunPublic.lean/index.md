# Verification target: PFun Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1e33dd0cc29da5e183a2fec0f8eef1e90d84b605",
  "lexical_observation_count": 106,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PFun/Variantc7aa5e5a6e107d4defbe12e1ad8ada1c5ec1b8c1ae7790c807a3cb8625b7abb8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1e33dd0cc29da5e183a2fec0f8eef1e90d84b605`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PFun/Variantc7aa5e5a6e107d4defbe12e1ad8ada1c5ec1b8c1ae7790c807a3cb8625b7abb8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PFun/Variantc7aa5e5a6e107d4defbe12e1ad8ada1c5ec1b8c1ae7790c807a3cb8625b7abb8.lean.json)

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
| 1 | `def` | [PFun](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/pfun.md) | 61 | `declaration-track:5f51c70a732c268758518bd03ead1e4ab9872e433f4168f65a70408081523fc1` |
| 2 | `instance` | [inhabited](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/inhabited.md) | 71 | `declaration-track:2677ce7677a6639f656475727faea83083c874ce9727248a02794507bab8b607` |
| 3 | `def` | [Dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/dom.md) | 75 | `declaration-track:3a936d99b1090c2da5b49084914ef82ce292d459c41c7fcaefd43b038b39c77d` |
| 4 | `theorem` | [mem_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/mem-dom.md) | 79 | `result-track:df24ce94cc4b14d02f22c938e8045f6f1c2f6096175612acdd4d6600bf014bbc` |
| 5 | `theorem` | [dom_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/dom-mk.md) | 82 | `result-track:f58e6b6ffc79365ec6ebdd972e46d6de2690d7e03e4ca537fad8bde2abbb98cc` |
| 6 | `theorem` | [dom_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/dom-eq.md) | 85 | `result-track:6fdbb6b3f4c79c8d5fd1c8a527c99a34f01a022d8251e3fa697533d0396bc816` |
| 7 | `def` | [fn](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/fn.md) | 89 | `declaration-track:a31945c25648858f3c2cbc6123b1a8be35ac8cfd3f596d4109d100b0e81c2800` |
| 8 | `theorem` | [fn_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/fn-apply.md) | 93 | `result-track:6f3fcc175fb19b9c7c926078777a7ce1df5731529c7ea1a62a1cc52c7552dc69` |
| 9 | `def` | [evalOpt](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/evalopt.md) | 97 | `declaration-track:6175aa07b10ed12e2ed1d103498232a578b062951b521ceb11b690230eedea83` |
| 10 | `theorem` | [ext'](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/ext.md) | 101 | `result-track:2840229d0544b4487daedbd59995ddf292482fdf96f3eac002e43bca8f0b925e` |
| 11 | `theorem` | [ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/ext-source-edition-2.md) | 106 | `result-track:7dda23552e7cf975cb80de1995010a60177464e82ab30899729edee3009c0d34` |
| 12 | `def` | [asSubtype](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/assubtype.md) | 110 | `declaration-track:583e92869dd9d602ad0ea90c24d6a7d8423741e3ace9af587b3079b00be95dd2` |
| 13 | `def` | [equivSubtype](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/equivsubtype.md) | 115 | `declaration-track:e97158824529b6169f40b463dfb9318a93b423981d19ad7c6936057440e4938a` |
| 14 | `theorem` | [asSubtype_eq_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/assubtype-eq-of-mem.md) | 119 | `result-track:f9383311c08709ce00ba61d32e800ea0856622f24db2f4adca953cfa79f040a0` |
| 15 | `def` | [lift](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/lift.md) | 125 | `declaration-track:c63ec4e3ab63270033f6af3ceb87ec13cbc0b507850d91d686d3631eb617ab18` |
| 16 | `instance` | [coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/coe.md) | 127 | `declaration-track:d06973a07f7869a41462926899840836fbbd9371eb17198eea068cb1faf97d51` |
| 17 | `theorem` | [coe_val](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/coe-val.md) | 131 | `result-track:c39a3119432fed9131dfc6a1b6b1604ff480d4d6309ed2fb58a6f870bc879129` |
| 18 | `theorem` | [dom_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/dom-coe.md) | 135 | `result-track:d7785863e06142156bb8851ac173bad539a76f5fe5e1aa005c4ed592986dc5bb` |
| 19 | `theorem` | [lift_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/lift-injective.md) | 138 | `result-track:9a73d8881f1fcc887ca8e577848ac868411422e69211e181684c9f68fd7aa993` |
| 20 | `def` | [graph](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/graph-source-edition-2.md) | 143 | `declaration-track:471de04c71c49e9c7e3ae095d5605611063535cea42105aad12d1e0ba9a69c0c` |
| 21 | `def` | [graph'](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/graph.md) | 148 | `declaration-track:14cf2bab1598e2a8a17fecb80f6c9f4f4c1777209f4016cb87aee0908d1fb272` |
| 22 | `def` | [ran](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/ran.md) | 152 | `declaration-track:1057f53d61336956526099dad8f6e96f38418170ef5e68a6f9709f4036635589` |
| 23 | `def` | [restrict](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/restrict.md) | 156 | `declaration-track:11a7141c62e14515b416b575e21470cf3a0c12be7225db4a319dff72f384623f` |
| 24 | `theorem` | [mem_restrict](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/mem-restrict.md) | 161 | `result-track:02c2c0091971280d7ea87b1f88ceeb9e92d0b1160f45115f48146ef11ff0e389` |
| 25 | `def` | [res](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/res.md) | 165 | `declaration-track:f8c929fb28f106b7f5a559eb93350d82b148aba6f3f300457461a44c62edbd90` |
| 26 | `theorem` | [mem_res](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/mem-res.md) | 169 | `result-track:c43f6c4324139fd543298f1b0cc507335b9f03c4e8ff31a5b1ae7d62d2cdda81` |
| 27 | `theorem` | [res_univ](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/res-univ.md) | 172 | `result-track:224c496a105925f2a970910e934e23451f952ee90cc96741fd08ab5e6d14af21` |
| 28 | `theorem` | [dom_iff_graph](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/dom-iff-graph.md) | 175 | `result-track:75ff8e7d2ae4641c973afa83174d6e68f0bad6a13bc9a4f6fa71a8bcda8f71bb` |
| 29 | `theorem` | [lift_graph](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/lift-graph.md) | 178 | `result-track:366dc08c591d011632c2e5951df3c90983ba747b2adf4be712b4084f5123f0ce` |
| 30 | `def` | [pure](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/pure.md) | 182 | `declaration-track:6297ecd6b42aade543a763dfaa941026baf5b789b2d9a23333f042938f57ba76` |
| 31 | `def` | [bind](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/bind.md) | 185 | `declaration-track:dcab38fe7051496546772706661ba39a5ce995f74b1b05c4733cb3f48b64a4a2` |
| 32 | `theorem` | [bind_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/bind-apply.md) | 188 | `result-track:a5ee5de602df607d4e64430c3e10b120f772441d557294a1a50dc306492df907` |
| 33 | `def` | [map](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/map.md) | 192 | `declaration-track:4d6dc9bdf066e2332919a91933e6ba77bdd865093b3fcf6eaf89506d3b71945c` |
| 34 | `instance` | [monad](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/monad.md) | 194 | `declaration-track:d3ad492682a002273ad2e8a008dd91c814c4683f12ff51cbf8f84b18cda6ea14` |
| 35 | `instance` | [lawfulMonad](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/lawfulmonad.md) | 199 | `declaration-track:bd35df3ae11d1dfaf270b2b37ff6dc61faed0f511e58a4a5ffb4bd23a1e41167` |
| 36 | `theorem` | [pure_defined](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/pure-defined.md) | 205 | `result-track:aadd0129af80eb6dee5e7c5d55eab6d2af6773d58f35f6067c07b59feef6a71f` |
| 37 | `theorem` | [bind_defined](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/bind-defined.md) | 208 | `result-track:3304b88f45597b6690051f740eeb5824f5aab98e6fa20a7d4aaf95b261741195` |
| 38 | `def` | [fix](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/fix.md) | 218 | `declaration-track:f4b2c7c9f23286190e04b6f0d540b1e0e758206e643f9610bbf34553c2e995d4` |
| 39 | `theorem` | [dom_of_mem_fix](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/dom-of-mem-fix.md) | 228 | `result-track:61f75cf073304e39a7350bab4bb771b7f71d457bffdf5d5aa49b3edcae55935a` |
| 40 | `theorem` | [mem_fix_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/mem-fix-iff.md) | 232 | `result-track:b60f612d9516408698bb4f512a0b9b4605577a0f978df9f68d227a63d3a430bf` |
| 41 | `theorem` | [fix_stop](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/fix-stop.md) | 264 | `result-track:4c256f70fbe4d9583425ed76fa74d5d39fb1aded52f65c5ca490a597fb3d1fb4` |
| 42 | `theorem` | [fix_fwd_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/fix-fwd-eq.md) | 269 | `result-track:50ac5f3bd2bfe60376f14715ccc46c771c44b082ee26f33ddacaa3ce5fe5d0bf` |
| 43 | `theorem` | [fix_fwd](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/fix-fwd.md) | 278 | `result-track:52f33b9913a6cb6576eadb9c5d1186bf69f9b6afab9ad6b7b0c947e37a2817ac` |
| 44 | `def` | [fixInduction](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/fixinduction.md) | 283 | `declaration-track:8f7f6f9010ba811a59d7b6037c7ce36cec70c831d8e9cc4dfd73bb897ba0be57` |
| 45 | `theorem` | [fixInduction_spec](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/fixinduction-spec.md) | 292 | `result-track:9acd40aa05d9978a4fb2492c61840bb516724ef14990323d6741da3e51946318` |
| 46 | `def` | [fixInduction'](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/fixinduction-source-edition-2.md) | 304 | `declaration-track:ded0cedeb45185a1116097f5285721b3f984fc6bb5418104b5673c025d86b04e` |
| 47 | `theorem` | [fixInduction'_stop](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/fixinduction-stop.md) | 314 | `result-track:0041806563218099588ea8f5145dd3314b8fb2d35a6815f052a11e33792c7733` |
| 48 | `theorem` | [fixInduction'_fwd](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/fixinduction-fwd.md) | 326 | `result-track:b6d98b5280945e509884f59d7d142fdc892d2c47426c8cf0c066e604820f86d2` |
| 49 | `def` | [image](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/image.md) | 343 | `declaration-track:cd85bb51fa18a95b41c6ceba050b05f20cf026ec999883563c46dca80b866bd1` |
| 50 | `theorem` | [image_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/image-def.md) | 346 | `result-track:7e6c257cc1b383a53dee47cbff0c7b7d18054b9ed9b2e91b611f23c30288e652` |
| 51 | `theorem` | [mem_image](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/mem-image.md) | 349 | `result-track:1a008d3ee20ef8b94ab064564d906d6622c3688694672fb8dcb9c9524c56fcfe` |
| 52 | `theorem` | [image_mono](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/image-mono.md) | 352 | `result-track:1fe0c523b7aa46b08c7c6f763e6e6d5c8b0890467bcf0421b0c8bb6e154f2438` |
| 53 | `theorem` | [image_inter](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/image-inter.md) | 355 | `result-track:a769c77e2c2dfcf94f423be04fa6b560a4253f48f5ccc07fb70ee54d18797251` |
| 54 | `theorem` | [image_union](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/image-union.md) | 358 | `result-track:ddcded40311758f2db68edb7229b5cd5abca9a6343c30c27d6346f443a0daef4` |
| 55 | `def` | [preimage](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/preimage.md) | 362 | `declaration-track:6ff51f5f1b3fbfbe46bfd8a05e25a337d4a296252406a07d86487334e5696a1c` |
| 56 | `theorem` | [Preimage_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/preimage-def.md) | 364 | `result-track:a4a6beb0d3a6f851ef6a56353877fe5bb800adadb4b8165e07d63d2ad0bd90fe` |
| 57 | `theorem` | [mem_preimage](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/mem-preimage.md) | 368 | `result-track:06391b4af52f679e56cee92602a9b0c064e27cbd0c5a3a5722c4855b27b2090f` |
| 58 | `theorem` | [preimage_subset_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/preimage-subset-dom.md) | 371 | `result-track:09955373008ae6379bb8f77b957d7963a3681c80db53449719a900eb225a642b` |
| 59 | `theorem` | [preimage_mono](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/preimage-mono.md) | 374 | `result-track:1201f2f67ab55a93d058021bca549a63280cb33a3526e2b136549f4e54f9899a` |
| 60 | `theorem` | [preimage_inter](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/preimage-inter.md) | 377 | `result-track:a4e9b0af6cf95b6d8dca35fb0cf2050d96f95d279d37700d9bb7007c77500229` |
| 61 | `theorem` | [preimage_union](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/preimage-union.md) | 380 | `result-track:083e182bd5797777201ac765d6fb55634a40cff18c8c6481c0accf6d4475305c` |
| 62 | `theorem` | [preimage_univ](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/preimage-univ.md) | 383 | `result-track:a7562243ab3b9cb272963454c181f41a661bfbc658d828873e2a6e1dcd34dc30` |
| 63 | `theorem` | [coe_preimage](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/coe-preimage.md) | 385 | `result-track:cbe7ce98b02ab8e1e4f4e80b14a95b6430c6b7aca581cb5f51390dd8cd9cc1cd` |
| 64 | `def` | [core](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/core.md) | 389 | `declaration-track:4d6b493d681ca74bbaa8e71418da8d8b4bffbbdcb8a020e6da3893466e177070` |
| 65 | `theorem` | [core_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/core-def.md) | 392 | `result-track:d8ac6f9563831e93b6c4266c2a05c7448bdd2f464e00a084a72294c36abe6051` |
| 66 | `theorem` | [mem_core](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/mem-core.md) | 396 | `result-track:505e7499aafeac003eab809b0ac9912947ac9fa6fe0602e7d1a3f997cace6f0f` |
| 67 | `theorem` | [compl_dom_subset_core](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/compl-dom-subset-core.md) | 399 | `result-track:a1216e94ccd06ccffac42e1e5d13760bf08ea7906097a8c683cc2f92d034824c` |
| 68 | `theorem` | [core_mono](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/core-mono.md) | 402 | `result-track:a003ea7e83daed0cfe241fbf34fb56996a4509ab7e296240b8247c47d40776b4` |
| 69 | `theorem` | [core_inter](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/core-inter.md) | 405 | `result-track:ae1e2bfdcdef95d341cb524b6ee979302ec6f1a81cf95896307c4feff1df14e2` |
| 70 | `theorem` | [mem_core_res](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/mem-core-res.md) | 408 | `result-track:5b5b1d517f79fe4a9aa853dbd7b4a9afe8655560383f4d6333da2a2effaaa996` |
| 71 | `theorem` | [core_res](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/core-res.md) | 411 | `result-track:e3167016a659469102a872a70bb389955a0c9c4d1b7f519f1cc45b1262c86fe9` |
| 72 | `theorem` | [core_restrict](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/core-restrict.md) | 416 | `result-track:5d50555002d595b7ea8a15074c0b14407289ff8e15e1959f79021020f21ac0bf` |
| 73 | `theorem` | [preimage_subset_core](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/preimage-subset-core.md) | 419 | `result-track:6b7813078b56459dc61384adc157af36fc07af982312c12b33f80aeb7cc38d0b` |
| 74 | `theorem` | [preimage_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/preimage-eq.md) | 424 | `result-track:06f002567c948c1b9d4b1a27618a0ad0eb607be3185bcb49d41e3b323bfa0c40` |
| 75 | `theorem` | [core_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/core-eq.md) | 431 | `result-track:33219feb843bd5c4e7d06fd5f47a1b258bdd2e298c87a03844f6e63e7c9c6319` |
| 76 | `theorem` | [preimage_asSubtype](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/preimage-assubtype.md) | 435 | `result-track:43b03d5bb55a57a35387c5d1b0cf773c662c08d03a1196604e0e9fff517b213e` |
| 77 | `def` | [toSubtype](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/tosubtype.md) | 446 | `declaration-track:b768561623ebfa04b1df263d93326107231979cfc09bcedddd8d30955bad72c3` |
| 78 | `theorem` | [dom_toSubtype](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/dom-tosubtype.md) | 449 | `result-track:378499c6045c4e5c0c8ad448ec02a37b275a7b314b9e37349618d856f8da7866` |
| 79 | `theorem` | [toSubtype_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/tosubtype-apply.md) | 453 | `result-track:a82585edf19272b3d45a9c8a33fe1c16861c066105a610108c5d3944bcab5154` |
| 80 | `theorem` | [dom_toSubtype_apply_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/dom-tosubtype-apply-iff.md) | 457 | `result-track:c2b3389737b16fb63a6fd1efb83dc59da1600129d53f70ce66532422fe4abe95` |
| 81 | `theorem` | [mem_toSubtype_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/mem-tosubtype-iff.md) | 461 | `result-track:b1617760dca8e3c0447f91165d1a2d74a6cbc9bae6d2323cca00129509e364a9` |
| 82 | `def` | [id](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/id.md) | 466 | `declaration-track:11d0718d8844a7cd530426e7eefb3f6d94ba6a09345155dfd484c26a861642cc` |
| 83 | `theorem` | [coe_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/coe-id.md) | 470 | `result-track:81ac28ae9f6aa8d384489cbae02e6a2d031b0c4fb13f76b83601dcb59bf8645c` |
| 84 | `theorem` | [id_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/id-apply.md) | 474 | `result-track:cbccdc9ec7a9a6f3bacab9a074fa6b33fbbbebfca09a1994d0656a32d8173c3b` |
| 85 | `def` | [comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/comp.md) | 478 | `declaration-track:6fb4adb90e20bce722beb8d0c00683ef01131e502d65db5a8d10f94e2a05b8c4` |
| 86 | `theorem` | [comp_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/comp-apply.md) | 481 | `result-track:f969405767706dd0e52c778cb978e6f040fb1a10a3199ff530393be58dcde812` |
| 87 | `theorem` | [id_comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/id-comp.md) | 486 | `result-track:7cccca6897420ac6461e7160452a66bc9a25e804e5c74f339c14c8f74da9dadf` |
| 88 | `theorem` | [comp_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/comp-id.md) | 491 | `result-track:2ccb6f3854ffafd968389960a2419893ead858419876442d1dd64051c6a50081` |
| 89 | `theorem` | [dom_comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/dom-comp.md) | 496 | `result-track:e538a2a07d82591200861aa79f63bc36f4cbde26a3a8e781942cece594e3221b` |
| 90 | `theorem` | [preimage_comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/preimage-comp.md) | 502 | `result-track:e6a390115c1d1d2934b35bc8c52f8b9fdfa92d1f22862073d880100dae27ec51` |
| 91 | `theorem` | [Part.bind_comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/part-bind-comp.md) | 507 | `result-track:09012129e936e5a75328dcc6f2190e098ce3f046139a3c3dd9067a5c21f69e73` |
| 92 | `theorem` | [comp_assoc](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/comp-assoc.md) | 513 | `result-track:12ae31584b08cab45af9b4dbf0211b8dda72168a7e57cd6655cf1173798d8ca9` |
| 93 | `theorem` | [coe_comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/coe-comp.md) | 518 | `result-track:cf6d78652965d46a146673d057ef6e5dbf7900380113e2d9903f3ca28069330a` |
| 94 | `def` | [prodLift](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/prodlift.md) | 522 | `declaration-track:ce99e7cc4750e0429742401ecf37250ec8e6ea062c93d758b4f2543ba417fa9c` |
| 95 | `theorem` | [dom_prodLift](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/dom-prodlift.md) | 526 | `result-track:84caf3062fe2b34ded1bf99195a93e7d02f6d96ebd061fa255587a98e37c6a6b` |
| 96 | `theorem` | [get_prodLift](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/get-prodlift.md) | 530 | `result-track:e0ff05c9b35a96a1043cb8ac839c6364f85282f97688ddc915027a9d665757ab` |
| 97 | `theorem` | [prodLift_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/prodlift-apply.md) | 535 | `result-track:ff5e4953c8e92a45130187d03440b1adbaff114d071a4e6c50d782e5f27ac2cf` |
| 98 | `theorem` | [mem_prodLift](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/mem-prodlift.md) | 539 | `result-track:29332956e3738378c701fedc35b2e7f3e9a8647a6c5e1ae7b23967ed9a84b3a1` |
| 99 | `def` | [prodMap](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/prodmap.md) | 546 | `declaration-track:fb868c74a99605cf2afdb1afa31a9cb713960e72230d12ded20ad564968e60a8` |
| 100 | `theorem` | [dom_prodMap](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/dom-prodmap.md) | 550 | `result-track:7b26fc4385838cf44c44348323ba80703277a3ef236564e21fb27a515665fbf8` |
| 101 | `theorem` | [get_prodMap](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/get-prodmap.md) | 554 | `result-track:f888f355d4c052c21c752381be9ab312871e52f95bb6c5fcc4a7fa09d855475c` |
| 102 | `theorem` | [prodMap_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/prodmap-apply.md) | 559 | `result-track:d1301b756b253ca83cb685763f059273dcbb4a2b8c1d7fd3b425915c939ff1c1` |
| 103 | `theorem` | [mem_prodMap](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/mem-prodmap.md) | 563 | `result-track:502c60c0c62143c0a91dae6c7d1ac3b0ad51c96c571dcc54b58075fdef686e7e` |
| 104 | `theorem` | [prodLift_fst_comp_snd_comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/prodlift-fst-comp-snd-comp.md) | 571 | `result-track:e2b29e7964e37fc615a44853c62be261f0d2f1bf134eeeae98aa31ec66232464` |
| 105 | `theorem` | [prodMap_id_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/prodmap-id-id.md) | 578 | `result-track:a378909114264a972e766182e7166c9b2eb19c5f4c1c5ab3e6dcdd471bf2f52a` |
| 106 | `theorem` | [prodMap_comp_comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/declarations/prodmap-comp-comp.md) | 582 | `result-track:4ee5808698ce657f1f7d061c685a1ee6a66648e467f1a0b7cd6853fa2d07d565` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8179fb8dd966581482d115d75b40c775178c400fba5f0f5dc9f935a49ed6b947 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PFun/Variantc7aa5e5a6e107d4defbe12e1ad8ada1c5ec1b8c1ae7790c807a3cb8625b7abb8.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PFun/Variantc7aa5e5a6e107d4defbe12e1ad8ada1c5ec1b8c1ae7790c807a3cb8625b7abb8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
