# Verification target: Derivability Structure Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d7b9fdd4a6deb6c2d5fc2762a5fc7630f1e83b9",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant499a80fd7c64b550521764b53b741966e244f4669d7551e58b68f4f0720f22c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivabilityStructureBasicNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivabilityStructureBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d7b9fdd4a6deb6c2d5fc2762a5fc7630f1e83b9`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant499a80fd7c64b550521764b53b741966e244f4669d7551e58b68f4f0720f22c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant499a80fd7c64b550521764b53b741966e244f4669d7551e58b68f4f0720f22c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Localization.Resolution` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Localization.Opposite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.GuitartExact.Opposite` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsRightDerivabilityStructure](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivabilityStructureBasicNamespaced.lean/declarations/isrightderivabilitystructure.md) | 81 | `declaration-track:f8c616ca17a72b18ea7843c4eed2e7e26d308bbd67b3bd40a74666fd3c4d1611` |
| 2 | `lemma` | [isRightDerivabilityStructure_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivabilityStructureBasicNamespaced.lean/declarations/isrightderivabilitystructure-iff.md) | 94 | `result-track:d9c75ce7a0b66c0d4f6b0fde66a8db0a3795d92e2ec8984a3ac03e4326fceee4` |
| 3 | `lemma` | [guitartExact_of_isRightDerivabilityStructure'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivabilityStructureBasicNamespaced.lean/declarations/guitartexact-of-isrightderivabilitystructure-source-edition-2.md) | 123 | `result-track:65e6e58b6e0afba560acd4a7a5dde2cefc9918419718fd5beb12ecc97b824d04` |
| 4 | `lemma` | [guitartExact_of_isRightDerivabilityStructure](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivabilityStructureBasicNamespaced.lean/declarations/guitartexact-of-isrightderivabilitystructure.md) | 127 | `result-track:443d68f03a2d41513fc0c2208d09016ef5413708ab136f6eafe00af2099553e1` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivabilityStructureBasicNamespaced.lean/declarations/instance-source-edition-2.md) | 131 | `declaration-track:44685226b912fcae48a575d0d7d5acb20c255e9b772400c51695a9f0850f6082` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivabilityStructureBasicNamespaced.lean/declarations/instance.md) | 134 | `declaration-track:43e271e3738a91f466acfddc5315e48e31ba9bb00dca4e1f60e55c651d57a235` |
| 7 | `class` | [IsLeftDerivabilityStructure](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivabilityStructureBasicNamespaced.lean/declarations/isleftderivabilitystructure.md) | 143 | `declaration-track:57319c236212010575453555a7802a5b696c7b38098ad242dd667cc676764e3f` |
| 8 | `lemma` | [isLeftDerivabilityStructure_iff_op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivabilityStructureBasicNamespaced.lean/declarations/isleftderivabilitystructure-iff-op.md) | 153 | `result-track:b4c3cbe4a71dd118f05491cef3496fe0ac84a6603dfd160f2679e749f06a652e` |
| 9 | `lemma` | [isLeftDerivabilityStructure_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivabilityStructureBasicNamespaced.lean/declarations/isleftderivabilitystructure-iff.md) | 172 | `result-track:ed93275f00bd3d24c73f37f65f2e286aab09db814b14f8a69ca5916d98b17f42` |
| 10 | `lemma` | [guitartExact_of_isLeftDerivabilityStructure'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivabilityStructureBasicNamespaced.lean/declarations/guitartexact-of-isleftderivabilitystructure-source-edition-2.md) | 179 | `result-track:81fd987e25cd61ff64b187c714476111d832e47718d7110157cad6ce69935e11` |
| 11 | `lemma` | [guitartExact_of_isLeftDerivabilityStructure](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivabilityStructureBasicNamespaced.lean/declarations/guitartexact-of-isleftderivabilitystructure.md) | 183 | `result-track:3a0e2b6596d207f5ad01510f85b28b111d366eef388b2d025a5226709f52edd0` |
| 12 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivabilityStructureBasicNamespaced.lean/declarations/instance-source-edition-3.md) | 187 | `declaration-track:574e2ca95b4ea2d0eb9f3f5b59cfcb93c9a84569f1075cf05f4982c62dad7d78` |
| 13 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivabilityStructureBasicNamespaced.lean/declarations/instance-source-edition-4.md) | 190 | `declaration-track:981c32ea5646ab874f22c17159dc5cf5bffd524c9e7deb0ab0ada4f41644cf5e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4d32fef2c1d890e75af92421246e942ec994df6deb886250149dc9ae598f721c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant499a80fd7c64b550521764b53b741966e244f4669d7551e58b68f4f0720f22c1.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant499a80fd7c64b550521764b53b741966e244f4669d7551e58b68f4f0720f22c1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
