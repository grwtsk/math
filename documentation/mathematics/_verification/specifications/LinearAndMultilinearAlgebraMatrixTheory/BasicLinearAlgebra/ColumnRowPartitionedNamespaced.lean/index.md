# Verification target: Column Row Partitioned Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e8601dabf9bb81f1f5c31e26c512971f3372652b",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ColumnRowPartitioned/Variant5c4b3a2ae71b70072a20d7efa1883c7e5fff03113af7fac94d5f5cdcaebb18a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ColumnRowPartitionedNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ColumnRowPartitionedNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e8601dabf9bb81f1f5c31e26c512971f3372652b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ColumnRowPartitioned/Variant5c4b3a2ae71b70072a20d7efa1883c7e5fff03113af7fac94d5f5cdcaebb18a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ColumnRowPartitioned/Variant5c4b3a2ae71b70072a20d7efa1883c7e5fff03113af7fac94d5f5cdcaebb18a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Block` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.SemiringInverse` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fromRows](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ColumnRowPartitionedNamespaced.lean/declarations/fromrows.md) | 39 | `declaration-track:acaa6d51de9ef8a3dd893e164ff41f9a0f89aee5e0e67ef2abc7fa6cfbf566d1` |
| 2 | `def` | [fromCols](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ColumnRowPartitionedNamespaced.lean/declarations/fromcols.md) | 44 | `declaration-track:20f020c7221217a27c603db89e6afe0aae93d0bd83f3be6c36d5af516b0555b6` |
| 3 | `def` | [toCols₁](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ColumnRowPartitionedNamespaced.lean/declarations/tocols.md) | 48 | `declaration-track:31aaabf40620d114243726d8e8a1eac78685bfc756487a70723a58427452c9bf` |
| 4 | `def` | [toCols₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ColumnRowPartitionedNamespaced.lean/declarations/tocols-source-edition-2.md) | 51 | `declaration-track:96722f2d33db55f0c29d0e686ef9df12ceca571b305926e1f3f97b04aa4142c5` |
| 5 | `def` | [toRows₁](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ColumnRowPartitionedNamespaced.lean/declarations/torows.md) | 54 | `declaration-track:17f5fa69fd967cffb99ca726ce634bf44fb9d41bb50ad9bc681dd3f5c5fe59f7` |
| 6 | `def` | [toRows₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ColumnRowPartitionedNamespaced.lean/declarations/torows-source-edition-2.md) | 57 | `declaration-track:468a68fa3a0039f85a6b1e1f19a9f42ed397993f35de0130f93b0a1715f87d2a` |
| 7 | `lemma` | [fromRows_apply_inl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ColumnRowPartitionedNamespaced.lean/declarations/fromrows-apply-inl.md) | 64 | `result-track:19bbb1b75b554c9e35d1c2d41d02f6ac0f0a6ec62df09b23a14e338cab3a6e1b` |
| 8 | `lemma` | [fromRows_apply_inr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ColumnRowPartitionedNamespaced.lean/declarations/fromrows-apply-inr.md) | 68 | `result-track:0602e4b7fbad2bc7c9e9b77ae752220931db2613a96cd7ecb0af84599b62576b` |
| 9 | `lemma` | [fromCols_apply_inl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ColumnRowPartitionedNamespaced.lean/declarations/fromcols-apply-inl.md) | 72 | `result-track:ff4389e21de51af0777115e9bac255a155b6c872844b51da443d9b2804f3c2d8` |
| 10 | `lemma` | [fromCols_apply_inr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ColumnRowPartitionedNamespaced.lean/declarations/fromcols-apply-inr.md) | 78 | `result-track:7a6d6c951cbc0f7fda5bdd350c2a0b0a6de63d314df1c92e948a7e9080b3d186` |
| 11 | `lemma` | [toRows₁_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ColumnRowPartitionedNamespaced.lean/declarations/torows-apply.md) | 84 | `result-track:35d213c91806dbdafcc5a1f38c4cece872711a2ef76b9ac87d1513d19482691c` |
| 12 | `lemma` | [toRows₂_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ColumnRowPartitionedNamespaced.lean/declarations/torows-apply-source-edition-2.md) | 88 | `result-track:6e7c1e4fe8918f5080c6e028ddcf13445a2709effa2c8f5df9d7667509e03cc5` |
| 13 | `lemma` | [toRows₁_fromRows](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ColumnRowPartitionedNamespaced.lean/declarations/torows-fromrows-source-edition-2.md) | 92 | `result-track:bbdf330fbb3b669993902b2da073bb37efcf06b9530af72e46b519b24dd8a0d5` |
| 14 | `lemma` | [toRows₂_fromRows](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ColumnRowPartitionedNamespaced.lean/declarations/torows-fromrows.md) | 96 | `result-track:94a2e494ad670f57635a63872b34cd0fe04ec695bcfa26df56a4173cf7aa54ca` |
| 15 | `lemma` | [toCols₁_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ColumnRowPartitionedNamespaced.lean/declarations/tocols-apply-source-edition-2.md) | 100 | `result-track:c615b81b927b85480efe99f6fd00e902cd68ead263726b4db5097bf1d23aca30` |
| 16 | `lemma` | [toCols₂_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ColumnRowPartitionedNamespaced.lean/declarations/tocols-apply.md) | 106 | `result-track:856719b30ad6d8d31a453ff320b63e1816b8f25d2843005bd2002054c5e3ab30` |
| 17 | `lemma` | [toCols₁_fromCols](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ColumnRowPartitionedNamespaced.lean/declarations/tocols-fromcols.md) | 112 | `result-track:3804331195d4e962933c6a9b8f9299c8ba199618e1455e4a6e0e6dd02922ebfc` |
| 18 | `lemma` | [toCols₂_fromCols](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ColumnRowPartitionedNamespaced.lean/declarations/tocols-fromcols-source-edition-2.md) | 118 | `result-track:5b3aa7e0b5434971c5bd05ac1fd3f97582d070c2ff0378b1b03a45de3e215518` |
| 19 | `lemma` | [fromCols_toCols](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ColumnRowPartitionedNamespaced.lean/declarations/fromcols-tocols.md) | 124 | `result-track:ab343ac4c43fe43464ae342cef31f750d4b0ac47ecc32fe14ae82479c9b4db84` |
| 20 | `lemma` | [fromRows_toRows](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ColumnRowPartitionedNamespaced.lean/declarations/fromrows-torows.md) | 131 | `result-track:d8ac08e80592062afd754b7a753fc421b19529466ebc8c1b7f04d8ca733fc06a` |
| 21 | `lemma` | [fromRows_inj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ColumnRowPartitionedNamespaced.lean/declarations/fromrows-inj.md) | 134 | `result-track:2db3572ceabf3bcacd41792c10a9fce28974c14efd362160dbe3520660e8548c` |
| 22 | `lemma` | [fromCols_inj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ColumnRowPartitionedNamespaced.lean/declarations/fromcols-inj.md) | 138 | `result-track:3db2c47f6668ec2513cae3eb9537d141ece0d8485f44b7a8572cfa1099151ea8` |
| 23 | `lemma` | [fromCols_ext_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ColumnRowPartitionedNamespaced.lean/declarations/fromcols-ext-iff.md) | 145 | `result-track:614d71ca8ff070b00d0c3434fc3640551332d9eb0ff760d88531694b923e8ede` |
| 24 | `lemma` | [fromRows_ext_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ColumnRowPartitionedNamespaced.lean/declarations/fromrows-ext-iff.md) | 151 | `result-track:8f7d0a235b50a99ae0748f4f7cdf7734a6174c5c27fe9111291eeae83f8152c9` |
| 25 | `lemma` | [transpose_fromCols](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ColumnRowPartitionedNamespaced.lean/declarations/transpose-fromcols.md) | 157 | `result-track:dbc80c40e89f42b95e4d7675f3f48bdaef874f4608f92efd89b6a52af59e87e0` |
| 26 | `lemma` | [transpose_fromRows](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ColumnRowPartitionedNamespaced.lean/declarations/transpose-fromrows.md) | 165 | `result-track:74f59831b8384e9301496f7a8401a6e5a059248fe1402fe04770da17639309c2` |
| 27 | `lemma` | [fromRows_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ColumnRowPartitionedNamespaced.lean/declarations/fromrows-neg.md) | 175 | `result-track:d74a5c12a8f31f59adaa0f4467a976e005b2d7f4d77ac9e6f6b59f9618ea8591` |
| 28 | `lemma` | [fromCols_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ColumnRowPartitionedNamespaced.lean/declarations/fromcols-neg.md) | 181 | `result-track:291fbb5b4e2965b035a092388f17c3d386fb0ffc892840339a2d46c0e5ea4f10` |
| 29 | `lemma` | [fromCols_fromRows_eq_fromBlocks](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ColumnRowPartitionedNamespaced.lean/declarations/fromcols-fromrows-eq-fromblocks.md) | 190 | `result-track:fb6f93f5ee16e0e298a11be02a0f89370e452f5fe8b6d6a722b65b51b85a0c80` |
| 30 | `lemma` | [fromRows_fromCols_eq_fromBlocks](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ColumnRowPartitionedNamespaced.lean/declarations/fromrows-fromcols-eq-fromblocks.md) | 199 | `result-track:daf68032bee900be7abbce27c96a48cf3505210068a1af4d18f791088f2b0ff5` |
| 31 | `lemma` | [fromRows_mulVec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ColumnRowPartitionedNamespaced.lean/declarations/fromrows-mulvec.md) | 212 | `result-track:9f7d254d72a2ef26632b31abffd760e618f9947b6c27b43b2892873bd8ff1b6b` |
| 32 | `lemma` | [vecMul_fromCols](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ColumnRowPartitionedNamespaced.lean/declarations/vecmul-fromcols.md) | 217 | `result-track:11e48d86e52ba26c6adf2379ad381d89ee26e48cc4d567b0f588e033a1717487` |
| 33 | `lemma` | [sumElim_vecMul_fromRows](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ColumnRowPartitionedNamespaced.lean/declarations/sumelim-vecmul-fromrows.md) | 224 | `result-track:b875862370af6ce2ec78291cf6da9fa11a3fc066dfe7258ae20539fb6af56b3c` |
| 34 | `lemma` | [fromCols_mulVec_sumElim](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ColumnRowPartitionedNamespaced.lean/declarations/fromcols-mulvec-sumelim.md) | 233 | `result-track:3268389c07b9a97c2f5b201f113b899d2e605548e92abdecdc712df97390fc0f` |
| 35 | `lemma` | [fromRows_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ColumnRowPartitionedNamespaced.lean/declarations/fromrows-mul.md) | 244 | `result-track:dae8a949b38e134426d543750c542165d5f04160d3978dcdbf6e45eadb69537f` |
| 36 | `lemma` | [mul_fromCols](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ColumnRowPartitionedNamespaced.lean/declarations/mul-fromcols.md) | 249 | `result-track:7446464b73afebc15d2a32675e4388f03dd3b1e2015e9e607b6680568ffd186c` |
| 37 | `lemma` | [fromRows_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ColumnRowPartitionedNamespaced.lean/declarations/fromrows-zero.md) | 256 | `result-track:9354856a635d2044de59530b9226cf93098ade071cfee9e42ce019724c2fd13c` |
| 38 | `lemma` | [fromCols_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ColumnRowPartitionedNamespaced.lean/declarations/fromcols-zero.md) | 260 | `result-track:2c069c140ad2056ae2f28ddbcd53998aa553ab7cad4ce7377a68a444d0f7d450` |
| 39 | `lemma` | [fromRows_mul_fromCols](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ColumnRowPartitionedNamespaced.lean/declarations/fromrows-mul-fromcols.md) | 267 | `result-track:6f504a66ce009a46b86b6305169535db64b2907f200a4fa8d88fa82477f851ee` |
| 40 | `lemma` | [fromCols_mul_fromRows](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ColumnRowPartitionedNamespaced.lean/declarations/fromcols-mul-fromrows.md) | 277 | `result-track:805d490e5146e2a5349770ecc7259862d076add2527efbd19f896eb196d6966d` |
| 41 | `lemma` | [fromCols_mul_fromBlocks](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ColumnRowPartitionedNamespaced.lean/declarations/fromcols-mul-fromblocks.md) | 287 | `result-track:9ee5559f7ad5f16d67f7643905654d497b0fd686df94efa647b5e652fc57a2a8` |
| 42 | `lemma` | [fromBlocks_mul_fromRows](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ColumnRowPartitionedNamespaced.lean/declarations/fromblocks-mul-fromrows.md) | 296 | `result-track:8c0cb7b675a1918e13374385eb265d8569d33fead07dd46a126f406cbb645601` |
| 43 | `lemma` | [fromCols_mul_fromRows_eq_one_comm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ColumnRowPartitionedNamespaced.lean/declarations/fromcols-mul-fromrows-eq-one-comm.md) | 313 | `result-track:90d4bd83dbeead24ef44ad2ad4967331b2974cd0489821cf4385c71e3012bde9` |
| 44 | `lemma` | [equiv_compl_fromCols_mul_fromRows_eq_one_comm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ColumnRowPartitionedNamespaced.lean/declarations/equiv-compl-fromcols-mul-fromrows-eq-one-comm.md) | 325 | `result-track:7c654c81cd6478738161f0ca4d7317ab87fc6df2eb40cb77b20d80ffe93ea938` |
| 45 | `lemma` | [conjTranspose_fromCols_eq_fromRows_conjTranspose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ColumnRowPartitionedNamespaced.lean/declarations/conjtranspose-fromcols-eq-fromrows-conjtranspose.md) | 343 | `result-track:f478295beee491d6b118fa8e7f4e1b162b7021ed4eef059088b894ba7b1db235` |
| 46 | `lemma` | [conjTranspose_fromRows_eq_fromCols_conjTranspose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ColumnRowPartitionedNamespaced.lean/declarations/conjtranspose-fromrows-eq-fromcols-conjtranspose.md) | 354 | `result-track:171317524edf059e2e5879f55b1c9fd04539e4836ce36793bc21a11f52564665` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a256488efb7936e22ddff0fb37e1f1b50a46e8af66defdf86d552fa23d7a8586 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/ColumnRowPartitioned/Variant5c4b3a2ae71b70072a20d7efa1883c7e5fff03113af7fac94d5f5cdcaebb18a6.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/ColumnRowPartitioned/Variant5c4b3a2ae71b70072a20d7efa1883c7e5fff03113af7fac94d5f5cdcaebb18a6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
