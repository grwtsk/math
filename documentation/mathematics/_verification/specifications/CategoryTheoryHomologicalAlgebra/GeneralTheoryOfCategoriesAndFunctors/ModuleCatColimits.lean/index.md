# Verification target: Module Cat Colimits

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9401e81381d4b38d4189cf0d3a9c05a7396b8544",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant631635ef07760a178add11a64234b6a6f3c29d841e90fb2589ff4f43c60cc0a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimits.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimits.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9401e81381d4b38d4189cf0d3a9c05a7396b8544`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant631635ef07760a178add11a64234b6a6f3c29d841e90fb2589ff4f43c60cc0a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant631635ef07760a178add11a64234b6a6f3c29d841e90fb2589ff4f43c60cc0a9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.Elementwise` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Grp.Colimits` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coconePointSMul](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimits.lean/declarations/coconepointsmul.md) | 41 | `declaration-track:b285eb635c21c2b7db81cd4699901ef38c1da7bb2b5d9fc7b506ad6402678f13` |
| 2 | `def` | [colimitCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimits.lean/declarations/colimitcocone.md) | 57 | `declaration-track:44be446e15a74f6c791506fe743fdb0682f6768c96fbccdd809cdd39e14aa16f` |
| 3 | `def` | [isColimitColimitCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimits.lean/declarations/iscolimitcolimitcocone.md) | 73 | `declaration-track:20f33c72961fcbeda039ba4cb6d0105ce9a5f95919638dcf588a9e0b8955964c` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimits.lean/declarations/instance-source-edition-2.md) | 97 | `declaration-track:236b266a6873f3429033d1c09d535638731b9b1f4224ea54288490bfa4483a90` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimits.lean/declarations/instance-source-edition-4.md) | 99 | `declaration-track:94b5a35be2c9452f92b88dc8cc497bcdac26cbd9a4dc6d565dffdb67f7639850` |
| 6 | `instance` | [reflectsColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimits.lean/declarations/reflectscolimit.md) | 102 | `declaration-track:3ba00a60585dd6eb05554519ec3427eebf51a2505a403b29f0b15b7cb613ddd2` |
| 7 | `instance` | [hasColimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimits.lean/declarations/hascolimitsofshape.md) | 110 | `declaration-track:48ef35f1ab12b4f59cf63b8fe9761ea5ecab9e7ba3ba32610e6e4d954c45bf71` |
| 8 | `instance` | [reflectsColimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimits.lean/declarations/reflectscolimitsofshape.md) | 113 | `declaration-track:34ed6d79f3bcb7497ba40640fb482ff3b62598897bfe0ee40ba9ae2f61b8dfd4` |
| 9 | `instance` | [hasColimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimits.lean/declarations/hascolimitsofsize.md) | 116 | `declaration-track:5f2df7175e7b0c01290b12e12b921799baa16b7093c995d4ba1387c134db9a9e` |
| 10 | `instance` | [forget₂PreservesColimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimits.lean/declarations/forget-preservescolimitsofshape.md) | 119 | `declaration-track:bc49db37f85d1b85514062fc4bdd6a8c8338b6b0be63cec1416530e5cd113a01` |
| 11 | `instance` | [forget₂PreservesColimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimits.lean/declarations/forget-preservescolimitsofsize.md) | 123 | `declaration-track:958185c4d616ae3e9da6356b3bf35c16d473083a551e6724a71ca02c9931ddc9` |
| 12 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimits.lean/declarations/instance-source-edition-3.md) | 127 | `declaration-track:38ea0aa26b2e374df6136bb8aca990f04ccd9db9d03d878ba052617d5c0eec5f` |
| 13 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimits.lean/declarations/instance.md) | 131 | `declaration-track:0063f7f1ab03d7c926275d882ff8b92d8be819317913fd7326cfe95ce70d6609` |
| 14 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimits.lean/declarations/example.md) | 134 | `declaration-track:029d528d8a5d791f25d33dacc6a2c1aa52e153a3fa89dfb27061a19d9ed48456` |
| 15 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimits.lean/declarations/example-source-edition-3.md) | 137 | `declaration-track:7d5291a0234a8454152fb267868abf0e71406837c1fa6a8934eb7b92ead62397` |
| 16 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimits.lean/declarations/example-source-edition-5.md) | 140 | `declaration-track:a0cac70492267a406012e8981f0299bcfe4ebe95e0c7f9dcb50c20442ee3e9ca` |
| 17 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimits.lean/declarations/example-source-edition-2.md) | 143 | `declaration-track:68746a3a14070b6f1ce163c8e291014f807cf6f426af0ee84d3d6c6e0e034721` |
| 18 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimits.lean/declarations/instance-source-edition-5.md) | 147 | `declaration-track:c62c155f84347842e4d81f026a57c8d23c4969b2ba6a35f3f07621f1eaa2843a` |
| 19 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatColimits.lean/declarations/example-source-edition-4.md) | 149 | `declaration-track:9f91246f3fee69aa5eac81d6676fe8c6f3a40283ae1dd547ce8870d0db788375` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=777e798653277e1d33218bf173be51e629c5e9422017aaabc67f9fa72972b081 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant631635ef07760a178add11a64234b6a6f3c29d841e90fb2589ff4f43c60cc0a9.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant631635ef07760a178add11a64234b6a6f3c29d841e90fb2589ff4f43c60cc0a9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
