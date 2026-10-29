# Verification target: Limits Elements Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "73154e5098a7ba58f87e3e6bcec49898d62997d7",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variante4d6fe32be9999e1b63df45865d74b258310d7b5f3f5c5496185aee47c28b863.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsElementsNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsElementsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `73154e5098a7ba58f87e3e6bcec49898d62997d7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variante4d6fe32be9999e1b63df45865d74b258310d7b5f3f5c5496185aee47c28b863.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variante4d6fe32be9999e1b63df45865d74b258310d7b5f3f5c5496185aee47c28b863.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Elements` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Limits` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Creates` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Limits` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [liftedConeElement'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsElementsNamespaced.lean/declarations/liftedconeelement-source-edition-3.md) | 45 | `declaration-track:4c883449071d15c58454a9df956d1449bb2478cf1c35dceeacc09c6ba6520069` |
| 2 | `lemma` | [π_liftedConeElement'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsElementsNamespaced.lean/declarations/liftedconeelement-source-edition-2.md) | 49 | `result-track:3824e1fc4ca9019c25d36d298d75ac8876b5e0819f64049e8f34386c795e8d9c` |
| 3 | `def` | [liftedConeElement](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsElementsNamespaced.lean/declarations/liftedconeelement.md) | 56 | `declaration-track:34574c67746401a8e95337b31cc6754ac8f3bc90993fe37b42b49562e200b0c8` |
| 4 | `lemma` | [map_lift_mapCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsElementsNamespaced.lean/declarations/map-lift-mapcone.md) | 60 | `result-track:0bde46066ffd4475f538325c91158ec5fb4cbc9822b4de586408afae121a7e66` |
| 5 | `lemma` | [map_π_liftedConeElement](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsElementsNamespaced.lean/declarations/map-liftedconeelement.md) | 70 | `result-track:7c5583712f5341587ac183569ab38a08eebc18b0158e564ed636f184a82e4b4d` |
| 6 | `def` | [liftedCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsElementsNamespaced.lean/declarations/liftedcone.md) | 78 | `declaration-track:6963602839ac813612caac962beca72d5cbc38266c4cc2c658f8c02fbc9f5ff8` |
| 7 | `def` | [isValidLift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsElementsNamespaced.lean/declarations/isvalidlift.md) | 85 | `declaration-track:2660f867e467d85e0b0795c3757678b86f84053902a1f5840c37a0e28e6c3b2c` |
| 8 | `def` | [isLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsElementsNamespaced.lean/declarations/islimit.md) | 89 | `declaration-track:3d2ff97aa30fc6dcc482a1aef4f2a266af4a4e31427788ead045d4bad6def057` |
| 9 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsElementsNamespaced.lean/declarations/instance-source-edition-2.md) | 102 | `declaration-track:635ced6e0e41fde4aca99f9d78c67865132217335e946880d7efa25b48dd6ff9` |
| 10 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsElementsNamespaced.lean/declarations/instance-source-edition-3.md) | 107 | `declaration-track:c1196f7449b168595873f8feafaf7f7000644d01b1d6cc4ede2b03f597553bf4` |
| 11 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsElementsNamespaced.lean/declarations/instance.md) | 109 | `declaration-track:17495e808832ea01f1fae82df86f9b7449554f56c4ac6263b9cd28bab454d49c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c6ce069f2337ad58655ea4b1cb600af34a1f02fe88f46406107458b3f66f6126 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variante4d6fe32be9999e1b63df45865d74b258310d7b5f3f5c5496185aee47c28b863.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Elements/Variante4d6fe32be9999e1b63df45865d74b258310d7b5f3f5c5496185aee47c28b863.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
