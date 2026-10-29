# Verification target: Indization Filtered Colimits Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e927a0edb10c5747a1c9afa3124d2c8dd8bd4c79",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantde2e9653ef403dddede909c5ae9ed5d912b281aa684666b1dfe5f848c3e400bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndizationFilteredColimitsNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndizationFilteredColimitsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e927a0edb10c5747a1c9afa3124d2c8dd8bd4c79`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantde2e9653ef403dddede909c5ae9ed5d912b281aa684666b1dfe5f848c3e400bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantde2e9653ef403dddede909c5ae9ed5d912b281aa684666b1dfe5f848c3e400bb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Comma.Presheaf.Colimit` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Filtered` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FilteredColimitCommutesFiniteLimit` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FunctorToTypes` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Indization.IndObject` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Small.Set` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [compYonedaColimitIsoColimitCompYoneda](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndizationFilteredColimitsNamespaced.lean/declarations/compyonedacolimitisocolimitcompyoneda.md) | 66 | `declaration-track:cad9d7b67bd74550643c1e835bf9b834722131ddfcf558f436e9f5cf74476307` |
| 2 | `theorem` | [exists_nonempty_limit_obj_of_colimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndizationFilteredColimitsNamespaced.lean/declarations/exists-nonempty-limit-obj-of-colimit.md) | 74 | `result-track:2fd62fd552310cd33d219343b6c9bed93887658e03e60f8cde2e1364e8898901` |
| 3 | `theorem` | [exists_nonempty_limit_obj_of_isColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndizationFilteredColimitsNamespaced.lean/declarations/exists-nonempty-limit-obj-of-iscolimit.md) | 86 | `result-track:a0aa5ef00e5a2f307690604f29da31e943da3204e0877c9d0a89065ac0f4a79d` |
| 4 | `theorem` | [isFiltered](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndizationFilteredColimitsNamespaced.lean/declarations/isfiltered.md) | 96 | `result-track:b4a4383f09ff011a37ab7edae80dbc66eeee5c646ceb2d4e882e68bafeb60f1d` |
| 5 | `theorem` | [isIndObject_colimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IndizationFilteredColimitsNamespaced.lean/declarations/isindobject-colimit.md) | 146 | `result-track:6cf8226669d50011fe6f92406376653818a70da2f4b92c53cc01cd0eb90da5ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=baf1bd82964f1770759c3b5d6e7a83646b9d73879b7e1aaa246956f430adf97c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantde2e9653ef403dddede909c5ae9ed5d912b281aa684666b1dfe5f848c3e400bb.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantde2e9653ef403dddede909c5ae9ed5d912b281aa684666b1dfe5f848c3e400bb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
