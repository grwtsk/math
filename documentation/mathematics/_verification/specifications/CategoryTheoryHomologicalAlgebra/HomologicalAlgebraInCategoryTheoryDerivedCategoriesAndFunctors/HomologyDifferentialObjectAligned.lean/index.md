# Verification target: Homology Differential Object Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba27bdfe29be817a18cea8f9255b0bfb132f98ee",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant32aeb2b1be0652bfeaf7cf3d9fbd93e0e6ea210d06d1a0588f99f8b056fa3dbf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyDifferentialObjectAligned.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyDifferentialObjectAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba27bdfe29be817a18cea8f9255b0bfb132f98ee`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant32aeb2b1be0652bfeaf7cf3d9fbd93e0e6ea210d06d1a0588f99f8b056fa3dbf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant32aeb2b1be0652bfeaf7cf3d9fbd93e0e6ea210d06d1a0588f99f8b056fa3dbf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.HomologicalComplex` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.DifferentialObject` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [objEqToHom](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyDifferentialObjectAligned.lean/declarations/objeqtohom.md) | 43 | `declaration-track:64cfe3b541d364a930c2d98d9199357ea3dc473729719124360ad5a45b878e26` |
| 2 | `theorem` | [objEqToHom_refl](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyDifferentialObjectAligned.lean/declarations/objeqtohom-refl.md) | 50 | `result-track:610418a75008a0fb9dfcc30a27b940d19b6ab481a82743a38bc9b969b8c469da` |
| 3 | `theorem` | [objEqToHom_d](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyDifferentialObjectAligned.lean/declarations/objeqtohom-d.md) | 56 | `result-track:7b85aa9af93e986cb4284300c78b2f3e1825bf0b42bde999d7c6a377d21ba721` |
| 4 | `theorem` | [d_squared_apply](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyDifferentialObjectAligned.lean/declarations/d-squared-apply.md) | 61 | `result-track:49a31f978fb507bc8f32c8c9494d9f928021b00394c50b106b6c83728e9daf09` |
| 5 | `theorem` | [eqToHom_f'](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyDifferentialObjectAligned.lean/declarations/eqtohom-f.md) | 64 | `result-track:829e27c0a84940ca399ffd5b24c085473dcd0887c460ea4475c32eb79be9fc7d` |
| 6 | `theorem` | [d_eqToHom](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyDifferentialObjectAligned.lean/declarations/d-eqtohom.md) | 81 | `result-track:428ef05f079fe13e7fa59cd0f4adf6eb4009ca86e142ea0e3d91ff065c15a847` |
| 7 | `def` | [dgoToHomologicalComplex](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyDifferentialObjectAligned.lean/declarations/dgotohomologicalcomplex.md) | 89 | `declaration-track:5d961b23fd00f8f6d116b5cd4c2c13935c3042bbc9f14ecfd37c5dc4ab6a9876` |
| 8 | `def` | [homologicalComplexToDGO](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyDifferentialObjectAligned.lean/declarations/homologicalcomplextodgo.md) | 114 | `declaration-track:47413d9f14dba172da7b9656036686c426eb01944271f0b71997f5e94cd253f1` |
| 9 | `def` | [dgoEquivHomologicalComplexUnitIso](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyDifferentialObjectAligned.lean/declarations/dgoequivhomologicalcomplexunitiso.md) | 126 | `declaration-track:c59cf615982314a3234abd948dcf102698d25de38e6977b43e7beb1cf8afab02` |
| 10 | `def` | [dgoEquivHomologicalComplexCounitIso](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyDifferentialObjectAligned.lean/declarations/dgoequivhomologicalcomplexcounitiso.md) | 137 | `declaration-track:771faf71dd5e20be0bd762fd58c872629f95da917b6c6b3d33dba00bf3985ec3` |
| 11 | `def` | [dgoEquivHomologicalComplex](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyDifferentialObjectAligned.lean/declarations/dgoequivhomologicalcomplex.md) | 149 | `declaration-track:b7bf02d7fefefcc118c7eeb9005d7b5998f80380f05fe0d54043aab3526ca335` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8d989ab754db57d624cf6a9f03861dca1ec4439c69ee8f507c7b236af000ae3d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant32aeb2b1be0652bfeaf7cf3d9fbd93e0e6ea210d06d1a0588f99f8b056fa3dbf.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant32aeb2b1be0652bfeaf7cf3d9fbd93e0e6ea210d06d1a0588f99f8b056fa3dbf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
