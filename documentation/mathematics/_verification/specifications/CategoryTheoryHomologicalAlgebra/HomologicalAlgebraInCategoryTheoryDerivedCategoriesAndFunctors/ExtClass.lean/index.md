# Verification target: Ext Class

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4797cdd3d03e045803dbd4729c8d513dfbef36c9",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtClass/Variantb644920e3e5da3b85230c51b8b9aedf49814f9abc4bf37a87c86a0fb7466e5eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ExtClass.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ExtClass.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4797cdd3d03e045803dbd4729c8d513dfbef36c9`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtClass/Variantb644920e3e5da3b85230c51b8b9aedf49814f9abc4bf37a87c86a0fb7466e5eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtClass/Variantb644920e3e5da3b85230c51b8b9aedf49814f9abc4bf37a87c86a0fb7466e5eb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.DerivedCategory.Ext.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.DerivedCategory.SingleTriangle` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [ext_mk₀_f_comp_ext_mk₀_g](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ExtClass.lean/declarations/ext-mk-f-comp-ext-mk-g.md) | 34 | `result-track:ea693b004a165cfd1ca26ba728740ccf81ebd6078accc5d10479226fac1d9e11` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ExtClass.lean/declarations/instance.md) | 51 | `declaration-track:015245cb2984049a9a62cb2db90a510ed0d491f59049b6158228cbe66afa2f94` |
| 3 | `lemma` | [hasSmallLocalizedHom_S'_X₃_K](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ExtClass.lean/declarations/hassmalllocalizedhom-s-x-k.md) | 56 | `result-track:f29b1c62d62f922853741d36f7dd100d3249c6b81ecfa0f36015225aab8656c6` |
| 4 | `lemma` | [hasSmallLocalizedShiftedHom_K_S'_X₁](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ExtClass.lean/declarations/hassmalllocalizedshiftedhom-k-s-x.md) | 63 | `result-track:4aa767ad4b060b7d4e204cec361ca9c5971c8a333e007dcda706161b721fe0e4` |
| 5 | `def` | [extClass](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ExtClass.lean/declarations/extclass.md) | 70 | `declaration-track:8688cdb9e49f4ad075a1dd90bca161f1dc7d1405eb0e96eea8299fc2c85691b7` |
| 6 | `lemma` | [extClass_hom](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ExtClass.lean/declarations/extclass-hom.md) | 77 | `result-track:263d10966cafb82cab6d85b956b40ae46ff4c87d804d6e3f3835ee1ed88e19a1` |
| 7 | `lemma` | [comp_extClass](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ExtClass.lean/declarations/comp-extclass.md) | 91 | `result-track:d7a9fe7e27c543d96967972161eccd61dcf95d662301522921603d1b229d2e8c` |
| 8 | `lemma` | [comp_extClass_assoc](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ExtClass.lean/declarations/comp-extclass-assoc.md) | 99 | `result-track:5acd6f49ff28f6440d0a04684919577dc40478a3147fdda29dcd84134c519fd7` |
| 9 | `lemma` | [extClass_comp](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ExtClass.lean/declarations/extclass-comp.md) | 105 | `result-track:0c7de82bc3a324bcecb86b39e61928081fbdb79f84a074c5ca429eadffc2db3a` |
| 10 | `lemma` | [extClass_comp_assoc](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ExtClass.lean/declarations/extclass-comp-assoc.md) | 113 | `result-track:32228eaccee0520a43a1a037ac73857187637dee6f6551b44a601a7bc7c227d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a3b1045c74a6e25160ec5228f918be5f8a90ec803da5ee4c905c417eff8b8c9b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtClass/Variantb644920e3e5da3b85230c51b8b9aedf49814f9abc4bf37a87c86a0fb7466e5eb.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtClass/Variantb644920e3e5da3b85230c51b8b9aedf49814f9abc4bf37a87c86a0fb7466e5eb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
