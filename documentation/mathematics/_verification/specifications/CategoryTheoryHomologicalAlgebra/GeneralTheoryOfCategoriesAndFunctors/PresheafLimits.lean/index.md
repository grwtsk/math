# Verification target: Presheaf Limits

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b39f48817c23e2b4efa573808f7d85f3de7b4e00",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantea0828b29744d991b8534916feaf5eeaa17cf88d98e769332e3d667d292c07ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafLimits.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafLimits.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b39f48817c23e2b4efa573808f7d85f3de7b4e00`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantea0828b29744d991b8534916feaf5eeaa17cf88d98e769332e3d667d292c07ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantea0828b29744d991b8534916feaf5eeaa17cf88d98e769332e3d667d292c07ef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Presheaf` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.ChangeOfRings` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Limits` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FunctorCategory.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [evaluationJointlyReflectsLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafLimits.lean/declarations/evaluationjointlyreflectslimits.md) | 34 | `declaration-track:7b00e6ae4141a40645721b3e3468e2372457f0e03d087df5bcd325dcf5bdc925` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafLimits.lean/declarations/instance.md) | 56 | `declaration-track:f0dddde86e3be25c72087ee3d9320fd35c945b69fcc7ba7eacaea312a8fc98fa` |
| 3 | `def` | [limitPresheafOfModules](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafLimits.lean/declarations/limitpresheafofmodules.md) | 64 | `declaration-track:cb068be8928754e522fb5cb823c4980926c6f9f0f1f9993c1d72bbf329675ab1` |
| 4 | `def` | [limitCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafLimits.lean/declarations/limitcone.md) | 106 | `declaration-track:edad53b949a65f2ff9dc41c828602e56abfa551213ac4e86787daf4d5b9950c3` |
| 5 | `def` | [isLimitLimitCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafLimits.lean/declarations/islimitlimitcone.md) | 120 | `declaration-track:718d4f9fcac4a619210c33abd9bfc2bf10455982618f8ab6bfdac1acbdfb7fce` |
| 6 | `instance` | [hasLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafLimits.lean/declarations/haslimit.md) | 123 | `declaration-track:9a42910720ffaf61f37f904136b825f7ee1516b86d4e93fe0b07520b713df2dd` |
| 7 | `instance` | [evaluation_preservesLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafLimits.lean/declarations/evaluation-preserveslimit.md) | 125 | `declaration-track:29e4ec95367dda016518835889949c4be1ad47c616fd4aa7fddb1eead3c213b0` |
| 8 | `instance` | [toPresheaf_preservesLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafLimits.lean/declarations/topresheaf-preserveslimit.md) | 129 | `declaration-track:3024e8b5e1ea52210aa3a3ce1ab65215944935de399f5c37aa5d0fc1e7f1a26d` |
| 9 | `instance` | [hasLimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafLimits.lean/declarations/haslimitsofshape.md) | 144 | `declaration-track:15bc1c68c4ae785c42c95da962a16c7ff3a840535233437b804bd16c4ffd13ef` |
| 10 | `instance` | [hasLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafLimits.lean/declarations/haslimitsofsize.md) | 146 | `declaration-track:508c3d501fee4e29091031c363234189263c5b90019344f0d30b337dc94b3ac7` |
| 11 | `instance` | [evaluation_preservesLimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafLimits.lean/declarations/evaluation-preserveslimitsofshape.md) | 148 | `declaration-track:3983e1f2a122de513e3cef809df14f933ac0936d1c5d5ead158223cd917bab8f` |
| 12 | `instance` | [toPresheaf_preservesLimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafLimits.lean/declarations/topresheaf-preserveslimitsofshape.md) | 151 | `declaration-track:0dece38c8880ab3775b2137f6976fbf8629a33e1f02b8da10f70c9106d8a8c86` |
| 13 | `instance` | [hasFiniteLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafLimits.lean/declarations/hasfinitelimits.md) | 158 | `declaration-track:a8d9622ee7d036668e722561da36371ea984016d396b19deeaec89fdb2d240dc` |
| 14 | `instance` | [evaluation_preservesFiniteLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafLimits.lean/declarations/evaluation-preservesfinitelimits.md) | 161 | `declaration-track:36756fd92e1978eb86b55b2974e33893a0ae9c05d4bcd59066e7874c3a3a221b` |
| 15 | `instance` | [toPresheaf_preservesFiniteLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresheafLimits.lean/declarations/topresheaf-preservesfinitelimits.md) | 164 | `declaration-track:f7dedec88963d6daffd87ad07161389472ef06acbd345752379da528926e6cea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=06e67e1aac6db4ead4f9a43148ee6bfb9358c4470a455f9e55795e2654f5681c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantea0828b29744d991b8534916feaf5eeaa17cf88d98e769332e3d667d292c07ef.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantea0828b29744d991b8534916feaf5eeaa17cf88d98e769332e3d667d292c07ef.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
