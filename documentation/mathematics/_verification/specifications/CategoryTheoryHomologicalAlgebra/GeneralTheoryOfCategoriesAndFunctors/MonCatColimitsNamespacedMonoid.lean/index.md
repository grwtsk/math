# Verification target: Mon Cat Colimits Namespaced Monoid

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "342735cd3fbeba2923f78daf5f061eb37361e474",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant8a280487cf14a7716c68ee478ea696381d3ab8c7d5120f90812685b287a36385.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatColimitsNamespacedMonoid.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatColimitsNamespacedMonoid.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `342735cd3fbeba2923f78daf5f061eb37361e474`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant8a280487cf14a7716c68ee478ea696381d3ab8c7d5120f90812685b287a36385.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant8a280487cf14a7716c68ee478ea696381d3ab8c7d5120f90812685b287a36385.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.MonCat.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.HasLimits` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.Elementwise` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Prequotient](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatColimitsNamespacedMonoid.lean/declarations/prequotient.md) | 80 | `declaration-track:6f529d8f28ca8f658896327ce14d8297ce198d01f526e121c954a2956c179e35` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatColimitsNamespacedMonoid.lean/declarations/instance.md) | 87 | `declaration-track:070bd0a2bb51b0390d732b5053f4d58917059346855c0d9a3142f7f5bb31f741` |
| 3 | `inductive` | [Relation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatColimitsNamespacedMonoid.lean/declarations/relation.md) | 96 | `declaration-track:88ae06b2990732114fcdab05b77f59134de3e487f967b1c71f6ba0a0715c756a` |
| 4 | `def` | [colimitSetoid](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatColimitsNamespacedMonoid.lean/declarations/colimitsetoid.md) | 117 | `declaration-track:8e16b5680b02291e217c04daf5281cbb226067add81e1034ba6757a256e68ba9` |
| 5 | `def` | [ColimitType](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatColimitsNamespacedMonoid.lean/declarations/colimittype.md) | 125 | `declaration-track:128c0d2bc2f71f2308a93eb2366594019a03218f2256b17481ea832795b4ff77` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatColimitsNamespacedMonoid.lean/declarations/instance-source-edition-2.md) | 128 | `declaration-track:0ced6ef28c32c78035a2263e04939db86f45d07098d3201fdffc7464ba731d86` |
| 7 | `instance` | [monoidColimitType](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatColimitsNamespacedMonoid.lean/declarations/monoidcolimittype.md) | 132 | `declaration-track:998a8c2624310b6297f0415eb985de9a7472ba1d474ea47b79a9b7f324385e7f` |
| 8 | `theorem` | [quot_one](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatColimitsNamespacedMonoid.lean/declarations/quot-one.md) | 142 | `result-track:52c520f1bf5cc017ad0c5179dc6848fb64611693e01f8857b6729212c4e18af7` |
| 9 | `theorem` | [quot_mul](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatColimitsNamespacedMonoid.lean/declarations/quot-mul.md) | 146 | `result-track:889faca1ba143053fcf0aa9419958a9ddab2cf8be7c9c61ac4481aef6edbcef1` |
| 10 | `def` | [colimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatColimitsNamespacedMonoid.lean/declarations/colimit.md) | 152 | `declaration-track:0280ace3588685f3d09023bf9c14a3de7c2fcfaaa170adc7189759eb740d9cec` |
| 11 | `def` | [coconeFun](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatColimitsNamespacedMonoid.lean/declarations/coconefun.md) | 156 | `declaration-track:6c6c947f1c7317c31eb38ece10121b585b0151f58a6bab06301edf5e1c54927c` |
| 12 | `def` | [coconeMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatColimitsNamespacedMonoid.lean/declarations/coconemorphism.md) | 160 | `declaration-track:46443bd21d20b738e9eab0d4ecc977b82b3d192453dcecce6a24d77a8da932a2` |
| 13 | `theorem` | [cocone_naturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatColimitsNamespacedMonoid.lean/declarations/cocone-naturality.md) | 167 | `result-track:f94625d97db63c175f24b68f0935611b5645f33f5dbd89b1be2e64a25c626414` |
| 14 | `theorem` | [cocone_naturality_components](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatColimitsNamespacedMonoid.lean/declarations/cocone-naturality-components.md) | 174 | `result-track:b05c8e16c014d5f4b1f9b04455babd1e32f001deeea15f82c09d0fd1206a3b31` |
| 15 | `def` | [colimitCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatColimitsNamespacedMonoid.lean/declarations/colimitcocone.md) | 180 | `declaration-track:ccc34713ff8a7ba605e083b5d571718a751fd9126bb6ae3a65e4d585fa70cef6` |
| 16 | `def` | [descFunLift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatColimitsNamespacedMonoid.lean/declarations/descfunlift.md) | 186 | `declaration-track:c5fb53b93837e7d6e07cbe754e10a9f25be32e500e093a379c7cb0d2f2de6482` |
| 17 | `def` | [descFun](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatColimitsNamespacedMonoid.lean/declarations/descfun.md) | 192 | `declaration-track:3b949d81d5587b0e73258ea5fc4c0c96c8233c2faad27688120c17086a442af5` |
| 18 | `def` | [descMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatColimitsNamespacedMonoid.lean/declarations/descmorphism.md) | 210 | `declaration-track:cc86bb1d93ffd0f2a51feb9a17ba2b3645621b2fadfedefbb27d20189d881d7f` |
| 19 | `def` | [colimitIsColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatColimitsNamespacedMonoid.lean/declarations/colimitiscolimit.md) | 222 | `declaration-track:3edc49a4ac4837d556b0fad46fae770df7b26db918babf4c2daaed2a724d8110` |
| 20 | `instance` | [hasColimits_monCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatColimitsNamespacedMonoid.lean/declarations/hascolimits-moncat.md) | 240 | `declaration-track:485a143ffcf03d5e552ca6415de21669d31723137190f4f6a5d75d80826ae740` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a463599ea163bcfb19edabf4565e515b8a792ab3e5f4a8277ad0302b3281e3ed -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant8a280487cf14a7716c68ee478ea696381d3ab8c7d5120f90812685b287a36385.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant8a280487cf14a7716c68ee478ea696381d3ab8c7d5120f90812685b287a36385.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
