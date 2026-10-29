# Verification target: Grp Images Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d39ea3d6ee4d8dbbd7d7d4f196b36056523acb43",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant795142e667143949055f0301167b50358ea44f6499c8ad4333c9738efce4879b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpImagesNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpImagesNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d39ea3d6ee4d8dbbd7d7d4f196b36056523acb43`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant795142e667143949055f0301167b50358ea44f6499c8ad4333c9738efce4879b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant795142e667143949055f0301167b50358ea44f6499c8ad4333c9738efce4879b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Grp.Abelian` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Images` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [image](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpImagesNamespaced.lean/declarations/image-source-edition-2.md) | 44 | `declaration-track:38c3a87e17bcd615b9262c4b75d562d752496407ce884cc0308ba5942fa5231c` |
| 2 | `def` | [image.ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpImagesNamespaced.lean/declarations/image.md) | 48 | `declaration-track:21c2ee2e7718b5f5efad686ce8ada6ab7bc929e73ee7f8cca5a53d2458491f33` |
| 3 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpImagesNamespaced.lean/declarations/instance.md) | 51 | `declaration-track:201e5f5c53a230db856b77a1ce36c0322dcaaf403facad8c93a606d70fb682d6` |
| 4 | `def` | [factorThruImage](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpImagesNamespaced.lean/declarations/factorthruimage.md) | 55 | `declaration-track:833ccbd4363512d2e1908553aa381fd52acb9b05cff60ab7e4961957e9f0e9a7` |
| 5 | `theorem` | [image.fac](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpImagesNamespaced.lean/declarations/image-fac.md) | 58 | `result-track:787ef0761d31de38fdb0f6c486f2140664e32da19fad82de7d28197eaa6e5345` |
| 6 | `def` | [image.lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpImagesNamespaced.lean/declarations/image-lift.md) | 67 | `declaration-track:b670c0c15ed6ee06ec748c983315361165ae28a1af67f2e32ee7740abea7f096` |
| 7 | `theorem` | [image.lift_fac](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpImagesNamespaced.lean/declarations/image-lift-fac.md) | 88 | `result-track:b73ae2da2a019e1d3f9d3026a12efb3009d40b68450945187a623301755f6adc` |
| 8 | `def` | [monoFactorisation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpImagesNamespaced.lean/declarations/monofactorisation.md) | 97 | `declaration-track:c746075471d5e072e009b2b646e8cfac7dfa6d29bbfb12d4073c7c91ca65fac9` |
| 9 | `def` | [isImage](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpImagesNamespaced.lean/declarations/isimage.md) | 104 | `declaration-track:c4e0945e04a38eddb5aaa1a0a676532184d03c821cba3d4575faecaef175b0bf` |
| 10 | `def` | [imageIsoRange](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpImagesNamespaced.lean/declarations/imageisorange.md) | 111 | `declaration-track:544360d152cab1f7830a9463a698fd5b6f1b589b1298b37658a897ef0744c71a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f60a109c419c3d3518a68fe45781c1bd2458a77bae044dd640889aac1650f496 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant795142e667143949055f0301167b50358ea44f6499c8ad4333c9738efce4879b.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant795142e667143949055f0301167b50358ea44f6499c8ad4333c9738efce4879b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
