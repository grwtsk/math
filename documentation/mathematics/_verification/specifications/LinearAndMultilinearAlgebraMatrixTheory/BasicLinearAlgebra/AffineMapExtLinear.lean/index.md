# Verification target: Affine Map Ext Linear

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ec6dea798371471071093ac79316b8729836066",
  "lexical_observation_count": 134,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/AffineMap/Variant127a718c71ed438297f2c710fd2831c2c316fc92953ca7ada689ee60bb1ebfbb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ec6dea798371471071093ac79316b8729836066`.

Source path: `GRWTSK/Algebra/LinearAlgebra/AffineMap/Variant127a718c71ed438297f2c710fd2831c2c316fc92953ca7ada689ee60bb1ebfbb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/AffineMap/Variant127a718c71ed438297f2c710fd2831c2c316fc92953ca7ada689ee60bb1ebfbb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Pointwise.Interval` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.BilinearMap` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Pi` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Prod` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Abel` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.AddTorsor.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AffineMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/affinemap.md) | 49 | `declaration-track:b0e801e154412cc24ccb28c2fcd3ae1ea69973ad0be7289662355bcd8cecc04e` |
| 2 | `instance` | [AffineMap.instFunLike](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/affinemap-instfunlike.md) | 60 | `declaration-track:728ce7c5849b89368b192afa091404e08693f3d324670f370b6787ad34cb89a6` |
| 3 | `def` | [toAffineMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/toaffinemap.md) | 76 | `declaration-track:0e0334163d39bac7a311aa30ce86d0e301b3d92d8c2a83d5182de9ccfbc11373` |
| 4 | `theorem` | [coe_toAffineMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/coe-toaffinemap.md) | 82 | `result-track:708c8180883b97af7c032a83084a2df992f05e9964c5d5f531d8a303f8a49b91` |
| 5 | `theorem` | [toAffineMap_linear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/toaffinemap-linear.md) | 86 | `result-track:1ef34a7d027f7785a76b2fea4140887a5e61a753ec31d4fb66b15ad172887440` |
| 6 | `theorem` | [coe_mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/coe-mk-source-edition-2.md) | 101 | `result-track:98ce60b81d66356e61700a105a2ed301c582e732124974bc093829b62b9535ad` |
| 7 | `theorem` | [toFun_eq_coe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/tofun-eq-coe.md) | 106 | `result-track:40a57be2fbb44a377e79f6457accef5bc2f8e9e7f182dc9ae25ddfa4db21ed4f` |
| 8 | `theorem` | [map_vadd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/map-vadd.md) | 113 | `result-track:046cabacd66ae88092ef3aaee81b9e35dc0e79fd263aa16854f1a03cd3c2cffa` |
| 9 | `theorem` | [linearMap_vsub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/linearmap-vsub.md) | 120 | `result-track:1830e9f13e4cf11ca2216c8cf5a04e56d8e2f893d65ed4fb92f82b5c1921b243` |
| 10 | `theorem` | [ext](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/ext.md) | 125 | `result-track:2790e54ac30a95bcf38dc096b6ecb78a0ab4798b7bc599a0d0f5fbe00f8cda1c` |
| 11 | `theorem` | [coeFn_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/coefn-injective.md) | 128 | `result-track:680b50fbd78e115cf49dcf160d58553c994aa90d78881eb4b561133a4016d799` |
| 12 | `theorem` | [congr_arg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/congr-arg.md) | 131 | `result-track:383fb46f89e1b3c453d61ef0b5ab608daa71aab42b2a1fe153ae313550a16630` |
| 13 | `theorem` | [congr_fun](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/congr-fun.md) | 134 | `result-track:1928cea3e4b16df10e322528cc97a626386fd30cb566926667bbf1e42588e019` |
| 14 | `theorem` | [ext_linear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/ext-linear.md) | 138 | `result-track:b87a85f61ad8786bb5b2b93d01c6f9baa0f60b3710ca23ded71fc5309e61d0ba` |
| 15 | `theorem` | [ext_linear_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/ext-linear-iff.md) | 147 | `result-track:0e6f6df3c66c800334748783d8f1e61359ba1870ac6427b0086ee5c616c557dd` |
| 16 | `def` | [const](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/const.md) | 154 | `declaration-track:4903699bb3a9e8bf79b7d677faa68bcfc9026e3dd6e1aaaa497c18886725f3cf` |
| 17 | `theorem` | [coe_const](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/coe-const.md) | 162 | `result-track:e13c7b61810eddab2b84a568e162b3fd5f1a415ceb6b8e0ddaded0d015b06dda` |
| 18 | `theorem` | [const_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/const-apply.md) | 166 | `result-track:fb94ada17b16a22f83d5819919a8a3485a24a491b25e07870646d4fa5a9d98db` |
| 19 | `theorem` | [const_linear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/const-linear.md) | 169 | `result-track:c80968786fd682440915c87931177e1a379d0859e853b0d688bfaadefcdd73a3` |
| 20 | `theorem` | [linear_eq_zero_iff_exists_const](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/linear-eq-zero-iff-exists-const.md) | 174 | `result-track:8001a44f652b16411515fcfe6c0a00e4f2e0dd4660deda51c96d9828351721d0` |
| 21 | `instance` | [nonempty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/nonempty.md) | 184 | `declaration-track:020b6f11e6bab8778240e085fc7cf2ccebdc294ee03be15d6e3b1e1f62a49fbf` |
| 22 | `def` | [mk'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/mk.md) | 190 | `declaration-track:64fa339ce9dac6ab198ac37c14de38c88df2fe3c3e54d4c8cc09d3fa755ccaf7` |
| 23 | `theorem` | [coe_mk'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/coe-mk.md) | 197 | `result-track:1294fb80649a51121be5d8ca67d56189318d9d978d7df51cfe8463fc541500ce` |
| 24 | `theorem` | [mk'_linear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/mk-linear.md) | 201 | `result-track:45152a89fc3576ab45b3de57a07825e9b4bf1eb2c2d842c4f6bafc1be65c1faf` |
| 25 | `instance` | [mulAction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/mulaction.md) | 208 | `declaration-track:ddc1c6218ddc3f02cd01ea5246ae26648f4d815820d008c46a177faf6f2ec511` |
| 26 | `theorem` | [coe_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/coe-smul.md) | 214 | `result-track:8c76436060faa303bb245ef5b6aa3f2bd1886600ef12672dc4c208af84c80c43` |
| 27 | `theorem` | [smul_linear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/smul-linear.md) | 218 | `result-track:3ac92afa6764c2b795874396e042d71857a4f6f83bd3939a07241f9b45c30376` |
| 28 | `instance` | [isCentralScalar](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/iscentralscalar.md) | 221 | `declaration-track:c24ef25138ab71104e83ce26d197053009740dd6e9b06717b839b1777f09d770` |
| 29 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/instance-source-edition-7.md) | 227 | `declaration-track:cadf14417d897750c34f46b26509ee900296bb0715182bb6dad4688e8afe1a2c` |
| 30 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/instance-source-edition-2.md) | 229 | `declaration-track:1c2dd5d720c0f721e5dd78db86e90c195c7afd57914404a52b7422fb4a199891` |
| 31 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/instance-source-edition-8.md) | 232 | `declaration-track:cc56e10bad4c22e7ce91a5a216edadc8eee6ff87bb93e1728f722530d5f618ee` |
| 32 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/instance-source-edition-4.md) | 235 | `declaration-track:424fbfedfcce30288e27bf73caee52f7b9dc99bf1bc4dd60d07f76f81d3b638a` |
| 33 | `theorem` | [coe_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/coe-zero.md) | 239 | `result-track:9ee737b4d056d63125d458418b8bcf07fe6a3ad18683fc57bdd36cf446e7bd60` |
| 34 | `theorem` | [coe_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/coe-add.md) | 243 | `result-track:a56510fdd46bc3de02295a9890a521374c16cdbe5654032d87352aabc433ddbc` |
| 35 | `theorem` | [coe_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/coe-neg.md) | 247 | `result-track:08c6b5447d411aa6a3ac7ec1d511a4b7bbb288d9d53c602a6533b7fadb905b73` |
| 36 | `theorem` | [coe_sub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/coe-sub.md) | 251 | `result-track:ea751f474a756364f56a18c95410e5de73f143a7458c8640e51f040cb6bf685f` |
| 37 | `theorem` | [zero_linear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/zero-linear.md) | 255 | `result-track:9a8938159d2f246ec65a92a1eb04b361eb23ef473bf7a1d58469fa9e3c0dada6` |
| 38 | `theorem` | [add_linear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/add-linear.md) | 259 | `result-track:2b96b1c5e7555a77a309bb278a319483500d7af0d9974d207e25d3b7f8764a89` |
| 39 | `theorem` | [sub_linear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/sub-linear.md) | 263 | `result-track:07ec5cf8cd140ae91f96457270a585c8f02a73630d3586c523b464df95427807` |
| 40 | `theorem` | [neg_linear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/neg-linear.md) | 267 | `result-track:ba1f4f5894d1ba4a7c0fe6ffea6749d65d1b65cd6311d6dad587c363a128c6af` |
| 41 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/instance-source-edition-3.md) | 271 | `declaration-track:2f314b354ed216d09afc526804c1ea8801d3e8b0a2f45a3db912a40d9517b76d` |
| 42 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/instance.md) | 277 | `declaration-track:181695e48cf6d3fb38918fa598e6bc217369370a349d76d9fc62b43f50cd5bd2` |
| 43 | `theorem` | [vadd_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/vadd-apply.md) | 290 | `result-track:d90878419b0ba5c2fdac890f8d2f9a0c2b0d11578e2b11db4a899101b74723b0` |
| 44 | `theorem` | [vsub_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/vsub-apply.md) | 294 | `result-track:8b3b2f36faac5c77ff38445ca5211600b0f38eb2971dc2cb2a12294bff516052` |
| 45 | `def` | [fst](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/fst.md) | 298 | `declaration-track:59e7c1e40c932062c7ca37e4f04c7b451ec2f6164180392f2eb36eb8393c032e` |
| 46 | `theorem` | [coe_fst](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/coe-fst.md) | 304 | `result-track:f318e0b9335ef013cd829a6f81ffb7e7faa50a1c9ac3d0b545c2dffbcf8ad504` |
| 47 | `theorem` | [fst_linear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/fst-linear.md) | 308 | `result-track:822a64c00a8b2b22f41ed9b16a0b8127b71d88168ca5218d3d1bb4d3589cce93` |
| 48 | `def` | [snd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/snd.md) | 312 | `declaration-track:6377953462a1bfd211f197e898956903e1091b1c03830930609152eeeca4fde7` |
| 49 | `theorem` | [coe_snd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/coe-snd.md) | 318 | `result-track:2803deae3b378d60ea0299f11517b89f46936317c3985b3423e88006521df316` |
| 50 | `theorem` | [snd_linear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/snd-linear.md) | 322 | `result-track:59e517d06901c527c77acd1a1aad8dd3fd200b07a53e8e1f62676eea319c3242` |
| 51 | `def` | [id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/id.md) | 327 | `declaration-track:b9d72bcc238177aef7ee4427f844fc3d5b654bc7e6362049dbae5379886cbf7e` |
| 52 | `theorem` | [coe_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/coe-id.md) | 334 | `result-track:9d218149358f2d5e71bcf140d448f357c4488eda3e2cf3069e4adbd94a44a9da` |
| 53 | `theorem` | [id_linear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/id-linear.md) | 338 | `result-track:7178ad1135fff356ce112dd6f0c87e6c000d6ca5dcd7d6f78e5d30b728d1d350` |
| 54 | `theorem` | [id_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/id-apply.md) | 344 | `result-track:33bdb28be58a1cde20b580f45611b4a6c91d486c4b4654a59140431091c0811f` |
| 55 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/instance-source-edition-6.md) | 349 | `declaration-track:5b755653dc31bff6ec72df09519479c5ed3d89cdb3ef28b3b33119170764f300` |
| 56 | `def` | [comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/comp.md) | 353 | `declaration-track:aa69465ea69acefa7f07ab04cf6f53ef145df908002fbc2b4e877570185325ce` |
| 57 | `theorem` | [coe_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/coe-comp.md) | 363 | `result-track:920ed894ed8993cef1598b7871f7bb6ba48d40996db638378926147097ca83c0` |
| 58 | `theorem` | [comp_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/comp-apply.md) | 367 | `result-track:1caae22b26deff303079b231eb95ea1cb1aa502748ea151ea19bdf0e111a13c3` |
| 59 | `theorem` | [comp_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/comp-id.md) | 371 | `result-track:8c685d68ad530c96d88475da440744e2d8ad0846386aac029bead3c6820d5c9e` |
| 60 | `theorem` | [id_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/id-comp.md) | 375 | `result-track:3194a99f6580ff949a58f84d8d8cfea9eebf1588f010e0e6d05c5e80bcadc6a7` |
| 61 | `theorem` | [comp_assoc](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/comp-assoc.md) | 378 | `result-track:96c61a13e0b5e3dc44bcc67def7650d363a0713118f1f552e6ceea59ad99f13c` |
| 62 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/instance-source-edition-5.md) | 382 | `declaration-track:474970adf0bb89042bd26cc64a4ccca68bf053a41bcd0a48eb74770addae317b` |
| 63 | `theorem` | [coe_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/coe-mul.md) | 390 | `result-track:b870ced9b9eb96fbb764986c819dddd09cfd3645ae1f14a060bc72c9f2348d7e` |
| 64 | `theorem` | [coe_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/coe-one.md) | 394 | `result-track:22ae1381bded3a4700005db36c72fb48caf1c079b4b1788dda8c62ce26404623` |
| 65 | `def` | [linearHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/linearhom.md) | 399 | `declaration-track:06f435c6a06cde9dff8cfb3b03265804651d66089ed8e14beccc713e94ad9c0a` |
| 66 | `theorem` | [linear_injective_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/linear-injective-iff.md) | 405 | `result-track:3044f18882060504d2b22f9fecd28fdc0c0a3215b7ff30e7c184340475c26e61` |
| 67 | `theorem` | [linear_surjective_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/linear-surjective-iff.md) | 414 | `result-track:882e5d1dde5befab838ddc91d316126e49a4e6f130d4a364a74b3854f7d96d12` |
| 68 | `theorem` | [linear_bijective_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/linear-bijective-iff.md) | 423 | `result-track:568daee9b10791e4be07995b6106566a8958ecfdba6decd59fdce958c2d4d58c` |
| 69 | `theorem` | [image_vsub_image](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/image-vsub-image.md) | 427 | `result-track:ba51ff6f7b2b33039ddd141a0a16961c032dd5964539dad3f3e5428cc809a6e1` |
| 70 | `def` | [lineMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/linemap.md) | 441 | `declaration-track:302645bf55e95596d53acb272aeac4b38cf3a7c5e4c7702bec730b2eda85d96a` |
| 71 | `theorem` | [coe_lineMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/coe-linemap.md) | 444 | `result-track:658e485079cdf65e17c9cb3d3a4ac0cf2a37bb561f5289f335adb641f2a61552` |
| 72 | `theorem` | [lineMap_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/linemap-apply.md) | 447 | `result-track:d7489ce02d8ccf2430c0bf053d642c8bc6ccb6d4f86d1579710f4948d8ff1ae3` |
| 73 | `theorem` | [lineMap_apply_module'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/linemap-apply-module-source-edition-2.md) | 450 | `result-track:e4f4eee6d8b95655342109f99e1f58836888c221af8e155091b02e46c7cc373e` |
| 74 | `theorem` | [lineMap_apply_module](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/linemap-apply-module.md) | 453 | `result-track:e0e1683f3f756623286bbedc7fbdc83db939a1c25a267fd308cedbc2c0b7c2cf` |
| 75 | `theorem` | [lineMap_apply_ring'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/linemap-apply-ring.md) | 456 | `result-track:975a1cdd5261544d82086de82d9ed8afd8e6f59ec0cfaa512f512943ff4a78b7` |
| 76 | `theorem` | [lineMap_apply_ring](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/linemap-apply-ring-source-edition-2.md) | 459 | `result-track:cda3d924042bd5c432edb8653a8a08d2f66b7bd532a24e9a1ae23c87ba08916b` |
| 77 | `theorem` | [lineMap_vadd_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/linemap-vadd-apply.md) | 462 | `result-track:bf70f5705a3fa5339e024d152404000782a93c5dd857a9132ad76afcf9fb4d99` |
| 78 | `theorem` | [lineMap_linear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/linemap-linear.md) | 466 | `result-track:0cb7e868d7e0d4576ba9426125b2fa05e61cd53459e30cedba98d8275da41766` |
| 79 | `theorem` | [lineMap_same_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/linemap-same-apply.md) | 470 | `result-track:fce5eeb8cbd7469883ba964709f542ef61d9ea98db5b3fcc882a15622053269d` |
| 80 | `theorem` | [lineMap_same](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/linemap-same.md) | 474 | `result-track:2143b4d1de8656054dba46b4f6c9e5ec0d85ce77f1f1396c26478acbf855ff1f` |
| 81 | `theorem` | [lineMap_apply_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/linemap-apply-zero.md) | 478 | `result-track:c8e72688ed693efd55d395a70b38edec36215b229569d1927263d9944ac5f1d3` |
| 82 | `theorem` | [lineMap_apply_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/linemap-apply-one.md) | 482 | `result-track:4785e765c090dd22ecaca18b9693e3955702e271836b8bff189674d3772ddcd2` |
| 83 | `theorem` | [lineMap_eq_lineMap_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/linemap-eq-linemap-iff.md) | 486 | `result-track:0fa31144698cacee99ede2c2455b2b0642c8da581360c9c3bfa07f7269f76678` |
| 84 | `theorem` | [lineMap_eq_left_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/linemap-eq-left-iff.md) | 492 | `result-track:42a2690cd0cdc05befae5a2f96e69f6640ba617a61591b5ec8123dc380787bcb` |
| 85 | `theorem` | [lineMap_eq_right_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/linemap-eq-right-iff.md) | 497 | `result-track:57529e81039fa715ee0fd0e7a1d43ab0133fb95349e4a99418084fd4411fd322` |
| 86 | `theorem` | [lineMap_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/linemap-injective.md) | 502 | `result-track:cbed1483ca693f515ee7ccd884b9fb01f2b8b74739bc0e5e6d8807aff1a763ea` |
| 87 | `theorem` | [apply_lineMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/apply-linemap.md) | 507 | `result-track:f3f426ccdfa6988314920e55153cfea80c19eadff2cd0531daf574ea8eeb2f5c` |
| 88 | `theorem` | [comp_lineMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/comp-linemap.md) | 512 | `result-track:35e52d7e5b912c97334edc1c103606b43d79cebbcdb616b514d579b3e158828c` |
| 89 | `theorem` | [fst_lineMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/fst-linemap.md) | 517 | `result-track:a41ea5854c6b7b8ca39a23d73e265217931a43797a22745a47dd18a4c9e9f46c` |
| 90 | `theorem` | [snd_lineMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/snd-linemap.md) | 521 | `result-track:896f40ade4de594ba95ee4774d93c97de12c076e33ba21cf3d603663508b8c6b` |
| 91 | `theorem` | [lineMap_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/linemap-symm.md) | 524 | `result-track:e4023222e8c1e2ee886225f80f0b08e9216f1829c295deacceb0471eceaf59b4` |
| 92 | `theorem` | [lineMap_apply_one_sub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/linemap-apply-one-sub.md) | 530 | `result-track:b589a7dad025d49088e47be02b4050d5180ca9372b353bf1654a367b90996b00` |
| 93 | `theorem` | [lineMap_vsub_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/linemap-vsub-left.md) | 536 | `result-track:45198f143819f162d774b19a63cbc7259348a094c48fcb4d997d0fb3156257a6` |
| 94 | `theorem` | [left_vsub_lineMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/left-vsub-linemap.md) | 540 | `result-track:fe0835813735ebe7bee1a33650cdd6a512e3a5ca09100f48d4a6a0a178fea349` |
| 95 | `theorem` | [lineMap_vsub_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/linemap-vsub-right.md) | 544 | `result-track:99f15fb91cecb6393425d470ab68f581c0b3623babd238223787e53089a60d21` |
| 96 | `theorem` | [right_vsub_lineMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/right-vsub-linemap.md) | 548 | `result-track:25be040a11d687bb3931993845bb935f113d62bda701c980d413fa8770fd281b` |
| 97 | `theorem` | [lineMap_vadd_lineMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/linemap-vadd-linemap.md) | 551 | `result-track:c26bcbb635f36e90d0f8b27cb2390d40f9f9c2812d01827ce5370d277983b107` |
| 98 | `theorem` | [lineMap_vsub_lineMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/linemap-vsub-linemap.md) | 555 | `result-track:77af8a700a92d160e56b945c8be0ca7d76e76a6b3dc2fd57db5a7b390033189c` |
| 99 | `lemma` | [lineMap_lineMap_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/linemap-linemap-right.md) | 559 | `result-track:f547c59784831b8c2d561a3b06ada1e2b1ad52dc5d327cee889321a5c3549476` |
| 100 | `lemma` | [lineMap_lineMap_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/linemap-linemap-left.md) | 562 | `result-track:9932a63af0bc67f55ee98b3a1bff82d0c570affb8f5df700312d5108154e97a7` |
| 101 | `theorem` | [decomp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/decomp-source-edition-2.md) | 568 | `result-track:ef7085cf1d014dde08ede3364d593de15179a4acbe428a18138ac68401c09714` |
| 102 | `theorem` | [decomp'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/decomp.md) | 576 | `result-track:12510cf58f688c66250a554bfb6a86f73afb57bf154ff68b55bd31588dd7529e` |
| 103 | `theorem` | [image_uIcc](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/image-uicc.md) | 580 | `result-track:96c8ae900fda0d6cfd7dfc9bed39ab397e9fe4184fa05550b1fbe9217e259fc0` |
| 104 | `def` | [proj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/proj.md) | 597 | `declaration-track:a142811b270038357dad7c6529b093dbd3a385428bf0b4a0defc07d66a31651b` |
| 105 | `theorem` | [proj_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/proj-apply.md) | 603 | `result-track:4844d03644472a4be4307fa0dc744f6a39506dd2ea72499f366f572b1b3a13d8` |
| 106 | `theorem` | [proj_linear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/proj-linear.md) | 607 | `result-track:4ddb8437f982b28be616bdda0f0d9f6f80863ceaa8a73b7b9124117ed936cc02` |
| 107 | `theorem` | [pi_lineMap_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/pi-linemap-apply.md) | 610 | `result-track:d69eb7935cf04a027fbd1e0f6bc3b0e5fc5caecedb6730a21fea177c7c4985fb` |
| 108 | `instance` | [distribMulAction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/distribmulaction.md) | 632 | `declaration-track:586080b9725739c303230cb797b130743160c8ba273ab86c6375f747e6031842` |
| 109 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/instance-source-edition-9.md) | 643 | `declaration-track:dbbf38a24747f5effad183013aaa4589ca95df25fa9b73fc187b3234ce5bc9fb` |
| 110 | `def` | [toConstProdLinearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/toconstprodlinearmap.md) | 656 | `declaration-track:dc67fa562cf99f8c125705aa551b2c9aae68316e279ae14b6f5426e99703c788` |
| 111 | `def` | [pi](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/pi.md) | 680 | `declaration-track:25abc7c6ea22a6920f52886138ff0604cc8c287fb9f4e1352fdd92b766adb0aa` |
| 112 | `theorem` | [pi_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/pi-apply.md) | 691 | `result-track:dca30e752d6897ce39ade9f522c784a828970eb99bdc09d79d2cdf06af0f0395` |
| 113 | `theorem` | [pi_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/pi-comp.md) | 694 | `result-track:248647773aed66cb9eab9816c8f403ced693e45d30a6855b60eb45d5be69ccb5` |
| 114 | `theorem` | [pi_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/pi-eq-zero.md) | 697 | `result-track:8b7a37790ca2a3ffbe168f0c5d1a2a8d86b7c999b1d7183b3c725599bf801108` |
| 115 | `theorem` | [pi_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/pi-zero.md) | 701 | `result-track:9dc2a3152e2b199fdb557ae982e82b78079e1de0eba716961a0057cb6ecd2a6e` |
| 116 | `theorem` | [proj_pi](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/proj-pi.md) | 704 | `result-track:5b5dbc0b802b6adb8fb55d1b98eb251817c2630d61544fd44aa844cffac98b83` |
| 117 | `theorem` | [pi_ext_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/pi-ext-zero.md) | 713 | `result-track:d57a664dd43c0db2edfc6a37ed6cca9c515224600b8a7036081e3b1baf7f995d` |
| 118 | `theorem` | [pi_ext_nonempty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/pi-ext-nonempty-source-edition-2.md) | 730 | `result-track:fbbb2a39b4c3675655f651863cf9672139326237a33d1d1b277008c49c4534db` |
| 119 | `theorem` | [pi_ext_nonempty'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/pi-ext-nonempty.md) | 740 | `result-track:ed7ac448324bc0ada628d888c4d0e815b5b3833efc2a8bf837d68bf2705e8799` |
| 120 | `def` | [homothety](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/homothety.md) | 757 | `declaration-track:a5cca68546f46b3161549876f298c15ffc539941ab3ef7ed05d3cac66ab983d6` |
| 121 | `theorem` | [homothety_def](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/homothety-def.md) | 760 | `result-track:ccc365f83726fe9353bd85a576a41beeee5142b2801fbd898d1e708c2c50bfc9` |
| 122 | `theorem` | [homothety_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/homothety-apply.md) | 764 | `result-track:815722087356030f3fc98fcae091663fc9b81011ae623079f705d789d8414036` |
| 123 | `theorem` | [homothety_eq_lineMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/homothety-eq-linemap.md) | 767 | `result-track:0b18704b72c52a051dd512aea0adedb3471904df47c0ac49a46e88f9715d5d46` |
| 124 | `theorem` | [homothety_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/homothety-one.md) | 771 | `result-track:6610345044aac79045ddcc2509f665f1ca620976b67b5ba3e2cc409835c2820f` |
| 125 | `theorem` | [homothety_apply_same](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/homothety-apply-same.md) | 776 | `result-track:e04c5a14a566a7b9c7dd2cd4531ed68d0c6e3430fd0df8a6fdf96cea255090d7` |
| 126 | `theorem` | [homothety_mul_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/homothety-mul-apply.md) | 779 | `result-track:8e019540b1b948a82067a94962431a0dc05a99fae79e1794088ca22cadc12feb` |
| 127 | `theorem` | [homothety_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/homothety-mul.md) | 783 | `result-track:70775344c5314202573ed73d5ff53239067377265f81ddadc83a7d8b3b960c4a` |
| 128 | `theorem` | [homothety_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/homothety-zero.md) | 788 | `result-track:10c41248582f52879e73a59f8e7a6633e64e1cc2facd8377058ffb4cb0de1c06` |
| 129 | `theorem` | [homothety_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/homothety-add.md) | 793 | `result-track:1495ff9ffb1e2e48d21a857c239d11414202d505bb97b96f1ee81d9d03982a85` |
| 130 | `def` | [homothetyHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/homothetyhom.md) | 798 | `declaration-track:0edbc43a0993eb3e7cc56b939bf1eb64e3f1f185869156946c77286abe76e605` |
| 131 | `theorem` | [coe_homothetyHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/coe-homothetyhom.md) | 804 | `result-track:b03cfd845be41a27548eedb837f83037c4608e491eba806e7029555b899c9a5f` |
| 132 | `def` | [homothetyAffine](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/homothetyaffine.md) | 808 | `declaration-track:fe98fe2957e45573cf33bf933d4c9e740ff739a55e315fc738f5d3917f7a7711` |
| 133 | `theorem` | [coe_homothetyAffine](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/coe-homothetyaffine.md) | 813 | `result-track:5df9b7565335460a9412a968deeeb3fda8e0372d4f49a921db65d0afa8cf28fa` |
| 134 | `theorem` | [Convex.combo_affine_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtLinear.lean/declarations/convex-combo-affine-apply.md) | 826 | `result-track:68833dce0b4f515e1a9e8a5b580e82c77d0060bd85b7b4afc37e6ce87da6a354` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8842ae59acc43bd6f1310d2ef5c452fe8448995476d57c18363fac1fc7b1cf2d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/AffineMap/Variant127a718c71ed438297f2c710fd2831c2c316fc92953ca7ada689ee60bb1ebfbb.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/AffineMap/Variant127a718c71ed438297f2c710fd2831c2c316fc92953ca7ada689ee60bb1ebfbb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
