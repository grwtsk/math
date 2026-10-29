# Verification target: Short Complex Abelian

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "806aabbe9134045e19b6d0ffcc34c1ba4e540385",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant270efb984e7b2a851951c20a6d46b1e6b8ec8621856e5c46566c358e7dca60f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexAbelian.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexAbelian.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `806aabbe9134045e19b6d0ffcc34c1ba4e540385`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant270efb984e7b2a851951c20a6d46b1e6b8ec8621856e5c46566c358e7dca60f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant270efb984e7b2a851951c20a6d46b1e6b8ec8621856e5c46566c358e7dca60f4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ShortComplex.Homology` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [abelianImageToKernel](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexAbelian.lean/declarations/abelianimagetokernel.md) | 40 | `declaration-track:8cd31101965d84ae14d1d8d6236db646016fc7a3f115aa4a4bad3a07023916fe` |
| 2 | `lemma` | [abelianImageToKernel_comp_kernel_ι](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexAbelian.lean/declarations/abelianimagetokernel-comp-kernel.md) | 46 | `result-track:297e2a21d6a16219a24f8e6c4afe3b9f137992dc47af66324611688d85889f06` |
| 3 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexAbelian.lean/declarations/instance.md) | 50 | `declaration-track:637f31879fe0385334af35a0345ce250951381193d36134bd1f3889e5e167705` |
| 4 | `lemma` | [abelianImageToKernel_comp_kernel_ι_comp_cokernel_π](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexAbelian.lean/declarations/abelianimagetokernel-comp-kernel-comp-cokernel.md) | 54 | `result-track:fd2dc320494a68558300705bfaaca78b97d75560e47533b227376f75f241cdc9` |
| 5 | `def` | [abelianImageToKernelIsKernel](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexAbelian.lean/declarations/abelianimagetokerneliskernel.md) | 59 | `declaration-track:b395db2aa55285215043a188d423d1ce7dd6a3d326b0b6d8543fb4620e9c652e` |
| 6 | `def` | [ofAbelian](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexAbelian.lean/declarations/ofabelian.md) | 74 | `declaration-track:5021617d6186ffda0be4f9431d6d0ee5ae11fee57310e499bd6f5ee0345928dc` |
| 7 | `def` | [cokernelToAbelianCoimage](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexAbelian.lean/declarations/cokerneltoabeliancoimage.md) | 110 | `declaration-track:3411025c86fe37393ac81eae327a9b4f397fa8ecae52443aaf09880ab461b9f0` |
| 8 | `lemma` | [cokernel_π_comp_cokernelToAbelianCoimage](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexAbelian.lean/declarations/cokernel-comp-cokerneltoabeliancoimage.md) | 116 | `result-track:fdafd826e955bec4e701626cc5fbd292523a68827808fe7677ade9dcd7ab3f3f` |
| 9 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexAbelian.lean/declarations/instance-source-edition-2.md) | 120 | `declaration-track:74f02585ae0d0441841629bd9c1db6e7a7dc28c7361346803f9d4092eafbadcf` |
| 10 | `lemma` | [kernel_ι_comp_cokernel_π_comp_cokernelToAbelianCoimage](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexAbelian.lean/declarations/kernel-comp-cokernel-comp-cokerneltoabeliancoimage.md) | 123 | `result-track:bae368d924ce72218c4d32d436cf5a8652283438ca4c8da31d616b571c3dff88` |
| 11 | `def` | [cokernelToAbelianCoimageIsCokernel](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexAbelian.lean/declarations/cokerneltoabeliancoimageiscokernel.md) | 127 | `declaration-track:ec2fb8fe65e227085f13c9e12de0b3d4fc2ee2453447e28c857c806aff9541c7` |
| 12 | `def` | [ofAbelian](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexAbelian.lean/declarations/ofabelian-source-edition-2.md) | 143 | `declaration-track:61a2df4905009c22936def24f7cb0e26341f9e2b745a2fb9adb0b30cc9ed3d59` |
| 13 | `def` | [HomologyData.ofAbelian](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexAbelian.lean/declarations/homologydata-ofabelian.md) | 176 | `declaration-track:16a092a7ef16cd690f78e39430d87c7f36e1cd077bcef1d0acd1da6f4d2021d0` |
| 14 | `instance` | [_root_.CategoryTheory.categoryWithHomology_of_abelian](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexAbelian.lean/declarations/root-categorytheory-categorywithhomology-of-abelian.md) | 181 | `declaration-track:6040624d1fbc5dbf3200a899767ed6f15fee5d1b8f779c313f98bded88a35f3d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6abc98841f2fb47ea5035147b2ddcecefd917e1335118e409d6f7c96b73d89ec -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant270efb984e7b2a851951c20a6d46b1e6b8ec8621856e5c46566c358e7dca60f4.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant270efb984e7b2a851951c20a6d46b1e6b8ec8621856e5c46566c358e7dca60f4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
