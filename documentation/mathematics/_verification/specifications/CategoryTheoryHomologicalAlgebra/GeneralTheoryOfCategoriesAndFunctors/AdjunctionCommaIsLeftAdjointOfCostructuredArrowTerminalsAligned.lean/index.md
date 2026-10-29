# Verification target: Adjunction Comma Is Left Adjoint Of Costructured Arrow Terminals Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b6abb6ce167eefcf2f66cbf7063cbf27aa696a5f",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc49280771f4942905eac9d5c53e400e7de89d57ab7ed56750c3cf7ea42c88afd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdjunctionCommaIsLeftAdjointOfCostructuredArrowTerminalsAligned.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdjunctionCommaIsLeftAdjointOfCostructuredArrowTerminalsAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b6abb6ce167eefcf2f66cbf7063cbf27aa696a5f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc49280771f4942905eac9d5c53e400e7de89d57ab7ed56750c3cf7ea42c88afd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc49280771f4942905eac9d5c53e400e7de89d57ab7ed56750c3cf7ea42c88afd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.PUnit` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.StructuredArrow` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leftAdjointOfStructuredArrowInitialsAux](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdjunctionCommaIsLeftAdjointOfCostructuredArrowTerminalsAligned.lean/declarations/leftadjointofstructuredarrowinitialsaux.md) | 44 | `declaration-track:8dca9bf8be1cdf39012ce95fb24f35b3f1497c6689263e8a78cf6fef2a3e2368` |
| 2 | `def` | [leftAdjointOfStructuredArrowInitials](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdjunctionCommaIsLeftAdjointOfCostructuredArrowTerminalsAligned.lean/declarations/leftadjointofstructuredarrowinitials.md) | 65 | `declaration-track:4350b83bfc079433d4f72168c7d545c0a7e679acc1232a1ea028d830ab84be2e` |
| 3 | `def` | [adjunctionOfStructuredArrowInitials](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdjunctionCommaIsLeftAdjointOfCostructuredArrowTerminalsAligned.lean/declarations/adjunctionofstructuredarrowinitials.md) | 73 | `declaration-track:01031fa3f3fc5fafa8ebda197226b61a526c5b24155765237d6db39eff667c22` |
| 4 | `def` | [isRightAdjointOfStructuredArrowInitials](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdjunctionCommaIsLeftAdjointOfCostructuredArrowTerminalsAligned.lean/declarations/isrightadjointofstructuredarrowinitials.md) | 78 | `declaration-track:e30676fb4927f4705b804c769e2fd40238c8a4bfc1e7dd87b4e391a29ec82fe3` |
| 5 | `def` | [rightAdjointOfCostructuredArrowTerminalsAux](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdjunctionCommaIsLeftAdjointOfCostructuredArrowTerminalsAligned.lean/declarations/rightadjointofcostructuredarrowterminalsaux.md) | 94 | `declaration-track:1dba6ee88a534ea2538a09cc92fd35d5d9a927c03904651f0b1a77f8825ab6d5` |
| 6 | `def` | [rightAdjointOfCostructuredArrowTerminals](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdjunctionCommaIsLeftAdjointOfCostructuredArrowTerminalsAligned.lean/declarations/rightadjointofcostructuredarrowterminals.md) | 114 | `declaration-track:28f219a189fbb9375ba02519d05aaffcd79a5864070562678df51b76a6741fb7` |
| 7 | `def` | [adjunctionOfCostructuredArrowTerminals](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdjunctionCommaIsLeftAdjointOfCostructuredArrowTerminalsAligned.lean/declarations/adjunctionofcostructuredarrowterminals.md) | 124 | `declaration-track:e9783177c1aac8e28771f4578b3b329740eb29052921f30ce2225d4d247d2027` |
| 8 | `def` | [isLeftAdjointOfCostructuredArrowTerminals](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdjunctionCommaIsLeftAdjointOfCostructuredArrowTerminalsAligned.lean/declarations/isleftadjointofcostructuredarrowterminals.md) | 129 | `declaration-track:b84fc3b7900e9e496c345899be8d3b9503441ec6872682fb779bbba4ce17ee35` |
| 9 | `def` | [mkInitialOfLeftAdjoint](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdjunctionCommaIsLeftAdjointOfCostructuredArrowTerminalsAligned.lean/declarations/mkinitialofleftadjoint.md) | 143 | `declaration-track:2c987799a41ab4cad3848fb54010053ebc4273b470405cb81b2c723a72351b2b` |
| 10 | `def` | [mkTerminalOfRightAdjoint](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdjunctionCommaIsLeftAdjointOfCostructuredArrowTerminalsAligned.lean/declarations/mkterminalofrightadjoint.md) | 156 | `declaration-track:6a860c2b30d49cb1206a0643e6f10acb92e2c8e7206b1ba4e20a754c2f261042` |
| 11 | `theorem` | [nonempty_isRightAdjoint_iff_hasInitial_structuredArrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdjunctionCommaIsLeftAdjointOfCostructuredArrowTerminalsAligned.lean/declarations/nonempty-isrightadjoint-iff-hasinitial-structuredarrow.md) | 169 | `result-track:4b7c935666a6edac252ee06ed259182fa1b32da09ba7d76f85afb34a568f5677` |
| 12 | `theorem` | [nonempty_isLeftAdjoint_iff_hasTerminal_costructuredArrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdjunctionCommaIsLeftAdjointOfCostructuredArrowTerminalsAligned.lean/declarations/nonempty-isleftadjoint-iff-hasterminal-costructuredarrow.md) | 175 | `result-track:9639cb77825c0b04d2772e58ca588e6ea9381b926761c5526ffa9e68a3efb7d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8d1e24e3dba39e856c26065dbc800598444a2fd2cad08b9e5e57465aa3ce6a6c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc49280771f4942905eac9d5c53e400e7de89d57ab7ed56750c3cf7ea42c88afd.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantc49280771f4942905eac9d5c53e400e7de89d57ab7ed56750c3cf7ea42c88afd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
