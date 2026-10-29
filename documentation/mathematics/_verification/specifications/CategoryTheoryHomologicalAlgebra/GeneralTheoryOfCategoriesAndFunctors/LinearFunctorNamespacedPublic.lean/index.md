# Verification target: Linear Functor Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "03cd365bad8941c9f7d287a85cf7eb342d9ca4a3",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variant72828d1fa0e3acda3eff3beda1aa5320f0225e4adae4f029aaa6efdd51c68c72.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LinearFunctorNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LinearFunctorNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `03cd365bad8941c9f7d287a85cf7eb342d9ca4a3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variant72828d1fa0e3acda3eff3beda1aa5320f0225e4adae4f029aaa6efdd51c68c72.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variant72828d1fa0e3acda3eff3beda1aa5320f0225e4adae4f029aaa6efdd51c68c72.lean.json)

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
| 1 | `class` | [Functor.Linear](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LinearFunctorNamespacedPublic.lean/declarations/functor-linear.md) | 44 | `declaration-track:becb795e6e110b0e72d6527d9612b3ca34f3b5c0e0607eda0b7d1a0fdf53ca2b` |
| 2 | `lemma` | [Functor.linear_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LinearFunctorNamespacedPublic.lean/declarations/functor-linear-iff.md) | 48 | `result-track:db3a51e88aeefc0d273f8ce52590370149ed50f48fa9eb9d8bce096f2d4d7867` |
| 3 | `theorem` | [map_smul](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LinearFunctorNamespacedPublic.lean/declarations/map-smul.md) | 66 | `result-track:1befa16c6080549a738fbce4a6dc9b5559038b3d0f74b16c583e2921b6404964` |
| 4 | `theorem` | [map_units_smul](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LinearFunctorNamespacedPublic.lean/declarations/map-units-smul.md) | 70 | `result-track:a5d05706e0a70c0222fdd2363b18e8ce4c9cf68850caace92ba9a1543de0bdc4` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LinearFunctorNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 73 | `declaration-track:ab4afb5bef0c623c7f3415a0d42ff9a46a6e228e542c6a2d2430920b604c6eb3` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LinearFunctorNamespacedPublic.lean/declarations/instance.md) | 79 | `declaration-track:297e45f35da326de4967eb1f8da326a7bb571c058084b4f4cc0cbec11fb54296` |
| 7 | `lemma` | [linear_of_full_essSurj_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LinearFunctorNamespacedPublic.lean/declarations/linear-of-full-esssurj-comp.md) | 81 | `result-track:948eef16970c2d26c88f6e577d8a68560c93c33ce67afad805b7147ce4b9f2b4` |
| 8 | `lemma` | [linear_comp_iff_of_full_of_essSurj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LinearFunctorNamespacedPublic.lean/declarations/linear-comp-iff-of-full-of-esssurj.md) | 93 | `result-track:ff5ae47f9adcea3ae5df5c789df22571c7d9e60937a6d7f592a0b22d847c6ecb` |
| 9 | `def` | [mapLinearMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LinearFunctorNamespacedPublic.lean/declarations/maplinearmap.md) | 103 | `declaration-track:2bc123d320fb59dc21eff10cd46fb605c68b549d6a84a002611d3b1f0eaf3a4c` |
| 10 | `theorem` | [coe_mapLinearMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LinearFunctorNamespacedPublic.lean/declarations/coe-maplinearmap.md) | 106 | `result-track:77e0d45378685a39c0cac26cbd086dc6271ecf239527b68a606d730ad50014f0` |
| 11 | `lemma` | [linear_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LinearFunctorNamespacedPublic.lean/declarations/linear-of-iso.md) | 111 | `result-track:d387ca66e190399f20219f666e9132ab7997de041b8b3ff0acc302e81e3809f6` |
| 12 | `instance` | [inducedFunctorLinear](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LinearFunctorNamespacedPublic.lean/declarations/inducedfunctorlinear.md) | 119 | `declaration-track:6b8e4e23026df241011829b98903ab7f0c83f4ab7cc1fcf391f806b83bc9c9e4` |
| 13 | `instance` | [fullSubcategoryInclusionLinear](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LinearFunctorNamespacedPublic.lean/declarations/fullsubcategoryinclusionlinear.md) | 123 | `declaration-track:863bf1da95081f6dac9042f59aeea0917569de836bced4d390b21703ec29577a` |
| 14 | `instance` | [natLinear](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LinearFunctorNamespacedPublic.lean/declarations/natlinear.md) | 130 | `declaration-track:ed32b290345ccc9e8962bb31d958a2eb97a07b2309c385a623da28254fa8d4ad` |
| 15 | `instance` | [intLinear](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LinearFunctorNamespacedPublic.lean/declarations/intlinear.md) | 133 | `declaration-track:f40a9f0390716556349623883bca5d19e430ad501723b1a865d0471010447024` |
| 16 | `instance` | [ratLinear](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LinearFunctorNamespacedPublic.lean/declarations/ratlinear.md) | 138 | `declaration-track:b02a1d3447e4ea8950264e972c86edc67c743fef2fb62767a7fa5b8621800db4` |
| 17 | `instance` | [inverseLinear](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LinearFunctorNamespacedPublic.lean/declarations/inverselinear.md) | 148 | `declaration-track:391946396b7f65cfca4029890500c96f49288b9964e0e7fc617bd35fe3f3d678` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9e1f18e4d855eac3459c765f7534e4935ec6df8c9d0d098b6ab6ea222ef6e333 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variant72828d1fa0e3acda3eff3beda1aa5320f0225e4adae4f029aaa6efdd51c68c72.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variant72828d1fa0e3acda3eff3beda1aa5320f0225e4adae4f029aaa6efdd51c68c72.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
