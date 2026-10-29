# Verification target: Category Theory Essentially Small Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ccaec4ea54579e720c192a491d7db2d4d32d80ca",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant6f31430ff65a760267eda43f3ab6a3d71f5a2e86ca1cd9b0644d8ec25af2354e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ccaec4ea54579e720c192a491d7db2d4d32d80ca`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant6f31430ff65a760267eda43f3ab6a3d71f5a2e86ca1cd9b0644d8ec25af2354e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant6f31430ff65a760267eda43f3ab6a3d71f5a2e86ca1cd9b0644d8ec25af2354e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Small.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Category.ULift` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Skeletal` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [EssentiallySmall](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespaced.lean/declarations/essentiallysmall.md) | 44 | `declaration-track:2c31be28efbdd1253de8116f284917f6e0075024872279c462c76a6b27e811eb` |
| 2 | `theorem` | [EssentiallySmall.mk'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespaced.lean/declarations/essentiallysmall-mk.md) | 50 | `result-track:f4338374c2a10f7a926beeb66732e4145c7c9a84f03da394b84616291e73b1a2` |
| 3 | `def` | [SmallModel](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespaced.lean/declarations/smallmodel.md) | 58 | `declaration-track:0ee225a0535e44011e9b0eec9d7bc7267dd46f23f14d7fe6b63eb7717db39556` |
| 4 | `instance` | [smallCategorySmallModel](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespaced.lean/declarations/smallcategorysmallmodel.md) | 62 | `declaration-track:9a5e1a4e063cea3bed5b1ddb0d0d8a77de218762cff91b0d854b8fd6a8bb7bb9` |
| 5 | `def` | [equivSmallModel](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespaced.lean/declarations/equivsmallmodel.md) | 70 | `declaration-track:296e494b109ba786a94ca995d2eed4ae668206c4978de656e367539c2877cbb8` |
| 6 | `theorem` | [essentiallySmall_congr](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespaced.lean/declarations/essentiallysmall-congr.md) | 76 | `result-track:067da0a92f3928b70b1b1f6bc576db5e812c1d59047d87e413ab96b1388ff034` |
| 7 | `theorem` | [Discrete.essentiallySmallOfSmall](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespaced.lean/declarations/discrete-essentiallysmallofsmall.md) | 87 | `result-track:0779c7ea0052d733ea93de17226aa3301d000b70b6cbea8f0820d280c5bd7c57` |
| 8 | `theorem` | [essentiallySmallSelf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespaced.lean/declarations/essentiallysmallself.md) | 92 | `result-track:bc898ff2a2232db6f37b8eb1aa03fb9978e35897f0572659a1d2b42b1b4627c8` |
| 9 | `class` | [LocallySmall](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespaced.lean/declarations/locallysmall.md) | 100 | `declaration-track:6e4d8885cff2ee9c3e0d34f07184f150260dd707118e2c4f918af3c03aa719b4` |
| 10 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespaced.lean/declarations/instance-source-edition-2.md) | 105 | `declaration-track:565789e935d5f9e29b0c1dda650ddc138bf8b287f75d0cc47ac4a864a18f85fa` |
| 11 | `theorem` | [locallySmall_congr](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespaced.lean/declarations/locallysmall-congr.md) | 108 | `result-track:88f77e53f20d5a468e5307ac3ae8ee57516597958f162047f4066bd9f3f65b91` |
| 12 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespaced.lean/declarations/instance.md) | 125 | `declaration-track:3c6a92248eef24af6a8b8894e084beca114802942d35c1771e053f38820b32d8` |
| 13 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespaced.lean/declarations/instance-source-edition-5.md) | 129 | `declaration-track:cbe6d79cb66617e070b0094462ea1b924bdc483e7ae7659646d68ce2b1f67240` |
| 14 | `def` | [ShrinkHoms](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespaced.lean/declarations/shrinkhoms.md) | 138 | `declaration-track:2f657bb775e047a125786ffaf7c14af6e15041eac50f3e084fb1501663807960` |
| 15 | `def` | [toShrinkHoms](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespaced.lean/declarations/toshrinkhoms.md) | 150 | `declaration-track:7bb678486fa8ac1ed32260edcf9052eda9db38ef9c84e7d174f551417db582b6` |
| 16 | `def` | [fromShrinkHoms](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespaced.lean/declarations/fromshrinkhoms.md) | 155 | `declaration-track:aaf31ff670a24c0ad1beb1d3df65e5f55bf817008870b94269c48bea6c52ae95` |
| 17 | `theorem` | [to_from](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespaced.lean/declarations/to-from.md) | 160 | `result-track:477822be2e8be025d37285a601f8438b4313122e6047f32a157fb44cb28c4075` |
| 18 | `theorem` | [from_to](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespaced.lean/declarations/from-to.md) | 165 | `result-track:f3a9c891f70fb2c0e6ce8a5cdabe74c6fc076a90433216a235da25630fc704fc` |
| 19 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespaced.lean/declarations/instance-source-edition-4.md) | 174 | `declaration-track:bb7f4f9b5c6da6567cd508efa8b622b2bd7ee17ce3cc302cabf490214a313797` |
| 20 | `def` | [functor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespaced.lean/declarations/functor.md) | 182 | `declaration-track:160bbf2a6230e82df97192ac9c8ccb07938e46170ae3888b8b127b695276facc` |
| 21 | `def` | [inverse](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespaced.lean/declarations/inverse.md) | 190 | `declaration-track:c1085d8d727742370f0c7386c1d56f2e5d725c8abeb30d88e2917e5b26605356` |
| 22 | `def` | [equivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespaced.lean/declarations/equivalence.md) | 199 | `declaration-track:3062950c1c2850bbd809b32cb192e43b8e956e30f6ea4eab516a2ccc63353319` |
| 23 | `theorem` | [essentiallySmall_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespaced.lean/declarations/essentiallysmall-iff.md) | 211 | `result-track:ca4b75f785991a0a15160ccb393fe788b6423e2e1cc8b0cc8ba66ccfa036dd78` |
| 24 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespaced.lean/declarations/instance-source-edition-3.md) | 235 | `declaration-track:8b0f70f08784d78666545b7c594dcb5e274cea535e0218577f579e982856408a` |
| 25 | `theorem` | [essentiallySmall_iff_of_thin](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespaced.lean/declarations/essentiallysmall-iff-of-thin.md) | 242 | `result-track:309d40f060d85b49e8e0a9687f73829e3e3e06d1098b960e7b14f432380e4d60` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d35ac4b7ea7d8f5b84978b8461d51a5049cbeaca7d8871090007d1e96209a8a6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant6f31430ff65a760267eda43f3ab6a3d71f5a2e86ca1cd9b0644d8ec25af2354e.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant6f31430ff65a760267eda43f3ab6a3d71f5a2e86ca1cd9b0644d8ec25af2354e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
