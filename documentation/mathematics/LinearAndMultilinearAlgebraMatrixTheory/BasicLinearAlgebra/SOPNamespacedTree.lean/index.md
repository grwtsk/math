# SOPNamespaced Tree

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**35 observed declarations and anonymous commands**, 12 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SOP/Variante7ba2a5fa45bbf8e48780a60e23a7c526d50fcad2573908a5b614bacc038a270.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c18b0ed498871d9ce99bce4fe513c2805e286ffc`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SOPNamespacedTree.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Literal](declarations/literal.md) | 19 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [ProductTerm](declarations/productterm.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [SumOfProducts](declarations/sumofproducts.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [Literal.eval](declarations/literal-eval.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [Literal.toTree](declarations/literal-totree.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [ProductTerm.eval](declarations/productterm-eval.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [ProductTerm.anyLit](declarations/productterm-anylit.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [ProductTerm.toTree](declarations/productterm-totree.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [ProductTerm.hasPositiveAt](declarations/productterm-haspositiveat.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [ProductTerm.hasNegativeAt](declarations/productterm-hasnegativeat.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [SumOfProducts.eval](declarations/sumofproducts-eval.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [SumOfProducts.multiply](declarations/sumofproducts-multiply.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [SumOfProducts.toTree](declarations/sumofproducts-totree.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [Literal.eval_toTree](declarations/literal-eval-totree.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [ProductTerm.eval_append](declarations/productterm-eval-append.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [ProductTerm.eval_toTree](declarations/productterm-eval-totree.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [SumOfProducts.eval_append](declarations/sumofproducts-eval-append.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [SumOfProducts.eval_map_append_left](declarations/sumofproducts-eval-map-append-left.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [SumOfProducts.eval_multiply](declarations/sumofproducts-eval-multiply.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [SumOfProducts.eval_toTree](declarations/sumofproducts-eval-totree.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [Tree.toSOPNnf](declarations/tree-tosopnnf.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [Tree.toSOP](declarations/tree-tosop.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [Tree.eval_toSOPNnf_nnf_and_negNnf](declarations/tree-eval-tosopnnf-nnf-and-negnnf.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [Tree.eval_toSOPNnf_nnf](declarations/tree-eval-tosopnnf-nnf.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [Tree.eval_toSOPNnf_negNnf](declarations/tree-eval-tosopnnf-negnnf.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [Tree.eval_toSOP](declarations/tree-eval-tosop.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [Tree.eval_toSOP_tree](declarations/tree-eval-tosop-tree.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `structure` | [SOPMatrix](declarations/sopmatrix.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [SOPMatrix.ConflictFree](declarations/sopmatrix-conflictfree.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [SOPMatrix.literalTree](declarations/sopmatrix-literaltree.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [SOPMatrix.rowTree](declarations/sopmatrix-rowtree.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [SOPMatrix.toTree](declarations/sopmatrix-totree.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [SOPMatrix.eval](declarations/sopmatrix-eval.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [SumOfProducts.toMatrix](declarations/sumofproducts-tomatrix.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [Tree.toSOPMatrix](declarations/tree-tosopmatrix.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=40e0b699929fe2f47eba4e83f2c46ee5db256bf432c67f3dd5dd27ed579cb883 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SOP/Variante7ba2a5fa45bbf8e48780a60e23a7c526d50fcad2573908a5b614bacc038a270.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
