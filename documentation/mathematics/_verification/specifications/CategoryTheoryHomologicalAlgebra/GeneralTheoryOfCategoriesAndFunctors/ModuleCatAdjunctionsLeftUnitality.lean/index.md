# Verification target: Module Cat Adjunctions Left Unitality

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fdd94f25941f223acccf94315aa7738ab17b519f",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant60f12b43994f0ea5825c5fef72095efed7de2bf486853a0efc47a6e1a9820441.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatAdjunctionsLeftUnitality.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatAdjunctionsLeftUnitality.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fdd94f25941f223acccf94315aa7738ab17b519f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant60f12b43994f0ea5825c5fef72095efed7de2bf486853a0efc47a6e1a9820441.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant60f12b43994f0ea5825c5fef72095efed7de2bf486853a0efc47a6e1a9820441.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Monoidal.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Functorial` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Types.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.DirectSum.Finsupp` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Linear.LinearFunctor` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [free](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatAdjunctionsLeftUnitality.lean/declarations/free.md) | 42 | `declaration-track:0b2819d2efa55ad935e71e0561a148183aa37e0f9ac482e8c7d1e66ae1453cd4` |
| 2 | `def` | [adj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatAdjunctionsLeftUnitality.lean/declarations/adj.md) | 51 | `declaration-track:99ffce73b6947e014a1497a9495aa9f83e3d664ac9847b4ee5dedaf53eb23c15` |
| 3 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatAdjunctionsLeftUnitality.lean/declarations/instance-source-edition-2.md) | 60 | `declaration-track:70922e17587fcfb26abb86f7d79075abe9e98e33c613050848821a2b03545b25` |
| 4 | `def` | [ε](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatAdjunctionsLeftUnitality.lean/declarations/anonymous.md) | 74 | `declaration-track:7a9317c95f6dda41b2cbdbfba0142fa3375a063958594c559032995917af34ea` |
| 5 | `theorem` | [ε_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatAdjunctionsLeftUnitality.lean/declarations/apply.md) | 79 | `result-track:7b965b8bd2c279ad18d3fb49feb0ffbc8e97b9d45c35fd71e3f6f1f6ce6b0fe2` |
| 6 | `def` | [μ](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatAdjunctionsLeftUnitality.lean/declarations/anonymous-source-edition-2.md) | 84 | `declaration-track:f41b78038c78c557d24ab18d994c667b8c569b042dd8220cbcb4868bf9130327` |
| 7 | `theorem` | [μ_natural](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatAdjunctionsLeftUnitality.lean/declarations/natural.md) | 88 | `result-track:5ceb4c1463244715c53105b50c361db6ba1f49b4517dea110cbe303d9934d2c1` |
| 8 | `theorem` | [left_unitality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatAdjunctionsLeftUnitality.lean/declarations/left-unitality.md) | 110 | `result-track:b8a4a378d87237a90585b351be73b7a12ed36850c196e737845b21b912891e67` |
| 9 | `theorem` | [right_unitality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatAdjunctionsLeftUnitality.lean/declarations/right-unitality.md) | 131 | `result-track:0a5dd2c18a6f40e29b7cdff759c5f9b3bae06a9d99b637637587da15b693139d` |
| 10 | `theorem` | [associativity](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatAdjunctionsLeftUnitality.lean/declarations/associativity.md) | 152 | `result-track:20c914ee3cc9202346f2ea9430f32dfb0192c4c07d45f387d4f4b0cc67a24285` |
| 11 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatAdjunctionsLeftUnitality.lean/declarations/instance-source-edition-5.md) | 185 | `declaration-track:f66e4e0eb0de97c9e3d9bb25dcf1eaaa500a1fc72f3853123cc190fe3736fb14` |
| 12 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatAdjunctionsLeftUnitality.lean/declarations/instance.md) | 195 | `declaration-track:529602bae1a4bf0924527415c4a7cc74fc0c4c7831ff83329189e038ace4b807` |
| 13 | `def` | [monoidalFree](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatAdjunctionsLeftUnitality.lean/declarations/monoidalfree.md) | 221 | `declaration-track:47d6e2a9a9d5c7a34c9deda1e730118acdae89505482f54a3f64c6f68783c4c0` |
| 14 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatAdjunctionsLeftUnitality.lean/declarations/example.md) | 228 | `declaration-track:85c236d381a51f88952bfc476f4010694e7ae11196f65b15be6f3ce2388b457a` |
| 15 | `def` | [Free](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatAdjunctionsLeftUnitality.lean/declarations/free-source-edition-2.md) | 243 | `declaration-track:31067e9f4a0f1a55a528a53758bfc6ee1bd53bf111650faea36f0ed0bac9d6a2` |
| 16 | `def` | [Free.of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatAdjunctionsLeftUnitality.lean/declarations/free-of.md) | 252 | `declaration-track:7e82d749676193a05184710bc3272f39f257b158782c25d1b74943fc6cd0f5ee` |
| 17 | `instance` | [categoryFree](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatAdjunctionsLeftUnitality.lean/declarations/categoryfree.md) | 263 | `declaration-track:eff992321fbe411982f403394e65238ca4fb36472f21368c07cc3f95a6815a51` |
| 18 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatAdjunctionsLeftUnitality.lean/declarations/instance-source-edition-4.md) | 283 | `declaration-track:d55f4b5a09fbc9de9cc4d43c2c1b1ebeccff748be45a6a1781deae21783f0118` |
| 19 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatAdjunctionsLeftUnitality.lean/declarations/instance-source-edition-3.md) | 294 | `declaration-track:970801b158e4e3391b639aeb3c7f3d563e6eb2b49a5249712f476b75b56dd040` |
| 20 | `theorem` | [single_comp_single](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatAdjunctionsLeftUnitality.lean/declarations/single-comp-single.md) | 305 | `result-track:3fe907a6c0525fe52558124e0ad3b1731ee6478fe8af257753a89c086b5d8e01` |
| 21 | `def` | [embedding](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatAdjunctionsLeftUnitality.lean/declarations/embedding.md) | 317 | `declaration-track:4170c11e364a5d32b598b3f268c10dd1310daa11e819c2ece18a4d44d37575a0` |
| 22 | `def` | [lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatAdjunctionsLeftUnitality.lean/declarations/lift.md) | 334 | `declaration-track:b27c29f29214a10ec6efe40b355679a19160ffc873f39204a2d3e7bd595b029a` |
| 23 | `theorem` | [lift_map_single](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatAdjunctionsLeftUnitality.lean/declarations/lift-map-single.md) | 371 | `result-track:cdd81dc438d4013b214be5b39238093656a4a14b79d93288cf3b4727bc7b55b0` |
| 24 | `instance` | [lift_additive](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatAdjunctionsLeftUnitality.lean/declarations/lift-additive.md) | 375 | `declaration-track:a8b3251e1ddf14e3458afc2a353b8186c9fd14697e7abdb7d71eb781a90f7b61` |
| 25 | `instance` | [lift_linear](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatAdjunctionsLeftUnitality.lean/declarations/lift-linear.md) | 381 | `declaration-track:d9770e9d678c6d681424005ada315e0c8f7213fbd5299fe16787816533afc825` |
| 26 | `def` | [embeddingLiftIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatAdjunctionsLeftUnitality.lean/declarations/embeddingliftiso.md) | 390 | `declaration-track:d88ff8b4deb9fec6aae53d4f6ca189dbc716933cc88077d02cd59a234ff11475` |
| 27 | `def` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatAdjunctionsLeftUnitality.lean/declarations/ext.md) | 398 | `declaration-track:1cd55cccb406046d72fb915e00e742c6553b1e422888b932c9cc489fb98f3d1f` |
| 28 | `def` | [liftUnique](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatAdjunctionsLeftUnitality.lean/declarations/liftunique.md) | 419 | `declaration-track:9ca3639ba5f2d83d38b6e1993abd435e2a631b2984972af41fe3a01c90fdcc01` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6adda9e8799c08bde7f70609a1496a5fca27296ea680108baefe12919a87da98 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant60f12b43994f0ea5825c5fef72095efed7de2bf486853a0efc47a6e1a9820441.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant60f12b43994f0ea5825c5fef72095efed7de2bf486853a0efc47a6e1a9820441.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
