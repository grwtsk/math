# Verification target: Adj Matrix Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a77cb9e3205252661c7c06b960d53dfa20e41a9",
  "lexical_observation_count": 72,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/AdjMatrix/Variant485cda56d31ff92ca7a95e7be4e4455ba22ba5c90b103e6dbb66fcf8804a2370.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a77cb9e3205252661c7c06b960d53dfa20e41a9`.

Source path: `GRWTSK/Algebra/LinearAlgebra/AdjMatrix/Variant485cda56d31ff92ca7a95e7be4e4455ba22ba5c90b103e6dbb66fcf8804a2370.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/AdjMatrix/Variant485cda56d31ff92ca7a95e7be4e4455ba22ba5c90b103e6dbb66fcf8804a2370.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Idempotent` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.DegreeSum` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsAdjMatrix](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/isadjmatrix.md) | 66 | `declaration-track:cfb9ef34a5b43b86e32768d66140575cc38b92216443c011747751d408bc67a6` |
| 2 | `theorem` | [zero](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/zero.md) | 75 | `result-track:2a8c5bbc4dea8f2104b5a305f51bfa834b7ebf550b1e7d3cf3e666403ee0ef6f` |
| 3 | `theorem` | [apply_diag_ne](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/apply-diag-ne.md) | 78 | `result-track:63e7b65ef6259a186260620bd3fc7d838602897d5ab8a60e596e1aec12cff9b0` |
| 4 | `theorem` | [apply_ne_one_iff](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/apply-ne-one-iff.md) | 82 | `result-track:007b3a0dc28886dc3133d49307b81354751647469c42b5e6b1aff5a3c9566a68` |
| 5 | `theorem` | [apply_ne_zero_iff](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/apply-ne-zero-iff.md) | 86 | `result-track:86d288cabd62eb61eaadcea7463beab9f452d802f19ef63e4447aef81ece3cd5` |
| 6 | `theorem` | [diag_eq_zero](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/diag-eq-zero.md) | 90 | `result-track:e55ee5a980d2a7d5bf6b77ba3f90969d9f14e508ffcb1d2e1a6d706765650715` |
| 7 | `theorem` | [submatrix](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/submatrix.md) | 94 | `result-track:4f9f9ffb5567336e56cf31bf3e11a760149f3baf300dc4cbb693aaa51b1d0dd2` |
| 8 | `theorem` | [Adj Matrix Namespaced Public](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/isadjmatrix-submatrix-iff.md) | 100 | `result-track:373c4f28c43c9c24fc5bc37ae694b2da4f71c31f298888c667b8484ae31ade92` |
| 9 | `theorem` | [reindex](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/reindex.md) | 106 | `result-track:f75be87a670a9e15682a4d210b8b11b45061e2ace7f7a59967616c38606f76db` |
| 10 | `theorem` | [Adj Matrix Namespaced Public](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/isadjmatrix-reindex-iff.md) | 109 | `result-track:4bbecf6c54dda076c718162dc7451df9baca08f1090c009f796f850674239168` |
| 11 | `def` | [toGraph](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/tograph.md) | 116 | `declaration-track:97f79b8a7f8ebb31d2b8b83bc047a160e0412390cfb31043bbd647fdffd058c9` |
| 12 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/instance.md) | 121 | `declaration-track:781b0bb8cdbd97e64f35ea218c1fd7c42129912d3d19655b222e48cd947a8e8b` |
| 13 | `def` | [toGraphSubmatrixHom](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/tographsubmatrixhom.md) | 130 | `declaration-track:039b88d5ecb6059606c8df810c22400af7a362a3be51cc07fd6a240eccc22909` |
| 14 | `def` | [toGraphSubmatrixEmbedding](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/tographsubmatrixembedding.md) | 138 | `declaration-track:11136829f2f5ec8d0848a80051eda09db62693ac2c0624c17cdef7cb681bd81f` |
| 15 | `theorem` | [toGraphSubmatrixEmbedding_apply](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/tographsubmatrixembedding-apply.md) | 145 | `result-track:c0136d89313302d3068b84fea55cb99f632081279c72aca86508082a4d9ddffa` |
| 16 | `def` | [toGraphReindexIso](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/tographreindexiso.md) | 153 | `declaration-track:af7de9b1041029dc7825ca79838d9fedfc4f0d24634642a2a86cf4c3ff756be2` |
| 17 | `theorem` | [hadamard_self](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/hadamard-self.md) | 158 | `result-track:dc0587d93f9d0f34b7405b2e881af769ae87394100f976cddcd3a7b3a25ecf0e` |
| 18 | `theorem` | [isAdjMatrix_iff_hadamard](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/isadjmatrix-iff-hadamard.md) | 163 | `result-track:ad5f79d6bbb3b3cb91899e0db08ac68d0eb2285d06737d4545a72a3e8e59d2de` |
| 19 | `def` | [compl](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/compl-source-edition-2.md) | 172 | `declaration-track:ecd2010361fbe34bbe05968a6f8b29f4cd05ce513ce96fae57635a13a829e874` |
| 20 | `theorem` | [compl_apply_diag](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/compl-apply-diag.md) | 180 | `result-track:d9c92051e855d303f55789ff4a1bf1b60e1a93e13da60489b984c09d5a1d38c9` |
| 21 | `theorem` | [compl_apply](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/compl-apply.md) | 183 | `result-track:c751c4e15cab39f7b2f0b5782f07ab1565527b6ea87e7453b54b3c59812643a4` |
| 22 | `theorem` | [isSymm_compl](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/issymm-compl.md) | 192 | `result-track:234afac3e9e820e5d21024c48b43ef252e23f48cc32d800cfe7a3073f516b66a` |
| 23 | `theorem` | [isAdjMatrix_compl](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/isadjmatrix-compl.md) | 197 | `result-track:fcdffa210300693e8cebc31febbed438b57b3a103991b984c7e6192338aec4c7` |
| 24 | `theorem` | [IsAdjMatrix.compl_inj](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/isadjmatrix-compl-inj.md) | 200 | `result-track:b15f2bba4cd04a20ecc9b9914807e54207882fb547d373f21ec31ab512d5bd55` |
| 25 | `theorem` | [IsAdjMatrix.compl_compl](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/isadjmatrix-compl-compl.md) | 210 | `result-track:dbcf093858274199a5eb6cfcef4376751288c8033a8c188c327802ba4d0214ae` |
| 26 | `theorem` | [compl](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/compl.md) | 225 | `result-track:1907e4a1f040dab65be542fcad71134d14aeb98bde4d4877644942a577601e7c` |
| 27 | `theorem` | [toGraph_compl_eq](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/tograph-compl-eq.md) | 228 | `result-track:4a0a76b0fea033ca5c61b6d27cf039d772f71f03b82679df423477d85c79c102` |
| 28 | `def` | [adjMatrix](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/adjmatrix.md) | 246 | `declaration-track:f7ba6db5921a3a90733cd3fb6583e6c149f691436700f8480a1e35c05d82fcbf` |
| 29 | `theorem` | [adjMatrix_apply](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/adjmatrix-apply.md) | 251 | `result-track:c0f127c43898701df6be59987e1e7af98c716732406fcb5097695d594be2133b` |
| 30 | `theorem` | [adjMatrix_bot](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/adjmatrix-bot.md) | 256 | `result-track:27facbbb7b999f096b60f0e04c4ccdd560f5ef92697221fcef572999ebc6cf22` |
| 31 | `theorem` | [adjMatrix_top](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/adjmatrix-top.md) | 261 | `result-track:3f592d1438dd56bf324187b716685947c6b52c11c8fa594fdcb8c46f6d36fb49` |
| 32 | `theorem` | [transpose_adjMatrix](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/transpose-adjmatrix.md) | 267 | `result-track:078ac32ce04f69a83126149534978d813bba5745b78fa031926bba085c204a76` |
| 33 | `theorem` | [isSymm_adjMatrix](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/issymm-adjmatrix.md) | 272 | `result-track:3ff401483d6123e57527a26668d4f1be106173a3d1b2d42ae716df3371cd820d` |
| 34 | `theorem` | [isAdjMatrix_adjMatrix](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/isadjmatrix-adjmatrix.md) | 279 | `result-track:f2ac5fad0c561ed5bb8578c5d307f0a8b09f9858dbfde3aa88b3c2d4583ad60e` |
| 35 | `theorem` | [diag_adjMatrix](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/diag-adjmatrix.md) | 282 | `result-track:ffc0034a2663605ec953022d629f18f69d432d4297ee33378b4c03e1d0050aa1` |
| 36 | `theorem` | [toGraph_adjMatrix_eq](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/tograph-adjmatrix-eq.md) | 287 | `result-track:9e112de55a4d6bf1a61df661c26e461fa4d553b66bf33ec10f3b570d9d0f9f8d` |
| 37 | `theorem` | [compl_adjMatrix_eq_adjMatrix_compl](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/compl-adjmatrix-eq-adjmatrix-compl.md) | 293 | `result-track:bb6176237dd821cd338eeee115a701c7065ae13eda7ddc1214d3eca1c72806cd` |
| 38 | `theorem` | [Embedding.submatrix_adjMatrix](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/embedding-submatrix-adjmatrix.md) | 298 | `result-track:85c2ca9257a4b1822fb24c385be223d8bc3c9a152e45495e977b8c145c6fbb8c` |
| 39 | `theorem` | [Iso.reindex_adjMatrix](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/iso-reindex-adjmatrix.md) | 304 | `result-track:c03335ac1acd00477acbfcbff7f83f141e79ab432e144ef21c3078a43b1acb5b` |
| 40 | `theorem` | [IsCompl.adjMatrix_add_adjMatrix_eq_adjMatrix_completeGraph](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/iscompl-adjmatrix-add-adjmatrix-eq-adjmatrix-completegraph.md) | 309 | `result-track:cb2462dcc42ca59ee4e04eaa1ad79657ba08c7d7713ed257c44e6c83b0ef6190` |
| 41 | `theorem` | [adjMatrix_add_compl_adjMatrix_eq_adjMatrix_completeGraph](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/adjmatrix-add-compl-adjmatrix-eq-adjmatrix-completegraph.md) | 315 | `result-track:4660307f2b31ccd7dbc3ba675a528689312213f83e20fbb988a6679cc343d0d5` |
| 42 | `theorem` | [one_add_adjMatrix_add_compl_adjMatrix_eq_of_one](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/one-add-adjmatrix-add-compl-adjmatrix-eq-of-one.md) | 322 | `result-track:3e74d2db86ee9913e1d0656c9366edf566b2b62a1354ff14979a9db7045dbbfc` |
| 43 | `theorem` | [compl_adjMatrix_completeGraph](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/compl-adjmatrix-completegraph.md) | 328 | `result-track:ca2ccfd82fe0ef8f1b2416eeb0918ae4cba464c7fa91f20f9e8f62c625dc1ae6` |
| 44 | `theorem` | [Adj Matrix Namespaced Public](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/compl-zero.md) | 331 | `result-track:0b948d4a142daf36bd67454af38b6ff7905e5b2f3af6fbb4a2e7bd06c78433c4` |
| 45 | `theorem` | [adjMatrix_completeGraph_eq_of_one_sub_one](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/adjmatrix-completegraph-eq-of-one-sub-one.md) | 334 | `result-track:4a072c5fd27b23a1c72df28b3ae5a5ad3e151541c8a58876407eef56b0ed06a0` |
| 46 | `theorem` | [Adj Matrix Namespaced Public](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/compl-zero-eq-of-one-sub-one.md) | 337 | `result-track:141b5f10c006616c7baa98d838a2272fd099d7ca6adf46afbc2158509c21195f` |
| 47 | `theorem` | [Adj Matrix Namespaced Public](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/compl-of-one-sub-one.md) | 341 | `result-track:1a9088a6c372ca151584aee49f42dc8c3e52b4617a2d7005a1abf4598707a82f` |
| 48 | `theorem` | [adjMatrix_hadamard_self](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/adjmatrix-hadamard-self.md) | 347 | `result-track:bd57f18dad0c129ee41b680e8f485b719c85101a3c5d47cfa90d02d11e942f33` |
| 49 | `theorem` | [adjMatrix_dotProduct](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/adjmatrix-dotproduct.md) | 356 | `result-track:9f1823884484ae54ac6828add27fa2b87acd2d98b59a4492386316eea887ec08` |
| 50 | `theorem` | [dotProduct_adjMatrix](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/dotproduct-adjmatrix.md) | 361 | `result-track:2c4d6aaaffb9dea8f2d402053179332fa9dab7f490e38f1d5de10b521b3f1539` |
| 51 | `theorem` | [adjMatrix_mulVec_apply](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/adjmatrix-mulvec-apply.md) | 366 | `result-track:734777efe54e507078ff940c7ca00e1faadb0d5faa995d7e3fc99d05ebe6e052` |
| 52 | `theorem` | [adjMatrix_vecMul_apply](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/adjmatrix-vecmul-apply.md) | 371 | `result-track:64dcf1dd483f909ad0182960bbdaffc728a23a5e4c27499566151a1c5e4372d2` |
| 53 | `theorem` | [adjMatrix_mul_apply](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/adjmatrix-mul-apply.md) | 378 | `result-track:135b88ca4e876412a78082ed0e5d7fcbc635bac550f30d4e4ab15e45a6b896ec` |
| 54 | `theorem` | [mul_adjMatrix_apply](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/mul-adjmatrix-apply.md) | 383 | `result-track:40a41623a4fc22a711800cfba376295e045b7be0606ecac5c026ff3e7a459dff` |
| 55 | `theorem` | [trace_adjMatrix](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/trace-adjmatrix.md) | 389 | `result-track:498a0844c2a44ba456ce1a8c4ef786bf17f1b6c2a18612310e53b52fe12f1163` |
| 56 | `theorem` | [adjMatrix_mul_self_apply_self](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/adjmatrix-mul-self-apply-self.md) | 392 | `result-track:95fff28a6e8fd749c88dafcaed14688841191647b5c4ad67ba9c10c5eda45802` |
| 57 | `theorem` | [natCast_card_dart_eq_dotProduct](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/natcast-card-dart-eq-dotproduct.md) | 398 | `result-track:2a52a68d9ff25f86c5a5bb632c3bac87d0935ad2d308279b27d92775ad3d3ec8` |
| 58 | `theorem` | [adjMatrix_mulVec_const_apply](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/adjmatrix-mulvec-const-apply.md) | 404 | `result-track:979f1fdb743e4d098098069be33c4449768b1e12a4ecce7869e0cae2e74fd777` |
| 59 | `theorem` | [adjMatrix_mulVec_const_apply_of_regular](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/adjmatrix-mulvec-const-apply-of-regular.md) | 407 | `result-track:2e928d341ae166b59232533533df0d35e92d629889d74c1bbd524be9e819a9cd` |
| 60 | `theorem` | [adjMatrix_pow_apply_eq_card_walk](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/adjmatrix-pow-apply-eq-card-walk.md) | 411 | `result-track:b8d3a177592b7021a6bad3d47db76de2d6398a1e07222bf870ab81bb61eee774` |
| 61 | `theorem` | [dotProduct_mulVec_adjMatrix](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/dotproduct-mulvec-adjmatrix.md) | 431 | `result-track:87cbeb3b4f4bfe84233e01255fa380e1f9a5563832a109254771ae3c83a9d4fe` |
| 62 | `theorem` | [adjMatrix_hadamard_diagonal](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/adjmatrix-hadamard-diagonal.md) | 442 | `result-track:85f5e18cecb5f7091a6e771e85916df80a9ff7d0e4fcb715ce4f6b79419f4d8d` |
| 63 | `theorem` | [diagonal_hadamard_adjMatrix](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/diagonal-hadamard-adjmatrix.md) | 445 | `result-track:e1ee8268e566ffb46fd1bbb343fe486a68abc24f44c8c408d6725666b37d6aea` |
| 64 | `theorem` | [adjMatrix_hadamard_natCast](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/adjmatrix-hadamard-natcast.md) | 448 | `result-track:5bf7f7df7ba6f2dcd141c68b5d9a919b87eaafa7e8e3b8c779415d93cdd3b2b0` |
| 65 | `theorem` | [natCast_hadamard_adjMatrix](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/natcast-hadamard-adjmatrix.md) | 451 | `result-track:fea09c4024cd9e073355f90eb9333c15fa35b10957326c56513a020eb5d583e6` |
| 66 | `theorem` | [adjMatrix_hadamard_ofNat](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/adjmatrix-hadamard-ofnat.md) | 454 | `result-track:7d848766db5c1ba860ba7ae2bb327f16f67ce91962832feccf264f83c0d5b11a` |
| 67 | `theorem` | [ofNat_hadamard_adjMatrix](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/ofnat-hadamard-adjmatrix.md) | 457 | `result-track:bf57e36894cc449e996f5e09b9776b13f4fd685608d1b5a9529985ad57be1a1d` |
| 68 | `theorem` | [adjMatrix_hadamard_intCast](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/adjmatrix-hadamard-intcast.md) | 460 | `result-track:9f4e4dd54daf771a7d33eb140ca220424191ff8657d7f9686702f857e9a70eed` |
| 69 | `theorem` | [intCast_hadamard_adjMatrix](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/intcast-hadamard-adjmatrix.md) | 463 | `result-track:9980a6f92a56c42638ff176d804712fa99296fb43c60c9444a0db23b39051592` |
| 70 | `theorem` | [adjMatrix_hadamard_one](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/adjmatrix-hadamard-one.md) | 466 | `result-track:4b5e0e387d0e9324f5b3ec06920d9fd8c30acced56a865c1bb7c239fb021f425` |
| 71 | `theorem` | [one_hadamard_adjMatrix](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/one-hadamard-adjmatrix.md) | 469 | `result-track:226802766b21112e1e46109ca9daf89b6866ee4f8072b981e6eca19cff4036ba` |
| 72 | `theorem` | [adjMatrix_toGraph_eq](../../../../../Combinatorics/GraphTheory/AdjMatrixNamespacedPublic.lean/declarations/adjmatrix-tograph-eq.md) | 483 | `result-track:cb295ad0ea198f8fb86dc4179268d5bb6a1602a455191117e3e149c617ff7ee4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=252ebc90c44f6dd4d3788f598d2efb8724afb85ca91bc5f8e057ebd88223c0c5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/AdjMatrix/Variant485cda56d31ff92ca7a95e7be4e4455ba22ba5c90b103e6dbb66fcf8804a2370.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/AdjMatrix/Variant485cda56d31ff92ca7a95e7be4e4455ba22ba5c90b103e6dbb66fcf8804a2370.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
