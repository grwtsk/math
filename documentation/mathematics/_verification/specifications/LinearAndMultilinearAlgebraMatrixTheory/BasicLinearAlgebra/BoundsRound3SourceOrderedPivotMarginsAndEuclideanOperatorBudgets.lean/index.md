# Verification target: Bounds Round3 Source Ordered Pivot Margins And Euclidean Operator Budgets

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8352748bd2c0f99dbb9a5d95ebb59b0daa8cc180",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/BoundsRound3Source/Variant0377a280998231f0d529a21a522e647fc85a4e0d8c97b2c403b41229da8c17f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BoundsRound3SourceOrderedPivotMarginsAndEuclideanOperatorBudgets.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BoundsRound3SourceOrderedPivotMarginsAndEuclideanOperatorBudgets.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8352748bd2c0f99dbb9a5d95ebb59b0daa8cc180`.

Source path: `GRWTSK/Topology/GeneralTopology/BoundsRound3Source/Variant0377a280998231f0d529a21a522e647fc85a4e0d8c97b2c403b41229da8c17f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/BoundsRound3Source/Variant0377a280998231f0d529a21a522e647fc85a4e0d8c97b2c403b41229da8c17f4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.PivotTransitions` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.Grassmannian.FiniteCauchyBinet` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.Matrix` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Positive` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Matrix` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [orderedPivotFintype](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BoundsRound3SourceOrderedPivotMarginsAndEuclideanOperatorBudgets.lean/declarations/orderedpivotfintype.md) | 28 | `declaration-track:cf2c673a8c29e63424f61ed0ab7edc841fc21b09d8a3110e924a9375fda50fe4` |
| 2 | `theorem` | [card_orderedPivots](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BoundsRound3SourceOrderedPivotMarginsAndEuclideanOperatorBudgets.lean/declarations/card-orderedpivots.md) | 32 | `result-track:40b91ee05b3c631a34fb1c81e68a42d500c9c1a2b359e5f184c86446ddd038c1` |
| 3 | `def` | [orderedPermutationEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BoundsRound3SourceOrderedPivotMarginsAndEuclideanOperatorBudgets.lean/declarations/orderedpermutationequiv.md) | 38 | `declaration-track:9ab054baba7a6686a8c38329bbc313a1c6557b2cf380e3fea337d19ca47f5f66` |
| 4 | `theorem` | [columnMinor_comp_perm_sq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BoundsRound3SourceOrderedPivotMarginsAndEuclideanOperatorBudgets.lean/declarations/columnminor-comp-perm-sq.md) | 63 | `result-track:37558425bd39e64684cd32b0d5f8e78736b79c0a967d1188b4267cfc64e0d703` |
| 5 | `theorem` | [sum_columnMinor_sq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BoundsRound3SourceOrderedPivotMarginsAndEuclideanOperatorBudgets.lean/declarations/sum-columnminor-sq.md) | 74 | `result-track:5e295973f4adde55e2e0ab55f65b5d9bd0b9a00f892ac689a950c4867077508f` |
| 6 | `theorem` | [sum_orderedMinor_sq_eq_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BoundsRound3SourceOrderedPivotMarginsAndEuclideanOperatorBudgets.lean/declarations/sum-orderedminor-sq-eq-one.md) | 95 | `result-track:1c469ae6f7057c3e135b25620e0539ccd86b445bb15a54330b3fc0fe1924236f` |
| 7 | `theorem` | [exists_orderedMinor_sq_margin](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BoundsRound3SourceOrderedPivotMarginsAndEuclideanOperatorBudgets.lean/declarations/exists-orderedminor-sq-margin.md) | 109 | `result-track:78a24c4ae6807ea49a89b6067da5d66ef252b7c758f872fbf89d41eda8e3d087` |
| 8 | `theorem` | [exists_orderedMinor_margin](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BoundsRound3SourceOrderedPivotMarginsAndEuclideanOperatorBudgets.lean/declarations/exists-orderedminor-margin.md) | 131 | `result-track:45d8f9f31ddb823bf39fb1031789911009ddb76312dc3d9b8c0206b45feacde8` |
| 9 | `theorem` | [abs_columnMinor_mul_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BoundsRound3SourceOrderedPivotMarginsAndEuclideanOperatorBudgets.lean/declarations/abs-columnminor-mul-left.md) | 144 | `result-track:327c4fc62a6e8e925630e335119c7cd18e5c1727b112576fcb6b8d8b68923685` |
| 10 | `theorem` | [l2_opNorm_le_one_of_orthonormalRows](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BoundsRound3SourceOrderedPivotMarginsAndEuclideanOperatorBudgets.lean/declarations/l2-opnorm-le-one-of-orthonormalrows.md) | 151 | `result-track:7f7f3cdbd4cc6777f25b62661fbb5cba95eee86eebb1deb0c571dd73d8fc58d3` |
| 11 | `theorem` | [euclidean_norm_restrict_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BoundsRound3SourceOrderedPivotMarginsAndEuclideanOperatorBudgets.lean/declarations/euclidean-norm-restrict-le.md) | 165 | `result-track:b3f37d6fef4bf663c94479dffed2b31606fbc2438401ad8253c2848b77eb79bb` |
| 12 | `theorem` | [l2_opNorm_columnSubmatrix_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BoundsRound3SourceOrderedPivotMarginsAndEuclideanOperatorBudgets.lean/declarations/l2-opnorm-columnsubmatrix-le.md) | 176 | `result-track:bcc31a6fdc1e999ba4a08fa0d5a227e4b226c32a43046be8866c613d54816479` |
| 13 | `theorem` | [det_sq_mul_norm_sq_le_image](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BoundsRound3SourceOrderedPivotMarginsAndEuclideanOperatorBudgets.lean/declarations/det-sq-mul-norm-sq-le-image.md) | 198 | `result-track:96234a696491df83abd960be0d08802de011a87ae7677184578237823e5dcc50` |
| 14 | `theorem` | [l2_opNorm_inverse_le_margin](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BoundsRound3SourceOrderedPivotMarginsAndEuclideanOperatorBudgets.lean/declarations/l2-opnorm-inverse-le-margin.md) | 260 | `result-track:432de2a8d77dbc83f01a7a3c316bc8bd163994a5457f12a464bcf3f02518af91` |
| 15 | `theorem` | [controlled_pivot_operator_bounds](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BoundsRound3SourceOrderedPivotMarginsAndEuclideanOperatorBudgets.lean/declarations/controlled-pivot-operator-bounds.md) | 288 | `result-track:682f16797644142c1ff973233b7765993ccb23de6b9f50a4f36680f1e0ca77e7` |
| 16 | `theorem` | [controlled_transition_operator_bounds](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BoundsRound3SourceOrderedPivotMarginsAndEuclideanOperatorBudgets.lean/declarations/controlled-transition-operator-bounds.md) | 310 | `result-track:6c223658314ec72c9871429b5353999c5fff909fdc161e8d123c0f5817fc96c3` |
| 17 | `theorem` | [orthonormalRows_dimension_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BoundsRound3SourceOrderedPivotMarginsAndEuclideanOperatorBudgets.lean/declarations/orthonormalrows-dimension-le.md) | 335 | `result-track:5188e729995e8accb801722ab8a275cf9d7eda60024011a465096ffa4c4d6144` |
| 18 | `def` | [controlledPivotThreshold](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BoundsRound3SourceOrderedPivotMarginsAndEuclideanOperatorBudgets.lean/declarations/controlledpivotthreshold.md) | 341 | `declaration-track:102f47836fd53980b24118623f4f54d987f19a29cec04de2f9792fa595f7bf5f` |
| 19 | `def` | [controlledPivotDomain](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BoundsRound3SourceOrderedPivotMarginsAndEuclideanOperatorBudgets.lean/declarations/controlledpivotdomain.md) | 345 | `declaration-track:a73bd442eb3a685a5db52b2be9df3bc750d39f5c6fe85eb0d6113e3bad4323dd` |
| 20 | `theorem` | [isOpen_controlledPivotDomain](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BoundsRound3SourceOrderedPivotMarginsAndEuclideanOperatorBudgets.lean/declarations/isopen-controlledpivotdomain.md) | 349 | `result-track:02f6b47e881f943931441fabfa217e5b2269af636c73acdc977d23f77970d441` |
| 21 | `theorem` | [controlledPivotDomain_cover](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BoundsRound3SourceOrderedPivotMarginsAndEuclideanOperatorBudgets.lean/declarations/controlledpivotdomain-cover.md) | 358 | `result-track:439ecb86f9e800e63d3a267e19ebaa529e9e99b35df8fd2e601f9ff909b9bd03` |
| 22 | `theorem` | [controlledCover_normalization_bound](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BoundsRound3SourceOrderedPivotMarginsAndEuclideanOperatorBudgets.lean/declarations/controlledcover-normalization-bound.md) | 372 | `result-track:1b7ce928177d7a07d2e6de813a7ac7d6d93636caa8367c9a8376d932d5c65feb` |
| 23 | `theorem` | [controlledCover_transition_bounds](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BoundsRound3SourceOrderedPivotMarginsAndEuclideanOperatorBudgets.lean/declarations/controlledcover-transition-bounds.md) | 386 | `result-track:28fe7f2f4e4c485f4f8460e8e511bf0b84cdb630088c710d3f9e2741cb841e3d` |
| 24 | `theorem` | [abs_det_eq_one_of_orthogonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BoundsRound3SourceOrderedPivotMarginsAndEuclideanOperatorBudgets.lean/declarations/abs-det-eq-one-of-orthogonal.md) | 401 | `result-track:f672b125aecc18e1eade5d20eaf21fd49c54811ea1f2170b6a68ab85f8f3064f` |
| 25 | `theorem` | [controlledPivotDomain_orthogonal_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BoundsRound3SourceOrderedPivotMarginsAndEuclideanOperatorBudgets.lean/declarations/controlledpivotdomain-orthogonal-iff.md) | 409 | `result-track:44b0ad8e7878907806f478f768f6b037fd1d87763e42b7267fb327b220abdad7` |
| 26 | `theorem` | [controlledCover_rank_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BoundsRound3SourceOrderedPivotMarginsAndEuclideanOperatorBudgets.lean/declarations/controlledcover-rank-zero.md) | 417 | `result-track:8a624589b928293baae582d33f881d88d2ee9fc8d1a60432d478e8da3c5e4c81` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b2e7ad211f3b4560ebcaf70f29b5fed5bdc3114e983b26f41e4362de8c316e15 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/BoundsRound3Source/Variant0377a280998231f0d529a21a522e647fc85a4e0d8c97b2c403b41229da8c17f4.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/BoundsRound3Source/Variant0377a280998231f0d529a21a522e647fc85a4e0d8c97b2c403b41229da8c17f4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
