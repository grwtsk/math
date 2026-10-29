# Verification target: Module Cat Adjunctions Namespaced Left Unitality

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4aa0d4a4dab3f04968b5222203424cd644aea9d",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant8b15b6f07de5283e3d8fed71b4d2e4ac03bfb31fe7f5d84ba7d24a80a81e7952.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatAdjunctionsNamespacedLeftUnitality.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatAdjunctionsNamespacedLeftUnitality.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4aa0d4a4dab3f04968b5222203424cd644aea9d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant8b15b6f07de5283e3d8fed71b4d2e4ac03bfb31fe7f5d84ba7d24a80a81e7952.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant8b15b6f07de5283e3d8fed71b4d2e4ac03bfb31fe7f5d84ba7d24a80a81e7952.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Monoidal.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Functorial` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Types.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.DirectSum.Finsupp` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Linear.LinearFunctor` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [free](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatAdjunctionsNamespacedLeftUnitality.lean/declarations/free.md) | 50 | `declaration-track:8f009fe2d49adb84d2159b91f36d356145b23db9948fac1eac52aab657cef591` |
| 2 | `def` | [adj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatAdjunctionsNamespacedLeftUnitality.lean/declarations/adj.md) | 59 | `declaration-track:78111a2b3720724a3b274572888e7da5ef5aae0f10ac159b4f0a9acb3a41fcda` |
| 3 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatAdjunctionsNamespacedLeftUnitality.lean/declarations/instance-source-edition-5.md) | 68 | `declaration-track:9b75a3f3288eeb91f51d588e1d3e547adea3cde67216fb111d89ba3f723bda4c` |
| 4 | `def` | [ε](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatAdjunctionsNamespacedLeftUnitality.lean/declarations/anonymous.md) | 82 | `declaration-track:a0bed5ddb4194d5d356484097108371d03d960696040fb4ea38b45baa5ea5f7f` |
| 5 | `theorem` | [ε_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatAdjunctionsNamespacedLeftUnitality.lean/declarations/apply.md) | 87 | `result-track:84284b804f83e7902ec7285e30a0beef4d0eb22a8e9f302b3987679684750c6d` |
| 6 | `def` | [μ](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatAdjunctionsNamespacedLeftUnitality.lean/declarations/anonymous-source-edition-2.md) | 92 | `declaration-track:cecc706edfb91c7fe50ea34b1460e2e94f42192430ecacfe1ea4dd2f67d5eb27` |
| 7 | `theorem` | [μ_natural](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatAdjunctionsNamespacedLeftUnitality.lean/declarations/natural.md) | 96 | `result-track:fb27c527b688cd1272c3630ec6683d58166fdcfcf759a3e0ddeaf1c829bcf2f1` |
| 8 | `theorem` | [left_unitality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatAdjunctionsNamespacedLeftUnitality.lean/declarations/left-unitality.md) | 118 | `result-track:54bdf8f3f4849989d12567aed00fc93b58ce4adc86df4f87708e63663694ad74` |
| 9 | `theorem` | [right_unitality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatAdjunctionsNamespacedLeftUnitality.lean/declarations/right-unitality.md) | 139 | `result-track:804cb9be15abc2068c80447ead985d492004bee658d2fc392910ac4ce9a7d07a` |
| 10 | `theorem` | [associativity](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatAdjunctionsNamespacedLeftUnitality.lean/declarations/associativity.md) | 160 | `result-track:4c0f96fcda43daf5fc9de25495275d0a77ab482913670f74f5c7515f6af2e1a8` |
| 11 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatAdjunctionsNamespacedLeftUnitality.lean/declarations/instance.md) | 193 | `declaration-track:02ecee807243c16bc0296d78d73a7e6daec60186cf46afa6ac464ff4c3aded2b` |
| 12 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatAdjunctionsNamespacedLeftUnitality.lean/declarations/instance-source-edition-3.md) | 203 | `declaration-track:3fe11645cdf2ab0d2718f28bb2cb25ebfa6cc97271da4e17b6482bbcb81afeba` |
| 13 | `def` | [monoidalFree](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatAdjunctionsNamespacedLeftUnitality.lean/declarations/monoidalfree.md) | 229 | `declaration-track:f4cdbfb88b9707312b876f35bf3bcf6f58d2634a53eacdcef69f3c84b0f24bed` |
| 14 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatAdjunctionsNamespacedLeftUnitality.lean/declarations/example.md) | 236 | `declaration-track:edb88f030e8709a4699882f82761dffc535755c51ecb04b571ebf3b9ff062c55` |
| 15 | `def` | [Free](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatAdjunctionsNamespacedLeftUnitality.lean/declarations/free-source-edition-2.md) | 251 | `declaration-track:906c25e59b9ea1b782c33467195773d7bc7252c56c223cd07f929fc43b653feb` |
| 16 | `def` | [Free.of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatAdjunctionsNamespacedLeftUnitality.lean/declarations/free-of.md) | 260 | `declaration-track:74b9ea6f2ad6a7922b137c6e9334299c97f01ac35635bb0129590753e34f1564` |
| 17 | `instance` | [categoryFree](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatAdjunctionsNamespacedLeftUnitality.lean/declarations/categoryfree.md) | 271 | `declaration-track:d380d718f7bacfcc17a12d64774a8f2691b8b7da11597ace53d819dfc9a313e9` |
| 18 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatAdjunctionsNamespacedLeftUnitality.lean/declarations/instance-source-edition-2.md) | 291 | `declaration-track:3ace67b20a36c70491c8549c03aa6a97370fb847088b3836ca62030e91186463` |
| 19 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatAdjunctionsNamespacedLeftUnitality.lean/declarations/instance-source-edition-4.md) | 302 | `declaration-track:8b867bd985bc1471550b9cd6e654e2fd112fc4f9e1ef28b645188575da077958` |
| 20 | `theorem` | [single_comp_single](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatAdjunctionsNamespacedLeftUnitality.lean/declarations/single-comp-single.md) | 313 | `result-track:7c962052daf56cacd4cc5d78d3565767beca46f1a0afc650be25cdad2edf1510` |
| 21 | `def` | [embedding](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatAdjunctionsNamespacedLeftUnitality.lean/declarations/embedding.md) | 325 | `declaration-track:ce7d5f035ccf06feda7bcd4fbd16461a6709951e97c15b0e9bb564a5abe6f196` |
| 22 | `def` | [lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatAdjunctionsNamespacedLeftUnitality.lean/declarations/lift.md) | 342 | `declaration-track:376c19f2c9bf3f088b9ca81714cdbc927b5349d610a9fc053e3f068401e8b78b` |
| 23 | `theorem` | [lift_map_single](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatAdjunctionsNamespacedLeftUnitality.lean/declarations/lift-map-single.md) | 379 | `result-track:3d850fe1907f55cd9788aab829db4874853bed734a217559f5b4efc4251c9a3d` |
| 24 | `instance` | [lift_additive](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatAdjunctionsNamespacedLeftUnitality.lean/declarations/lift-additive.md) | 383 | `declaration-track:05e497342f4d3f62ff9fbf786a887ca6e5210c75d8d4d855a215a8462744e2de` |
| 25 | `instance` | [lift_linear](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatAdjunctionsNamespacedLeftUnitality.lean/declarations/lift-linear.md) | 389 | `declaration-track:551459232be0b50b1fd186786637efdc684c56e3e37ab942b005e4a0bb2ccfd0` |
| 26 | `def` | [embeddingLiftIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatAdjunctionsNamespacedLeftUnitality.lean/declarations/embeddingliftiso.md) | 398 | `declaration-track:5107e5fa0202b398b51be9fcdb9d98c8c4606c4734a2946f4164dd5ccacb6d81` |
| 27 | `def` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatAdjunctionsNamespacedLeftUnitality.lean/declarations/ext.md) | 406 | `declaration-track:eab33e02c1fb1ccd578e0ff02139aa68df0269654fa2487535cd7cef33b205e7` |
| 28 | `def` | [liftUnique](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatAdjunctionsNamespacedLeftUnitality.lean/declarations/liftunique.md) | 427 | `declaration-track:720925f6f7138aedddfae13f9ac2772205da907eaa30e2d0b21a2dea0d9e5c7f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e5eb021b1d8c4e84e0bfd2a77882eb9dc036ca5e239a64c69073531f66dfde0e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant8b15b6f07de5283e3d8fed71b4d2e4ac03bfb31fe7f5d84ba7d24a80a81e7952.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant8b15b6f07de5283e3d8fed71b4d2e4ac03bfb31fe7f5d84ba7d24a80a81e7952.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
