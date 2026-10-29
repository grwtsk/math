# Verification target: Ext Class Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "008ec8e922f28fbf8adf5f6c0c92d17b2fbe2ff5",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtClass/Variant8588a17323a507de640076f5cf361133485b20ccfdde1dc980b43d9a7b7a3b67.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ExtClassNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ExtClassNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `008ec8e922f28fbf8adf5f6c0c92d17b2fbe2ff5`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtClass/Variant8588a17323a507de640076f5cf361133485b20ccfdde1dc980b43d9a7b7a3b67.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtClass/Variant8588a17323a507de640076f5cf361133485b20ccfdde1dc980b43d9a7b7a3b67.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.DerivedCategory.Ext.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.DerivedCategory.SingleTriangle` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [ext_mk₀_f_comp_ext_mk₀_g](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ExtClassNamespaced.lean/declarations/ext-mk-f-comp-ext-mk-g.md) | 42 | `result-track:b0a6eb7e7557d7a71f24e08e2cf29fb5509be8db7296c27d3585ad217ebda3c9` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ExtClassNamespaced.lean/declarations/instance.md) | 59 | `declaration-track:6c3ca0b3b6a5469f8e277d59033eb1a0fea0c930f5a99c1a858dcbc0bdee963b` |
| 3 | `lemma` | [hasSmallLocalizedHom_S'_X₃_K](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ExtClassNamespaced.lean/declarations/hassmalllocalizedhom-s-x-k.md) | 64 | `result-track:3476feb3aa51390680b239178723ca85d7f14b58f27e88d78ac8db602adc2f6d` |
| 4 | `lemma` | [hasSmallLocalizedShiftedHom_K_S'_X₁](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ExtClassNamespaced.lean/declarations/hassmalllocalizedshiftedhom-k-s-x.md) | 71 | `result-track:5dc2fc02584e26a645cecfe8fe536d53ecf515ac9d2bb9c465183fefa4555224` |
| 5 | `def` | [extClass](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ExtClassNamespaced.lean/declarations/extclass.md) | 78 | `declaration-track:1cfa5dfe65598492fba1e7d27f5c51d36458d5359a53148e300195cb418011d9` |
| 6 | `lemma` | [extClass_hom](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ExtClassNamespaced.lean/declarations/extclass-hom.md) | 85 | `result-track:433747f6e45338b6313eabcb3e2708ff2799e302f687895d924d8db4750e021e` |
| 7 | `lemma` | [comp_extClass](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ExtClassNamespaced.lean/declarations/comp-extclass.md) | 99 | `result-track:ca8e4d5b7a74ef9b4eb331f181c2344e9d6cff3e2d025c1ae6e8ea15e42fb8ee` |
| 8 | `lemma` | [comp_extClass_assoc](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ExtClassNamespaced.lean/declarations/comp-extclass-assoc.md) | 107 | `result-track:0fcb7ffa8286331cc861c0bb5ec1edd208621177d76d5e06ba4b889c51fb4be9` |
| 9 | `lemma` | [extClass_comp](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ExtClassNamespaced.lean/declarations/extclass-comp.md) | 113 | `result-track:bed862ccd0e2a9fc4f1502fbef60f616c1d391c48bc315ebd11ed60c5e97674f` |
| 10 | `lemma` | [extClass_comp_assoc](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ExtClassNamespaced.lean/declarations/extclass-comp-assoc.md) | 121 | `result-track:6a61f2bc4442faccac7f175b9371053bff0ae179225a56ee306c3fe9061309e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3f8fe2cfa7adc5467ce856c1b9e8689c88c4ceb5a3efc9783d4ecc08bc3d1f90 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtClass/Variant8588a17323a507de640076f5cf361133485b20ccfdde1dc980b43d9a7b7a3b67.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtClass/Variant8588a17323a507de640076f5cf361133485b20ccfdde1dc980b43d9a7b7a3b67.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
