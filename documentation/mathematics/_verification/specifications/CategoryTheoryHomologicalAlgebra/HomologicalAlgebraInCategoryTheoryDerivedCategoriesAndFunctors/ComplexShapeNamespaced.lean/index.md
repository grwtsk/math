# Verification target: Complex Shape Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31ebc264896e1fdc6671717cb7a8754393a564bb",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variantf603cae95df69113a5f84722e23d9312246c27e127c184b3affa739b4dc75c54.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ComplexShapeNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ComplexShapeNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31ebc264896e1fdc6671717cb7a8754393a564bb`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variantf603cae95df69113a5f84722e23d9312246c27e127c184b3affa739b4dc75c54.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variantf603cae95df69113a5f84722e23d9312246c27e127c184b3affa739b4dc75c54.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Relation` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ComplexShape](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ComplexShapeNamespaced.lean/declarations/complexshape.md) | 69 | `declaration-track:472c6983759e899e3b423109a5648e601074f6dd35e283de6c2f80d2c79403d3` |
| 2 | `def` | [refl](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ComplexShapeNamespaced.lean/declarations/refl.md) | 90 | `declaration-track:5521b48f28d112dd0606fcf6305665a6a6664b24c2270a97a11a2cc1a6513bd8` |
| 3 | `def` | [symm](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ComplexShapeNamespaced.lean/declarations/symm.md) | 100 | `declaration-track:ba00886eca64d5dc3586bcd43c921083af29e476b37beecbda11204e0ec7b05f` |
| 4 | `theorem` | [symm_symm](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ComplexShapeNamespaced.lean/declarations/symm-symm.md) | 108 | `result-track:390ef9634ed811f93d3364a45fdd063f0ced6fcd564b34e14415904672aadddd` |
| 5 | `def` | [trans](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ComplexShapeNamespaced.lean/declarations/trans.md) | 118 | `declaration-track:059c5d0bc4d95b6ce6a1b9811e1c3e23156d482f5bc71f5b9cf232b3bd849e3a` |
| 6 | `instance` | [subsingleton_next](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ComplexShapeNamespaced.lean/declarations/subsingleton-next.md) | 132 | `declaration-track:eb417f4c9f8d1f3770ecbbe9b740457cbb2e5bab631b30d4bec8fcf6ca7c583c` |
| 7 | `instance` | [subsingleton_prev](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ComplexShapeNamespaced.lean/declarations/subsingleton-prev.md) | 138 | `declaration-track:7900af180a54a1ea8849b99c124a7b24b69bf2930ca70d193562b19a27260c31` |
| 8 | `def` | [next](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ComplexShapeNamespaced.lean/declarations/next.md) | 147 | `declaration-track:90895346082dee4a54e94adf8c6bb9a80441ffaf76d86db2cafa38230d6c696e` |
| 9 | `def` | [prev](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ComplexShapeNamespaced.lean/declarations/prev.md) | 154 | `declaration-track:97cc6762b03e517a65a9cae6f5bf771571dfbf7a69e2e1f6dcf4b0f8772c4f96` |
| 10 | `theorem` | [next_eq'](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ComplexShapeNamespaced.lean/declarations/next-eq.md) | 158 | `result-track:be77d56a068891f56cde99d1de6fd501ae57e5f19222a79f18f41e1c6d698166` |
| 11 | `theorem` | [prev_eq'](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ComplexShapeNamespaced.lean/declarations/prev-eq.md) | 165 | `result-track:995315e943886971ff8ba82f1810098d827e34f3be9a61b65929550ddacce351` |
| 12 | `def` | [up'](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ComplexShapeNamespaced.lean/declarations/up.md) | 175 | `declaration-track:8cf23a4d65273731790509315d32c11df862d225d1736b64cc294e673768fd3b` |
| 13 | `def` | [down'](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ComplexShapeNamespaced.lean/declarations/down.md) | 186 | `declaration-track:562407de14cf061f5d0b39d30dd4ee608ce364bb76c617f1ba86e22f01d914b2` |
| 14 | `theorem` | [down'_mk](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ComplexShapeNamespaced.lean/declarations/down-mk-source-edition-2.md) | 193 | `result-track:3814da5e93ffd1bb62e008de39d3ec4be748437161b371d56f065fece9e67144` |
| 15 | `def` | [up](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ComplexShapeNamespaced.lean/declarations/up-source-edition-2.md) | 200 | `declaration-track:b21515c30c4c8b9cf0a45e6720b531182165be71e6c355bd2b4426fe8dc7a4bc` |
| 16 | `def` | [down](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ComplexShapeNamespaced.lean/declarations/down-source-edition-2.md) | 208 | `declaration-track:c989e642e6494f8c997374e0b53a0bababa06627ea316578304df6538e0de164` |
| 17 | `theorem` | [down_mk](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ComplexShapeNamespaced.lean/declarations/down-mk.md) | 213 | `result-track:103aa0fc96722c292dd4b89536e54f53672793eb95f7981ecba3ad4a42c87830` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=99ea51e30f6076dc74f59b2f48f67e7dab3ff88047b7134dfe9077834663b6a9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variantf603cae95df69113a5f84722e23d9312246c27e127c184b3affa739b4dc75c54.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/ComplexShape/Variantf603cae95df69113a5f84722e23d9312246c27e127c184b3affa739b4dc75c54.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
