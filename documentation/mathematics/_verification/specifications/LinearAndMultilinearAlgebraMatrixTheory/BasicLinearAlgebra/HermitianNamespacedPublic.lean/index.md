# Verification target: Hermitian Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad46fccc48a6fcfaf8890d5a61235c54094dbcba",
  "lexical_observation_count": 62,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Hermitian/Variant878afe7cd5de460b91c57d2e08a174d1c281f165ab7ae47cb91b5f6cc7934355.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad46fccc48a6fcfaf8890d5a61235c54094dbcba`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Hermitian/Variant878afe7cd5de460b91c57d2e08a174d1c281f165ab7ae47cb91b5f6cc7934355.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Hermitian/Variant878afe7cd5de460b91c57d2e08a174d1c281f165ab7ae47cb91b5f6cc7934355.lean.json)

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
| 1 | `def` | [IsHermitian](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/declarations/ishermitian.md) | 52 | `declaration-track:646070508fb8e2f4c69b6d6ce43a0336b174acb9b0408ee55e9f98ba06a6c592` |
| 2 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/declarations/instance.md) | 54 | `declaration-track:53164a553dacaf14d30311ed462275ff8dd44fa6a0d62cce0f6df7e0587560e6` |
| 3 | `theorem` | [IsHermitian.eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/declarations/ishermitian-eq.md) | 57 | `result-track:f2093b5bf5b0a587a0d9371f4fe1dd39ae44ac087d08afb199bf3eedc159392e` |
| 4 | `theorem` | [isHermitian_iff_isSelfAdjoint](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/declarations/ishermitian-iff-isselfadjoint.md) | 59 | `result-track:4f698d7dea263339e9337317dba6092f5e01ee5416f9d709ae030fd681e84e7b` |
| 5 | `theorem` | [IsHermitian.star_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/declarations/ishermitian-star-eq.md) | 65 | `result-track:2b97fe25262a557976dc418156e278a884782bd75ff2b9f90fe589d735d20663` |
| 6 | `theorem` | [IsHermitian.ext](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/declarations/ishermitian-ext.md) | 67 | `result-track:a8c01ce2353787629d3dde33e9ef148696f28e3f63248a2e74181f69f2840326` |
| 7 | `theorem` | [IsHermitian.apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/declarations/ishermitian-apply.md) | 70 | `result-track:448d655dd3023699659722797ae1a7c06f34c4bca15b617d0f1ff9c177a0afd1` |
| 8 | `theorem` | [IsHermitian.ext_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/declarations/ishermitian-ext-iff.md) | 73 | `result-track:01b437190622d8ebc355bad71aa792071c90cbb9d2dbd996e5145d319f47659b` |
| 9 | `lemma` | [isHermitian_iff_isSymm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/declarations/ishermitian-iff-issymm.md) | 76 | `result-track:77aa3fa32fd32dfda5298f0db9b81c6fc18bbcfe4e641f8b7102f1a6548c31d8` |
| 10 | `lemma` | [IsHermitian.isSymm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/declarations/ishermitian-issymm.md) | 80 | `result-track:fe8ffa1de4450d030d1ba2644329c29ac8d91189a76225ed06427217912cdc53` |
| 11 | `theorem` | [IsHermitian.map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/declarations/ishermitian-map.md) | 84 | `result-track:3c9d53318cf532b6bfbd40b2791daac872c48c08f2370ac4d99d504e5f403607` |
| 12 | `theorem` | [isHermitian_map_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/declarations/ishermitian-map-iff.md) | 89 | `result-track:42f79f0857c1b9d7377101935842a68cbc36b2012def105abe847f542abc127a` |
| 13 | `theorem` | [IsHermitian.of_subsingleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/declarations/ishermitian-of-subsingleton.md) | 94 | `result-track:6fa3bd4e21803633da1f877eee7abe9cf675d214501bfa55c3fd5761c77c0591` |
| 14 | `theorem` | [IsHermitian.transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/declarations/ishermitian-transpose.md) | 97 | `result-track:f0e30f70a5e5065a2ecc1bf991e663e54f8dc226d2712224edbb01e074762441` |
| 15 | `theorem` | [isHermitian_transpose_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/declarations/ishermitian-transpose-iff.md) | 102 | `result-track:7dd11f5a263d5bd72aa3a9a8e35ad0b8507294e0dd56a41bf88ea5e085a2566d` |
| 16 | `theorem` | [IsHermitian.conjTranspose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/declarations/ishermitian-conjtranspose.md) | 105 | `result-track:dc04a3a105a9c98acbbe3856d06bd37a8a21da3f75e5dc8355cd406cdb12cdf2` |
| 17 | `theorem` | [IsHermitian.submatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/declarations/ishermitian-submatrix.md) | 109 | `result-track:e9437279495531c01c8c7b1f607798f30db3ee9a0925da10922cfc2397262a3b` |
| 18 | `theorem` | [isHermitian_submatrix_equiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/declarations/ishermitian-submatrix-equiv.md) | 113 | `result-track:528c70f59dd66667ae0a57d4b6246ac86b3f473cc0156b1747918ca3633dd9fd` |
| 19 | `theorem` | [IsHermitian.reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/declarations/ishermitian-reindex.md) | 117 | `result-track:70904946ab15ca24ff84f96ef292a623e13b84f08868921882cc4f62f265a1b1` |
| 20 | `theorem` | [isHermitian_reindex_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/declarations/ishermitian-reindex-iff.md) | 122 | `result-track:b7c1db0ed27d18090d7fe45d32af687dab8cb45dcd82d4c0f61032b7bdecda6b` |
| 21 | `theorem` | [conjTranspose_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/declarations/conjtranspose-comp.md) | 127 | `result-track:1a70066c1162cf276afea4e141dee0fb6c427d075247f5b2e3ea4d4af238966a` |
| 22 | `theorem` | [conjTranspose_comp'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/declarations/conjtranspose-comp-source-edition-2.md) | 132 | `result-track:51bb355a2e7e5967081f6aa282f47517583f32e3119d1c4a0100a43084ac7379` |
| 23 | `theorem` | [isHermitian_comp_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/declarations/ishermitian-comp-iff.md) | 136 | `result-track:893b06018e9919a49a46542e2f44b5830459e0eb7bbd01fa05eef8994024416a` |
| 24 | `theorem` | [isHermitian_comp_iff_forall](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/declarations/ishermitian-comp-iff-forall.md) | 140 | `result-track:8935f83975c9e68e127ee7c3bb9148f9f95da4fca7b3c41f5cb65040fc2e0d32` |
| 25 | `theorem` | [isHermitian_conjTranspose_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/declarations/ishermitian-conjtranspose-iff.md) | 152 | `result-track:07344013328dcd9982ac2882bf19ff3d7919e229464ee20d4ced32ab928e4d62` |
| 26 | `theorem` | [IsHermitian.fromBlocks](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/declarations/ishermitian-fromblocks.md) | 157 | `result-track:5697ef4e2f0ff4014f6111467afbf038c0d0c1108a8a1316b8e42941910393f6` |
| 27 | `theorem` | [isHermitian_fromBlocks_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/declarations/ishermitian-fromblocks-iff.md) | 165 | `result-track:0cb183134176c210680e39b8ea8b411c48fbad2fd125d2ffd5436d6692ef2164` |
| 28 | `theorem` | [IsHermitian.hadamard](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/declarations/ishermitian-hadamard.md) | 176 | `result-track:29a9d0c4c65cf37438d629ae6dc30d41f73c88f337a6f72bd59ac6c0f7f92068` |
| 29 | `theorem` | [isHermitian_diagonal_of_self_adjoint](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/declarations/ishermitian-diagonal-of-self-adjoint.md) | 185 | `result-track:23dad84de8da96d13139c5a3afe24b4950b529379507f0687d16e90384ba6cc9` |
| 30 | `lemma` | [isHermitian_diagonal_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/declarations/ishermitian-diagonal-iff.md) | 191 | `result-track:ea5b0988cdbf7b1a3e6f16fe4bd7de88c7f23de76ac68925c576be5eb6f6a518` |
| 31 | `theorem` | [isHermitian_blockDiagonal'_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/declarations/ishermitian-blockdiagonal-iff.md) | 196 | `result-track:7bc5de7eced7cfac87a8c213d6f5a8ce4083312ab6acb3b7a16355bbe24f9db2` |
| 32 | `theorem` | [isHermitian_blockDiagonal_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/declarations/ishermitian-blockdiagonal-iff-source-edition-2.md) | 202 | `result-track:ec63d111945c245e0049d2f204dd66a4030a6e9b81921a5beaf4f15c49677b5a` |
| 33 | `theorem` | [isHermitian_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/declarations/ishermitian-diagonal.md) | 208 | `result-track:d4def24acc33290b5b5fed843ad871487ae2e4e643d42051be4bb1802c1ae333` |
| 34 | `theorem` | [isHermitian_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/declarations/ishermitian-zero.md) | 213 | `result-track:7673696f37357d070307b0602406008d04c10b5c6b67914d0d8b11ea0519a562` |
| 35 | `theorem` | [IsHermitian.add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/declarations/ishermitian-add.md) | 217 | `result-track:dff59309dbf8885df1dbbb64eb2f26e69609703761638447295bc20382ddb9cd` |
| 36 | `theorem` | [isHermitian_add_transpose_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/declarations/ishermitian-add-transpose-self.md) | 227 | `result-track:f55fe99f0bec5cc7971ab6afc552a92608fc37965c834da7968fbbb455e9d822` |
| 37 | `theorem` | [isHermitian_transpose_add_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/declarations/ishermitian-transpose-add-self.md) | 230 | `result-track:0d45c2db16e74cb9a0dc61ecd451a45bcbe0ce96ca0eba179d70af6e25c54cf9` |
| 38 | `theorem` | [IsHermitian.neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/declarations/ishermitian-neg.md) | 240 | `result-track:fba74054e20218b5ca9bc34a36c3383bc1d98a1be9f439009832c2da651dd512` |
| 39 | `theorem` | [isHermitian_neg_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/declarations/ishermitian-neg-iff.md) | 244 | `result-track:ea56abd5629433143326449496c2dcbc7719aab22bae9e9a882685c257e97174` |
| 40 | `theorem` | [IsHermitian.sub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/declarations/ishermitian-sub.md) | 250 | `result-track:1a2711917856c3fe053e0b58ad4e768d3fc27b023e7b8a887442042adaf400f0` |
| 41 | `theorem` | [IsHermitian.smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/declarations/ishermitian-smul.md) | 260 | `result-track:98b2ae3fbafb8e7b66f2777cce4b449c0882ab94529d4292fda76a8b48a96703` |
| 42 | `theorem` | [IsHermitian.of_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/declarations/ishermitian-of-smul.md) | 270 | `result-track:33d081d3de2446841a0e9ea2aefa94e7688f6425af618aba0429da2f55118153` |
| 43 | `theorem` | [IsHermitian.of_smul'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/declarations/ishermitian-of-smul-source-edition-2.md) | 277 | `result-track:6eac9c41d87f6c6682763c86075cf6e6959491c7e441dd5b6866fa489aa76fa2` |
| 44 | `theorem` | [isHermitian_smul_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/declarations/ishermitian-smul-iff.md) | 283 | `result-track:7b1b5f87f22924a074f39b8eb854c2e38db5e7afce72c6111a606f246817a63d` |
| 45 | `theorem` | [isHermitian_mul_conjTranspose_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/declarations/ishermitian-mul-conjtranspose-self.md) | 294 | `result-track:1cca77a25d2b03d5712b2953a2d52e32d8a1568a7b9f48b8a8d12ed3427363c4` |
| 46 | `theorem` | [isHermitian_conjTranspose_mul_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/declarations/ishermitian-conjtranspose-mul-self.md) | 298 | `result-track:e26f97b9bcfcec4b4ecfb578ee13eab5aefe0e75db1ed8878a0cc3aad55956aa` |
| 47 | `theorem` | [isHermitian_conjTranspose_mul_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/declarations/ishermitian-conjtranspose-mul-mul.md) | 303 | `result-track:265b9dd67a438cb37c9aab7f176681d10dd3d5305f5c02e723e0894987c9b3a1` |
| 48 | `theorem` | [isHermitian_mul_mul_conjTranspose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/declarations/ishermitian-mul-mul-conjtranspose.md) | 308 | `result-track:5bdb61427c18354975521715b9760fb9bf4a5a4ae4d8c9a75838aa7da670cdbf` |
| 49 | `lemma` | [IsHermitian.commute_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/declarations/ishermitian-commute-iff.md) | 312 | `result-track:eff25bfecc9fd245b0da67e61172a713f1b4edd9a5bc5e11f510b2905389d3d9` |
| 50 | `lemma` | [IsHermitian.star_dotProduct_mulVec_comm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/declarations/ishermitian-star-dotproduct-mulvec-comm.md) | 316 | `result-track:f5bacf6b125dd70dc9fc55cec366d5e230e559daa53711c43fc5d324165e869a` |
| 51 | `theorem` | [isHermitian_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/declarations/ishermitian-one.md) | 330 | `result-track:985857f0235e98c4d0c4a63c5090225453544dd67e385439ac286ccf039de70c` |
| 52 | `theorem` | [isHermitian_natCast](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/declarations/ishermitian-natcast.md) | 340 | `result-track:7f33dd24664f1e2ba68a6fcc0e1a801809b5ffa6169559c9e91677da968d111b` |
| 53 | `theorem` | [IsHermitian.pow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/declarations/ishermitian-pow.md) | 343 | `result-track:5d7d74333d06bb662ec43c7bb22bc8c71a2bc9c4e776f65352967c2689c57352` |
| 54 | `theorem` | [isHermitian_intCast](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/declarations/ishermitian-intcast.md) | 352 | `result-track:b6d1b1c6d61c0ec8619907807860bfdfb54879a7c7b3011e05b081b6325d258e` |
| 55 | `theorem` | [IsHermitian.inv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/declarations/ishermitian-inv-source-edition-2.md) | 361 | `result-track:ad85829c35fe8448ccc312bd3b1eb0c89096a62577766ce71c0a1e71cea0b0a9` |
| 56 | `theorem` | [isHermitian_inv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/declarations/ishermitian-inv.md) | 365 | `result-track:57bb80dbab2cf2739b4b2b2adc963a3075011fa308e05cc03179ed8ee8d5708b` |
| 57 | `theorem` | [IsHermitian.adjugate](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/declarations/ishermitian-adjugate.md) | 369 | `result-track:fee67f86c7f7263ac9a4404f53366a9c876331e3e968d9a258af07fa7f1b9007` |
| 58 | `theorem` | [IsHermitian.zpow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/declarations/ishermitian-zpow.md) | 373 | `result-track:1bfdce2b792a36a8e5ad5435781e943da9b205839c039550e3b8b54e0fcbf52e` |
| 59 | `theorem` | [schur_complement_eq₁₁](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/declarations/schur-complement-eq-source-edition-2.md) | 383 | `result-track:dcb79fb025eaeedc27076081a19cc7557f4932be8b0fd535e5f1c0abc40a7b5f` |
| 60 | `theorem` | [schur_complement_eq₂₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/declarations/schur-complement-eq.md) | 394 | `result-track:d0fbfd9817c799bd1fe1f1a8442e7a134fe7a998ea5c2f75d94ffcee299b2e2c` |
| 61 | `theorem` | [fromBlocks₁₁](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/declarations/fromblocks-source-edition-2.md) | 407 | `result-track:72eb454c42f6ee6fbd1281bddceb99bb14ac0271fdf2a7e1e8f57f0adc45862c` |
| 62 | `theorem` | [fromBlocks₂₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespacedPublic.lean/declarations/fromblocks.md) | 415 | `result-track:2cc73214b30b73e9b2f8709b7343f972507f27bf51489f3522974d9236529e20` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=acb0a988efe6fa4874798d2a0764efa88b1db9fe2e20dca5bfbabf8949c0d1c5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Hermitian/Variant878afe7cd5de460b91c57d2e08a174d1c281f165ab7ae47cb91b5f6cc7934355.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Hermitian/Variant878afe7cd5de460b91c57d2e08a174d1c281f165ab7ae47cb91b5f6cc7934355.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
