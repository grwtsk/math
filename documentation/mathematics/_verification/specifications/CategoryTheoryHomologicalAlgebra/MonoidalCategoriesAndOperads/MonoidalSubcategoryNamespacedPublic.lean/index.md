# Verification target: Monoidal Subcategory Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d8c34ed8cb21d6b3b529cecca56384d86bc4bf5",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant5f033fb7490df88aa9ee3c247e852f2678910db47e60327e5d62929bc5d86def.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d8c34ed8cb21d6b3b529cecca56384d86bc4bf5`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant5f033fb7490df88aa9ee3c247e852f2678910db47e60327e5d62929bc5d86def.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant5f033fb7490df88aa9ee3c247e852f2678910db47e60327e5d62929bc5d86def.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [TensorLE](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryNamespacedPublic.lean/declarations/tensorle.md) | 55 | `declaration-track:dd8836c58078798a440662607fb1f472c39aba751b610bdb7133c02cbb8d53b5` |
| 2 | `lemma` | [prop_tensor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryNamespacedPublic.lean/declarations/prop-tensor.md) | 58 | `result-track:40fdd1387e81bb9bd7519d64bb8b4a72540cee7afcdbcc9760bf746132a422b5` |
| 3 | `class` | [ContainsUnit](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryNamespacedPublic.lean/declarations/containsunit.md) | 64 | `declaration-track:f59e51948477ae1b03218f038de08fd82670b5188a73fa1d458232d6a9f782c1` |
| 4 | `lemma` | [prop_unit](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryNamespacedPublic.lean/declarations/prop-unit.md) | 67 | `result-track:7262d055761f082d758387ea3f85b7a2c77b704a11c1836c4f5b2cd04b173410` |
| 5 | `class` | [IsMonoidal](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryNamespacedPublic.lean/declarations/ismonoidal.md) | 72 | `declaration-track:b5fae970e0477b7d698be33e01ecacf99961e840581e8dcc5eea54de0542d097` |
| 6 | `class` | [IsMonoidalClosed](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryNamespacedPublic.lean/declarations/ismonoidalclosed.md) | 77 | `declaration-track:7cc3baefcb7139c339bd56cbe132fe995a6deab7fb982705db82c5a369013578` |
| 7 | `lemma` | [prop_ihom](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryNamespacedPublic.lean/declarations/prop-ihom.md) | 80 | `result-track:55f0430ad7b121922f06d0c1a18b5ff06668630d15656c8bad4b8082cd962575` |
| 8 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 87 | `declaration-track:f3962e524ea68e78162e13f0bab2014d99b09df59292d212e4b4ae4e09be9cfc` |
| 9 | `instance` | [fullMonoidalSubcategory](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryNamespacedPublic.lean/declarations/fullmonoidalsubcategory.md) | 101 | `declaration-track:e6f07d10eb7170991c593ca094a22bda360b35bed68a8f2a5752a6569bdc1520` |
| 10 | `instance` | [monoidalι](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryNamespacedPublic.lean/declarations/monoidal.md) | 109 | `declaration-track:162a4b77a577c429282642148e24a4e998846635719a437e1c75f2694ff3a773` |
| 11 | `lemma` | [ι_ε](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryNamespacedPublic.lean/declarations/anonymous-source-edition-3.md) | 116 | `result-track:9339709cb15442f02a6d69df8e7c51c655dbf4959f47d0717e2e4c4f72eb1638` |
| 12 | `lemma` | [ι_η](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryNamespacedPublic.lean/declarations/anonymous.md) | 117 | `result-track:5422f8588e01500a65329ade052aa6efe6a48a3cc8dbf6e4a45f76b5fdd5e607` |
| 13 | `lemma` | [ι_μ](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryNamespacedPublic.lean/declarations/anonymous-source-edition-4.md) | 118 | `result-track:eefc7e1bb9e9455ace69313062237bf6b6d00677376bc8ed939dca576abf1979` |
| 14 | `lemma` | [ι_δ](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryNamespacedPublic.lean/declarations/anonymous-source-edition-2.md) | 119 | `result-track:91b72742ca7e85a480a430dc02a44c73ab1b61ec5917fc8b77b5990b7e0fa62e` |
| 15 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 125 | `declaration-track:b1db864e9a67e9b946895ec5fb41884e8a53f0f898cfe430c7f2fc870264996a` |
| 16 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 130 | `declaration-track:7a7a0e2ddb466b39a1065cb4cb36914549f13e1ffa32182be3397e7dbc92a19d` |
| 17 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 142 | `declaration-track:a1a1ed18e02a347711971b1c0246b9743462a9dbd4d74affa9518c42e3806c4b` |
| 18 | `lemma` | [ιOfLE_ε](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryNamespacedPublic.lean/declarations/ofle.md) | 147 | `result-track:767f9d7f15cb569abf8fd2d651c6b90d0112f0db3054ec276e2a083b5b6a517d` |
| 19 | `lemma` | [ιOfLE_η](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryNamespacedPublic.lean/declarations/ofle-source-edition-4.md) | 148 | `result-track:fb96a0663c7e41df86e82833c33eda83cfd46270f3b8a828a591500fb9d543d1` |
| 20 | `lemma` | [ιOfLE_μ](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryNamespacedPublic.lean/declarations/ofle-source-edition-2.md) | 149 | `result-track:d05938dc0081bc56e2d81a97116221cc508daaeb6f3a9750e9ab1cfe62034ad4` |
| 21 | `lemma` | [ιOfLE_δ](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryNamespacedPublic.lean/declarations/ofle-source-edition-3.md) | 150 | `result-track:fb37c7868d710d1ac739785738eec7cad8226663161d4679b1a52ef9df621453` |
| 22 | `instance` | [fullBraidedSubcategory](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryNamespacedPublic.lean/declarations/fullbraidedsubcategory.md) | 160 | `declaration-track:e6b0d64119af4d883455e6f44134c26c34d4fcfd2b14f7b58e27dd5d32a43b38` |
| 23 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 166 | `declaration-track:ea33e7008a583c50c82b47be9917ba008179647b0cc1d5c255458cb3d5642ee9` |
| 24 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryNamespacedPublic.lean/declarations/instance.md) | 173 | `declaration-track:3ff0f41ca2612b4ead31e475c4207ab48540593a5c73e95d4ab179f2a995f233` |
| 25 | `instance` | [fullSymmetricSubcategory](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryNamespacedPublic.lean/declarations/fullsymmetricsubcategory.md) | 182 | `declaration-track:c89bcb94ee93bd24f450589d311439042109032e8e4414bbc75f45635e83e345` |
| 26 | `instance` | [fullMonoidalClosedSubcategory](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryNamespacedPublic.lean/declarations/fullmonoidalclosedsubcategory.md) | 192 | `declaration-track:9c401d31b9e7cc67040e06945488a47c65882a47aafb444b753e8cc4df983f10` |
| 27 | `theorem` | [ihom_obj](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryNamespacedPublic.lean/declarations/ihom-obj.md) | 200 | `result-track:3b031a2ead4047e2b530c6e7288181c7f9e901ea2c43207395c9a051d74902f8` |
| 28 | `theorem` | [ihom_map_hom](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalSubcategoryNamespacedPublic.lean/declarations/ihom-map-hom.md) | 205 | `result-track:820294477fa5c49e4a28e6dfd0551bb0cdb9be6793d1cefb9e8fae9601f7e989` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dac55ca46e4bf0cc684afa8be9b632ab7f6e7453bd51e3a0905f845ebf16282b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant5f033fb7490df88aa9ee3c247e852f2678910db47e60327e5d62929bc5d86def.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant5f033fb7490df88aa9ee3c247e852f2678910db47e60327e5d62929bc5d86def.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
