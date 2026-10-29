# Verification target: Complete Map Refinement And Equalities

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "828d468d40ddb245879e9a6954229510f356b9b2",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/DependentFunctions/BooleanMatrixMapRefinement/Variantad0b4db44ad472c8/CompleteMapRefinementAndEqualities.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CompleteMapRefinementAndEqualities.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CompleteMapRefinementAndEqualities.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `828d468d40ddb245879e9a6954229510f356b9b2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/DependentFunctions/BooleanMatrixMapRefinement/Variantad0b4db44ad472c8/CompleteMapRefinementAndEqualities.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/DependentFunctions/BooleanMatrixMapRefinement/Variantad0b4db44ad472c8/CompleteMapRefinementAndEqualities.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Refinement` — import line 19; external provider; requires a separately pinned dependency.
- `BitMatrix.Core.Basic` — import line 20; external provider; requires a separately pinned dependency.
- [Declarative And Array Observation Systems](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DeclarativeAndArrayObservationSystems.lean/index.md) — import line 22; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mapRefinement](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CompleteMapRefinementAndEqualities.lean/declarations/maprefinement.md) | 41 | `declaration-track:d1c9adc5f5c37338c817245c068c7701ce3fe83e53100ff45977c1bd3c76cfd8` |
| 2 | `theorem` | [mapRefinement_abstract](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CompleteMapRefinementAndEqualities.lean/declarations/maprefinement-abstract.md) | 56 | `result-track:24a1f62ba27b65f8bb9a7788d0e4562cfe25b3fce5cc832277d46719d2d75096` |
| 3 | `theorem` | [mapRefinement_step_sound](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CompleteMapRefinementAndEqualities.lean/declarations/maprefinement-step-sound.md) | 63 | `result-track:5982326fcd49727456fd0a84973d893c8c48ef4aa4acfe125d5fffc5288ec761` |
| 4 | `theorem` | [refines_iff_abstract_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CompleteMapRefinementAndEqualities.lean/declarations/refines-iff-abstract-eq.md) | 74 | `result-track:9feaef432ff2b36a3536337b769cc82b8a4adaf14a9d0397de34cfbfff94702e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9e9de592d79fb53eea75cec85b2c8e12f969f27b7db924e1ab4a6de656ba65c5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/DependentFunctions/BooleanMatrixMapRefinement/Variantad0b4db44ad472c8/CompleteMapRefinementAndEqualities.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/DependentFunctions/BooleanMatrixMapRefinement/Variantad0b4db44ad472c8/CompleteMapRefinementAndEqualities.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
