# Verification target: Supplied Layer Equivalence System

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6566276dca7b3bb187d9e82021023bb138aa4125",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/EquivalencesOfCategories/SuppliedLayerSystems/Variant0206c5a46828368c/SuppliedLayerEquivalenceSystem.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SuppliedLayerEquivalenceSystem.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SuppliedLayerEquivalenceSystem.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6566276dca7b3bb187d9e82021023bb138aa4125`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/EquivalencesOfCategories/SuppliedLayerSystems/Variant0206c5a46828368c/SuppliedLayerEquivalenceSystem.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/EquivalencesOfCategories/SuppliedLayerSystems/Variant0206c5a46828368c/SuppliedLayerEquivalenceSystem.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Equivalence` — import line 17; external provider; requires a separately pinned dependency.
- `Think.Logic.Mathlib.GeometricMorphism` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ThinkSystem](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SuppliedLayerEquivalenceSystem.lean/declarations/thinksystem.md) | 36 | `declaration-track:6f6a4c875a162c5330d0eb1b268c806bd4a063318937029eabf66a6a9d0d8182` |
| 2 | `def` | [ThinkSystem.logicToWisdom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SuppliedLayerEquivalenceSystem.lean/declarations/thinksystem-logictowisdom.md) | 60 | `declaration-track:e343303ecc19c662ab3b701ae704d2c33ddf56e3ff29ae6b04c531750c1fdfbb` |
| 3 | `theorem` | [ThinkSystem.logicToWisdom_isEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SuppliedLayerEquivalenceSystem.lean/declarations/thinksystem-logictowisdom-isequivalence.md) | 75 | `result-track:6cb004c71c83b895da8f924d6e6857c6eafc6439a5d734c4cc99a7712d0e4d24` |
| 4 | `theorem` | [ThinkSystem.inverseImage_preservesFiniteLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SuppliedLayerEquivalenceSystem.lean/declarations/thinksystem-inverseimage-preservesfinitelimits.md) | 94 | `result-track:d86352f32c44e9275e6cf578e798a080b1a8990174bc7f5b60f6f169a2352dd5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=63d87c7e6bbc98d9ad1b7a4256c64c5b9af3d08903684f9f72cc13c631988bbd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/EquivalencesOfCategories/SuppliedLayerSystems/Variant0206c5a46828368c/SuppliedLayerEquivalenceSystem.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/EquivalencesOfCategories/SuppliedLayerSystems/Variant0206c5a46828368c/SuppliedLayerEquivalenceSystem.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
