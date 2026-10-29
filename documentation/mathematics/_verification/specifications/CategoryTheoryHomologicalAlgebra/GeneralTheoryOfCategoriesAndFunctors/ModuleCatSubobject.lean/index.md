# Verification target: Module Cat Subobject

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "083fff3b7093128387c0f5c50bbccc6d6afca237",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variantaa25950ba5de59d8f106836665e3a3c4e5918bb9cc15ac8deab980e86c3148e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatSubobject.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatSubobject.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `083fff3b7093128387c0f5c50bbccc6d6afca237`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variantaa25950ba5de59d8f106836665e3a3c4e5918bb9cc15ac8deab980e86c3148e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variantaa25950ba5de59d8f106836665e3a3c4e5918bb9cc15ac8deab980e86c3148e9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.EpiMono` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Kernels` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Subobject.WellPowered` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Subobject.Limits` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [subobjectModule](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatSubobject.lean/declarations/subobjectmodule.md) | 36 | `declaration-track:d3ad659073127be9f66c5072c2245e4825d21c2030c431738c7100aaac2e79c4` |
| 2 | `instance` | [wellPowered_moduleCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatSubobject.lean/declarations/wellpowered-modulecat.md) | 70 | `declaration-track:e24d723f329edac7fc335ddbba1ceb4dab85de729c995dd66c789bb8f998f7ad` |
| 3 | `def` | [toKernelSubobject](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatSubobject.lean/declarations/tokernelsubobject.md) | 76 | `declaration-track:f8c7d0fe307f36448b10dbbfe870fd9bb8ab9e826da4a34c6d9286a17ad412bc` |
| 4 | `theorem` | [toKernelSubobject_arrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatSubobject.lean/declarations/tokernelsubobject-arrow.md) | 81 | `result-track:cde421e6665e2b1a2ff49ee987efd91cbdda481d4f830abe3b758df7b62add48` |
| 5 | `theorem` | [cokernel_π_imageSubobject_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatSubobject.lean/declarations/cokernel-imagesubobject-ext.md) | 92 | `result-track:d90f184c5134de23eb495b351959f2d85478204db07107388115e950e9fe8b99` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=25815147d1c873ef0812985ee5c19eab01bf37e1035a0717dd214f303b8ecbf0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variantaa25950ba5de59d8f106836665e3a3c4e5918bb9cc15ac8deab980e86c3148e9.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variantaa25950ba5de59d8f106836665e3a3c4e5918bb9cc15ac8deab980e86c3148e9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
