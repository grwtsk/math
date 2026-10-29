# Verification target: Basis Defs Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b6153c943d6e8da2e7c14f9e4a0fbbf42d5be517",
  "lexical_observation_count": 92,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variantb2a24f0a3edfe7404f718e8653f420128e6665a069640d1a7d1cf01a756a789f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b6153c943d6e8da2e7c14f9e4a0fbbf42d5be517`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Defs/Variantb2a24f0a3edfe7404f718e8653f420128e6665a069640d1a7d1cf01a756a789f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Defs/Variantb2a24f0a3edfe7404f718e8653f420128e6665a069640d1a7d1cf01a756a789f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Basis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/basis.md) | 98 | `declaration-track:7813fda793cffa1717dbb2eed304af2400d7394abeb8f32b8ebf826973f69499` |
| 2 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/instance.md) | 107 | `declaration-track:82cb27b9723679d54e54ed182ce11770dfd0bb412c7d793a69b4ed6a752fda25` |
| 3 | `theorem` | [repr_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/repr-injective.md) | 114 | `result-track:b3d77e36edeffd817de56a89ceed4afeddddc402f9f8c77e8ff03a9bcd911159` |
| 4 | `instance` | [instFunLike](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/instfunlike.md) | 119 | `declaration-track:47185fa63d0740a64e6d628bd5f199d10fe68e2ab964a7808297224a05abf3a4` |
| 5 | `theorem` | [coe_ofRepr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/coe-ofrepr.md) | 125 | `result-track:3de0dd3547471120e2956f9c1c03955914254af1ec108aecacae553688696c49` |
| 6 | `theorem` | [injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/injective.md) | 128 | `result-track:08efbd0b411c94aa220288bcfc087b385426705687a38c51e84e3eec259098b6` |
| 7 | `theorem` | [repr_symm_single_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/repr-symm-single-one.md) | 131 | `result-track:4e149676e98d1cb064f83fbfcfa91bc9441f2b61996d8f67e08d193d10a92e00` |
| 8 | `theorem` | [repr_symm_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/repr-symm-single.md) | 134 | `result-track:e718658d6c982f10bd266a9422ebbf9c4d13fd378fb5ee7baa657d694955281b` |
| 9 | `theorem` | [repr_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/repr-self.md) | 141 | `result-track:64ca61a05cf4cc7d07e4b30c6cf4c46cf856a04a2afe836411657bcf37abbb10` |
| 10 | `theorem` | [repr_self_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/repr-self-apply.md) | 144 | `result-track:36c76e7f76cb18931aecff7df1e02fbb78b95eec65d9c8b9d2592d4365847153` |
| 11 | `theorem` | [repr_symm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/repr-symm-apply.md) | 148 | `result-track:63a6af547ded81c6f1fefcdb1e9f7417155202a01d1de0bf09bcad9c0e147c05` |
| 12 | `theorem` | [coe_repr_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/coe-repr-symm.md) | 156 | `result-track:100689ff452e01abe15ab88f4fda6920916ee75482a71a7cc845f50089d479a5` |
| 13 | `theorem` | [repr_linearCombination](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/repr-linearcombination.md) | 160 | `result-track:ecd0ab1e724bf75b33a6d31179f6d60937262c0ce9f65e481b0a6f7388fce200` |
| 14 | `theorem` | [linearCombination_repr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/linearcombination-repr.md) | 165 | `result-track:a7021aa84a6634834901c13e71b5ebd8ecc95f9eca684079a207af189b7c6cf8` |
| 15 | `def` | [map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/map.md) | 177 | `declaration-track:293efdaa8c412ed2e91de722ab04663454b83dfa75100e7cebad904cfcb2b6e4` |
| 16 | `theorem` | [map_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/map-apply.md) | 181 | `result-track:075d078c55883e4adfe97db322ba98b645996e37b8596731e474b906aae004d8` |
| 17 | `theorem` | [coe_map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/coe-map.md) | 184 | `result-track:bebf70bb277915dc4d541dab612fc0160b192e33ceb50e316e7f78c5720695d0` |
| 18 | `def` | [reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/reindex.md) | 194 | `declaration-track:e636816d763346fadba285e2cc64abe612a37052e100442be01fa93cb0fdcc1a` |
| 19 | `theorem` | [reindex_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/reindex-apply.md) | 197 | `result-track:fbab6045dbbc665900583d7346347e2c8bc36f335f05c8a41f5033d5756cc511` |
| 20 | `theorem` | [coe_reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/coe-reindex.md) | 203 | `result-track:a8e988b2cf816f1b08f06b36ba99412785a749f33889efcb824da590219c1bdf` |
| 21 | `theorem` | [repr_reindex_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/repr-reindex-apply.md) | 206 | `result-track:da91a0c05916b49f03b2dd9713d7d5f8119063e81ab87a35b7c13b032584bfcd` |
| 22 | `theorem` | [repr_reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/repr-reindex.md) | 210 | `result-track:4a5fe46ea591b7e467dee2dc6762793b89da2a76ad72609f4458bcb35b2f1936` |
| 23 | `theorem` | [reindex_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/reindex-refl.md) | 214 | `result-track:3232a5e4a4eec00177cffbc154ca9c69a973f23a13669b8178590998935a808b` |
| 24 | `theorem` | [range_reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/range-reindex.md) | 218 | `result-track:a39450ad40c3ea1a98d8c8f6b3d4b06cbbeab485cb3ae967485f3339cdb37630` |
| 25 | `def` | [Basis.equivFun](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/basis-equivfun.md) | 231 | `declaration-track:0d71989cf94935e2e7c113b4276a1172924eca1fd02ff5771f0abbc4dfea0d50` |
| 26 | `def` | [fintypeOfFintype](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/fintypeoffintype.md) | 241 | `declaration-track:048a780b8d5eb0f330b372a35cbb37f7d4313b3b69569aa9056db6db1907d426` |
| 27 | `theorem` | [Basis.equivFun_symm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/basis-equivfun-symm-apply.md) | 249 | `result-track:259dbf3a396fbb26ba8845f278a5d317483ffd5cef9ded71526875b099f5735f` |
| 28 | `theorem` | [Basis.equivFun_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/basis-equivfun-apply.md) | 254 | `result-track:66f939a9c6144a98aac7ad03f5436c212c61cbfce116d51390bf738e8b0e066c` |
| 29 | `theorem` | [Basis.map_equivFun](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/basis-map-equivfun.md) | 258 | `result-track:8403667921d48e59009abf66462cddaeab8ab6dfa7e75f5cbe6468c22bdf8a07` |
| 30 | `theorem` | [Basis.sum_equivFun](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/basis-sum-equivfun.md) | 262 | `result-track:d3b52c1675bb65c758d89fda8276ac76f2e9314d409b3af41fe9419c4e1cc82c` |
| 31 | `theorem` | [Basis.sum_repr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/basis-sum-repr.md) | 267 | `result-track:ddd17285d73516d073f822a343ac93ed96a63cae85262819ca9f67d76985fd28` |
| 32 | `theorem` | [Basis.equivFun_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/basis-equivfun-self.md) | 271 | `result-track:6eaa31e2f771b7d93d46c52debd199d49abde4b84d206b2297ed015d737645f3` |
| 33 | `theorem` | [Basis.repr_sum_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/basis-repr-sum-self.md) | 274 | `result-track:a71496a07b2136f35f320aeab47eb20f04ff2429ac0edd0c48538b85a0788eab` |
| 34 | `def` | [Basis.ofEquivFun](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/basis-ofequivfun.md) | 280 | `declaration-track:3a2a41d5bfbc7052c3773392b6a170ae25f86897c648940c8ab1254a9b75ff84` |
| 35 | `theorem` | [Basis.ofEquivFun_repr_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/basis-ofequivfun-repr-apply.md) | 284 | `result-track:907732614605fa480420ce4a45d86245b27c082025b1d76858c2897a642b832e` |
| 36 | `theorem` | [Basis.coe_ofEquivFun](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/basis-coe-ofequivfun.md) | 289 | `result-track:964709fdff741a1ea4b557ce4231626031f2f83b5c36a80f1215d84b71454aab` |
| 37 | `theorem` | [Basis.ofEquivFun_equivFun](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/basis-ofequivfun-equivfun.md) | 297 | `result-track:e55eaf89132b3704d076ec446b7b8e2526d974cf4f247e157776c00407de0db2` |
| 38 | `theorem` | [Basis.equivFun_ofEquivFun](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/basis-equivfun-ofequivfun.md) | 302 | `result-track:8481a240310dc0626005867fe33a8b8873f821c2e7e35ae644f621fb19b494f6` |
| 39 | `theorem` | [ext](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/ext.md) | 324 | `result-track:ccb093fe4677dbfa7d3d845e500bf9200602b782c663d5493107c3c597a9549a` |
| 40 | `theorem` | [ext'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/ext-source-edition-2.md) | 330 | `result-track:f056ed4577c5c88efc5a15b910c3caeafd641ec428083216d2cbd6427a830f4b` |
| 41 | `theorem` | [ext_elem_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/ext-elem-iff.md) | 336 | `result-track:ecc14a75c8ebbf91dc81b44b63a97432b576a71d727ab24af324f585bf1f20c4` |
| 42 | `theorem` | [repr_eq_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/repr-eq-iff-source-edition-2.md) | 341 | `result-track:cfe5114c6272ca5fb0c10de5630b7def809d0623c245e78837070ff761638800` |
| 43 | `theorem` | [repr_eq_iff'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/repr-eq-iff.md) | 345 | `result-track:9e9b79aff1f64504ca93f7642399f3694db3ba0c631ec14611bf1ac5b7e4e862` |
| 44 | `theorem` | [apply_eq_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/apply-eq-iff.md) | 349 | `result-track:f289c3165fa2f918401e04209294e499f0697e5a1569aed93770497771b5e7de` |
| 45 | `theorem` | [repr_apply_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/repr-apply-eq.md) | 353 | `result-track:be4403eddf8b5bf9e1361fc5e33b6f60c9923ad0d04e94ea3dd6244cc9962a58` |
| 46 | `theorem` | [eq_ofRepr_eq_repr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/eq-ofrepr-eq-repr.md) | 371 | `result-track:0899ff7ae9240bbc26422ced4fa00d2af659c0bbef0be570841bc1498d86a757` |
| 47 | `theorem` | [eq_of_apply_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/eq-of-apply-eq.md) | 376 | `result-track:639784d11291026bab1e52e2f931311766f6abdda4e9a5e7eeb549c5c07f8b2d` |
| 48 | `def` | [mapCoeffs](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/mapcoeffs.md) | 393 | `declaration-track:f5c1dded6efc59586dc3bca429d96cbdbb67ac2daa52931454169f099ba9da76` |
| 49 | `theorem` | [mapCoeffs_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/mapcoeffs-apply.md) | 404 | `result-track:09593752b5822fdb80570e4d1b435eb070e9de852059e4d6f92cce4c545f0803` |
| 50 | `theorem` | [coe_mapCoeffs](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/coe-mapcoeffs.md) | 408 | `result-track:af29c7eea9799f33e75220c252e388b956f054c8cf01f8f341a6ca777e3e474f` |
| 51 | `def` | [reindexRange](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/reindexrange.md) | 416 | `declaration-track:6e637c85bc9a80db7330ab9c19722f5d7f72be235444a2f19833c0dc6a15ea42` |
| 52 | `theorem` | [reindexRange_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/reindexrange-self.md) | 424 | `result-track:bd12d44e9260eca79afefa1dd6eab8d80e8166590c74f5468d0ad18e5059555b` |
| 53 | `theorem` | [reindexRange_repr_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/reindexrange-repr-self.md) | 430 | `result-track:cb8ca8077cfe9f9595c6a4d303d7f2cf72f8ac93e04e9b25de06956ec360b79e` |
| 54 | `theorem` | [reindexRange_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/reindexrange-apply.md) | 438 | `result-track:33870e536253187907a3743f57ed85c4827d6b481238c8d30d1f4aa52c2dcdc2` |
| 55 | `theorem` | [reindexRange_repr'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/reindexrange-repr.md) | 442 | `result-track:39dd40e2eb04df1c503a29c52a8f2fa2ed680a1d9403715b79ac7bf97957490b` |
| 56 | `theorem` | [reindexRange_repr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/reindexrange-repr-source-edition-2.md) | 460 | `result-track:846e15bbca704731b5cc5265e64361436ca993da97929a5d866c1c661a9b0c52` |
| 57 | `def` | [reindexFinsetRange](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/reindexfinsetrange.md) | 470 | `declaration-track:2d02e6dd0bfef71cc4d8a02dd2ff7ca24754fa9c7b6017c36689c9c5cd6c5ba7` |
| 58 | `theorem` | [reindexFinsetRange_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/reindexfinsetrange-self.md) | 473 | `result-track:866bf19eba4a21ca6593fa4e829f94a4f07beee23e1b9e0130750f51220d907b` |
| 59 | `theorem` | [reindexFinsetRange_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/reindexfinsetrange-apply.md) | 479 | `result-track:863c2f2f43ee2bd04dfe2293b45dadbc2eaae0d5efa70439910463d988155ab8` |
| 60 | `theorem` | [reindexFinsetRange_repr_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/reindexfinsetrange-repr-self.md) | 484 | `result-track:133436caa1c757c90a691b94bbe5b05ac22052397d267ca6d773ca38d0ac85a3` |
| 61 | `theorem` | [reindexFinsetRange_repr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/reindexfinsetrange-repr.md) | 491 | `result-track:5370745d9de9af3705ec9c6784951181f0e07f53fd729839e173d6de317b0ded` |
| 62 | `def` | [constr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/constr.md) | 516 | `declaration-track:96cf82264eab70c00ad32a792514d98513aa0fe3a2ab8cd713b1ddb909e56bcc` |
| 63 | `theorem` | [constr_def](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/constr-def.md) | 532 | `result-track:6a9063fda4bbdb1c86161d959b53c8981cfee5fc8bbd711d605490f159f3ade8` |
| 64 | `theorem` | [constr_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/constr-apply.md) | 536 | `result-track:89f7eac572f8aba650633a2050b9ede478cdef8293c84f8526cd649e4b3965c1` |
| 65 | `theorem` | [constr_symm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/constr-symm-apply.md) | 541 | `result-track:cfc7b372a4ff791c3f59def7403bc7b1d5d75f19778852c00d571e6e382075f2` |
| 66 | `theorem` | [constr_basis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/constr-basis.md) | 546 | `result-track:e5344de35d9d9d8e0d95b6c358f95ecc0f477ecbb78a1a3da45a9aaf0cf36523` |
| 67 | `theorem` | [constr_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/constr-eq.md) | 549 | `result-track:a4bd4e721a8241aea6fa82e720980609abde07fc1cceeee3d84cd2b8dd77f4a9` |
| 68 | `theorem` | [constr_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/constr-self.md) | 553 | `result-track:b22d3ee8351e1a8da4726853748a8a6055506119e86fef278c16ce3ae80ae7f1` |
| 69 | `theorem` | [constr_range](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/constr-range.md) | 556 | `result-track:a0ff185021a9b16cccd9d83a7dcd511d057a667a7d1c54b4e18d754a2aaf56c7` |
| 70 | `theorem` | [constr_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/constr-comp.md) | 563 | `result-track:90528eb3d9887c7fc333158cb711b2c243e82a9aac6484f202588ad5a09c70fb` |
| 71 | `theorem` | [constr_apply_fintype](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/constr-apply-fintype.md) | 571 | `result-track:c3a2d726c6fb3c12af7cd72122db619fd5db4bec0cfe1bd1dcd81fcafb06e0f8` |
| 72 | `def` | [equiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/equiv.md) | 585 | `declaration-track:21b2323bbb47fae6e41a33f825a87cf1f9832954c0d581984e2fd946deb38749` |
| 73 | `theorem` | [equiv_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/equiv-apply-source-edition-2.md) | 589 | `result-track:ef491d014fcc8cc5e8f8890cc2abdb5c1c9e475676929b19f2d273c23b34baad` |
| 74 | `theorem` | [equiv_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/equiv-refl.md) | 592 | `result-track:482d8891354bc5162a13e621e17b88a477f41124235042909438c784f5125d24` |
| 75 | `theorem` | [equiv_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/equiv-symm.md) | 596 | `result-track:c3c5373d5f298032a37d4e2ad3b8f774c4b3680cc8fde7fbf1ce8851569d0fed` |
| 76 | `theorem` | [equiv_trans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/equiv-trans.md) | 600 | `result-track:6480d7b3476b996735393b4751483020825814a183af28961e27c1a0d82dfb18` |
| 77 | `theorem` | [map_equiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/map-equiv.md) | 605 | `result-track:b1bcf4400d0358beaaa50a32d67542ccf1810dc2b3d65f3d9bfe8d7b20d630ae` |
| 78 | `def` | [equiv'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/equiv-source-edition-2.md) | 621 | `declaration-track:45b0fae9f5779f96e5b8c583de2868b45d13061aef5623ec74c2978e5de1eefc` |
| 79 | `theorem` | [equiv'_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/equiv-apply.md) | 641 | `result-track:e692439eeb7d854247d9fa071f462d6841b96d2e01088328e32fe162b777a377` |
| 80 | `theorem` | [equiv'_symm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/equiv-symm-apply.md) | 646 | `result-track:8f942cff43f04b397cadfc989380ca3a9425a824d236f1cf806b937bc83a9234` |
| 81 | `theorem` | [sum_repr_mul_repr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/sum-repr-mul-repr.md) | 650 | `result-track:5debb947145447789b9ad91d5feabe8a1032b76593612712104ef98427d602d8` |
| 82 | `def` | [coord](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/coord.md) | 672 | `declaration-track:e33e250b7de7509e5150f17456c41766f3335b9dbab3b845bd5ce56480bddda1` |
| 83 | `theorem` | [forall_coord_eq_zero_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/forall-coord-eq-zero-iff.md) | 675 | `result-track:19ea2b52a5efaa5b292fd9405b137408e3de44664b60e96a5f45f7c3551a4555` |
| 84 | `def` | [sumCoords](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/sumcoords.md) | 680 | `declaration-track:2a3632ecff3dfceb01bafdd51cefde8e3522022104004dd4afae996c2325626c` |
| 85 | `theorem` | [coe_sumCoords](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/coe-sumcoords.md) | 684 | `result-track:4f6dc6d47a4869095fffd5b6815606cb3d47fd018d83d48f21a1a0e229f0ae8d` |
| 86 | `theorem` | [coe_sumCoords_of_fintype](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/coe-sumcoords-of-fintype.md) | 688 | `result-track:311852deb2598c58007699fadf80e1ac6dbf9eace30c6be3b6593b450b53b8c6` |
| 87 | `theorem` | [sumCoords_self_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/sumcoords-self-apply.md) | 695 | `result-track:26cc66b3d37a613dd98bc5b5b79cdbbf13e6afad4692bbf3bb29f4bb4601d094` |
| 88 | `theorem` | [dvd_coord_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/dvd-coord-smul.md) | 699 | `result-track:a748a5d9919751474ebfcd3eebf68cbdfd7dd863dc55478d89c562e863da4d5d` |
| 89 | `theorem` | [coord_repr_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/coord-repr-symm.md) | 702 | `result-track:ca4dacee917c7060f74689e44bc832b07d872755b8895e46e293a5c5f0f956c0` |
| 90 | `theorem` | [coe_sumCoords_eq_finsum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/coe-sumcoords-eq-finsum.md) | 706 | `result-track:dd0f9b51351bb0e545e764e074924186916465185a499b2843e0c7f32bcbaa98` |
| 91 | `theorem` | [sumCoords_reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/sumcoords-reindex.md) | 716 | `result-track:4ac9765eef0874fcb4b1151267c4c7643e8bb7ee21b878176528ebf5db1de36f` |
| 92 | `theorem` | [coord_equivFun_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisDefsNamespacedPublic.lean/declarations/coord-equivfun-symm.md) | 720 | `result-track:be91b31c8dad35aa95ab4aa50c3293736a0e3035640a273a2b5816792621e6d6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=154d0558fe94f7515cf2a403711627cbfa31cd0de71e256f02defd22658b5919 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Defs/Variantb2a24f0a3edfe7404f718e8653f420128e6665a069640d1a7d1cf01a756a789f.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Defs/Variantb2a24f0a3edfe7404f718e8653f420128e6665a069640d1a7d1cf01a756a789f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
