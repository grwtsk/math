# Verification target: Sheaf Limits

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "497eb188fcdc37de518ff43c2e60a9738ca1b556",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant48d7b8ac889589816d86c6d010ad4b89a9b887dacf6d6519530388d606d5dd96.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SheafLimits.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SheafLimits.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `497eb188fcdc37de518ff43c2e60a9738ca1b556`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant48d7b8ac889589816d86c6d010ad4b89a9b887dacf6d6519530388d606d5dd96.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant48d7b8ac889589816d86c6d010ad4b89a9b887dacf6d6519530388d606d5dd96.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Presheaf.Limits` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Sheaf` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Limits` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isSheaf_of_isLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SheafLimits.lean/declarations/issheaf-of-islimit.md) | 35 | `result-track:78e9af1c7ab70f228ae1392690c2e863303936a5905c9a92a7df3c99b3967480` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SheafLimits.lean/declarations/instance.md) | 54 | `declaration-track:bd71bf7974ffd0ed3ff7ee9df005a705606cc845994104a26984007e4e5d3f15` |
| 3 | `instance` | [createsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SheafLimits.lean/declarations/createslimit.md) | 59 | `declaration-track:e5da10a1fe7f37075ee88e1703a58234b69babea3b4411c2022661b8f91d740d` |
| 4 | `instance` | [hasLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SheafLimits.lean/declarations/haslimit.md) | 65 | `declaration-track:29ef3d522a9c48733122cd8f2c8eaa085d3d17e725fead5ca495443242004a4b` |
| 5 | `instance` | [evaluationPreservesLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SheafLimits.lean/declarations/evaluationpreserveslimit.md) | 67 | `declaration-track:91eb1c5e1d38b17963c9c23b19dc549c35f66d6dbfeebbc01768047d89d229c4` |
| 6 | `instance` | [hasLimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SheafLimits.lean/declarations/haslimitsofshape.md) | 80 | `declaration-track:59bd9a801a19c0b6831999796312e4cafb9a7282efcf09ee4bfb38531d6546f6` |
| 7 | `instance` | [evaluationPreservesLimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SheafLimits.lean/declarations/evaluationpreserveslimitsofshape.md) | 82 | `declaration-track:3891e481bf6f13dd679f6ded02b1286d433457ab7515cff404f95bf8e7953389` |
| 8 | `instance` | [forgetPreservesLimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SheafLimits.lean/declarations/forgetpreserveslimitsofshape.md) | 85 | `declaration-track:55ac027aa39a168a7aac3fb5322ddfc55a5000ee2d85542cbd1b41dd7ca7dd4e` |
| 9 | `instance` | [hasFiniteLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SheafLimits.lean/declarations/hasfinitelimits.md) | 92 | `declaration-track:72c579628aa485e04a91d1153f1d43760fded3e553d0387112064cd478fdf3e8` |
| 10 | `instance` | [evaluationPreservesFiniteLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SheafLimits.lean/declarations/evaluationpreservesfinitelimits.md) | 95 | `declaration-track:390f3e21d235d03ef1cee7dd95097215aaf227acf2b52d605185978540d8d894` |
| 11 | `instance` | [forgetPreservesFiniteLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SheafLimits.lean/declarations/forgetpreservesfinitelimits.md) | 98 | `declaration-track:2f29c9e37ec43e36517220b3519c45ea13ca3f01415f5eef74a0bb3078cbb29a` |
| 12 | `instance` | [hasLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SheafLimits.lean/declarations/haslimitsofsize.md) | 103 | `declaration-track:fc27cacdf040f6a33b474d4b7023f977471fc6d673d6eea085b9ad2c0d590199` |
| 13 | `instance` | [evaluationPreservesLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SheafLimits.lean/declarations/evaluationpreserveslimitsofsize.md) | 105 | `declaration-track:d075250e6f292ba63e6b50a68c067850b03bcdcbcdebf0c2a7ba0170e6ea338e` |
| 14 | `instance` | [forgetPreservesLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SheafLimits.lean/declarations/forgetpreserveslimitsofsize.md) | 108 | `declaration-track:d90779023cae007324b00e463daefb0e85fcba69248b13fda68b76cd40863bb8` |
| 15 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SheafLimits.lean/declarations/instance-source-edition-2.md) | 111 | `declaration-track:ec4c5517a554a6eec26b1d1ecbc4b234adc793a9e91b70f02116e5de4f771501` |
| 16 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SheafLimits.lean/declarations/instance-source-edition-3.md) | 115 | `declaration-track:f59583dcfb3835f7f6007e5abf002ef7266dda9195b0b8cb9712b23999a5cb6d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c536637439ec7563c16f8e8bc567150e0b6d141fd4c3dfeb6dd501428f8e7358 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant48d7b8ac889589816d86c6d010ad4b89a9b887dacf6d6519530388d606d5dd96.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant48d7b8ac889589816d86c6d010ad4b89a9b887dacf6d6519530388d606d5dd96.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
