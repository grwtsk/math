# Verification target: Matrix Symmetric Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69ff49a8f37d99272939c82a32a4db779aa02a3e",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Symmetric/Variantba4b006df22b2d4e936bb4f338b54e07f3a4664a6e08f7700a061eda6b4d02de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetricPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetricPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69ff49a8f37d99272939c82a32a4db779aa02a3e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Symmetric/Variantba4b006df22b2d4e936bb4f338b54e07f3a4664a6e08f7700a061eda6b4d02de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Symmetric/Variantba4b006df22b2d4e936bb4f338b54e07f3a4664a6e08f7700a061eda6b4d02de.lean.json)

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
| 1 | `def` | [IsSymm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetricPublic.lean/declarations/issymm.md) | 35 | `declaration-track:3596906af1f0594a5d0e5ec703405d04f1f3f608ec5347da93de6217250f642e` |
| 2 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetricPublic.lean/declarations/instance.md) | 38 | `declaration-track:c0127ee4cee57f3459f554dbc7a81f05db9f3d275ba5eebb8a14a7c070601238` |
| 3 | `theorem` | [IsSymm.eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetricPublic.lean/declarations/issymm-eq.md) | 41 | `result-track:08eec67b0e524505058d8f7a69e793f927892677321a8658d8e92cb1dd99ed3f` |
| 4 | `theorem` | [IsSymm.ext_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetricPublic.lean/declarations/issymm-ext-iff.md) | 45 | `result-track:675364e326c6a97eeabf11e5e5c942a69d2487faec009131d677d27b55451fd4` |
| 5 | `theorem` | [IsSymm.ext](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetricPublic.lean/declarations/issymm-ext.md) | 49 | `result-track:561de73c3f7b0b03025aba000417b4e34d7c056907a4872ec5fb20492ea9fd69` |
| 6 | `theorem` | [IsSymm.apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetricPublic.lean/declarations/issymm-apply.md) | 52 | `result-track:ee8866757bae7369edc546221c5e1118a4d9c2d91ff46aa3d4e3642485c14dc7` |
| 7 | `theorem` | [isSymm_mul_transpose_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetricPublic.lean/declarations/issymm-mul-transpose-self.md) | 55 | `result-track:c7c193918e5190875d09368951dfc37e5786b00048dcceadd09118aaa822635f` |
| 8 | `theorem` | [isSymm_transpose_mul_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetricPublic.lean/declarations/issymm-transpose-mul-self.md) | 59 | `result-track:54053fec012f4bec8e642eccb4f7456bc4c2863311fad3c452714dc508bd8dd0` |
| 9 | `theorem` | [isSymm_add_transpose_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetricPublic.lean/declarations/issymm-add-transpose-self.md) | 63 | `result-track:b7e3ef68eedffa77692598c8505f89958fcc336dc7011e224a7d100d2d90f65a` |
| 10 | `theorem` | [isSymm_transpose_add_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetricPublic.lean/declarations/issymm-transpose-add-self.md) | 66 | `result-track:e4096b4211f67b04a0ba206092a748e2e99997076205625d7d2290e2991b0534` |
| 11 | `theorem` | [isSymm_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetricPublic.lean/declarations/issymm-zero.md) | 70 | `result-track:2004cff6b5c08699ce566e2161f7a72095ecf86b31ac8edcaa94d0fae3895240` |
| 12 | `theorem` | [isSymm_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetricPublic.lean/declarations/issymm-one.md) | 74 | `result-track:af447edb159b0e605095accf0f57b0fe7c9764a279f219c809b48a62ec004376` |
| 13 | `theorem` | [IsSymm.pow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetricPublic.lean/declarations/issymm-pow.md) | 77 | `result-track:a880025aa9f218fda896d2ae6d2b94c2789ec177c36b6924567fecbc45ac1dca` |
| 14 | `theorem` | [IsSymm.map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetricPublic.lean/declarations/issymm-map.md) | 83 | `result-track:5d8af6c2af7819146792f0c57e297c9a2e193c41fccc6ee3e9589e0ef9735c56` |
| 15 | `theorem` | [isSymm_map_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetricPublic.lean/declarations/issymm-map-iff.md) | 87 | `result-track:0f6aacde8e62dace35ba1c65203b30f6b9fc38d329df177130c36592147b7664` |
| 16 | `theorem` | [IsSymm.transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetricPublic.lean/declarations/issymm-transpose.md) | 91 | `result-track:191859ba52a09340f24ca399fce413779afe6d12022c3d31e19b2f2adc53dd9a` |
| 17 | `theorem` | [isSymm_transpose_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetricPublic.lean/declarations/issymm-transpose-iff.md) | 95 | `result-track:2cb05e7ecc4c463d4d834ba2ddef3c12b010b61635fc5d85ac55ee4820b50b79` |
| 18 | `theorem` | [IsSymm.conjTranspose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetricPublic.lean/declarations/issymm-conjtranspose.md) | 101 | `result-track:f24b9cf90d0c86497c6d486095b93ed82101f2e2cc554b0c51db1365025c9cd4` |
| 19 | `theorem` | [isSymm_conjTranspose_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetricPublic.lean/declarations/issymm-conjtranspose-iff.md) | 105 | `result-track:4df0be852541ee77f9ed4b69bc1e7bc436e6fefdb5e01e95b6092b6188241231` |
| 20 | `theorem` | [IsSymm.neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetricPublic.lean/declarations/issymm-neg.md) | 111 | `result-track:c48aba704f4ec150cca37413492ee861fd572a89fb431b120342f896678805fe` |
| 21 | `theorem` | [isSymm_neg_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetricPublic.lean/declarations/issymm-neg-iff.md) | 115 | `result-track:a16c0032c9b7e29790f08bdc35c28c75d1e806c5cb082ddda54aba5c72b4e2a7` |
| 22 | `theorem` | [IsSymm.add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetricPublic.lean/declarations/issymm-add.md) | 121 | `result-track:20554bfbb4e132f6032a05620aa6b289359c99473089d6124263cb94977b0abe` |
| 23 | `theorem` | [IsSymm.sub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetricPublic.lean/declarations/issymm-sub.md) | 125 | `result-track:3f9f0cd9b9504f1e3848c0b918411ecb0ba2b6d43c3a36576354c505ce6a3f85` |
| 24 | `theorem` | [IsSymm.smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetricPublic.lean/declarations/issymm-smul.md) | 129 | `result-track:a1ea90fab024f97fcdda2b6a9eef13ee8219feb914d0beb4b278ee7cb4a50baf` |
| 25 | `theorem` | [isSymm_smul_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetricPublic.lean/declarations/issymm-smul-iff.md) | 133 | `result-track:85a909e41975b6a4bf2fad8daf74269ed1a695fc29d250f5b90a122955bfc25b` |
| 26 | `lemma` | [IsSymm.dotProduct_mulVec_comm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetricPublic.lean/declarations/issymm-dotproduct-mulvec-comm.md) | 139 | `result-track:d8d743536ab015232a190994c58e28bb5c91223299c975aa37627b4abe5f0915` |
| 27 | `theorem` | [IsSymm.submatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetricPublic.lean/declarations/issymm-submatrix.md) | 145 | `result-track:197456d88b65bd1f44c2d66b37b1ad1bcf010919e0ff511baeed7be0c398b2b1` |
| 28 | `theorem` | [IsSymm.reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetricPublic.lean/declarations/issymm-reindex.md) | 148 | `result-track:bd9610d9999c9581d8021ac59310a6d924f7a4d2831328644a495d5127abc188` |
| 29 | `theorem` | [isSymm_reindex_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetricPublic.lean/declarations/issymm-reindex-iff.md) | 152 | `result-track:4748837043267a52e7fa14f436f73f281bf7f0222c6c67dc1e0b66a7acc5b8a0` |
| 30 | `theorem` | [isSymm_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetricPublic.lean/declarations/issymm-diagonal.md) | 158 | `result-track:a825a8aa4f812fadaf84a44194e2ca1f6a1f214c273b76738e1a90a0684cc4f0` |
| 31 | `theorem` | [IsSymm.fromBlocks](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetricPublic.lean/declarations/issymm-fromblocks.md) | 163 | `result-track:9cb7c50a99d0563eb2e02967b26877d81bc05f6c6b98619a1e0314d6d69237fb` |
| 32 | `theorem` | [isSymm_fromBlocks_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetricPublic.lean/declarations/issymm-fromblocks-iff.md) | 173 | `result-track:2f502f110f02b336d44d8d99100a760dfc94f23844343b1b40d7502d31ad2769` |
| 33 | `theorem` | [isSymm_comp_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetricPublic.lean/declarations/issymm-comp-iff.md) | 180 | `result-track:5ad4a15a9f3b12f6398ca6a268969e1f7f75eee8b8bb566603fc73fbf4412e4f` |
| 34 | `theorem` | [isSymm_comp_iff_forall](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetricPublic.lean/declarations/issymm-comp-iff-forall.md) | 185 | `result-track:e6b18f86f6a06d787de443cb6c00984c21282b43e561b4c7bfbec4df9c0dfbca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=21e15d637db80b1739b7577f131d117f247eb3f450770886cf3cbd9bcc2fe25a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Symmetric/Variantba4b006df22b2d4e936bb4f338b54e07f3a4664a6e08f7700a061eda6b4d02de.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Symmetric/Variantba4b006df22b2d4e936bb4f338b54e07f3a4664a6e08f7700a061eda6b4d02de.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
