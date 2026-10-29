# Verification target: Preserves Shapes Multiequalizer

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d125431931def9371d74d5c8cd0a108e1e283f7",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Multiequalizer/Variant854393c7b79a5c7969d33773b3f91efa7195127ce60e8255ed4640312ea8c966.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesMultiequalizer.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesMultiequalizer.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d125431931def9371d74d5c8cd0a108e1e283f7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Multiequalizer/Variant854393c7b79a5c7969d33773b3f91efa7195127ce60e8255ed4640312ea8c966.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Multiequalizer/Variant854393c7b79a5c7969d33773b3f91efa7195127ce60e8255ed4640312ea8c966.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Multiequalizer` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [MultispanIndex.map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesMultiequalizer.lean/declarations/multispanindex-map.md) | 36 | `declaration-track:2cd6244e48dd3969786491ab72afb55fe2d0f54cd7e1dc6848cd4d1c6b53f6b9` |
| 2 | `def` | [MultispanIndex.multispanMapIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesMultiequalizer.lean/declarations/multispanindex-multispanmapiso.md) | 45 | `declaration-track:7b3a42834ceddda0665652068efea5661c61b664b616ce147a84eb78c701b565` |
| 3 | `def` | [Multicofork.map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesMultiequalizer.lean/declarations/multicofork-map.md) | 57 | `declaration-track:789fec2215e7b263609c00b2b9c8372bedbfda4d034f8e75d4750453e31d5ab8` |
| 4 | `def` | [Multicofork.isColimitMapEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesMultiequalizer.lean/declarations/multicofork-iscolimitmapequiv.md) | 64 | `declaration-track:c82852338910383dc587e3e5f401b447560d6a5f76501e14923db5f223dcf43f` |
| 5 | `def` | [Multicofork.isColimitMapOfPreserves](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesMultiequalizer.lean/declarations/multicofork-iscolimitmapofpreserves.md) | 73 | `declaration-track:7bac90cb3f155ac5cfc96c8945cf5c8d0f17cea70b68189dd7dc6cbd180a8a57` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8f1d70767a297c9ca515da61abd6a76c3ffc95122ef33edc661f513df2e2b559 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Multiequalizer/Variant854393c7b79a5c7969d33773b3f91efa7195127ce60e8255ed4640312ea8c966.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Multiequalizer/Variant854393c7b79a5c7969d33773b3f91efa7195127ce60e8255ed4640312ea8c966.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
