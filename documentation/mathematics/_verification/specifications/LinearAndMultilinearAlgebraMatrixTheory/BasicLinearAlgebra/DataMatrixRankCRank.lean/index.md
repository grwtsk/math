# Verification target: Data Matrix Rank CRank

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e2e66ba299c1ed33821d3fd6c0bc9441ff8e27d8",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Rank/Variant1cc6559d18d181a9b16cab71bcc21f0a6e5f5785741257f49ec4bc7d66b74ab5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRankCRank.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRankCRank.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e2e66ba299c1ed33821d3fd6c0bc9441ff8e27d8`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Rank/Variant1cc6559d18d181a9b16cab71bcc21f0a6e5f5785741257f49ec4bc7d66b74ab5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Rank/Variant1cc6559d18d181a9b16cab71bcc21f0a6e5f5785741257f49ec4bc7d66b74ab5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Determinant` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dual.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional.Lemmas` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Diagonal` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.DotProduct` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Dual` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cRank](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRankCRank.lean/declarations/crank.md) | 42 | `declaration-track:74d3e9024f417fb1f9c3b285d222c736b7f837db5ed8af2d660d067ca618c6ce` |
| 2 | `lemma` | [cRank_toNat_eq_finrank](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRankCRank.lean/declarations/crank-tonat-eq-finrank.md) | 44 | `result-track:887d60e65e5d88b0d025911e209982c6a384aa8744e63e6bb86becaf0223ac48` |
| 3 | `lemma` | [lift_cRank_submatrix_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRankCRank.lean/declarations/lift-crank-submatrix-le.md) | 47 | `result-track:6be4ebed277f399dacb26c1ef92ee7501a99abd59f77f9084f3c0501e29ed34d` |
| 4 | `lemma` | [cRank_submatrix_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRankCRank.lean/declarations/crank-submatrix-le.md) | 62 | `result-track:d6170c8e307f7dd25d05b2966ffcc5cdb468cae5573f60991558eaa284a7370e` |
| 5 | `lemma` | [cRank_le_card_height](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRankCRank.lean/declarations/crank-le-card-height.md) | 66 | `result-track:048a032e004a2517c34ea5a5f178d63c8a5a68789a941f52df316750c62f0ac4` |
| 6 | `lemma` | [cRank_le_card_width](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRankCRank.lean/declarations/crank-le-card-width.md) | 70 | `result-track:97c9c90f35deb8c005a6d9a59118e1b731b69fb53b85177a05ae9998a7b43d9c` |
| 7 | `def` | [eRank](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRankCRank.lean/declarations/erank.md) | 75 | `declaration-track:451532ee76a2fb0cd97a8b06b23ac3f2fbcf15d0bde777d901e16f2a08d0c808` |
| 8 | `lemma` | [eRank_toNat_eq_finrank](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRankCRank.lean/declarations/erank-tonat-eq-finrank.md) | 77 | `result-track:db3265b334d65b94bc056d72fe41b0e686aac605778037b53c1364a1711b9478` |
| 9 | `lemma` | [eRank_submatrix_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRankCRank.lean/declarations/erank-submatrix-le.md) | 81 | `result-track:920adcacdcbf39120faa5c0c6c04918e8fee916a4c4b335787044f1fa6cef56b` |
| 10 | `lemma` | [eRank_le_card_width](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRankCRank.lean/declarations/erank-le-card-width.md) | 85 | `result-track:ab05ce57192490a8fe012a8286493d5b67dc5123c19d1f6e31609cb47ae8edc3` |
| 11 | `lemma` | [eRank_le_card_height](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRankCRank.lean/declarations/erank-le-card-height.md) | 92 | `result-track:72e8dba0ff765dd3ed82bcff8e0ec36c36b29cf49b129d05b0340e8ed2f6da80` |
| 12 | `def` | [rank](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRankCRank.lean/declarations/rank.md) | 109 | `declaration-track:0be03afd01fbfbeb3ade57fee2738abb4b66a10e1038a6e83c1d85a1e4423b69` |
| 13 | `theorem` | [cRank_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRankCRank.lean/declarations/crank-one.md) | 113 | `result-track:0aa2b3ead5d88211a85adfb96351e25fd200ab593cb69e09440e92fe0e22398b` |
| 14 | `theorem` | [eRank_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRankCRank.lean/declarations/erank-one.md) | 121 | `result-track:65dacec3786900134b526d825689cc38c1d0b365d6442ee960740ab37e433310` |
| 15 | `theorem` | [rank_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRankCRank.lean/declarations/rank-one.md) | 126 | `result-track:829e74a2a91b3b5fddb26e2b6576a42f67b9259ab6c5bb05e022a00ff289c964` |
| 16 | `theorem` | [rank_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRankCRank.lean/declarations/rank-zero.md) | 131 | `result-track:3898f705008335efbf74080060c067eea80965446dc0f7de37ee9059db1cc05b` |
| 17 | `theorem` | [cRank_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRankCRank.lean/declarations/crank-zero.md) | 135 | `result-track:6b327450d5a5b9e123311b846fca091e738d480443f084631261ca235b261754` |
| 18 | `theorem` | [eRank_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRankCRank.lean/declarations/erank-zero.md) | 141 | `result-track:602fcbe1b4a7a705354688822706f827a9d9f10b8c8a858fba5a533ffb0c98a9` |
| 19 | `theorem` | [rank_le_card_width](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRankCRank.lean/declarations/rank-le-card-width.md) | 144 | `result-track:cbc4e41ba674242967693248293b2c07363d816353e2d2e9149e8807de0b0cf4` |
| 20 | `theorem` | [rank_le_width](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRankCRank.lean/declarations/rank-le-width.md) | 150 | `result-track:95166a4d644cf17885a83d4189ae799210971f4360078700abe5e10ed1012cc9` |
| 21 | `theorem` | [rank_mul_le_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRankCRank.lean/declarations/rank-mul-le-left.md) | 154 | `result-track:bb5974f9372f9ca14d1c0ad2722bab2232ad9d4deafef0ea142e1e0892279e95` |
| 22 | `theorem` | [rank_mul_le_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRankCRank.lean/declarations/rank-mul-le-right.md) | 159 | `result-track:8f03c2d9ddec387c6907bcb11b1dd07b30fee8cc580709fe2dcbe0e3c9ddb7f4` |
| 23 | `theorem` | [rank_mul_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRankCRank.lean/declarations/rank-mul-le.md) | 165 | `result-track:c51663f1d61e61c3671bae77d1809d0be0a8801a3ae9be4d90aad72fa4bb9b34` |
| 24 | `theorem` | [rank_unit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRankCRank.lean/declarations/rank-unit.md) | 169 | `result-track:315ce09a260d08ed71fc87a851b61a3be487c874a4c7efe4600a496b3233efd4` |
| 25 | `theorem` | [rank_of_isUnit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRankCRank.lean/declarations/rank-of-isunit.md) | 175 | `result-track:6fb649180c6fdf1aec39c5b37afa65d3226825327eb5bd9474a30e318f33e225` |
| 26 | `lemma` | [rank_mul_eq_left_of_isUnit_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRankCRank.lean/declarations/rank-mul-eq-left-of-isunit-det.md) | 182 | `result-track:608dc97b2f35183ec43695465d2f8299e2882105e73e90045012c3a1b0110b57` |
| 27 | `lemma` | [rank_mul_eq_right_of_isUnit_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRankCRank.lean/declarations/rank-mul-eq-right-of-isunit-det.md) | 193 | `result-track:17a26844068dba3da1170a441cc2df793b1beaa6913e142942f7a84a6f7fed2d` |
| 28 | `theorem` | [rank_submatrix_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRankCRank.lean/declarations/rank-submatrix-le.md) | 203 | `result-track:f901332718f25e4f0fa0f6d15a2e274ffda9273736d690016384a2578cbefc46` |
| 29 | `theorem` | [rank_reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRankCRank.lean/declarations/rank-reindex.md) | 210 | `result-track:5e868eb19702cf65186c8919f52ca3758c4e8a078a760fd3b5e5883ff28dc79e` |
| 30 | `theorem` | [rank_submatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRankCRank.lean/declarations/rank-submatrix.md) | 216 | `result-track:c1c4634814573bff30830c97e669a1f8917328d6a2495e6e7ab143cdf7dae9c2` |
| 31 | `theorem` | [lift_cRank_submatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRankCRank.lean/declarations/lift-crank-submatrix.md) | 221 | `result-track:0a8f6aabf96c20fb95e610b0254d4e6a56e147c9f75ff5e6c2193018d068e8e0` |
| 32 | `theorem` | [cRank_submatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRankCRank.lean/declarations/crank-submatrix.md) | 228 | `result-track:b86fb1ff1387ffe6d5afadbbc9f30b22c0f57a58284506dbfe4b9fa533860518` |
| 33 | `theorem` | [lift_cRank_reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRankCRank.lean/declarations/lift-crank-reindex.md) | 232 | `result-track:1ed16c3e73813ff243bed0172f5283b3cfd1f0ececac3bce6e82dcb7c8d0151c` |
| 34 | `theorem` | [cRank_reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRankCRank.lean/declarations/crank-reindex.md) | 237 | `result-track:c2554bf230eb558d1e6cda59c2923e65be396d076248b4024b04b7133e511a23` |
| 35 | `theorem` | [eRank_submatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRankCRank.lean/declarations/erank-submatrix.md) | 242 | `result-track:293ffe9fc924ab7f14bbd50b9223f74fdfb9c0a1af151c184a40f51379a25e4d` |
| 36 | `theorem` | [eRank_reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRankCRank.lean/declarations/erank-reindex.md) | 246 | `result-track:90e71fc91bdebb3676ef0074039524e54d7aff5e41128cbd45e3da30b41bd8bf` |
| 37 | `theorem` | [rank_eq_finrank_range_toLin](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRankCRank.lean/declarations/rank-eq-finrank-range-tolin.md) | 250 | `result-track:e95eed9d1bbefc64ff7572164aaa238e342785606083e9f487ac8bb20640a444` |
| 38 | `theorem` | [rank_le_card_height](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRankCRank.lean/declarations/rank-le-card-height.md) | 272 | `result-track:dc6ae404cb798971b8f72efc363d4144c8a299b869cf2ea4147ac2e18a115c32` |
| 39 | `theorem` | [rank_le_height](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRankCRank.lean/declarations/rank-le-height.md) | 278 | `result-track:30f0661108c9ef96b08943a4fb0bd26adb9caed4fae242deaef6e2701b54757a` |
| 40 | `theorem` | [rank_eq_finrank_span_cols](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRankCRank.lean/declarations/rank-eq-finrank-span-cols.md) | 283 | `result-track:54365b343fad6978e2fc41f203965ce4a3bb07bf4acee6255acc5c4a583418fc` |
| 41 | `theorem` | [cRank_toNat_eq_rank](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRankCRank.lean/declarations/crank-tonat-eq-rank.md) | 287 | `result-track:e5b5298f7498c3f0534e71576f2583bc03eadd3c230b1153e2969e58d11b6048` |
| 42 | `theorem` | [eRank_toNat_eq_rank](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRankCRank.lean/declarations/erank-tonat-eq-rank.md) | 291 | `result-track:46c30e17128adf6a0481c5855a5cb892886bfd541fbdc2161e7d087cb5ea181c` |
| 43 | `theorem` | [rank_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRankCRank.lean/declarations/rank-diagonal.md) | 301 | `result-track:576e771fe273666aa7ca60cc3eeabdb98289350d847b384741f5c55fa6ac8b6f` |
| 44 | `theorem` | [cRank_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRankCRank.lean/declarations/crank-diagonal.md) | 306 | `result-track:c3c5d88b1d10f55623cadaf1a8eed5d2573c89487671ffec463f124db00398bc` |
| 45 | `theorem` | [eRank_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRankCRank.lean/declarations/erank-diagonal.md) | 324 | `result-track:574b6fcbc5996d910e476fab9d72a3920bc5642339507b09e190c9a2c8aac61a` |
| 46 | `theorem` | [ker_mulVecLin_conjTranspose_mul_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRankCRank.lean/declarations/ker-mulveclin-conjtranspose-mul-self.md) | 348 | `result-track:9c92094c8af72143998bd130fafe1da790e9da7ffdf3773186c0916402240698` |
| 47 | `theorem` | [rank_conjTranspose_mul_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRankCRank.lean/declarations/rank-conjtranspose-mul-self.md) | 353 | `result-track:a602159aab6d5ebda3d2f74c83b1629a82a55d583ba28dbf89b69a0bde401671` |
| 48 | `theorem` | [rank_conjTranspose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRankCRank.lean/declarations/rank-conjtranspose.md) | 365 | `result-track:579e95af1b5f82736a9ae5f3cf28f1775c3a3cb4a21b45d5a83108f447736e3e` |
| 49 | `theorem` | [rank_self_mul_conjTranspose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRankCRank.lean/declarations/rank-self-mul-conjtranspose.md) | 372 | `result-track:ccee192cdaee5d8235b5cc564f37cbc1c952d6fafd97768348068d5a63bf23c9` |
| 50 | `theorem` | [ker_mulVecLin_transpose_mul_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRankCRank.lean/declarations/ker-mulveclin-transpose-mul-self.md) | 382 | `result-track:5d53033fecbd00225e529fcc6ef4387aa37173e0866e10ee7c2201403ba308e6` |
| 51 | `theorem` | [rank_transpose_mul_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRankCRank.lean/declarations/rank-transpose-mul-self.md) | 393 | `result-track:8dd1ac0a209c8347cf301e676d4387bd158bf65a42df616e36d6e6d5ee550cf4` |
| 52 | `theorem` | [rank_transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRankCRank.lean/declarations/rank-transpose.md) | 405 | `result-track:7c5021f3161b0feb7f6a3c8aea9c2c3ba6590ae0ab5b0cf4aa2bf7fba4bf3044` |
| 53 | `theorem` | [rank_self_mul_transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRankCRank.lean/declarations/rank-self-mul-transpose.md) | 412 | `result-track:b87ce8b7c623104e6233b074ef12235567941319c730e855a538b92c3b65b478` |
| 54 | `theorem` | [rank_eq_finrank_span_row](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRankCRank.lean/declarations/rank-eq-finrank-span-row.md) | 418 | `result-track:80f90c6b24014b152502a5966cc04c468b8888cefeae1f8092b6e39f7196bc07` |
| 55 | `theorem` | [_root_.LinearIndependent.rank_matrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRankCRank.lean/declarations/root-linearindependent-rank-matrix.md) | 423 | `result-track:f404eb78a7278b9ee6fad85e25ac171fe77421509d37b13f024a37f4bccb336a` |
| 56 | `lemma` | [rank_add_rank_le_card_of_mul_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRankCRank.lean/declarations/rank-add-rank-le-card-of-mul-eq-zero.md) | 427 | `result-track:d683ef80f8d12ef26d72ce82a580d6db88cc7bf4a733a57033c9addbce26e183` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=12e001065a9d0f0f74eeaf0b6eb3a6523a748438b1a5a2d4207d1a10f5a784ab -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Rank/Variant1cc6559d18d181a9b16cab71bcc21f0a6e5f5785741257f49ec4bc7d66b74ab5.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Rank/Variant1cc6559d18d181a9b16cab71bcc21f0a6e5f5785741257f49ec4bc7d66b74ab5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
