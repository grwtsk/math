# Verification target: Induced Category

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d22ee3565dafc18259f00c3f4bcaf9a0c643f1a",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedCategory/Variant5472f6ffc124825e8a9dbbfc3ccb1de4dd826e94f317a2509ec11bce3502bba9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/InducedCategory.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/InducedCategory.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d22ee3565dafc18259f00c3f4bcaf9a0c643f1a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedCategory/Variant5472f6ffc124825e8a9dbbfc3ccb1de4dd826e94f317a2509ec11bce3502bba9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedCategory/Variant5472f6ffc124825e8a9dbbfc3ccb1de4dd826e94f317a2509ec11bce3502bba9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Functor.FullyFaithful` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [InducedCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/InducedCategory.lean/declarations/inducedcategory.md) | 46 | `declaration-track:d7d3f1c7fb1d449234bc486e41aa37ea89f7381339f73eb9b19c49edaffa93fb` |
| 2 | `instance` | [InducedCategory.hasCoeToSort](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/InducedCategory.lean/declarations/inducedcategory-hascoetosort.md) | 51 | `declaration-track:bbba72c81f0d59605416e4236c6496ac3425b20f518a6a81bf368987453b2025` |
| 3 | `instance` | [InducedCategory.category](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/InducedCategory.lean/declarations/inducedcategory-category.md) | 55 | `declaration-track:7b718536bd699c5b2d75edab75f5ede1ddb421f2b432d0364c885075e108f10f` |
| 4 | `def` | [InducedCategory.isoMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/InducedCategory.lean/declarations/inducedcategory-isomk.md) | 63 | `declaration-track:76a7ae2de775b0ed7d09970b8417c324083e70fe14d485f98b3245bc055a6d3f` |
| 5 | `def` | [inducedFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/InducedCategory.lean/declarations/inducedfunctor.md) | 73 | `declaration-track:e7015407564cf3fabd6b27f11e8355ed82ae28e3c5edeb3b38fd41987ef5368e` |
| 6 | `def` | [fullyFaithfulInducedFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/InducedCategory.lean/declarations/fullyfaithfulinducedfunctor.md) | 78 | `declaration-track:3380e56b5823124f47fac4bebfe87ae27b1a536ef85d3e5ae14804e937359002` |
| 7 | `instance` | [InducedCategory.full](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/InducedCategory.lean/declarations/inducedcategory-full.md) | 81 | `declaration-track:31f7f9a36cbf6c3e4e4d2ae56afb5405a5a47e6f068412bb0534bd73e0fa3ac5` |
| 8 | `instance` | [InducedCategory.faithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/InducedCategory.lean/declarations/inducedcategory-faithful.md) | 84 | `declaration-track:d426bbabf4705215c101c41f3fab7beb1d4c8717c8b835b500d48cac88cc2219` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cea54b0ed62d2fad682d90c2b357a1d4f482e9991db2d725ab87d6da3138ff51 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedCategory/Variant5472f6ffc124825e8a9dbbfc3ccb1de4dd826e94f317a2509ec11bce3502bba9.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedCategory/Variant5472f6ffc124825e8a9dbbfc3ccb1de4dd826e94f317a2509ec11bce3502bba9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
