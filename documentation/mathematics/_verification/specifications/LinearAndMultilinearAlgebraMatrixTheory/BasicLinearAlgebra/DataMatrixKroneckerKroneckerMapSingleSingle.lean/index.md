# Verification target: Data Matrix Kronecker Kronecker Map Single Single

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4cfbbd38bef87748a48b8d2982fed3c6cf31ca39",
  "lexical_observation_count": 72,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Kronecker/Variantffed4a859b83a48fb9fcd61c3f4750d3e167b753205104edf09e7a0133f7ac87.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4cfbbd38bef87748a48b8d2982fed3c6cf31ca39`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Kronecker/Variantffed4a859b83a48fb9fcd61c3f4750d3e167b753205104edf09e7a0133f7ac87.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Kronecker/Variantffed4a859b83a48fb9fcd61c3f4750d3e167b753205104edf09e7a0133f7ac87.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Block` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Trace` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Associator` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [kroneckerMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/kroneckermap.md) | 55 | `declaration-track:6583da4727c220db39b175686ef4f456e74089b4b97885e2f54e9bb5576eb867` |
| 2 | `theorem` | [kroneckerMap_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/kroneckermap-apply.md) | 60 | `result-track:fefe2d68c6ded07db89eccfd5ec4fe3688648b5824818ff1dfe12400a8b31fb1` |
| 3 | `theorem` | [kroneckerMap_transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/kroneckermap-transpose.md) | 64 | `result-track:7310901d075f92ac369c84cd90ecf3b7210855db0c76544a92041279501b7a4a` |
| 4 | `theorem` | [kroneckerMap_map_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/kroneckermap-map-left.md) | 68 | `result-track:7eb2230d8bfc3b36e9fdceba22466118a092d78a38048cfcdf48af1fb4d964e4` |
| 5 | `theorem` | [kroneckerMap_map_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/kroneckermap-map-right.md) | 72 | `result-track:797b98a19184ddb50ef56c38becdb5effc24c81006d4599095d8de4683d15010` |
| 6 | `theorem` | [kroneckerMap_map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/kroneckermap-map.md) | 76 | `result-track:287782c41c5e24773ca5a72b513fbca8af79a8e93051a249893edb4e8190bf63` |
| 7 | `theorem` | [kroneckerMap_zero_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/kroneckermap-zero-left.md) | 81 | `result-track:7fb8ec65ed955cfeb117e77780f9802e6121f21cc1ecf7130ac7e652fead7038` |
| 8 | `theorem` | [kroneckerMap_zero_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/kroneckermap-zero-right.md) | 86 | `result-track:0cf6b0c635608c7d5c931424e786e4ebe84626b4a9c9e7daa248c04fa373f3f7` |
| 9 | `theorem` | [kroneckerMap_add_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/kroneckermap-add-left.md) | 90 | `result-track:e0a3086a73c5f50539eb3fc70e14b6c2a41b1d89508d5d234c3d01c04b670e96` |
| 10 | `theorem` | [kroneckerMap_add_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/kroneckermap-add-right.md) | 95 | `result-track:9a385c749239aba2136861ff8915680e5edd0d03fc9e6986001cd0a9a3b88bee` |
| 11 | `theorem` | [kroneckerMap_smul_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/kroneckermap-smul-left.md) | 100 | `result-track:18fe9eabe429977466221cbb038914a7634483f5ad027879f4ae23e913550948` |
| 12 | `theorem` | [kroneckerMap_smul_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/kroneckermap-smul-right.md) | 105 | `result-track:4cf619a25e6f4afab07bb37e8f7b041053497374a69c9bfea28c0fc5dd16205a` |
| 13 | `theorem` | [kroneckerMap_single_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/kroneckermap-single-single.md) | 110 | `result-track:456b940d30846bf4ecd88e3158eaa230ea3a583a0249b1e373b5be9fe9a3ab36` |
| 14 | `theorem` | [kroneckerMap_diagonal_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/kroneckermap-diagonal-diagonal.md) | 122 | `result-track:7f587063994185362ea05025a7bb7a72ab23e1bd62f3cd635cebcc05e18156e2` |
| 15 | `theorem` | [kroneckerMap_diagonal_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/kroneckermap-diagonal-right.md) | 128 | `result-track:8e71ce6b10f79167a30b3d430f59f86f69b8a9e4820b9ecaea77c3576a9a7179` |
| 16 | `theorem` | [kroneckerMap_diagonal_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/kroneckermap-diagonal-left.md) | 134 | `result-track:ecc5e1138561c596cae08ae109eefb0c4ae9327e7ec3c0d22cc3b8e9278d0540` |
| 17 | `theorem` | [kroneckerMap_one_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/kroneckermap-one-one.md) | 143 | `result-track:f686f18b7c7e651dd3995941f341dfdf2b43b752206eba7c1fca338a3dca3744` |
| 18 | `theorem` | [kroneckerMap_reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/kroneckermap-reindex.md) | 148 | `result-track:e5cb76ecbd4037ec5057da711b68fbb6af47cb125f551dc0da253e9bddc28a07` |
| 19 | `theorem` | [kroneckerMap_reindex_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/kroneckermap-reindex-left.md) | 155 | `result-track:48bb6449f6bd34febb3ec3bc93ac9d69e22e0e08c598098aa974917c957899a3` |
| 20 | `theorem` | [kroneckerMap_reindex_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/kroneckermap-reindex-right.md) | 161 | `result-track:1befec5ba2610a425898a3d7033797dfbb21c46e7a63fd21f4bc4fc90e8f70ef` |
| 21 | `theorem` | [kroneckerMap_assoc](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/kroneckermap-assoc-source-edition-2.md) | 167 | `result-track:f636c3aa0189275adaaa89a2dd066c9369813dcde62934fa1aad5d42b7dd5b1e` |
| 22 | `theorem` | [kroneckerMap_assoc₁](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/kroneckermap-assoc.md) | 175 | `result-track:d61d9c7a8b032bd2b84905799dab14fc95272ab6c74ab0f077b091ff12bf9c85` |
| 23 | `def` | [kroneckerMapBilinear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/kroneckermapbilinear.md) | 185 | `declaration-track:3fab3dba0fd48d20ea1c5adcb5cb015e50d7d5ad1ffa8d35cdc41e1ef834a8d4` |
| 24 | `theorem` | [kroneckerMapBilinear_mul_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/kroneckermapbilinear-mul-mul.md) | 196 | `result-track:98c28b7b461a9a75a6be5a465241a8e292449781fbf753f84f76d6b387a03499` |
| 25 | `theorem` | [trace_kroneckerMapBilinear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/trace-kroneckermapbilinear.md) | 211 | `result-track:161e9df7babef0953d8be797ceda3e90a0b08daec8da9b5b2aee4acefcc8e764` |
| 26 | `theorem` | [det_kroneckerMapBilinear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/det-kroneckermapbilinear.md) | 221 | `result-track:6f5a419f20d6e71d98d1101de1e12cc281fbb45803660056937f3026b219d073` |
| 27 | `def` | [kronecker](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/kronecker.md) | 253 | `declaration-track:47818970c55835e9e81965f9f6cc2cfeb711cbc0aeaa2fc89cf08532dbbe00b8` |
| 28 | `theorem` | [kronecker_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/kronecker-apply.md) | 262 | `result-track:8b7dab584c03afb0d76c58b4c2e1f392608bc8005425982f3008335fdf0d1d73` |
| 29 | `def` | [kroneckerBilinear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/kroneckerbilinear.md) | 267 | `declaration-track:e38b8fc09a36861053aa3c39cf3c0f7518f59647c06ef918aee42f38f77fb3a0` |
| 30 | `theorem` | [zero_kronecker](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/zero-kronecker.md) | 275 | `result-track:46249eca4f05121904d3d72182657b2c131e2f2325820b257ed745ecf270ba7e` |
| 31 | `theorem` | [kronecker_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/kronecker-zero.md) | 278 | `result-track:84744a2cbe99f8f1733b71d5e825002c4f305c151e296808de7ca9f21c3293e0` |
| 32 | `theorem` | [add_kronecker](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/add-kronecker.md) | 281 | `result-track:ed5ee03dda4a0c456875f1abbe6f16b5cf992d8c3b1cbde9c4216aff5fcde87c` |
| 33 | `theorem` | [kronecker_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/kronecker-add.md) | 285 | `result-track:a43badb61364e7406dc5febbd4e4970e1da6d7a6acc4312f1f90c5cbff07ceb6` |
| 34 | `theorem` | [smul_kronecker](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/smul-kronecker.md) | 289 | `result-track:4b08712a7083dda82ba42478c9c73abb4950de66a8d190551d1882fbc6a35b6f` |
| 35 | `theorem` | [kronecker_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/kronecker-smul.md) | 293 | `result-track:45d1b53f71a798fb43291cc7a527c2d29e71053dd29790b4ed953dbd68a17618` |
| 36 | `theorem` | [single_kronecker_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/single-kronecker-single.md) | 297 | `result-track:2a8a2ed4328a5f42b305debe71c227cc70659ee4497abaea59dab3d0c7f00525` |
| 37 | `theorem` | [diagonal_kronecker_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/diagonal-kronecker-diagonal.md) | 306 | `result-track:f527cd0d71ba0756da9d400c45bfa455e7e06a994c889742b195200d27cfebbe` |
| 38 | `theorem` | [kronecker_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/kronecker-diagonal.md) | 310 | `result-track:91e705c1fc1ba25495ece15debaa46cceacc1e67fddcc8134ee301c86a5fdd07` |
| 39 | `theorem` | [diagonal_kronecker](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/diagonal-kronecker.md) | 314 | `result-track:3b494624289dc44e3209f08d1f4756f5a693a8a33f91eb55ab9146f1e64ba8b1` |
| 40 | `theorem` | [natCast_kronecker_natCast](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/natcast-kronecker-natcast.md) | 320 | `result-track:99545beb8b9462b4ea4acb5eef3359dba0a20b692c7cf1a65f25fd218cb8f9e5` |
| 41 | `theorem` | [kronecker_natCast](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/kronecker-natcast.md) | 324 | `result-track:ac9984586fada17c48fb67a75ab975210f9ea25d317c13b465c4cab00d4dbc14` |
| 42 | `theorem` | [natCast_kronecker](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/natcast-kronecker.md) | 331 | `result-track:e85b017a379e2087df9529363ef0e9d9b6a48bf19553447c7d82d2ecca60a77e` |
| 43 | `theorem` | [kronecker_ofNat](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/kronecker-ofnat.md) | 339 | `result-track:fd0df5ee7d39173732fb268865393d20e43905fd0344202d11923a359e11327e` |
| 44 | `theorem` | [ofNat_kronecker](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/ofnat-kronecker.md) | 344 | `result-track:026e88096561fe6fa6990ad4e1ab7498f2211c56f43b97a5cfef786df6c99f9b` |
| 45 | `theorem` | [one_kronecker_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/one-kronecker-one.md) | 350 | `result-track:b61de5eeb9d167c5572a3471162824b7e810ed0fe6ce494e4c6e3b922286495e` |
| 46 | `theorem` | [kronecker_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/kronecker-one.md) | 354 | `result-track:41e42a174f4c22763e0830fe8b83e0c4a278c6861c2540a79ea431d6ceb2ea00` |
| 47 | `theorem` | [one_kronecker](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/one-kronecker.md) | 358 | `result-track:0800f8bf3fb0b0f7c6529a8e153399389ff351f949d17cecdfd9f3f2b0ec895e` |
| 48 | `theorem` | [mul_kronecker_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/mul-kronecker-mul.md) | 364 | `result-track:750623c948aa3e174e3125fbf57ba9dd31f9a6dd39f410367f595199d776e245` |
| 49 | `theorem` | [kronecker_assoc](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/kronecker-assoc.md) | 370 | `result-track:85f1fd3bea237ada21e1dc307857295123e215f7eaf3d3c9d2b7d9406150cfa2` |
| 50 | `theorem` | [kronecker_assoc'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/kronecker-assoc-source-edition-2.md) | 375 | `result-track:d2a9361176343e794c17b78f64d3f06f134081b327052a91907123c370f891a0` |
| 51 | `theorem` | [trace_kronecker](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/trace-kronecker.md) | 380 | `result-track:30fbe9c5f6fb7fca267eab22aa0308e9a0642fc5c8f66dbb315efbecf76f7925` |
| 52 | `theorem` | [det_kronecker](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/det-kronecker.md) | 384 | `result-track:1f7502067e2b41f5aa3ab619279e3fd2583c4f4da37b105622509209317b3d42` |
| 53 | `def` | [kroneckerTMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/kroneckertmul.md) | 417 | `declaration-track:f006219e07f7abaf168aa765786a3d86ec1f6faf80d6113f8f869b2ead6aaee3` |
| 54 | `theorem` | [kroneckerTMul_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/kroneckertmul-apply.md) | 429 | `result-track:4c13fe039b3101c8d29b5d4b95902638ab59211340e362e4b0155d1fcdbb21cc` |
| 55 | `def` | [kroneckerTMulBilinear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/kroneckertmulbilinear.md) | 434 | `declaration-track:7b8c5d2031d1f4dcbac43bb06c5bfaff2a9e0f4620990e9e6ae865f8557e97ba` |
| 56 | `theorem` | [kroneckerTMulBilinear_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/kroneckertmulbilinear-apply.md) | 439 | `result-track:e97c5d2f86e944a88df83c34462793972b42bb2582859c35d4f48c1c66034f8b` |
| 57 | `theorem` | [zero_kroneckerTMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/zero-kroneckertmul.md) | 446 | `result-track:2b3665afa24d1ffb95327badf9f71e6d239f2f98b0fd50b9ed859d63cedf9062` |
| 58 | `theorem` | [kroneckerTMul_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/kroneckertmul-zero.md) | 449 | `result-track:203910d8441975a4e384991ac8a39ed44977a0998514b62bf9ff80af5bebe891` |
| 59 | `theorem` | [add_kroneckerTMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/add-kroneckertmul.md) | 452 | `result-track:9562b2e92a1960e69025d15fde43731421f6f07e8baa0294698efc16be5beebf` |
| 60 | `theorem` | [kroneckerTMul_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/kroneckertmul-add.md) | 456 | `result-track:ccc725da1e8c69f99aa2bf642fa7c0914126db9617bed538204440535d7e846b` |
| 61 | `theorem` | [smul_kroneckerTMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/smul-kroneckertmul.md) | 460 | `result-track:a00989f508f52bf17447ff9aa7bf9dc921a1c8dffa4f87f2849e12f9c470d185` |
| 62 | `theorem` | [kroneckerTMul_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/kroneckertmul-smul.md) | 464 | `result-track:0e9e26a8ba3eb239e0a4bf780d5e54e90d2371222c0b6c49b5c9a4cf9e94ee55` |
| 63 | `theorem` | [single_kroneckerTMul_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/single-kroneckertmul-single.md) | 468 | `result-track:74135acfa27b4f2d37e8a88b8cd2b374a5fcda183fd910160f71036af614b704` |
| 64 | `theorem` | [diagonal_kroneckerTMul_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/diagonal-kroneckertmul-diagonal.md) | 477 | `result-track:13c5e848326cf9931d528113f68952fa60867fb2b6a8964784ef3ba51df6615b` |
| 65 | `theorem` | [kroneckerTMul_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/kroneckertmul-diagonal.md) | 481 | `result-track:6c1b2682f5cce0da1e624719ce1f8f41b7052141303e905fd6942f93986d1026` |
| 66 | `theorem` | [diagonal_kroneckerTMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/diagonal-kroneckertmul.md) | 485 | `result-track:3aa715c13074d36d1dcf4ac24d2008a1b76e205bf9e60a2504c764e8ed23bfc5` |
| 67 | `theorem` | [kroneckerTMul_assoc](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/kroneckertmul-assoc-source-edition-2.md) | 492 | `result-track:920b2547b911c31bca94887a2bac1f265df3bd4eca17dd1d65145f9f7c16dd1a` |
| 68 | `theorem` | [kroneckerTMul_assoc'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/kroneckertmul-assoc.md) | 499 | `result-track:276d00ab6c758fe5b23dffb99d42bd8ae009301cdb59675d270c320b3c172681` |
| 69 | `theorem` | [trace_kroneckerTMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/trace-kroneckertmul.md) | 504 | `result-track:e99498a67014bdb7e754dc1f01e33c8e40f472ed58b08441f496c379162cc352` |
| 70 | `theorem` | [one_kroneckerTMul_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/one-kroneckertmul-one.md) | 521 | `result-track:8f56274ba0ea53f1f644322f4c7bbf3b4076cb7ab5d1d8d7c60d26cce907f6c2` |
| 71 | `theorem` | [mul_kroneckerTMul_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/mul-kroneckertmul-mul.md) | 526 | `result-track:95f72ce6ffa29fefd19bf40a5348dcd9339bb54202a9ca9be108025ac8188890` |
| 72 | `theorem` | [det_kroneckerTMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixKroneckerKroneckerMapSingleSingle.lean/declarations/det-kroneckertmul.md) | 538 | `result-track:3d3855aaf88a188f2fcc044ff50263ac165ab473103dc95eb39806aa32da3674` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=48f6b431efb94a6a6b2aa3cc0c68d176ac499700cf95f7f95a9753f78b1400a4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Kronecker/Variantffed4a859b83a48fb9fcd61c3f4750d3e167b753205104edf09e7a0133f7ac87.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Kronecker/Variantffed4a859b83a48fb9fcd61c3f4750d3e167b753205104edf09e7a0133f7ac87.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
