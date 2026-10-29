# Verification target: Linear Algebra Matrix Rank Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31faae9f47694f8f386f96f3529dfb84a0d6fb2a",
  "lexical_observation_count": 72,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Rank/Variant4ce457849b67eca2d37842f1ebcac1dea88f16a202f5c6dfceb4bb6c6047e262.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31faae9f47694f8f386f96f3529dfb84a0d6fb2a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Rank/Variant4ce457849b67eca2d37842f1ebcac1dea88f16a202f5c6dfceb4bb6c6047e262.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Rank/Variant4ce457849b67eca2d37842f1ebcac1dea88f16a202f5c6dfceb4bb6c6047e262.lean.json)

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
| 1 | `def` | [cRank](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/crank.md) | 63 | `declaration-track:e7eaedcc512f3e02b91f71f8de7a25172febf9db6e3381d0e5172b8a0840cd3f` |
| 2 | `theorem` | [cRank_subsingleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/crank-subsingleton.md) | 66 | `result-track:d12574a59b0b9fef257f66dfce16620aabbd495c8c7acebddf06b2fd2f211308` |
| 3 | `lemma` | [cRank_toNat_eq_finrank](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/crank-tonat-eq-finrank.md) | 69 | `result-track:741004d37e1d5358aeaec34916c1b9cac49b1a6a8cd3ff6eccc8000b9087e1b3` |
| 4 | `lemma` | [lift_cRank_submatrix_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/lift-crank-submatrix-le.md) | 72 | `result-track:8740d979206c8ebbd5e01605c12a42d729baee2be7cdbf75dca41c86824400aa` |
| 5 | `lemma` | [cRank_submatrix_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/crank-submatrix-le.md) | 87 | `result-track:8552b46a962db0f90dff0ffbc677171cd6448b396657f4e075785d92d0228776` |
| 6 | `lemma` | [cRank_le_card_height](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/crank-le-card-height.md) | 91 | `result-track:1d002126c7d2c90d8aaa01c2faf6095dbc6b65134a5253699a5e36500eb27a2e` |
| 7 | `lemma` | [cRank_le_card_width](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/crank-le-card-width.md) | 95 | `result-track:26550572feb20c21afae8c85766bee501ae9a47f39434fd4f56490647d872fae` |
| 8 | `def` | [eRank](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/erank.md) | 101 | `declaration-track:714075abc3d56dd35fd66bf3645c35012abb98d70469ccc7bf6b7d6a23af6fd9` |
| 9 | `theorem` | [eRank_subsingleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/erank-subsingleton.md) | 104 | `result-track:c150d96f08dafb029788ecfaa92d6bda0e4574ed585ccc79b6b421ca3675e8c4` |
| 10 | `lemma` | [eRank_toNat_eq_finrank](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/erank-tonat-eq-finrank.md) | 107 | `result-track:ab126f260092d3e79f7e901b7c3c06cac24ee9e987ac084f1e7f96753e663058` |
| 11 | `lemma` | [eRank_submatrix_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/erank-submatrix-le.md) | 111 | `result-track:27659bca68be812e6f5f0f121047f30e1b3bd998bded53f0536192dc7ce8a418` |
| 12 | `lemma` | [eRank_le_card_width](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/erank-le-card-width.md) | 115 | `result-track:aec85354e42f984e4f5cf262a5017422d28fefa148b1f92e8352c4d5d859fa4c` |
| 13 | `lemma` | [eRank_le_card_height](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/erank-le-card-height.md) | 122 | `result-track:6a76d7c24bc006ae19d16fc0447a4b8181896e88991a7a746f9047c98c4941f4` |
| 14 | `def` | [rank](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/rank.md) | 134 | `declaration-track:44fce8c5cfa81b4814f55da36ae03ed38434cb7c8aac1b8db37c5e0d85c3a72b` |
| 15 | `theorem` | [rank_subsingleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/rank-subsingleton.md) | 138 | `result-track:6042f24f4cdde6e1bc7fcddc5c6d0b1529a8afec45b4e40254fe2094ab1d1511` |
| 16 | `theorem` | [cRank_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/crank-one.md) | 142 | `result-track:d392025b169002348b89f87c2a64fe520e048f06e49ff47c65fbffdf0fc41190` |
| 17 | `theorem` | [eRank_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/erank-one.md) | 149 | `result-track:1ccbc556bbe9b8ed15d3449d1f9085a76d0d3dd0fcbdc8b659ef450f4e469ec6` |
| 18 | `theorem` | [rank_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/rank-one.md) | 154 | `result-track:e12bd3f90e983355e01e3b558898e26e2fed270bc5f191aa252b9823fae9bb10` |
| 19 | `theorem` | [rank_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/rank-zero.md) | 159 | `result-track:5d88694fa4e5837115280e37079b994e16860f8ff23f27d0e36e00e544da2a97` |
| 20 | `theorem` | [cRank_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/crank-zero.md) | 163 | `result-track:d53c935f02b359c19cfdfff6b835a5d04552dccfd7a28ddc3861be12be783169` |
| 21 | `theorem` | [eRank_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/erank-zero.md) | 170 | `result-track:5207aab1a9861f36a47b6492a4e7a0067194e6fc53037bcc55be50781b9dab64` |
| 22 | `theorem` | [rank_le_card_width](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/rank-le-card-width.md) | 173 | `result-track:2f1ecac091f4eeffef2a84ca7517305b3e340c57f65a014acdc1a955902f6341` |
| 23 | `theorem` | [rank_le_width](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/rank-le-width.md) | 177 | `result-track:95beb2bf590c3c2279b9baded2d04fc618c6c0102c74afa57c4a96a2870456d6` |
| 24 | `theorem` | [rank_mul_le_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/rank-mul-le-left.md) | 181 | `result-track:661efa2b4bdbc697c5ee50107fd7ba11e8f16edeb7fd6a401f10dc56cb9cee13` |
| 25 | `theorem` | [rank_mul_le_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/rank-mul-le-right.md) | 187 | `result-track:dcef8f4673f1d30b4d57fc4bf90eecfa8eb468a06297cd219e6879685a6526a6` |
| 26 | `theorem` | [rank_mul_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/rank-mul-le.md) | 194 | `result-track:131e5eb7431ff4ac2cb98881829cab6698eb5ca674fabd631a52d163e79a21c1` |
| 27 | `theorem` | [rank_vecMulVec_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/rank-vecmulvec-le.md) | 198 | `result-track:d9d7184431725406b44804c6dbc532fbe098414d5a2df01113eebbd78ac25070` |
| 28 | `theorem` | [rank_unit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/rank-unit.md) | 205 | `result-track:ca5ebe0ac3a0c4f131ae0d872b8a4529ea846357b54ec43f5bb0378d86042405` |
| 29 | `theorem` | [rank_of_isUnit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/rank-of-isunit.md) | 211 | `result-track:8bb9dae305754be639627925855d1b38276b267d4ae9b2f3e3df541c9fed9566` |
| 30 | `theorem` | [rank_of_det_mem_nonZeroDivisors](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/rank-of-det-mem-nonzerodivisors.md) | 216 | `result-track:4e4e826b96512f758c81537334296b4bf50c319bb2782dd1fcff95ee4ccc74e2` |
| 31 | `theorem` | [rank_of_det_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/rank-of-det-ne-zero.md) | 222 | `result-track:116778dc9b4de0bd352014e3aae0ff04c7b9c8df5c7f6f0cf0630aa148c13237` |
| 32 | `lemma` | [rank_smul_of_mem_nonZeroDivisors](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/rank-smul-of-mem-nonzerodivisors.md) | 226 | `result-track:7e734e93e26a8b08aa094d2b238959402fb864cfea48530b53d71b6c444be27b` |
| 33 | `lemma` | [rank_mul_eq_left_of_det_mem_nonZeroDivisors](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/rank-mul-eq-left-of-det-mem-nonzerodivisors.md) | 235 | `result-track:c0496406ab4d4f1410e498265cf3aa9a4d65bf3533cc90771b02a8bac84a0bc9` |
| 34 | `lemma` | [rank_mul_eq_left_of_det_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/rank-mul-eq-left-of-det-ne-zero.md) | 246 | `result-track:d12fb8605a109802bf6d64a9f6f55003876d78ba4751c0e85f668f013170fdef` |
| 35 | `lemma` | [rank_mul_eq_left_of_isUnit_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/rank-mul-eq-left-of-isunit-det.md) | 252 | `result-track:03bf0fcf68f846d58174d585a7fdbe5dded5185ac69dd1812c1bcbefa49aa975` |
| 36 | `lemma` | [rank_mul_eq_right_of_det_mem_nonZeroDivisors](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/rank-mul-eq-right-of-det-mem-nonzerodivisors.md) | 256 | `result-track:a63f9974f4e49845315a667d3d6a756fe6748cd5583e8b9f979fbbeade1ae2d3` |
| 37 | `lemma` | [rank_mul_eq_right_of_det_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/rank-mul-eq-right-of-det-ne-zero.md) | 263 | `result-track:beff2d01f72c1865abf084202faf6a2ccf7b3930503c25677985b087d6769003` |
| 38 | `lemma` | [rank_mul_eq_right_of_isUnit_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/rank-mul-eq-right-of-isunit-det.md) | 270 | `result-track:985c926060933f0b9ff1f83c5b3b0bf3cfeed8eb4d02298266c58eb8442eecf4` |
| 39 | `lemma` | [rank_mul_eq_right_of_isLowerTriangular](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/rank-mul-eq-right-of-islowertriangular.md) | 274 | `result-track:b57d330e1269e7bae6675270e8d8f4d59503b347a4ac4b84fbf1215edf1f884b` |
| 40 | `lemma` | [rank_mul_eq_right_of_isUpperTriangular](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/rank-mul-eq-right-of-isuppertriangular.md) | 280 | `result-track:345f8b86f94b5fed74e4a2d6af120c4a38431214227e5708d3de299a30852b8e` |
| 41 | `theorem` | [rank_submatrix_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/rank-submatrix-le.md) | 287 | `result-track:3e408c567b343af0d24b1a062cb739e1813687694ad3d56286ed7a4c962803e1` |
| 42 | `theorem` | [rank_reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/rank-reindex.md) | 306 | `result-track:9bcbf61144d6da25efe9e468d56eca6c69a6eb7323ac6d6e818a28d7353c7379` |
| 43 | `theorem` | [rank_submatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/rank-submatrix.md) | 312 | `result-track:8afb08c482a4eac2bb800ea7ff0d4d3e752ad1f59ab915e94db9ad54f3e3e6c5` |
| 44 | `theorem` | [lift_cRank_submatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/lift-crank-submatrix.md) | 317 | `result-track:76f7519034671f82f66599cf2f62be3d85db400e2bd4955f5813c02f3d45339e` |
| 45 | `theorem` | [cRank_submatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/crank-submatrix.md) | 324 | `result-track:9b375a05fa94707cdc4e48b42d2514b69c11c78f294dd254816f5cce824296e9` |
| 46 | `theorem` | [lift_cRank_reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/lift-crank-reindex.md) | 328 | `result-track:687af826174d14101ac355b0f2c5ee8f3a1b98cac4ab1bd0754483fe6b73336d` |
| 47 | `theorem` | [cRank_reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/crank-reindex.md) | 333 | `result-track:d298c353ff8d6d12332aeb95cb203f48fd6f76fef592a32dbd8c53b5e4626669` |
| 48 | `theorem` | [eRank_submatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/erank-submatrix.md) | 338 | `result-track:199ad891cce4bcc8d08544bb95b46d0645ffbf300ca4b7afa57cdc34ab98e4b4` |
| 49 | `theorem` | [eRank_reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/erank-reindex.md) | 342 | `result-track:682c869c487aef9227f000b57823c3bd38e570d0074e94ddf5c6a012b59ffa49` |
| 50 | `theorem` | [rank_eq_finrank_range_toLin](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/rank-eq-finrank-range-tolin.md) | 348 | `result-track:87ab809e25503b87355509788d04421ce6843065df0a7bd9ac2c35e91ab711ea` |
| 51 | `theorem` | [rank_le_card_height](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/rank-le-card-height.md) | 368 | `result-track:bf742a497d3af07865a35cbecfeef8ac7a7ea1d8f58e24e8d1d7dfbad63e3d8d` |
| 52 | `theorem` | [rank_le_card_of_support_subset](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/rank-le-card-of-support-subset.md) | 373 | `result-track:733f48f31df6830e04cbad02b263086566b0175c2ade18026741431d7d9ac314` |
| 53 | `theorem` | [rank_le_height](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/rank-le-height.md) | 392 | `result-track:03b7cd2c50c7c0f0de90ffea9f9c427a0730b1ed93978e76e5c4379e13cc94bd` |
| 54 | `theorem` | [rank_eq_finrank_span_cols](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/rank-eq-finrank-span-cols.md) | 397 | `result-track:d326f3fb0b33dd80252137b29d91be29c6521a5d954f8a9a2a3188d38663a65a` |
| 55 | `theorem` | [cRank_toNat_eq_rank](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/crank-tonat-eq-rank.md) | 401 | `result-track:15f631c53298fb7334677fd1b524f0a42269d07ec86e04d07c90ff4b7e1b06dc` |
| 56 | `theorem` | [eRank_toNat_eq_rank](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/erank-tonat-eq-rank.md) | 405 | `result-track:c6c5cfadfd8f8b17f31f3ab081b2f7161a9db269d851b1ff3dc884f0e098902d` |
| 57 | `theorem` | [rank_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/rank-diagonal.md) | 413 | `result-track:e0d4c47e3372a334c076ff83489e37b1002347706fd5854c680cbd5d32d8356e` |
| 58 | `theorem` | [exists_rank_normal_form](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/exists-rank-normal-form.md) | 422 | `result-track:22f63d7d0b8c0573b6d864a377d870c7afba971499542240802d50f212c5a1fd` |
| 59 | `theorem` | [cRank_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/crank-diagonal.md) | 455 | `result-track:0a2aeee6fe0e67ada01087f186b1eb846524e1b45c55ef11c39ff352b0972907` |
| 60 | `theorem` | [eRank_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/erank-diagonal.md) | 473 | `result-track:2adb24a7e92e0baa0341194ad0048db809d157540d4c118622c394c9e1495d7c` |
| 61 | `theorem` | [ker_mulVecLin_conjTranspose_mul_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/ker-mulveclin-conjtranspose-mul-self.md) | 497 | `result-track:9af2645a81f6d64512620364bd781f06412a1cfa3e280189092ff680d8d88ae2` |
| 62 | `theorem` | [rank_conjTranspose_mul_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/rank-conjtranspose-mul-self.md) | 502 | `result-track:6ddf729bd504ea069c29d831320d0a8a725091ce306ee5b02cb1c2fe4c7b344c` |
| 63 | `theorem` | [rank_conjTranspose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/rank-conjtranspose.md) | 514 | `result-track:e9bbf63a09c7d5757eb0413fc1f570ef0e92c2d05651ea679ba2832c393a2682` |
| 64 | `theorem` | [rank_self_mul_conjTranspose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/rank-self-mul-conjtranspose.md) | 521 | `result-track:c39a1bb57f123a714a1a33aad320917da949e883b7fa5d2a96a6386fbadee37e` |
| 65 | `theorem` | [ker_mulVecLin_transpose_mul_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/ker-mulveclin-transpose-mul-self.md) | 531 | `result-track:3b18aa184780cc2be9ba4018c4e72b83c9d04bfabec454e1fe5d465a9fc69d3d` |
| 66 | `theorem` | [rank_transpose_mul_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/rank-transpose-mul-self.md) | 542 | `result-track:ad02eee26caf4b427a6a1e26b8740894fecaab284d9489ea390e5e9c17e7bb3e` |
| 67 | `theorem` | [rank_transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/rank-transpose.md) | 554 | `result-track:b6e314786c04e72a5398400cfdcb6ccac1401fc8eabccfca1147ffdc9380c3e8` |
| 68 | `theorem` | [rank_self_mul_transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/rank-self-mul-transpose.md) | 561 | `result-track:a9062bc69f5833353de257c58245ffc9b27bf2c4e658e31e70f9683544037fd1` |
| 69 | `theorem` | [rank_eq_finrank_span_row](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/rank-eq-finrank-span-row.md) | 567 | `result-track:d30f45bf9459e4d406c2fcaf162664b9366a721884d6614b53078f02dce88f95` |
| 70 | `theorem` | [_root_.LinearIndependent.rank_matrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/root-linearindependent-rank-matrix.md) | 572 | `result-track:2c10a4078eb35ab457fe4ec3bfec1ab3b4b88f76db77ec72c38d46a26ddb3018` |
| 71 | `lemma` | [rank_add_rank_le_card_of_mul_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/rank-add-rank-le-card-of-mul-eq-zero.md) | 576 | `result-track:757abea371484633d4f347415cbdcbdaad3fd725a1249cbfaec4c4721c770b4b` |
| 72 | `theorem` | [Matrix.rank_vecMulVec.](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankPublic.lean/declarations/matrix-rank-vecmulvec.md) | 595 | `result-track:ef7c93f3887e972b21adac6177cba01a23c4b1fc06c2ef4fb238f00ece90a03a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=df7a3ea30ab3a74533d4ce851a00f84ff014957f64e62c19289bcae766f73edb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Rank/Variant4ce457849b67eca2d37842f1ebcac1dea88f16a202f5c6dfceb4bb6c6047e262.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Rank/Variant4ce457849b67eca2d37842f1ebcac1dea88f16a202f5c6dfceb4bb6c6047e262.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
