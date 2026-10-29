# Verification target: Has Iteration Of Shape

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef5f3d7c3ad8491d6a1821a71c20f3cfd0eefda4",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasIterationOfShape/Variant94bc726869c22cfce9fd0b0534281f68c69b2e7a2f487b89e604e664d91c964e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasIterationOfShape.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasIterationOfShape.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef5f3d7c3ad8491d6a1821a71c20f3cfd0eefda4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasIterationOfShape/Variant94bc726869c22cfce9fd0b0534281f68c69b2e7a2f487b89e604e664d91c964e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/HasIterationOfShape/Variant94bc726869c22cfce9fd0b0534281f68c69b2e7a2f487b89e604e664d91c964e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Comma` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FunctorCategory.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Preorder.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SuccPred.Limit` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.InitialSeg` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasIterationOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasIterationOfShape.lean/declarations/hasiterationofshape.md) | 31 | `declaration-track:34ecb0e3abaa1c1f46accd5ef968c75f5a665025368c851b4d9b4aa4d5a07d54` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasIterationOfShape.lean/declarations/instance.md) | 38 | `declaration-track:2f167afc6f55f427d386be92b1eb6e8c3e6a3a05da8fa4305f02820b2c1c54a6` |
| 3 | `lemma` | [hasColimitsOfShape_of_isSuccLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasIterationOfShape.lean/declarations/hascolimitsofshape-of-issucclimit.md) | 43 | `result-track:2758f2e1427086f12403e2088fba77be199daa2bae0019ac05165adcf2900d31` |
| 4 | `lemma` | [hasColimitsOfShape_of_isSuccLimit'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasIterationOfShape.lean/declarations/hascolimitsofshape-of-issucclimit-source-edition-2.md) | 49 | `result-track:3b6e39b894004036d93dc79da22438eaa7e6e09dda07095e78562ed40d326801` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasIterationOfShape.lean/declarations/instance-source-edition-4.md) | 55 | `declaration-track:f2af4a26e52816f33d49e5a57e2eb27fcb02917bfeb6409f0b8380b4acdf5288` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasIterationOfShape.lean/declarations/instance-source-edition-2.md) | 60 | `declaration-track:63a30a057c6292a4eb6b093f065640644c9ecc1edd2ca3d6858d74488c8dc220` |
| 7 | `lemma` | [hasColimitsOfShape_of_initialSeg](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasIterationOfShape.lean/declarations/hascolimitsofshape-of-initialseg.md) | 67 | `result-track:fcc3d9d6c342c3b9c99df829fa42fc1550104a733b43d379b2d9b00bf0339500` |
| 8 | `lemma` | [hasIterationOfShape_of_initialSeg](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasIterationOfShape.lean/declarations/hasiterationofshape-of-initialseg.md) | 92 | `result-track:215e00a06cca9c8219c255be58ce877087ded1102ddcc78c21268987001360e5` |
| 9 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasIterationOfShape.lean/declarations/instance-source-edition-3.md) | 103 | `declaration-track:827d0b2d2faedce8623c1a02d8143e36d8a1cf1cf0e8c42ed2c41f8004803b22` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e3a0c36c718ea01235627b1a611b732f8e11ba8d4a6ae7aeb42fe3164c23007d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasIterationOfShape/Variant94bc726869c22cfce9fd0b0534281f68c69b2e7a2f487b89e604e664d91c964e.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/HasIterationOfShape/Variant94bc726869c22cfce9fd0b0534281f68c69b2e7a2f487b89e604e664d91c964e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
