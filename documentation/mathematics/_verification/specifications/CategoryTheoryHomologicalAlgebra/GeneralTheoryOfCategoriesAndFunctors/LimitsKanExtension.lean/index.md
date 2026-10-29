# Verification target: Limits Kan Extension

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "78dcc2053bcc5fb4e7dae1965eb0d3a184d6f5db",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KanExtension/Variant2a614377fe39f33969cc6c63918a3173252dda91c8dae46e6cc726288803a065.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsKanExtension.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsKanExtension.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `78dcc2053bcc5fb4e7dae1965eb0d3a184d6f5db`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KanExtension/Variant2a614377fe39f33969cc6c63918a3173252dda91c8dae46e6cc726288803a065.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/KanExtension/Variant2a614377fe39f33969cc6c63918a3173252dda91c8dae46e6cc726288803a065.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Terminal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.PUnit` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.StructuredArrow` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [diagram](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsKanExtension.lean/declarations/diagram.md) | 53 | `declaration-track:0b2aa4488b0a25326e18f8d52d65088ba3c6c75eda7507ec8f6ce0fad87128de` |
| 2 | `def` | [cone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsKanExtension.lean/declarations/cone.md) | 62 | `declaration-track:1ad2a269ccfdeb35624696158947eb68cdb41caa67debc1039055906d1670426` |
| 3 | `def` | [loc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsKanExtension.lean/declarations/loc-source-edition-2.md) | 82 | `declaration-track:6623b8b013cc07aa68f9a18aeb265fabcfff39cae19686c18c2a73c52e87bc84` |
| 4 | `def` | [equiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsKanExtension.lean/declarations/equiv-source-edition-2.md) | 115 | `declaration-track:1d7d39d494e560d121bfdd71232a9161e512d4a9d0059b13cdcce8800082897a` |
| 5 | `def` | [ran](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsKanExtension.lean/declarations/ran.md) | 162 | `declaration-track:e7fdf7492fbdb2bdd2f9a00ce056657d8bfc279b0abcfb6c7531b095a00b9c63` |
| 6 | `def` | [adjunction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsKanExtension.lean/declarations/adjunction.md) | 179 | `declaration-track:519ab7d10b81450a45faf832330c152d3b4cf3d8acc34cd613486edeee026a55` |
| 7 | `theorem` | [reflective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsKanExtension.lean/declarations/reflective.md) | 185 | `result-track:8600af9080f2c3b785888593bb7fa8d871b6b649f6ab88d92fc08beb19d020a3` |
| 8 | `abbrev` | [diagram](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsKanExtension.lean/declarations/diagram-source-edition-2.md) | 209 | `declaration-track:90886ed606436b9fc4a78747582df211070e1cffb8cb544f8d0070812ebea0c2` |
| 9 | `def` | [cocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsKanExtension.lean/declarations/cocone.md) | 218 | `declaration-track:5901ed3ed0eb4a9912535ddce7b799ec93778d3c931cbd8aa25b9bf188fa741b` |
| 10 | `def` | [loc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsKanExtension.lean/declarations/loc.md) | 236 | `declaration-track:3ec0759a6700313e840d894cc4cfebca34eb21c47785a11eb32005222c638310` |
| 11 | `def` | [equiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsKanExtension.lean/declarations/equiv.md) | 272 | `declaration-track:0961febf6a4fb913dd2c6fe8cb5597a5556924b99ac327bee6dcd0800cfdf7d8` |
| 12 | `def` | [lan](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsKanExtension.lean/declarations/lan.md) | 331 | `declaration-track:1f7fc674ed896a356cd36cde8708bd895f8ed9207f022833b5b32d86063fba8d` |
| 13 | `def` | [adjunction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsKanExtension.lean/declarations/adjunction-source-edition-2.md) | 344 | `declaration-track:5761d8f699a4676c3b8fadac9e9ef70d4967a43d5af6ce8fad60c233b100d008` |
| 14 | `theorem` | [coreflective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsKanExtension.lean/declarations/coreflective.md) | 350 | `result-track:d078773aa599a00ba7b425a6a9fc57bdf30357f264f350d20aec40dd6b47d929` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1b00251bf3a9fd73aca1b430e60a9ce2b1c1df19106296ba365850d9057c096e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KanExtension/Variant2a614377fe39f33969cc6c63918a3173252dda91c8dae46e6cc726288803a065.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/KanExtension/Variant2a614377fe39f33969cc6c63918a3173252dda91c8dae46e6cc726288803a065.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
