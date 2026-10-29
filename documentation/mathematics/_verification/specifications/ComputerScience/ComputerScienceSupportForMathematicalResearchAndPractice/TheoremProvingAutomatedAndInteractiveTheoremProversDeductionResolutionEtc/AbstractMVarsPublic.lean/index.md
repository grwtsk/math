# Verification target: Abstract MVars Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "175738e203ab7cbd59798431b0fb0133dd41ca5a",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractMVars/Variantd78b0f4058d23f6d8bb55fc738663b2b8c9852375d1709b2abe9bf1c5749b640.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AbstractMVarsPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AbstractMVarsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `175738e203ab7cbd59798431b0fb0133dd41ca5a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractMVars/Variantd78b0f4058d23f6d8bb55fc738663b2b8c9852375d1709b2abe9bf1c5749b640.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractMVars/Variantd78b0f4058d23f6d8bb55fc738663b2b8c9852375d1709b2abe9bf1c5749b640.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [State](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AbstractMVarsPublic.lean/declarations/state.md) | 16 | `declaration-track:49a71685d97af6f1a4aea84473ff9f231da735654155d934b4e155089808abb7` |
| 2 | `abbrev` | [M](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AbstractMVarsPublic.lean/declarations/m.md) | 28 | `declaration-track:491dbc7023b8768c4f0fbd126fd94945bd573609cd76d7c3b834d4ef0211e1ed` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AbstractMVarsPublic.lean/declarations/instance.md) | 31 | `declaration-track:6727ebafe911f63eb0bdca9ac1740a89136e0042f612351c907e62493fc2f6db` |
| 4 | `def` | [mkFreshId](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AbstractMVarsPublic.lean/declarations/mkfreshid.md) | 35 | `declaration-track:d1c35bc542aa925016d526fe9315122da13ac37204adfd57f01e4a0da2e1debb` |
| 5 | `def` | [mkFreshFVarId](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AbstractMVarsPublic.lean/declarations/mkfreshfvarid.md) | 41 | `declaration-track:8260eb1ab1215ca67b88f4aa7869ca2ba0c6542224fa49d5f3dbe5daff1a4fce` |
| 6 | `def` | [abstractLevelMVars](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AbstractMVarsPublic.lean/declarations/abstractlevelmvars.md) | 44 | `declaration-track:0f77f5e929983bad9792bec29cd29408dd5be92c1618c3560d6d47f7d24b3905` |
| 7 | `def` | [abstractExprMVars](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AbstractMVarsPublic.lean/declarations/abstractexprmvars.md) | 73 | `declaration-track:eb62303989561fe2c69ffeb6a6871681a96bd25293fd2ea67c8597e8a4b51a52` |
| 8 | `def` | [abstractMVars](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AbstractMVarsPublic.lean/declarations/abstractmvars.md) | 138 | `declaration-track:400783f47e3f085b2aff8bfe9731e0a0dd7400a6a78de66886fd9b503462933b` |
| 9 | `def` | [openAbstractMVarsResult](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AbstractMVarsPublic.lean/declarations/openabstractmvarsresult.md) | 147 | `declaration-track:02a93a6c76707b5c6af2a35313e3460ffce73e9e9dde66f982253905347dbde1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=67edc4214e4ecb9a5deb8a287c8dfce785e61b7bc7e7a112077ee75f564ecb45 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractMVars/Variantd78b0f4058d23f6d8bb55fc738663b2b8c9852375d1709b2abe9bf1c5749b640.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractMVars/Variantd78b0f4058d23f6d8bb55fc738663b2b8c9852375d1709b2abe9bf1c5749b640.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
