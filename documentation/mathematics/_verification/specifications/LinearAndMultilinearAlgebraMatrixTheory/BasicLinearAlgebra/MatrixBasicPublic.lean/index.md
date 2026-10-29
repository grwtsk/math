# Verification target: Matrix Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "059cf13371418aa322f014e88dca4ec9a6e7cf28",
  "lexical_observation_count": 123,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantfd8cab9e5ab6568a12306feab85f74b81487d99b1b3fac6769e4cd06c1d7722c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `059cf13371418aa322f014e88dca4ec9a6e7cf28`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantfd8cab9e5ab6568a12306feab85f74b81487d99b1b3fac6769e4cd06c1d7722c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variantfd8cab9e5ab6568a12306feab85f74b81487d99b1b3fac6769e4cd06c1d7722c.lean.json)

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
| 1 | `instance` | [decidableEq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/decidableeq.md) | 45 | `declaration-track:98ccd48c3891f613f0d332c53acbbedad62515258a3ae7d7f47da30bf075c36d` |
| 2 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/instance.md) | 48 | `declaration-track:50b3acdbea9adb2c3827c41538e7c91cd8dc62231b71719ff818338c5dd4a10f` |
| 3 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/instance-source-edition-4.md) | 51 | `declaration-track:e16bd5c7acf2bed2ef5e75cae0b37fde40e1d7ef270ef66fc1690d1995413b56` |
| 4 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/instance-source-edition-2.md) | 54 | `declaration-track:719e397a6709d8697c997683b476a084376e09125213f9942dbd376d0c8a623b` |
| 5 | `def` | [ofLinearEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/oflinearequiv.md) | 60 | `declaration-track:cc17c37d4e327650ca161a8a6f19ba02838e6cac7d90f59da8bf178b563267bd` |
| 6 | `lemma` | [coe_ofLinearEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/coe-oflinearequiv.md) | 64 | `result-track:d80318c7f1331a4ed33408cf8be8c15731e98e2c3286c5d70d201dae3874efd5` |
| 7 | `lemma` | [coe_ofLinearEquiv_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/coe-oflinearequiv-symm.md) | 66 | `result-track:e561e1aad17572933cccfa2b60c2b3c2e15a2c26700df45bc49f77d84500d100` |
| 8 | `theorem` | [sum_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/sum-apply.md) | 71 | `result-track:6fbb57af5d71e8499a5e5b7bd87924ee4c559978cc4df847a3679c5589fd0f38` |
| 9 | `def` | [diagonalAddMonoidHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/diagonaladdmonoidhom.md) | 89 | `declaration-track:52d31948c3690fcb2620f5715b7b8ce7ed01ae99b57688ce9eb1b82a0831fb41` |
| 10 | `def` | [diagonalLinearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/diagonallinearmap.md) | 98 | `declaration-track:36e6e04112a7818d40cb811782db6fb6e42d2298fe9bc8b7dd60e5eb0ec54a87` |
| 11 | `lemma` | [zero_le_one_elem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/zero-le-one-elem.md) | 107 | `result-track:c29eb9d45e9f72ea5bef2c7c22d941feb837868fead4a165bf3ca468cbba7984` |
| 12 | `lemma` | [zero_le_one_row](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/zero-le-one-row.md) | 114 | `result-track:513ae3d7af6120c41ceeab87a43fe659bd76af45d03232427c1134757911d500` |
| 13 | `def` | [diagAddMonoidHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/diagaddmonoidhom.md) | 128 | `declaration-track:f43bbfcea1fd996b6fade8c853591d6081644e61b28bf0bc2f86f6ca5210b835` |
| 14 | `def` | [diagLinearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/diaglinearmap.md) | 137 | `declaration-track:70b9aa3641858e0d2bcdf367b394c1511a6ccf36e459a43b026fbae37451302a` |
| 15 | `theorem` | [diag_list_sum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/diag-list-sum.md) | 143 | `result-track:ea7d7d2cf82f1cd27ade666b17fa389912434bc78f1a249cd13239ea2cdb4efd` |
| 16 | `theorem` | [diag_multiset_sum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/diag-multiset-sum.md) | 147 | `result-track:87a60b88d0a3863d9492794e46b97f392b0ef5e9948e13a5dea965eba6f621e8` |
| 17 | `theorem` | [diag_sum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/diag-sum.md) | 152 | `result-track:0608330a4d6fe8915fab8ef1f5d4df18b50acfea152e19fbb8a171df08c2e29f` |
| 18 | `def` | [diagonalRingHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/diagonalringhom.md) | 168 | `declaration-track:fdf2e96aa7a8642cc12b9665c8ac8949fdb16475905234e26241c983a996076e` |
| 19 | `theorem` | [diagonal_pow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/diagonal-pow.md) | 180 | `result-track:35949c8315ee61efb735e7f090b47d77a751145a1011614a5527d0bb4289f883` |
| 20 | `def` | [scalar](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/scalar.md) | 187 | `declaration-track:0b4fb349aa10b33ca42c64209456aae3eaa47e149c7f61a8b50350d326379fce` |
| 21 | `theorem` | [scalar_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/scalar-apply.md) | 195 | `result-track:b9b09c601e03a20e523182aa96ef7b265535e9c265af7c75cee0375e97e5c982` |
| 22 | `theorem` | [scalar_inj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/scalar-inj.md) | 198 | `result-track:1ac6da6edce047e2901ce6e3010d52c9f8646fb3e64bef3935f732079e90631d` |
| 23 | `theorem` | [scalar_comm_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/scalar-comm-iff.md) | 202 | `result-track:409c68b194b4b3a59a140adf66400f6716b04501b9b53ee6a84a1c4140a0c596` |
| 24 | `theorem` | [scalar_commute_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/scalar-commute-iff.md) | 206 | `result-track:6d201fcd5e97cd73b5821db84d66f17fb0b98bc1bbc165127d214a6ea236fdc1` |
| 25 | `theorem` | [scalar_comm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/scalar-comm.md) | 211 | `result-track:7cb96bd00461363f5292ff4b9de1c082cc5d52a06b2110892bcfd0a772f2ad16` |
| 26 | `theorem` | [scalar_commute](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/scalar-commute.md) | 215 | `result-track:8cfed41d01a28fbe7d7ed6fa08018ef6e182abb2215d58dcd09cb59c8b7c19b5` |
| 27 | `instance` | [instAlgebra](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/instalgebra.md) | 227 | `declaration-track:3e1de017ff8757cc2e31d35a4ae1f6a338a9b720c630446d1b7110a62e629745` |
| 28 | `theorem` | [algebraMap_matrix_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/algebramap-matrix-apply.md) | 232 | `result-track:e254c5e9df8d13cd3f79495bac149481db0564f11eed38132b5d022d7e811e49` |
| 29 | `theorem` | [algebraMap_eq_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/algebramap-eq-diagonal.md) | 235 | `result-track:e5d006c9bd03f88f296203e9c03d72997abd37211b347eadf0ae4e5fc98be236` |
| 30 | `theorem` | [algebraMap_eq_diagonalRingHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/algebramap-eq-diagonalringhom.md) | 238 | `result-track:b0eff88bc801f9d4e49f53a0518ccae89549f929481dbb4469d2149e7d099b38` |
| 31 | `theorem` | [map_algebraMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/map-algebramap.md) | 242 | `result-track:5ce79382de96dc6cf660a82752f83963482646e46affa1d60f074be937b892ec` |
| 32 | `def` | [diagonalAlgHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/diagonalalghom.md) | 252 | `declaration-track:18e8d90d47830b036d198a03d46ed5797d239af35b3a1fcc27595e2eafee60d0` |
| 33 | `def` | [scalarAlgHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/scalaralghom.md) | 260 | `declaration-track:4dfa316ac5b7227bea9a52f79a23ae2be0cf6eddde1e6efa99979bd9ace3a955` |
| 34 | `theorem` | [scalarAlgHom_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/scalaralghom-apply.md) | 264 | `result-track:2e7c61204dfc3c684bb9b71457bcb999dbce8723d83a59d25c03ea4a22fc8aa5` |
| 35 | `def` | [entryAddHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/entryaddhom.md) | 275 | `declaration-track:fd2c002850a9e33d4a2ad5bb4550d753fd62fc0a3cb82f9040d9eabe61c9b72f` |
| 36 | `lemma` | [entryAddHom_eq_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/entryaddhom-eq-comp.md) | 281 | `result-track:44f1ef8d3e33f3f0008090f484bd7cdc879dd2fb93cad636c118cee2d8f9db21` |
| 37 | `def` | [entryAddMonoidHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/entryaddmonoidhom.md) | 299 | `declaration-track:ec4e536e5296eaeacd904081f93bee36feacc58f36f58668c315f1d43e84f5e7` |
| 38 | `lemma` | [entryAddMonoidHom_eq_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/entryaddmonoidhom-eq-comp.md) | 306 | `result-track:e6ba75596d2cf03616ecf766fa2d7954ce073b94a734945d02f1e353a865f69a` |
| 39 | `lemma` | [evalAddMonoidHom_comp_diagAddMonoidHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/evaladdmonoidhom-comp-diagaddmonoidhom.md) | 312 | `result-track:81482f2b67ecffb80e2e4b89b08cf7a258fee55afe1421bc49cdd653d12879d8` |
| 40 | `lemma` | [entryAddMonoidHom_toAddHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/entryaddmonoidhom-toaddhom.md) | 316 | `result-track:5c6692e299080d3ed3435d65ef61d06b37ab1ec828ef697c4c22c89f183dee4d` |
| 41 | `def` | [entryLinearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/entrylinearmap.md) | 331 | `declaration-track:51349ddd9a920da3b26284802dff62562fc1e3df15ffd7853d9f9e629b4b7310` |
| 42 | `lemma` | [entryLinearMap_eq_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/entrylinearmap-eq-comp.md) | 339 | `result-track:c52f2a55cb07437bf317becbb8e14ff78994e5188c8803ba16087b829aa9df2a` |
| 43 | `lemma` | [proj_comp_diagLinearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/proj-comp-diaglinearmap.md) | 344 | `result-track:fdbaff6b49b634602c805b8f9eb76fd56b44f123460d173ef1c48b4fac06712d` |
| 44 | `lemma` | [entryLinearMap_toAddMonoidHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/entrylinearmap-toaddmonoidhom.md) | 348 | `result-track:b54af426033246e1481a43bcd0d57a156b000d5fa27b77a283a8c27002147fbc` |
| 45 | `lemma` | [entryLinearMap_toAddHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/entrylinearmap-toaddhom.md) | 351 | `result-track:1826ceac566288897d48bcb5657c8d49a22d7b234d19ac566b3e9fc48fc3e509` |
| 46 | `def` | [mapMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/mapmatrix-source-edition-6.md) | 368 | `declaration-track:b3fb3b442ef7e5e2aae3581ca31236cd94b60c306d9b72ba5111ab0db241b6be` |
| 47 | `theorem` | [mapMatrix_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/mapmatrix-refl-source-edition-5.md) | 375 | `result-track:d1de667c4140237afbf6b5a2268f422924c9505a2b446fd9acacf5098c95f394` |
| 48 | `theorem` | [mapMatrix_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/mapmatrix-symm.md) | 379 | `result-track:0d814841630af4b7c20a9faf79b4cf67cecd68bbc4c3b48b3d3c3807dd85f945` |
| 49 | `theorem` | [mapMatrix_trans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/mapmatrix-trans-source-edition-4.md) | 383 | `result-track:6e6150d8a5883ab8cf40bee12dd446133ec2a00b4c00e0e4a109b3dff0a25dde` |
| 50 | `def` | [mapMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/mapmatrix-source-edition-3.md) | 397 | `declaration-track:517afd50c6e96d9c7b946800a017073a437f6a70079b707f1c645dae658a28c8` |
| 51 | `theorem` | [mapMatrix_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/mapmatrix-id-source-edition-4.md) | 403 | `result-track:a1f731bc0c9808e6e167dfc83e2d9dedc51bb0309162b50a264971e10513420a` |
| 52 | `theorem` | [mapMatrix_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/mapmatrix-comp-source-edition-4.md) | 407 | `result-track:e2cce607df9ad835f5856747611b4cc8049ca4dcc8cae024494c8261e6b3bb48` |
| 53 | `lemma` | [entryAddMonoidHom_comp_mapMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/entryaddmonoidhom-comp-mapmatrix.md) | 411 | `result-track:dd467094ea1b21a8d3265b9af19f370e3755e44f312c9cb48254d26d2878512f` |
| 54 | `theorem` | [mapMatrix_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/mapmatrix-zero.md) | 415 | `result-track:6f77dfd6ef1759ea148ac570f3773777b7df98b1e20d5d094a6509db775d086d` |
| 55 | `theorem` | [mapMatrix_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/mapmatrix-add.md) | 420 | `result-track:63abb31c54905cebe9e66c8ee3544b719c0bc4895ff520aa31c8e36ed1798600` |
| 56 | `theorem` | [mapMatrix_sub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/mapmatrix-sub.md) | 424 | `result-track:c84ada93443dbf0c884c2874f624094f177f2774ca13e3afb0ec9b1fc3b154ec` |
| 57 | `theorem` | [mapMatrix_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/mapmatrix-neg.md) | 428 | `result-track:047056732d1a22ec3ef631e7249abba403e49c29644e85c2b6ba44ff2fd4b8c8` |
| 58 | `theorem` | [mapMatrix_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/mapmatrix-smul-source-edition-2.md) | 432 | `result-track:df3a192a8ba4d50edffcd7aa108ab198d48cef01b916493fec3d14e7a777e9d1` |
| 59 | `def` | [mapMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/mapmatrix-source-edition-7.md) | 445 | `declaration-track:e50867e1ea9698653f100232cff77ed2e46a772ee218d4af6a9f5e6df60c1f93` |
| 60 | `theorem` | [mapMatrix_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/mapmatrix-refl-source-edition-2.md) | 452 | `result-track:42ef493d6bc2849465630fba3b0fd915c34fd033222644837b433d7ae4753044` |
| 61 | `theorem` | [mapMatrix_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/mapmatrix-symm-source-edition-5.md) | 456 | `result-track:7e44226b10fd7b7ab8ef8bf5a304a5f0c7403f3a39d6e5b068093827f89af089` |
| 62 | `theorem` | [mapMatrix_trans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/mapmatrix-trans-source-edition-5.md) | 460 | `result-track:fb4e63d1b913d13814ba52a0b39720fde8ce71712fa0fd2009d3c885cfcf047f` |
| 63 | `lemma` | [entryAddHom_comp_mapMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/entryaddhom-comp-mapmatrix.md) | 464 | `result-track:7dbdf8757c4b4d506cfc95d1bcd5af67988f2c7786fdee93542333adc37d0cc0` |
| 64 | `def` | [mapMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/mapmatrix-source-edition-5.md) | 482 | `declaration-track:afebebff0e6025dfbca583c454f2409f405602e9d314e31624dfebf03effb3e3` |
| 65 | `theorem` | [mapMatrix_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/mapmatrix-id-source-edition-3.md) | 488 | `result-track:7bf20d6897c65f8cf95ea930bff26097228c918d4b43a9983bd72f80ee3e2048` |
| 66 | `theorem` | [mapMatrix_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/mapmatrix-comp.md) | 492 | `result-track:5993443ebeb8cd12101147f125ec5cb4a745e8994e6dfe926cd9f31c209eb024` |
| 67 | `lemma` | [entryLinearMap_comp_mapMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/entrylinearmap-comp-mapmatrix.md) | 496 | `result-track:aa75d2aeba49b027423b2b7f2f070f0a29491769c68a03b07c9626eb463a6a85` |
| 68 | `theorem` | [mapMatrix_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/mapmatrix-zero-source-edition-2.md) | 500 | `result-track:cc00111af48968ca8a289cff06803c5b09c8a15280e72d9a44a6a581c861c567` |
| 69 | `theorem` | [mapMatrix_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/mapmatrix-add-source-edition-2.md) | 503 | `result-track:6d5ee1969c5d331282ac53ea48b343cd9c3305c154f7f9d608b69ac6e9a4be23` |
| 70 | `theorem` | [mapMatrix_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/mapmatrix-smul.md) | 507 | `result-track:909077dcae5306bdb1becfc9e116597cb087ee598ee00701c18193a0e1266839` |
| 71 | `def` | [mapMatrixLinear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/mapmatrixlinear.md) | 516 | `declaration-track:d8cb1181d6f2e8bf56aa970c4bcbf82498d4f8cbcaa81032c6235ce04d7341fb` |
| 72 | `theorem` | [mapMatrix_sub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/mapmatrix-sub-source-edition-2.md) | 529 | `result-track:d0f2b2cf6916e7d9dc52a9e3e98b4c5c02a1326e51aa907f9528e45cbd5f10f3` |
| 73 | `theorem` | [mapMatrix_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/mapmatrix-neg-source-edition-2.md) | 533 | `result-track:37da23a0e7673b897de51eeb18a6903527f492441fa1364d143d6cfaed4fbadd` |
| 74 | `def` | [mapMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/mapmatrix-source-edition-2.md) | 554 | `declaration-track:5012ce1c6d21db098ffd46afc113ef79885e80ddc27b59f0244412c118d8c72d` |
| 75 | `theorem` | [mapMatrix_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/mapmatrix-refl-source-edition-4.md) | 561 | `result-track:bfe50cb0c4441a46f26e4426e2f2e806faced1a0338323a473e228301a398188` |
| 76 | `theorem` | [mapMatrix_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/mapmatrix-symm-source-edition-3.md) | 565 | `result-track:59a8c9ac660d9fd1eb1fdbf71185490abaff378401571c8364c71e2ca7fbd23c` |
| 77 | `theorem` | [mapMatrix_trans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/mapmatrix-trans-source-edition-3.md) | 570 | `result-track:4c60c6cba69a6b060a41914f13dafa58cccead72f97b37dddab9fb37c156366d` |
| 78 | `lemma` | [mapMatrix_toLinearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/mapmatrix-tolinearmap.md) | 574 | `result-track:7af5e8c5ef1dc1494fb584e8ad85fded5f1210af7e7aa21edf939bae792a95cf` |
| 79 | `lemma` | [entryLinearMap_comp_mapMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/entrylinearmap-comp-mapmatrix-source-edition-2.md) | 578 | `result-track:ccecc73acda77e2c30c4d2c10e96520f44f8126aaa9ef998195f7fefe1923ffc` |
| 80 | `def` | [mapMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/mapmatrix.md) | 593 | `declaration-track:371007c2825b8f5c48e28f3b0207caa3ed3955bcb75a093e78a5ef85d080d51f` |
| 81 | `theorem` | [mapMatrix_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/mapmatrix-id-source-edition-2.md) | 600 | `result-track:2d61ed6720f374941af0a7f9c56519d9831bae0803ec07ada0aa771576c9e3ff` |
| 82 | `theorem` | [mapMatrix_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/mapmatrix-comp-source-edition-2.md) | 604 | `result-track:82a053b41a9e9378f2cbef2c7734a8283675f39d2272cc6c60617825123d2464` |
| 83 | `lemma` | [_root_.Matrix.map_pow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/root-matrix-map-pow.md) | 608 | `result-track:6af077af8ac4a8d2c15abcaea965814829b7602e5cb06413d021bd49acc45da1` |
| 84 | `def` | [mapMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/mapmatrix-source-edition-4.md) | 622 | `declaration-track:71ecd38394d10b888eb534ebeb77036203d273826dfca75b682500e9a630383e` |
| 85 | `theorem` | [mapMatrix_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/mapmatrix-refl-source-edition-3.md) | 629 | `result-track:969ecaa6d0f2308d18ea385be9659aec5d133f50f105a5834045a7be4881f8b3` |
| 86 | `theorem` | [mapMatrix_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/mapmatrix-symm-source-edition-2.md) | 633 | `result-track:2267056a42af66bd9c27b265f4726bcfddf41de1bc75774e1eabcd6a099e8027` |
| 87 | `theorem` | [mapMatrix_trans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/mapmatrix-trans-source-edition-2.md) | 637 | `result-track:494dfed33d156c7503718e0d7d0436212c84c8f44d2a56ac3c2ca7a8d25dab10` |
| 88 | `def` | [mopMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/mopmatrix.md) | 647 | `declaration-track:2e69fc95ead26fbdf89df83b13735cb48dc593686067ed041cceb05d58b2b415` |
| 89 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/instance-source-edition-3.md) | 655 | `declaration-track:a3c6f685c86a9afb2b362f23638c67885f75de0493ba32415bca66ff29254314` |
| 90 | `theorem` | [MulOpposite.isStablyFiniteRing_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/mulopposite-isstablyfinitering-iff.md) | 660 | `result-track:67392b589577581c2d1765f04c83c0b82ab87636a4f3c31144c2b17539ce8cbf` |
| 91 | `def` | [mapMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/mapmatrix-source-edition-9.md) | 677 | `declaration-track:fcc9b95101e9a1d61cbb01d6d2bb475b6c15f1eb22e5c369cb08713b30c83f15` |
| 92 | `theorem` | [mapMatrix_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/mapmatrix-id.md) | 683 | `result-track:1b1a9fd1a8f5dde41f4c26917f0ca344f636c5bad4cf38733b75c67c8ea55f11` |
| 93 | `theorem` | [mapMatrix_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/mapmatrix-comp-source-edition-3.md) | 687 | `result-track:b9bd6fea6b582eaa05d0b0ca2701656e70b6df871e8dd080bb8fd82759c12b45` |
| 94 | `def` | [mapMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/mapmatrix-source-edition-8.md) | 702 | `declaration-track:f99569dc9636b8c7a23117034ba25ca549fa539da030f3b6ea550e34eabceafd` |
| 95 | `theorem` | [mapMatrix_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/mapmatrix-refl.md) | 709 | `result-track:01949f4b0e85e76ae0c97df047ed84cf86defc3cfc4ccb8aa8603313aab0833c` |
| 96 | `theorem` | [mapMatrix_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/mapmatrix-symm-source-edition-4.md) | 713 | `result-track:69502e6ace888372b5b17aa573920669ab80f4fcfaa3d5e3ab84cee02378396f` |
| 97 | `theorem` | [mapMatrix_trans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/mapmatrix-trans.md) | 718 | `result-track:481f4baa85c4c53b5cc738edbc1234cef43a63961d9b7642a6c776ecd689accf` |
| 98 | `def` | [mopMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/mopmatrix-source-edition-2.md) | 727 | `declaration-track:3f98251beb2db02fd0120958843f7c8628021db569e2be6e025c4da684f81923` |
| 99 | `def` | [matrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/matrix-source-edition-4.md) | 742 | `declaration-track:c9e11729b2d831073a6623cf6b09ae0fe2237c51ac03fa24b538309dc45ceec9` |
| 100 | `def` | [matrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/matrix-source-edition-2.md) | 757 | `declaration-track:105f2e2d4d48853264f030838736f6ea78b12de199e142486a13cd7a60e81d1a` |
| 101 | `def` | [matrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/matrix-source-edition-3.md) | 772 | `declaration-track:187bce200c5ca0a38f30d6b1aac9883242b220f87e24d4e0493a5df421e34012` |
| 102 | `def` | [matrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/matrix-source-edition-5.md) | 788 | `declaration-track:f70da88afdcbc898e35ec7c70dd6c5297a232b78dcb54972e637e9799eec2a42` |
| 103 | `def` | [matrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/matrix.md) | 802 | `declaration-track:05f31ec1d5d25e95373e3a178966dfee2a59a17276ac85062f4c6e823cb9139d` |
| 104 | `def` | [piEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/piequiv.md) | 817 | `declaration-track:563669f07742c2de008497d8704fda05bbe65e54a5f7507cac19a9ae975663b4` |
| 105 | `def` | [piAddEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/piaddequiv.md) | 824 | `declaration-track:37bb5c869a57170d35bbb0e1d77902d506836e09bdc0feec388f1f80fedb4b20` |
| 106 | `def` | [piLinearEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/pilinearequiv.md) | 829 | `declaration-track:c2b83298fda0e3a4a71496f87cd4f823f084fe4863b045f2f4c6ba24f1ed23f2` |
| 107 | `def` | [piRingEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/piringequiv.md) | 835 | `declaration-track:f019b6de4b9cb4f37abf2ca981e8ac234a89701578c0ece5b4a3e305c4659ba6` |
| 108 | `def` | [piAlgEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/pialgequiv.md) | 841 | `declaration-track:de6d4e1be19667803ea52eb0233682fbc390559971450d5844b6e326e8ed6859` |
| 109 | `def` | [transposeAddEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/transposeaddequiv.md) | 856 | `declaration-track:b3da53a9b02287c201ea6c68330047e048b6310038e4f4fa0a432cf401c44803` |
| 110 | `theorem` | [transposeAddEquiv_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/transposeaddequiv-symm.md) | 864 | `result-track:4dd1e65fc09338e601ff9320390b10f22af1fc5a0f4121253517f78911ee357c` |
| 111 | `theorem` | [transpose_list_sum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/transpose-list-sum.md) | 869 | `result-track:7cdaf4042f89a4c6f132681ccb9d583374980caeb49442341c227c3b35ec41bb` |
| 112 | `theorem` | [transpose_multiset_sum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/transpose-multiset-sum.md) | 873 | `result-track:46c75e4cccfa20ec69ed672e4819b3d0c915d1792cc00ead27baf32f8d698b75` |
| 113 | `theorem` | [transpose_sum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/transpose-sum.md) | 877 | `result-track:1555572b3b919e9abd247f9096ba86d6fb1929b17d8f9909696d727c17a9382b` |
| 114 | `def` | [transposeLinearEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/transposelinearequiv.md) | 885 | `declaration-track:c778da6814f58bd0f260aadcd06eaab98bc50842d1843950d80a9410322708a3` |
| 115 | `theorem` | [transposeLinearEquiv_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/transposelinearequiv-symm.md) | 891 | `result-track:f2950126c187d9f357ae358e01493ac5cd043578eb2120442207444032c8cd9d` |
| 116 | `def` | [transposeRingEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/transposeringequiv.md) | 903 | `declaration-track:62465c2e81cbccebba1be8b53dec833af2a0b7603c37d0cb89be3a8d9a35c26e` |
| 117 | `theorem` | [transpose_pow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/transpose-pow.md) | 911 | `result-track:c64c21cceff11e91711559c961bb8e6be63b4a8e89345a60a235e8cce5c38281` |
| 118 | `theorem` | [transpose_list_prod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/transpose-list-prod.md) | 915 | `result-track:605faa38fbea27bf85c83125bdf6db29a4cc6d95fb4efba7bc9fe48503af3cef` |
| 119 | `def` | [transposeAlgEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/transposealgequiv.md) | 926 | `declaration-track:f3559804676f3c076eff298406fe11dfbcf79c694ffb68af1c766f5d61732ff3` |
| 120 | `theorem` | [sum_mulVec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/sum-mulvec.md) | 936 | `result-track:aa1d292eb10d5b85da53ade9cfaffd8c1002210f62e1339bae8e452e99596dfe` |
| 121 | `theorem` | [mulVec_sum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/mulvec-sum.md) | 942 | `result-track:c07abeb8dd57f9c0fa670bd31c3a01792aa43364f2d5e0821ba379273f9ec746` |
| 122 | `theorem` | [sum_vecMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/sum-vecmul.md) | 947 | `result-track:f86102dc92abe3ef161270e1dc35783db9521f085d6cd99e62bc2e7d4f30daf1` |
| 123 | `theorem` | [vecMul_sum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicPublic.lean/declarations/vecmul-sum.md) | 952 | `result-track:2771b7f09f8b02542acc2aa7cbeb7adb63c35c99471401ddc03db0eea66d7f5c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=928e0f35bad85db8a166fde64bc3299b67ad4a06f8021de278912baee1019858 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variantfd8cab9e5ab6568a12306feab85f74b81487d99b1b3fac6769e4cd06c1d7722c.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variantfd8cab9e5ab6568a12306feab85f74b81487d99b1b3fac6769e4cd06c1d7722c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
