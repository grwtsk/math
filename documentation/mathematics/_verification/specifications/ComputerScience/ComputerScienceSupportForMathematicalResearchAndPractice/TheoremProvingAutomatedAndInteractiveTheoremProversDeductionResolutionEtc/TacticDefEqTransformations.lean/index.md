# Verification target: Tactic Def Eq Transformations

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e5b29ae508f224719a35532a1dc99a4953ddf53",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefEqTransformations/Variant20a07c60f5d7503bb6b0e7317975340dd57eebc9ada43326a36283419a4eece9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDefEqTransformations.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDefEqTransformations.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e5b29ae508f224719a35532a1dc99a4953ddf53`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefEqTransformations/Variant20a07c60f5d7503bb6b0e7317975340dd57eebc9ada43326a36283419a4eece9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefEqTransformations/Variant20a07c60f5d7503bb6b0e7317975340dd57eebc9ada43326a36283419a4eece9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [runDefEqTactic](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDefEqTransformations.lean/declarations/rundefeqtactic.md) | 27 | `declaration-track:fd739c85f0d8cc031964f84e8504f7c67d2504a950cca4126bf9a62eff0751f7` |
| 2 | `def` | [runDefEqConvTactic](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDefEqTransformations.lean/declarations/rundefeqconvtactic.md) | 42 | `declaration-track:fbc27b3c187ee66a9d18a27e66ee2d7ecf81c62d3ce400c43240c1342ea3fc3e` |
| 3 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDefEqTransformations.lean/declarations/elab-source-edition-7.md) | 55 | `declaration-track:868d6b2a93283dd785a388a557202dcf4a25a9c5005e32646a3ea24ba42c9218` |
| 4 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDefEqTransformations.lean/declarations/elab-source-edition-12.md) | 69 | `declaration-track:ef04ce2e9460ebca0d5c87442caf6f2f2103824323237dfdd9bd6a034158a665` |
| 5 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDefEqTransformations.lean/declarations/elab-source-edition-8.md) | 73 | `declaration-track:a187bc5ea6c069f1765404c2da6d377c7aa414381806d5f4f78cb85d206291cc` |
| 6 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDefEqTransformations.lean/declarations/elab-source-edition-3.md) | 84 | `declaration-track:52debdabe0e0400bd91a3c7148b927443a6823fff860ffd845db190e7ccca8b6` |
| 7 | `def` | [unfoldFVars](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDefEqTransformations.lean/declarations/unfoldfvars.md) | 91 | `declaration-track:6fac62bed7a03c7e27024071f2b58ac86d18acd7b3135b6ffbdeaf73ffbaa34e` |
| 8 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDefEqTransformations.lean/declarations/syntax.md) | 114 | `declaration-track:53ab5291343e44266d4f26f70b7927021bf5bfaa09d99364583e50a3f51e1028` |
| 9 | `elab_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDefEqTransformations.lean/declarations/elab-rules-source-edition-2.md) | 117 | `declaration-track:453650cfe40a0d1e3257ff3de117314f73a39f2ff532c7d93f17a808ac0b31cf` |
| 10 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDefEqTransformations.lean/declarations/syntax-source-edition-2.md) | 124 | `declaration-track:e86b20f29d905804f3cbe4472e3b186d380860b7e5c987c3fbcb9ea385675c0e` |
| 11 | `elab_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDefEqTransformations.lean/declarations/elab-rules.md) | 126 | `declaration-track:1a2e6b32cf2b5d0988892731e2106d902838e0b6611a2eff8bec0813f3732a69` |
| 12 | `def` | [unfoldProjs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDefEqTransformations.lean/declarations/unfoldprojs.md) | 135 | `declaration-track:a3c8d0c2be30218b6488a07561311d2000ce11fda530687d9aedb93118bc11a4` |
| 13 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDefEqTransformations.lean/declarations/elab-source-edition-10.md) | 146 | `declaration-track:e0cad905fa5ab2f1a079d6acbf9cce89a1534dd45df9d3721b0c976523173c8b` |
| 14 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDefEqTransformations.lean/declarations/elab-source-edition-9.md) | 150 | `declaration-track:ab45eedf5187507f4df257d611a4ec39085bfadc03982af618a7a13016a2d410` |
| 15 | `def` | [etaReduceAll](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDefEqTransformations.lean/declarations/etareduceall.md) | 156 | `declaration-track:e48c1fe92c9255f6b816d42f70f79dea8ea85a9f28c194fa43b586bc5036bc99` |
| 16 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDefEqTransformations.lean/declarations/elab-source-edition-5.md) | 165 | `declaration-track:5e29ff84ff869a7eea929046fad38f3d169fac93408dbabbde32d5297db28107` |
| 17 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDefEqTransformations.lean/declarations/elab.md) | 169 | `declaration-track:221cd2101ec2c16b1764d647756aa56d3636393ca56fa6cf9877d97cb1b863b0` |
| 18 | `def` | [etaExpandAll](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDefEqTransformations.lean/declarations/etaexpandall.md) | 177 | `declaration-track:e7aeb9863a41bd12ab1a92ad3f05412308ee6c01f74f8a51dedb7ecb3f689147` |
| 19 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDefEqTransformations.lean/declarations/elab-source-edition-4.md) | 207 | `declaration-track:541afbf9d20b0b4c1627a7fa2fec9f68fd7bc9dfa3d01716afbdaae016a7be11` |
| 20 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDefEqTransformations.lean/declarations/elab-source-edition-11.md) | 211 | `declaration-track:e517fda73161b703c8c01e902a7044a0896fa7f0d7501e9e27557103dcb0a8ab` |
| 21 | `def` | [getProjectedExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDefEqTransformations.lean/declarations/getprojectedexpr.md) | 219 | `declaration-track:91ef35d59f3c89bbacc474265fbd85d850820e5f491a1bc0e9ee7ab1980a7158` |
| 22 | `def` | [etaStruct?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDefEqTransformations.lean/declarations/etastruct.md) | 237 | `declaration-track:a18095348c2591cef2cf841f9ca2a9059d7ae386f580409b84bd98a945e889e7` |
| 23 | `def` | [etaStructAll](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDefEqTransformations.lean/declarations/etastructall.md) | 270 | `declaration-track:c373b099d90bd621f3f32adf2e5cbd4a080cbf2aedb75484810b305ca5392f83` |
| 24 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDefEqTransformations.lean/declarations/elab-source-edition-6.md) | 287 | `declaration-track:6c72266ba55b32fb8fbd2ff6419d81263635014124cd3310f2427aa5c73810e5` |
| 25 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDefEqTransformations.lean/declarations/elab-source-edition-2.md) | 291 | `declaration-track:4b2d0dbf427ce3e446903ac8b8e86530e42478ea96a6a44d02bf58800cfbd9b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e20639bd88c1da7a0ca7552fe4cfcb2de2f1313d605da79b9e3014be23d420e8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefEqTransformations/Variant20a07c60f5d7503bb6b0e7317975340dd57eebc9ada43326a36283419a4eece9.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefEqTransformations/Variant20a07c60f5d7503bb6b0e7317975340dd57eebc9ada43326a36283419a4eece9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
