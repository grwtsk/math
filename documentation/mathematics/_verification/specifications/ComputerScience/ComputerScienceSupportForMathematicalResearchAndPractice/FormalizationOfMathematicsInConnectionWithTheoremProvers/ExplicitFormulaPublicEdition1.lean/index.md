# Verification target: Explicit Formula Public Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c92d30bafa5ada82dd8e51808c1d0c2f064c2aad",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant2cf641fa784a5ceca43e0fd17e5343731f0400642ecea315e43e9f557e3d2d76.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExplicitFormulaPublicEdition1.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExplicitFormulaPublicEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c92d30bafa5ada82dd8e51808c1d0c2f064c2aad`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant2cf641fa784a5ceca43e0fd17e5343731f0400642ecea315e43e9f557e3d2d76.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant2cf641fa784a5ceca43e0fd17e5343731f0400642ecea315e43e9f557e3d2d76.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centeredTwistedPsiCriticalRate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExplicitFormulaPublicEdition1.lean/declarations/centeredtwistedpsicriticalrate.md) | 28 | `declaration-track:be2c8fab3af851be27e137fa892e23c79b209e7bacf31bef3d96bc690833a325` |
| 2 | `def` | [CenteredTwistedPsiCriticalBound](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExplicitFormulaPublicEdition1.lean/declarations/centeredtwistedpsicriticalbound.md) | 33 | `declaration-track:3dcd25c28d6d88c6cec4fb55c6210cfb70c12c825ec78a2c499136a2a107da64` |
| 3 | `theorem` | [centeredTwistedPsiCriticalRate_le_halfPlusEpsilon](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExplicitFormulaPublicEdition1.lean/declarations/centeredtwistedpsicriticalrate-le-halfplusepsilon.md) | 42 | `result-track:0d79d67c97c62188645ecc596c8e5e3baa6d8b7b95080fc21e2f22bdf823c575` |
| 4 | `theorem` | [centeredTwistedPsiCriticalBound_implies_halfPlusEpsilon](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExplicitFormulaPublicEdition1.lean/declarations/centeredtwistedpsicriticalbound-implies-halfplusepsilon.md) | 99 | `result-track:a45870e4d22d8d3104e5dae1e39177efadafe03abab1a945346da1c3e33397c3` |
| 5 | `structure` | [PrimitiveExplicitFormulaSquare](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExplicitFormulaPublicEdition1.lean/declarations/primitiveexplicitformulasquare.md) | 121 | `declaration-track:ce48bfe1ebce3089bc8ba50b2dd0b8335c8ccd9601c86d1a5de14abf595bb31c` |
| 6 | `def` | [IsCenteredCriticalRateBound](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExplicitFormulaPublicEdition1.lean/declarations/iscenteredcriticalratebound.md) | 142 | `declaration-track:699fb702ab966f25c39f563427f1268c573a48a563c7789a08e49a225421cc11` |
| 7 | `def` | [PrimitiveExplicitFormulaBounds](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExplicitFormulaPublicEdition1.lean/declarations/primitiveexplicitformulabounds.md) | 152 | `declaration-track:ba9535b957aa37b8cade6e7fb21db08f1271af5740b41546b1de51a90d3b89e9` |
| 8 | `theorem` | [grh_implies_centeredTwistedPsiCriticalBound](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExplicitFormulaPublicEdition1.lean/declarations/grh-implies-centeredtwistedpsicriticalbound.md) | 166 | `result-track:3c90e4ceb42d1d9414673f680d60ce0ebda15912877287d08a534fbbd8aa5fdd` |
| 9 | `theorem` | [grh_implies_centeredTwistedPsiHalfPlusEpsilon](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExplicitFormulaPublicEdition1.lean/declarations/grh-implies-centeredtwistedpsihalfplusepsilon.md) | 236 | `result-track:ec85cc61fc3e95d7b249ed21755920a20cfbe12e87f246fe107ce7e23fe87eea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6920b02124d253afa6d6ba4f9481af647337293764e2e99d3a82e55871e85e42 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant2cf641fa784a5ceca43e0fd17e5343731f0400642ecea315e43e9f557e3d2d76.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant2cf641fa784a5ceca43e0fd17e5343731f0400642ecea315e43e9f557e3d2d76.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
