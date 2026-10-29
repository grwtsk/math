# Verification target: Shapes Countable

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c1fe580209b86572de45883ee4e04fca3c4c7bd",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantd151394ddba285427093893ac7bc1934e72d7a6feabdacc7cf54b98754401bc4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCountable.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCountable.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c1fe580209b86572de45883ee4e04fca3c4c7bd`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantd151394ddba285427093893ac7bc1934e72d7a6feabdacc7cf54b98754401bc4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantd151394ddba285427093893ac7bc1934e72d7a6feabdacc7cf54b98754401bc4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Final` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.FiniteProducts` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Countable` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Countable.Defs` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasCountableLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCountable.lean/declarations/hascountablelimits.md) | 37 | `declaration-track:2feadb7043db0d0d35e682bb81e83ac79f6ec4ee8031b1eecbe19c150aa70d0d` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCountable.lean/declarations/instance-source-edition-14.md) | 42 | `declaration-track:d242998dec2f4bc75975d556cceeb34a814886314c087bba16a5e34adedcfc86` |
| 3 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCountable.lean/declarations/instance-source-edition-11.md) | 46 | `declaration-track:917a32b37cf62b0082747401d900820fcb1d229a1ede0e667b370aed518967b2` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCountable.lean/declarations/instance-source-edition-12.md) | 51 | `declaration-track:b872c81d8cfed9351bb5d40e7ed2b6b51fceff4f7be2cb245c2518d503e0dd67` |
| 5 | `class` | [HasCountableProducts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCountable.lean/declarations/hascountableproducts.md) | 56 | `declaration-track:931d14bd7cc36980f3e0bbe4f8babe4811ed182f4348ec4cbb74ab1b702fb6ba` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCountable.lean/declarations/instance-source-edition-8.md) | 59 | `declaration-track:7e953fc59d8579a61c49122b97d592033d17bb52f073b64c20cacc9db2f8e7a6` |
| 7 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCountable.lean/declarations/instance-source-edition-6.md) | 64 | `declaration-track:6bc145ba080a19e1fbcc1decfa3f9efed99d4d2854ed74ec083f3ad7424d616d` |
| 8 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCountable.lean/declarations/instance.md) | 70 | `declaration-track:01623f00a6b6d6aa98a814060686b2efcf1976787cfd03fbdd1fd9ae5baa2904` |
| 9 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCountable.lean/declarations/instance-source-edition-5.md) | 74 | `declaration-track:67c22aad21eba37cad23974fca2ac390d233ab6fcebab5815c70d459711bc24f` |
| 10 | `class` | [HasCountableColimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCountable.lean/declarations/hascountablecolimits.md) | 82 | `declaration-track:0d8791d3e97806ea6452e2b6a72dae3cb6c7c68e23d2d9c886072a02e242ead6` |
| 11 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCountable.lean/declarations/instance-source-edition-9.md) | 87 | `declaration-track:86494db9df1bf3c1361422624400d8a3785d39fc91c818e84fb7b6dc79abeeff` |
| 12 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCountable.lean/declarations/instance-source-edition-10.md) | 91 | `declaration-track:8677bf5eb11bf756824a7087699366a8f1c4d31b4946134a8a92d361decff6d5` |
| 13 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCountable.lean/declarations/instance-source-edition-4.md) | 97 | `declaration-track:53e13a2476a9b387e978ae9a5382c43feca27dc3770361844813a93d78b3096e` |
| 14 | `class` | [HasCountableCoproducts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCountable.lean/declarations/hascountablecoproducts.md) | 103 | `declaration-track:5ff7bed97c684d00608b67974fd4fdd0cac0db89f460a61e6a43f4e48f6b4d7f` |
| 15 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCountable.lean/declarations/instance-source-edition-3.md) | 106 | `declaration-track:4faeec17d61ee22ee5b7a0f44db4e2df011a38916a9783812cf5bb48b86ebde2` |
| 16 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCountable.lean/declarations/instance-source-edition-13.md) | 113 | `declaration-track:bd339fcf2170b9dd932d72b04cbabdd102e5221b21695a82f0b1910d1f91ef51` |
| 17 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCountable.lean/declarations/instance-source-edition-2.md) | 118 | `declaration-track:427e5dca88b61c9cf46e8c1b38e2e90889ae0008e2b563d96212211c07075ac1` |
| 18 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCountable.lean/declarations/instance-source-edition-7.md) | 122 | `declaration-track:73a2825435bee136b41cc955ff5ef70861a5efb0b3388f8c0eefbbdc8938c543` |
| 19 | `def` | [sequentialFunctor_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCountable.lean/declarations/sequentialfunctor-obj-source-edition-2.md) | 135 | `declaration-track:e94151990302ef6de75e608a332aba6341eac50beaa7da1218a3abb90e9e306a` |
| 20 | `theorem` | [sequentialFunctor_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCountable.lean/declarations/sequentialfunctor-map-source-edition-2.md) | 140 | `result-track:ed71d893c9a4e3d2413bd64e536bdba06a3bfe2fc634bdabc386878a50e0bced` |
| 21 | `def` | [sequentialFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCountable.lean/declarations/sequentialfunctor.md) | 149 | `declaration-track:77cf412f068849b2446b17916263cd393e4585c9a0221a516d160374ca29aa10` |
| 22 | `theorem` | [sequentialFunctor_final_aux](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCountable.lean/declarations/sequentialfunctor-final-aux.md) | 153 | `result-track:e3d60501bb0c4d79e8c2c2f8d375d875d218a95ab048da71c1e131316a3fcb24` |
| 23 | `instance` | [sequentialFunctor_final](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCountable.lean/declarations/sequentialfunctor-final.md) | 159 | `declaration-track:0181b549064fcadd030fd7dcfbbee448db00bf83c4a9386d6a1c98dfbed3c05f` |
| 24 | `def` | [sequentialFunctor_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCountable.lean/declarations/sequentialfunctor-obj.md) | 183 | `declaration-track:bab80e9bf48703fbad9f2261ad5b4aac1fcbb759c6b5bd802fa035df5e3be502` |
| 25 | `theorem` | [sequentialFunctor_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCountable.lean/declarations/sequentialfunctor-map.md) | 188 | `result-track:23fb4732460a026eb42d7292688debd3bdbf3afcf20676326b81f09c4230ca0e` |
| 26 | `def` | [sequentialFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCountable.lean/declarations/sequentialfunctor-source-edition-2.md) | 200 | `declaration-track:ec00f5f8a84d4a6db6056f3381b5f3c324850a42e3bb9dad0013bfbb85a39196` |
| 27 | `theorem` | [sequentialFunctor_initial_aux](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCountable.lean/declarations/sequentialfunctor-initial-aux.md) | 204 | `result-track:9752c3859e3e86ba0b17e8a916a0ac151ba6b8cfd9b50dd92330f23cbccd7312` |
| 28 | `instance` | [sequentialFunctor_initial](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesCountable.lean/declarations/sequentialfunctor-initial.md) | 210 | `declaration-track:7eed8d257a4aa8c1b7d22bce499b2f7e11d3caf6fee613dfe02358e22616e945` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4bbe5f014ba973a98d2d17490af70b318b8bd406d5ffd716ea659ccdf4a57553 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantd151394ddba285427093893ac7bc1934e72d7a6feabdacc7cf54b98754401bc4.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Countable/Variantd151394ddba285427093893ac7bc1934e72d7a6feabdacc7cf54b98754401bc4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
