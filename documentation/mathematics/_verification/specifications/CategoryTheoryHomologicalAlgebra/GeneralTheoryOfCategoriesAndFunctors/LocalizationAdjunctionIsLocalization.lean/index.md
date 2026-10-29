# Verification target: Localization Adjunction Is Localization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c50c4d4c9e5e9d1603c987f9a61fc78877c76d3",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant3f028f78a92b92e767c42970bcf6948dce9c8814971f48f9cd289901675ab19b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizationAdjunctionIsLocalization.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizationAdjunctionIsLocalization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c50c4d4c9e5e9d1603c987f9a61fc78877c76d3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant3f028f78a92b92e767c42970bcf6948dce9c8814971f48f9cd289901675ab19b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant3f028f78a92b92e767c42970bcf6948dce9c8814971f48f9cd289901675ab19b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.CatCommSq` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Localization.Predicate` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.FullyFaithful` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ε](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizationAdjunctionIsLocalization.lean/declarations/anonymous.md) | 43 | `declaration-track:67d0ce3c9fb34da6ea6c347e96872239f93968543e1a0ebb80730a10bf885c13` |
| 2 | `lemma` | [ε_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizationAdjunctionIsLocalization.lean/declarations/app.md) | 49 | `result-track:7dc6b145bbeceae1b596d5f6d9328fb841991b1cd71c52250a70ef56f3c037fe` |
| 3 | `def` | [η](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizationAdjunctionIsLocalization.lean/declarations/anonymous-source-edition-2.md) | 60 | `declaration-track:96f4be567ab2097f3f991714bec09f8053d58011f9cf352db97831fbde3600a7` |
| 4 | `lemma` | [η_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizationAdjunctionIsLocalization.lean/declarations/app-source-edition-2.md) | 65 | `result-track:d591e9676e061fd81f416572cdd50704c042a1dddca524abcb442f51f7ed3d9e` |
| 5 | `def` | [localization](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizationAdjunctionIsLocalization.lean/declarations/localization.md) | 83 | `declaration-track:a03ad0f9606bee0ec04e4263afe3b24a594e3a6e332d68f5ab86d284ddcefcef` |
| 6 | `lemma` | [localization_unit_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizationAdjunctionIsLocalization.lean/declarations/localization-unit-app.md) | 114 | `result-track:d8174da661353bcf9b19f37c22cefb7895a91a9b3fc27bbaecf2d2af7a97b2bd` |
| 7 | `lemma` | [localization_counit_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizationAdjunctionIsLocalization.lean/declarations/localization-counit-app.md) | 121 | `result-track:75cea99f2510758e63516e2b26975088626612c3d101553d2d3cd879f1d0870d` |
| 8 | `lemma` | [isLocalization](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizationAdjunctionIsLocalization.lean/declarations/islocalization.md) | 131 | `result-track:c232e7df7e0b73645bedff6ce71239a3f1153c86a4afca3781ae6008c59c069e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7a53b086f52ba06c02c355cf0e2856812716e9a8c883979e32a3d0348908a6e4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant3f028f78a92b92e767c42970bcf6948dce9c8814971f48f9cd289901675ab19b.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant3f028f78a92b92e767c42970bcf6948dce9c8814971f48f9cd289901675ab19b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
