# Verification target: Hermitian Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f731d5d3ec8ac4ac509d6d4e91c5801649a53c89",
  "lexical_observation_count": 62,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Hermitian/Variante1049d899234591fa7a07ca2e1301d370511384975875baf253bebc3852d045d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f731d5d3ec8ac4ac509d6d4e91c5801649a53c89`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Hermitian/Variante1049d899234591fa7a07ca2e1301d370511384975875baf253bebc3852d045d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Hermitian/Variante1049d899234591fa7a07ca2e1301d370511384975875baf253bebc3852d045d.lean.json)

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
| 1 | `def` | [IsHermitian](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/declarations/ishermitian.md) | 44 | `declaration-track:b414b1311f5a28e947b2c1b9623cf82e0433ca5341c27c33a5841e9c0802d717` |
| 2 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/declarations/instance.md) | 46 | `declaration-track:c3e54d745e552055e105af1cc0e282b6682bba041869d01f526948e30999698a` |
| 3 | `theorem` | [IsHermitian.eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/declarations/ishermitian-eq.md) | 49 | `result-track:1134b8b87b77963685010b5506c4ef07947f1d884a7969d3c64b03ea32184a23` |
| 4 | `theorem` | [isHermitian_iff_isSelfAdjoint](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/declarations/ishermitian-iff-isselfadjoint.md) | 51 | `result-track:ecce3221ebbdf057df2eaee51cbd2c8f6b4e8bb30ddd68b06db23f81b5246fa4` |
| 5 | `theorem` | [IsHermitian.star_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/declarations/ishermitian-star-eq.md) | 57 | `result-track:c89f5916249306d8a4b4ee9cf5917312a0ee81212b79c706788b4320ee109849` |
| 6 | `theorem` | [IsHermitian.ext](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/declarations/ishermitian-ext.md) | 59 | `result-track:c9eab707de476c43e424129cb15b43fa5a44f9068892b3e81e0f1a4f7ad05f26` |
| 7 | `theorem` | [IsHermitian.apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/declarations/ishermitian-apply.md) | 62 | `result-track:d778a501aca800a5c871f52d1ad875499f71bf6f22c793b0af7d33dac45a7d88` |
| 8 | `theorem` | [IsHermitian.ext_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/declarations/ishermitian-ext-iff.md) | 65 | `result-track:e2b3656b5835af9f8dd79509b34675709fcb4c6c1f364d3c793fee64719ae3da` |
| 9 | `lemma` | [isHermitian_iff_isSymm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/declarations/ishermitian-iff-issymm.md) | 68 | `result-track:0e0229b1da30f23b56db4c53fdcec4169ac5bee22fd33b209fa9d157e3ac2dea` |
| 10 | `lemma` | [IsHermitian.isSymm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/declarations/ishermitian-issymm.md) | 72 | `result-track:f334279d757270e0a5289b1e86aa938d92516b5e7371e2e6c4f141e19d97c5a0` |
| 11 | `theorem` | [IsHermitian.map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/declarations/ishermitian-map.md) | 76 | `result-track:ffb65717b384c431e67f61eaae2a3491f684658ff503e04365399afa31e8d715` |
| 12 | `theorem` | [isHermitian_map_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/declarations/ishermitian-map-iff.md) | 81 | `result-track:242dc049f6c7165a4586588c5ecb91938ea389b353110e47b7fea58fac6d1c9b` |
| 13 | `theorem` | [IsHermitian.of_subsingleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/declarations/ishermitian-of-subsingleton.md) | 86 | `result-track:15b0a74944d2835161e79dd55eeb6b0fe69c2620c3a1cc9c78e5423cd953d596` |
| 14 | `theorem` | [IsHermitian.transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/declarations/ishermitian-transpose.md) | 89 | `result-track:9e7c7c8233dc3c67c3313ba4e46f10e205c7883ec8f222447aa9a30d87c8635e` |
| 15 | `theorem` | [isHermitian_transpose_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/declarations/ishermitian-transpose-iff.md) | 94 | `result-track:deaa7eac31fd52bd240f1202bf52b769e3a5dd4bbed8aebcad71a597bb0affd9` |
| 16 | `theorem` | [IsHermitian.conjTranspose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/declarations/ishermitian-conjtranspose.md) | 97 | `result-track:6e2aa16c5a163b24e3d2d0e116036f83c1c1f0e366c60f115aab0fcde6752da3` |
| 17 | `theorem` | [IsHermitian.submatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/declarations/ishermitian-submatrix.md) | 101 | `result-track:58029ea97d835d236b1ac91d87198fa0a5e2d68170aba857c736f0d8f77106c8` |
| 18 | `theorem` | [isHermitian_submatrix_equiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/declarations/ishermitian-submatrix-equiv.md) | 105 | `result-track:fa71d0b422b1742c1eae8b2aecf7f0515a6cc72d2c279da2b64734cd5ab111d5` |
| 19 | `theorem` | [IsHermitian.reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/declarations/ishermitian-reindex.md) | 109 | `result-track:2412c57357983665873cbd154d57db96564012f99dfb60ddc71b9ed1c29c999b` |
| 20 | `theorem` | [isHermitian_reindex_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/declarations/ishermitian-reindex-iff.md) | 114 | `result-track:19f4fa205efcd7b0727bff4680633f0e2b610cf82f8365e1516457de406e2271` |
| 21 | `theorem` | [conjTranspose_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/declarations/conjtranspose-comp.md) | 119 | `result-track:1c7b9e799ad3fc68e1ed99e31822ed1b80902cbdfb581b8058308514df95b16b` |
| 22 | `theorem` | [conjTranspose_comp'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/declarations/conjtranspose-comp-source-edition-2.md) | 124 | `result-track:42b4c5441fd47657af5bd318d06209f78ae321041c9a6d7a716888d5dfa79283` |
| 23 | `theorem` | [isHermitian_comp_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/declarations/ishermitian-comp-iff.md) | 128 | `result-track:9d6e9e00bf656f0115d7120490219c4051ba4c260745d3c9aab638bcc9f62ef1` |
| 24 | `theorem` | [isHermitian_comp_iff_forall](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/declarations/ishermitian-comp-iff-forall.md) | 132 | `result-track:ff9300ee79a6f7cf2cba483246b094f14f7f1c9ce665b3e87a69bec850276a6c` |
| 25 | `theorem` | [isHermitian_conjTranspose_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/declarations/ishermitian-conjtranspose-iff.md) | 144 | `result-track:385b13736839f84093e867a5c4aeab20a61f8ef806f8d0ec532f1c6f27ba2bbd` |
| 26 | `theorem` | [IsHermitian.fromBlocks](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/declarations/ishermitian-fromblocks.md) | 149 | `result-track:184a0e5c6e6a058f1cc67fcee07e9013a0345b653047b022db486d213e51037f` |
| 27 | `theorem` | [isHermitian_fromBlocks_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/declarations/ishermitian-fromblocks-iff.md) | 157 | `result-track:ec4c61a81f0d8df42813aa90d19d4821390e5baa725370fc7ddc97dc72ead715` |
| 28 | `theorem` | [IsHermitian.hadamard](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/declarations/ishermitian-hadamard.md) | 168 | `result-track:28505b8f925b7e7e53bb0889b9eaa17faf105f13057ea35dbc35507965d7230a` |
| 29 | `theorem` | [isHermitian_diagonal_of_self_adjoint](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/declarations/ishermitian-diagonal-of-self-adjoint.md) | 177 | `result-track:d6ecacd6524d2d71dc1861ec0b12b05525489dac4d86b760658ea792b12ec07b` |
| 30 | `lemma` | [isHermitian_diagonal_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/declarations/ishermitian-diagonal-iff.md) | 183 | `result-track:1c6de661e8bf91add73682ea9ca16babcb02e46a73c79667638c810b94460a76` |
| 31 | `theorem` | [isHermitian_blockDiagonal'_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/declarations/ishermitian-blockdiagonal-iff.md) | 188 | `result-track:b3f0b380e52e4d0057075b208c80458d723bb926fa14215a9ae81e27fee6e8c9` |
| 32 | `theorem` | [isHermitian_blockDiagonal_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/declarations/ishermitian-blockdiagonal-iff-source-edition-2.md) | 194 | `result-track:c26df89d6b60ceccb4c24be6c9e9f6d99973bbe3beab0cb1b4fdc872d3f9cc98` |
| 33 | `theorem` | [isHermitian_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/declarations/ishermitian-diagonal.md) | 200 | `result-track:732676addfea6240279d3a526a643b8a0790b8e87b73de3d17067cdd9a866453` |
| 34 | `theorem` | [isHermitian_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/declarations/ishermitian-zero.md) | 205 | `result-track:b70a4b4075950d2f7bb1a5a9615b720a8a939075c98b0865ee465de7afcd9efb` |
| 35 | `theorem` | [IsHermitian.add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/declarations/ishermitian-add.md) | 209 | `result-track:39f3d5fbefc2409021e54cf0f4b6438b35566ec6c6219f8213c13a38e4d1aaa8` |
| 36 | `theorem` | [isHermitian_add_transpose_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/declarations/ishermitian-add-transpose-self.md) | 219 | `result-track:38dbd15cdada1685e728be93685504430c34adaf21aa888610e7d949aba347c4` |
| 37 | `theorem` | [isHermitian_transpose_add_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/declarations/ishermitian-transpose-add-self.md) | 222 | `result-track:9e42f869470791525edcf257ff80292e5296c93aca19fde5416db56681c1f119` |
| 38 | `theorem` | [IsHermitian.neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/declarations/ishermitian-neg.md) | 232 | `result-track:f071b34dc0059315696543eb1d3bc444c8f449ec3603ccf8f40e2d377c4737b1` |
| 39 | `theorem` | [isHermitian_neg_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/declarations/ishermitian-neg-iff.md) | 236 | `result-track:0604e66ea0da253cfecb556482efc45b163a05a6e0f36da5662e17252f23165e` |
| 40 | `theorem` | [IsHermitian.sub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/declarations/ishermitian-sub.md) | 242 | `result-track:f5ba0b9adf9bf10940c1586931cf54e77d4cd0e54dfcb74220ca8bfa31efb2a1` |
| 41 | `theorem` | [IsHermitian.smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/declarations/ishermitian-smul.md) | 252 | `result-track:4e1d4b4ace09e247d079ab35c3851e0f60331450d9c13ae63748676d894785b7` |
| 42 | `theorem` | [IsHermitian.of_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/declarations/ishermitian-of-smul.md) | 262 | `result-track:9d06409612125f526ad2837bdf777ec57ed9172a2e2de1c0b5f581e6835cc539` |
| 43 | `theorem` | [IsHermitian.of_smul'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/declarations/ishermitian-of-smul-source-edition-2.md) | 269 | `result-track:a7b55a7f934d89d3a1685bb83e23464215219cebee1e1c0c5be5e8b0732bda01` |
| 44 | `theorem` | [isHermitian_smul_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/declarations/ishermitian-smul-iff.md) | 275 | `result-track:dd0a6ea770985f52ffda3703efa0980f80e444b34ea7b96a4c30d0f12c4f9915` |
| 45 | `theorem` | [isHermitian_mul_conjTranspose_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/declarations/ishermitian-mul-conjtranspose-self.md) | 286 | `result-track:9adef6f6ce3fcbf9cc65539a38fc6e965845401649d89eca0c6a482f3ba1a02d` |
| 46 | `theorem` | [isHermitian_conjTranspose_mul_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/declarations/ishermitian-conjtranspose-mul-self.md) | 290 | `result-track:9bfd39bb847da203d31426affb0829e03fe9ab5898a6b225921c7e1b78f8f541` |
| 47 | `theorem` | [isHermitian_conjTranspose_mul_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/declarations/ishermitian-conjtranspose-mul-mul.md) | 295 | `result-track:9442bc2492a71baac82ab548ec2f045a90e92deb9f5cbeb2a2f29f3e03ea8071` |
| 48 | `theorem` | [isHermitian_mul_mul_conjTranspose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/declarations/ishermitian-mul-mul-conjtranspose.md) | 300 | `result-track:638fdd015103abefa15df8d445631df5550f1f26a2dde29bff93858166e9107a` |
| 49 | `lemma` | [IsHermitian.commute_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/declarations/ishermitian-commute-iff.md) | 304 | `result-track:289142c1589d0a735cafd2e44cbef50aebdd8cf80ad942c8c20225fee3d7b89a` |
| 50 | `lemma` | [IsHermitian.star_dotProduct_mulVec_comm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/declarations/ishermitian-star-dotproduct-mulvec-comm.md) | 308 | `result-track:81556b64b092feaa897e884bb20a925efdc03d54d8458f96bf05e3becc363c60` |
| 51 | `theorem` | [isHermitian_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/declarations/ishermitian-one.md) | 322 | `result-track:4e01d2cdb138fbda7441802078139a2fd03b3870933f32e680726814dd519e33` |
| 52 | `theorem` | [isHermitian_natCast](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/declarations/ishermitian-natcast.md) | 332 | `result-track:6ff55707bd8920bff2bfcd6ae9b22664632342cab8a5653fee105879eb61d217` |
| 53 | `theorem` | [IsHermitian.pow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/declarations/ishermitian-pow.md) | 335 | `result-track:4de287d49fbfbcf65212c4c4769a04c6bc592a287b00cd7877423122ca187915` |
| 54 | `theorem` | [isHermitian_intCast](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/declarations/ishermitian-intcast.md) | 344 | `result-track:e6ea27548f73774bd95820da91df4bd8c61f9353b6f0d61a6d14ddf50a6faf83` |
| 55 | `theorem` | [IsHermitian.inv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/declarations/ishermitian-inv.md) | 353 | `result-track:5f9ae8fb5e252c24026d547b2f0864358f7caa95bd9bc988ff6f02478d3a10ee` |
| 56 | `theorem` | [isHermitian_inv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/declarations/ishermitian-inv-source-edition-2.md) | 357 | `result-track:b726dafb375cf97f970117f7135342d4b4185a412875a5fea2f9128b686eea85` |
| 57 | `theorem` | [IsHermitian.adjugate](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/declarations/ishermitian-adjugate.md) | 361 | `result-track:4f0db174d0b65e01c185dda6d270031c6e91d07b2d8aab247dca388380d62697` |
| 58 | `theorem` | [IsHermitian.zpow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/declarations/ishermitian-zpow.md) | 365 | `result-track:e1f839b49df21b2c6fff61a10df99fa183fc1e1103a1589d67b8e004c5a18b4b` |
| 59 | `theorem` | [schur_complement_eq₁₁](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/declarations/schur-complement-eq-source-edition-2.md) | 375 | `result-track:cdf299724f1fd0d20015ae1a43317a8029c51296676e8516f711eabfd86f78bb` |
| 60 | `theorem` | [schur_complement_eq₂₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/declarations/schur-complement-eq.md) | 386 | `result-track:60cb4d7776a2f70926c0967c5c3221fcf62fa9161dd5c2f0c040c14cbd1aacb7` |
| 61 | `theorem` | [fromBlocks₁₁](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/declarations/fromblocks-source-edition-2.md) | 399 | `result-track:466342bf578a8cce85aed0b4620e60b54a84bdc5fbf33c80d93af78bcb8155d7` |
| 62 | `theorem` | [fromBlocks₂₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianPublic.lean/declarations/fromblocks.md) | 407 | `result-track:0ffa37679f65e463a97b5efb3f85d6c27438ff96aba44929e4fc311921384349` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a7108bffec172ff877e5f7066d64f1c157ab19c10d581e25494ed8c09427a3e9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Hermitian/Variante1049d899234591fa7a07ca2e1301d370511384975875baf253bebc3852d045d.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Hermitian/Variante1049d899234591fa7a07ca2e1301d370511384975875baf253bebc3852d045d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
