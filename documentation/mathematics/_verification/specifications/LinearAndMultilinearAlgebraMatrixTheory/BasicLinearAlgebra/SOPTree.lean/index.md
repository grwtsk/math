# Verification target: SOPTree

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8054c9167d370773e6b4fcf26d7388de71eb6153",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SOP/Varianta0ab27c97d2e4c38e79852bc0ea787cd590e6048caccc7647168dc11b557e9bc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SOPTree.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SOPTree.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8054c9167d370773e6b4fcf26d7388de71eb6153`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SOP/Varianta0ab27c97d2e4c38e79852bc0ea787cd590e6048caccc7647168dc11b557e9bc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SOP/Varianta0ab27c97d2e4c38e79852bc0ea787cd590e6048caccc7647168dc11b557e9bc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Tree.Eval` — import line 1; external provider; requires a separately pinned dependency.
- `Boolean.Tree.List` — import line 2; external provider; requires a separately pinned dependency.
- `Boolean.Tree.Normalize` — import line 3; external provider; requires a separately pinned dependency.
- `Boolean.Tree.MatrixEncoding` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Literal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SOPTree.lean/declarations/literal.md) | 11 | `declaration-track:bfd34fc04c8152f5cc3ada9e9c84b79ff337fd913660052238009515e851391a` |
| 2 | `abbrev` | [ProductTerm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SOPTree.lean/declarations/productterm.md) | 17 | `declaration-track:5eb231b4ac15d749a5ccc655a4b97f503658fc3c3076b8faf6a589031d2b59df` |
| 3 | `abbrev` | [SumOfProducts](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SOPTree.lean/declarations/sumofproducts.md) | 21 | `declaration-track:9a6688ae66d3adabd781a5ccca71b9aa2abf4a287d5d927dfedf1b9930671aa7` |
| 4 | `def` | [Literal.eval](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SOPTree.lean/declarations/literal-eval.md) | 25 | `declaration-track:407df143bb0418b4c9e1d5e847db9ff1af1b584c75c04ee40da53651b56c89e9` |
| 5 | `def` | [Literal.toTree](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SOPTree.lean/declarations/literal-totree.md) | 30 | `declaration-track:df10ea4fbcfd65ce97042deb41c660b3a6151fd5fcacc312cd64812e4a0c23bf` |
| 6 | `def` | [ProductTerm.eval](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SOPTree.lean/declarations/productterm-eval.md) | 35 | `declaration-track:0ff176bc5b2bf90057e790a4da23487ac439b8e05ff560d1d648fa73d962cd3a` |
| 7 | `def` | [ProductTerm.anyLit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SOPTree.lean/declarations/productterm-anylit.md) | 40 | `declaration-track:04aa670403aebae22477a90f0d9310b45857a89e68f3c441f81e7a6688253009` |
| 8 | `def` | [ProductTerm.toTree](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SOPTree.lean/declarations/productterm-totree.md) | 49 | `declaration-track:b695efcc12a8a25ebe91fd7b14e75155f0894caaef0315058c736e4d5740258d` |
| 9 | `def` | [ProductTerm.hasPositiveAt](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SOPTree.lean/declarations/productterm-haspositiveat.md) | 53 | `declaration-track:91e518b9f7c81c1e839d88decca4a8ac456cf34cb41c03a9dff19671da07ad4d` |
| 10 | `def` | [ProductTerm.hasNegativeAt](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SOPTree.lean/declarations/productterm-hasnegativeat.md) | 66 | `declaration-track:e033ac74b23fa9d15ad418e4aad618348d59ea8d229bdbe1fc79dc1e2319f22a` |
| 11 | `def` | [SumOfProducts.eval](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SOPTree.lean/declarations/sumofproducts-eval.md) | 79 | `declaration-track:758f767867d547eef02172fe9bdf4828b3c4768821058a14ecddecc70c79d98e` |
| 12 | `def` | [SumOfProducts.multiply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SOPTree.lean/declarations/sumofproducts-multiply.md) | 86 | `declaration-track:f877c4c02230cd823d4916e2f00b7e1b5019c45be69658f53a40579e99e26862` |
| 13 | `def` | [SumOfProducts.toTree](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SOPTree.lean/declarations/sumofproducts-totree.md) | 94 | `declaration-track:c5e1ded9570548d86e43f774786d6a92fb524bc0193391f7edd9c6b14f21b0e2` |
| 14 | `theorem` | [Literal.eval_toTree](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SOPTree.lean/declarations/literal-eval-totree.md) | 97 | `result-track:00c4de9daedc6de7c3a73fae140692fc640a4f9ae21ff1f8292722211efd88df` |
| 15 | `theorem` | [ProductTerm.eval_append](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SOPTree.lean/declarations/productterm-eval-append.md) | 103 | `result-track:47d9d30f0fc1c84236b5bc5eab18d2fe8ffd95a95b386be9556ca9583f020cbf` |
| 16 | `theorem` | [ProductTerm.eval_toTree](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SOPTree.lean/declarations/productterm-eval-totree.md) | 116 | `result-track:16907ca5ad72d944f9d8dc80bb55c121c37485d801f3094b40b1aa0c609c1e44` |
| 17 | `theorem` | [SumOfProducts.eval_append](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SOPTree.lean/declarations/sumofproducts-eval-append.md) | 128 | `result-track:11b8c11fef8a1a0d27b438361993c9614128f0dd9c07e814d500ae7acab262ad` |
| 18 | `theorem` | [SumOfProducts.eval_map_append_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SOPTree.lean/declarations/sumofproducts-eval-map-append-left.md) | 141 | `result-track:2872d4fa4a2c14e3434ba62dc60c2c1931daac0539195bbf252b70c74909c473` |
| 19 | `theorem` | [SumOfProducts.eval_multiply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SOPTree.lean/declarations/sumofproducts-eval-multiply.md) | 156 | `result-track:fffc0ca9bc521f9a350c0e52a1ef2d3b0d264a877667125ca9f9e661f0339071` |
| 20 | `theorem` | [SumOfProducts.eval_toTree](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SOPTree.lean/declarations/sumofproducts-eval-totree.md) | 170 | `result-track:d88a27d1de712eabd4303a3b33a78471dda6be0db224e613c74ce1a0af391b7b` |
| 21 | `def` | [Tree.toSOPNnf](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SOPTree.lean/declarations/tree-tosopnnf.md) | 192 | `declaration-track:b5f1e73b551642d64fb8b03d88550d4a35bcf20986b8107463da5725e715a846` |
| 22 | `def` | [Tree.toSOP](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SOPTree.lean/declarations/tree-tosop.md) | 215 | `declaration-track:f69b9a16f9a8dcba285d4c21d7cab4a1e2d5c3c155aef37cd0b5a5ed8b0de400` |
| 23 | `theorem` | [Tree.eval_toSOPNnf_nnf_and_negNnf](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SOPTree.lean/declarations/tree-eval-tosopnnf-nnf-and-negnnf.md) | 218 | `result-track:994a5526818fb1edb9f3dbb5adc94a1211243f812350ed205d557fd625669a28` |
| 24 | `theorem` | [Tree.eval_toSOPNnf_nnf](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SOPTree.lean/declarations/tree-eval-tosopnnf-nnf.md) | 266 | `result-track:f0cb019f3761d528bdbc7fbdc6ffe0a72701e10957e58a0b02ec4fb04872ed48` |
| 25 | `theorem` | [Tree.eval_toSOPNnf_negNnf](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SOPTree.lean/declarations/tree-eval-tosopnnf-negnnf.md) | 273 | `result-track:7e54f6d792ccd010b972a880544b0038ba454bdcd3714b3d5750fc070af26d63` |
| 26 | `theorem` | [Tree.eval_toSOP](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SOPTree.lean/declarations/tree-eval-tosop.md) | 280 | `result-track:586dd34ddd59079a2aea12ea9af3cccac912ea24d405677db7879ae165da9f5f` |
| 27 | `theorem` | [Tree.eval_toSOP_tree](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SOPTree.lean/declarations/tree-eval-tosop-tree.md) | 286 | `result-track:4497c471bf7b35bf43404670a8dd469ba806ffeaf3c0b7d8bd1925091a1e623c` |
| 28 | `structure` | [SOPMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SOPTree.lean/declarations/sopmatrix.md) | 304 | `declaration-track:97c76bf874abeab67d9940ada940daf35f1ad6f0079e37941762a233b8790e70` |
| 29 | `def` | [SOPMatrix.ConflictFree](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SOPTree.lean/declarations/sopmatrix-conflictfree.md) | 309 | `declaration-track:1cc1cf50c6cb83d000d3dd2c5d8afa6b43033b4a166e902e7bace6840d61bea9` |
| 30 | `def` | [SOPMatrix.literalTree](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SOPTree.lean/declarations/sopmatrix-literaltree.md) | 317 | `declaration-track:8d9372682c860cb89f2a20ddf8bc2f3cc5fabd67a6a03450d2e02aedac40b5af` |
| 31 | `def` | [SOPMatrix.rowTree](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SOPTree.lean/declarations/sopmatrix-rowtree.md) | 330 | `declaration-track:3461035d4f23c3beec899a3b4e151345aa247151c96e8c5745ffd0ac5edf6027` |
| 32 | `def` | [SOPMatrix.toTree](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SOPTree.lean/declarations/sopmatrix-totree.md) | 344 | `declaration-track:4031378ecddfb7738cf9a3f9a79a4e20b1768ac792468450f3cc4e6b5f8a9179` |
| 33 | `def` | [SOPMatrix.eval](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SOPTree.lean/declarations/sopmatrix-eval.md) | 353 | `declaration-track:30c2f8ab9b486519e0fa25067f1412d304fc56025f9b388e78decfb7d2d4fc9a` |
| 34 | `def` | [SumOfProducts.toMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SOPTree.lean/declarations/sumofproducts-tomatrix.md) | 366 | `declaration-track:19e7985a24bfed0ddf175ca814bf38dc2849481e1c9a46a61cf847e36463561e` |
| 35 | `def` | [Tree.toSOPMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SOPTree.lean/declarations/tree-tosopmatrix.md) | 384 | `declaration-track:44c56d17904f5a03aba660b8b14f12c7882cbee2180df37b72c61470bdc34d91` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e2624afdff13fa962fe810f2c0d423d5afb6cbf7a69a6806949a6adcb1324918 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SOP/Varianta0ab27c97d2e4c38e79852bc0ea787cd590e6048caccc7647168dc11b557e9bc.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SOP/Varianta0ab27c97d2e4c38e79852bc0ea787cd590e6048caccc7647168dc11b557e9bc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
