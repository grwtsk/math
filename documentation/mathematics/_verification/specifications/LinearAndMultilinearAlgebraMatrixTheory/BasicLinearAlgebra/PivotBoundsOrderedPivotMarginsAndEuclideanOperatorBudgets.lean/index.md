# Verification target: Pivot Bounds Ordered Pivot Margins And Euclidean Operator Budgets

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c2f895aa5e792a99ca5c2341354b18e8ebca87e4",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/PivotBounds/Variant8b2f284ba0ade10c04f455d659ef24ab0a9d8284e085e74f59801c5df7a95655.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PivotBoundsOrderedPivotMarginsAndEuclideanOperatorBudgets.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PivotBoundsOrderedPivotMarginsAndEuclideanOperatorBudgets.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c2f895aa5e792a99ca5c2341354b18e8ebca87e4`.

Source path: `GRWTSK/Topology/GeneralTopology/PivotBounds/Variant8b2f284ba0ade10c04f455d659ef24ab0a9d8284e085e74f59801c5df7a95655.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/PivotBounds/Variant8b2f284ba0ade10c04f455d659ef24ab0a9d8284e085e74f59801c5df7a95655.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.PivotTransitions` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.Grassmannian.FiniteCauchyBinet` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Sqrt` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Real.Lemmas` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Matrix` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [orderedPivotFintype](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PivotBoundsOrderedPivotMarginsAndEuclideanOperatorBudgets.lean/declarations/orderedpivotfintype.md) | 28 | `declaration-track:5013310a56d953ea0c77792ccef1a29b47120919bb8739ff281a4f3821b7ed28` |
| 2 | `theorem` | [card_orderedPivots](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PivotBoundsOrderedPivotMarginsAndEuclideanOperatorBudgets.lean/declarations/card-orderedpivots.md) | 32 | `result-track:b2dc02948f67a52d7df451ae1d05edbba66a488d72b229e503fa7ecc8b09ae71` |
| 3 | `def` | [orderedPermutationEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PivotBoundsOrderedPivotMarginsAndEuclideanOperatorBudgets.lean/declarations/orderedpermutationequiv.md) | 38 | `declaration-track:d4b4b49e586107d368cdcf390e1c5fa8aa28cd16aa14800c870542ae341e50bf` |
| 4 | `theorem` | [columnMinor_comp_perm_sq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PivotBoundsOrderedPivotMarginsAndEuclideanOperatorBudgets.lean/declarations/columnminor-comp-perm-sq.md) | 63 | `result-track:718f77beea377cce1bf34fc6cb5d1f0c0f88c87bed16f96b990c509bedb4c596` |
| 5 | `theorem` | [sum_columnMinor_sq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PivotBoundsOrderedPivotMarginsAndEuclideanOperatorBudgets.lean/declarations/sum-columnminor-sq.md) | 74 | `result-track:eb7a602ea001e2d63802bb71ec222de5512da19e38d7ce2f886939a31ab9dce2` |
| 6 | `theorem` | [sum_orderedMinor_sq_eq_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PivotBoundsOrderedPivotMarginsAndEuclideanOperatorBudgets.lean/declarations/sum-orderedminor-sq-eq-one.md) | 96 | `result-track:37fd03b948a0a6bd7fed602a82c365cd3cdcc9a493ee10061c9bd9e62f391dce` |
| 7 | `theorem` | [exists_orderedMinor_sq_margin](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PivotBoundsOrderedPivotMarginsAndEuclideanOperatorBudgets.lean/declarations/exists-orderedminor-sq-margin.md) | 110 | `result-track:d92f68c48239022d805cccbf4122edb8d3d96ea12932724101a98f343151c3b2` |
| 8 | `theorem` | [exists_orderedMinor_margin](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PivotBoundsOrderedPivotMarginsAndEuclideanOperatorBudgets.lean/declarations/exists-orderedminor-margin.md) | 132 | `result-track:acf34027c8adf704389070ae8967733931b7c4927391fe4cac5a8afd5447426f` |
| 9 | `theorem` | [abs_columnMinor_mul_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PivotBoundsOrderedPivotMarginsAndEuclideanOperatorBudgets.lean/declarations/abs-columnminor-mul-left.md) | 145 | `result-track:e03cfbf19319c80672909e53e20a2ac549358a9a5bfd3e1bf8372a28ed001663` |
| 10 | `theorem` | [orthonormalRows_dimension_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PivotBoundsOrderedPivotMarginsAndEuclideanOperatorBudgets.lean/declarations/orthonormalrows-dimension-le.md) | 152 | `result-track:6c5370cc3ae19e88add29dd56e8a7a72fbbea3d562a9eee920fc07484916da42` |
| 11 | `def` | [controlledPivotThreshold](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PivotBoundsOrderedPivotMarginsAndEuclideanOperatorBudgets.lean/declarations/controlledpivotthreshold.md) | 158 | `declaration-track:41d37d707c7867c61045179929333c86947c8a09b8681f5c9953a84ec692a3b4` |
| 12 | `def` | [controlledPivotDomain](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PivotBoundsOrderedPivotMarginsAndEuclideanOperatorBudgets.lean/declarations/controlledpivotdomain.md) | 162 | `declaration-track:f6ea103396aeb7d4bda1a844eb241241d06835bad62ae87841b24d000f933497` |
| 13 | `theorem` | [isOpen_controlledPivotDomain](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PivotBoundsOrderedPivotMarginsAndEuclideanOperatorBudgets.lean/declarations/isopen-controlledpivotdomain.md) | 166 | `result-track:b756132f80b5cf5ae074f95b1d0a53d77c1c99f7d1ba203438b2a4d9fd67f4dc` |
| 14 | `theorem` | [controlledPivotDomain_cover](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PivotBoundsOrderedPivotMarginsAndEuclideanOperatorBudgets.lean/declarations/controlledpivotdomain-cover.md) | 175 | `result-track:d191445cbecc94ecfcd5b9a142d0111b737ef2f3dc1f89c719d981dab05a2fee` |
| 15 | `theorem` | [abs_det_eq_one_of_orthogonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PivotBoundsOrderedPivotMarginsAndEuclideanOperatorBudgets.lean/declarations/abs-det-eq-one-of-orthogonal.md) | 189 | `result-track:f2b06d765d158e84b280faa3d41d55ea167442763260ab85d39e6b94945f0169` |
| 16 | `theorem` | [controlledPivotDomain_orthogonal_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PivotBoundsOrderedPivotMarginsAndEuclideanOperatorBudgets.lean/declarations/controlledpivotdomain-orthogonal-iff.md) | 197 | `result-track:ac8f55c4beaec7d9165d9cb5cfa5aa2810dcfc8bc3ee062121dcdc4b72d94745` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=749c7ef3c64e5c7e043acd96fd91e90566b55c2d79e8816b70b3db7edbe4ef5d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/PivotBounds/Variant8b2f284ba0ade10c04f455d659ef24ab0a9d8284e085e74f59801c5df7a95655.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/PivotBounds/Variant8b2f284ba0ade10c04f455d659ef24ab0a9d8284e085e74f59801c5df7a95655.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
