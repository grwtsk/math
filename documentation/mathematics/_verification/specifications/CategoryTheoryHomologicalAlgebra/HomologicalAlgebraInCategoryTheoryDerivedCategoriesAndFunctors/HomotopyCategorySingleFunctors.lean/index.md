# Verification target: Homotopy Category Single Functors

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ae0edaab1952749ab0c41f593cb6442f1453efa",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variantc5fcbb88695d7539cc00f79722f9f32c6b20aff0da9c6d2675684981d516ff9d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyCategorySingleFunctors.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyCategorySingleFunctors.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ae0edaab1952749ab0c41f593cb6442f1453efa`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variantc5fcbb88695d7539cc00f79722f9f32c6b20aff0da9c6d2675684981d516ff9d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variantc5fcbb88695d7539cc00f79722f9f32c6b20aff0da9c6d2675684981d516ff9d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.HomotopyCategory.Shift` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Shift.SingleFunctors` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [singleFunctors](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyCategorySingleFunctors.lean/declarations/singlefunctors.md) | 36 | `declaration-track:6596d36e36f6e88bf8651e8d67ffe64c9b3d1292e5ea267de7f864ef2cdc2bb0` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyCategorySingleFunctors.lean/declarations/instance.md) | 62 | `declaration-track:4f3817bb5ff4782dd172e0634b4f899e163a706dbf34d57eaf48b54208a51cf8` |
| 3 | `abbrev` | [singleFunctor](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyCategorySingleFunctors.lean/declarations/singlefunctor.md) | 70 | `declaration-track:383d54694d4efbd54b391c1c75eeeb77b79bcda0417e051afaa180bf95727385` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyCategorySingleFunctors.lean/declarations/instance-source-edition-2.md) | 72 | `declaration-track:98e9f424f09ee7442ef299ed962b48db1fe986b12fa4519c640131816835772f` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyCategorySingleFunctors.lean/declarations/instance-source-edition-4.md) | 75 | `declaration-track:dbfb47ac5380dffbf04c26e92f18520317ef5e43f0715c5cf184365a0263bb73` |
| 6 | `def` | [singleFunctors](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyCategorySingleFunctors.lean/declarations/singlefunctors-source-edition-2.md) | 84 | `declaration-track:7b863d4906c1bdd2a947a2a4ba6c564aa7ddf6f0e281ceebfd55c7512f052b2d` |
| 7 | `abbrev` | [singleFunctor](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyCategorySingleFunctors.lean/declarations/singlefunctor-source-edition-2.md) | 89 | `declaration-track:95a037a141f8bb4d4def7c106481a32d282ffce01cf98752989f4735c769b8fd` |
| 8 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyCategorySingleFunctors.lean/declarations/instance-source-edition-3.md) | 93 | `declaration-track:d536ec62b98106dd4184ac09d420d65d2e8cb88698d2377fbcd20b7adc6bf229` |
| 9 | `def` | [singleFunctorsPostcompQuotientIso](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyCategorySingleFunctors.lean/declarations/singlefunctorspostcompquotientiso.md) | 98 | `declaration-track:4df6be43faf3c9af623c0111d09e0f24215b68dd573afe60f7cd8307e8aa8812` |
| 10 | `def` | [singleFunctorPostcompQuotientIso](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyCategorySingleFunctors.lean/declarations/singlefunctorpostcompquotientiso.md) | 104 | `declaration-track:a5fdb95565ec33d48e4f7f7fa147ca11438a6df8e9ad40ab7f2831d76c8710be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e1680f8f1e69d1bf6b7af5099d124fea7187e6718cac2d06f40b3d69942cd977 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variantc5fcbb88695d7539cc00f79722f9f32c6b20aff0da9c6d2675684981d516ff9d.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variantc5fcbb88695d7539cc00f79722f9f32c6b20aff0da9c6d2675684981d516ff9d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
