# Verification target: Auto Try Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b7e4fa75788992bb30fdb5933e81e9f5d28c4d0",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoTry/Variant0146f50b66ae7a626c712d1e70437d6356179dfa504583e2618359ad80220ea5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AutoTryPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AutoTryPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b7e4fa75788992bb30fdb5933e81e9f5d28c4d0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoTry/Variant0146f50b66ae7a626c712d1e70437d6356179dfa504583e2618359ad80220ea5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoTry/Variant0146f50b66ae7a626c712d1e70437d6356179dfa504583e2618359ad80220ea5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Try` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Linter.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Server.InfoUtils` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Try` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Meta` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Elab.BuiltinTerm` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AutoTryPublic.lean/declarations/builtin-initialize.md) | 94 | `declaration-track:40a70a183ea6aed3e7f21bade655ede8570360ce4be5a1c4d02730dc99c48e12` |
| 2 | `def` | [runMetaMInScope](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AutoTryPublic.lean/declarations/runmetaminscope.md) | 102 | `declaration-track:0c1c0c857ca5541a748ef68cabcde01d64ad77abd877ae683f52dbcf516964c5` |
| 3 | `def` | [isSorryTactic](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AutoTryPublic.lean/declarations/issorrytactic.md) | 120 | `declaration-track:c535c663c60b7d15ac424635223cbdbecd04777a4b6b2e68ed4a22a0b19d8837` |
| 4 | `inductive` | [TriggerKind](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AutoTryPublic.lean/declarations/triggerkind.md) | 126 | `declaration-track:a9d722f0c6e4bcba5acb3b577a61049897b1b4b338d4fe2f412260ea0aaa995d` |
| 5 | `def` | [computeAppendSep](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AutoTryPublic.lean/declarations/computeappendsep.md) | 147 | `declaration-track:204cce6fabcfea62bcd74bc2d5f1e7c40df52d80ccc070abac8fdd2f78bb3c01` |
| 6 | `def` | [mkEmptyRangeStx](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AutoTryPublic.lean/declarations/mkemptyrangestx.md) | 162 | `declaration-track:2a680b9ad9f0ae28cc04ebcfe4e92670ab40f468544a7310a9dc53c076693463` |
| 7 | `def` | [mkRangeStx](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AutoTryPublic.lean/declarations/mkrangestx.md) | 168 | `declaration-track:193033712ab37f18493d9668045987b5f908769fd22ff9b07e9370b00921b6fe` |
| 8 | `structure` | [Candidate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AutoTryPublic.lean/declarations/candidate.md) | 186 | `declaration-track:340b60017de8d030f503fa2a5a218bbedc464065dc406dca152bb68c13bd7ea7` |
| 9 | `def` | [collectGoalsAndCtxFromMessage](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AutoTryPublic.lean/declarations/collectgoalsandctxfrommessage.md) | 200 | `declaration-track:44e9e0ec90516e0da77ec742dfe037fb9bf742898d529e4f60b514f9203614fb` |
| 10 | `def` | [findTacticSeqBody](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AutoTryPublic.lean/declarations/findtacticseqbody.md) | 241 | `declaration-track:a5c8ec7fbf36508967f09559e57c5f10632f898b37d6e21d4aafe1f93cbe009d` |
| 11 | `def` | [collectTriggerPoints](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AutoTryPublic.lean/declarations/collecttriggerpoints.md) | 280 | `declaration-track:d5335da28763c19bc37df834af65a57f9c90f91097f14b9a8785635e3f1dfa8e` |
| 12 | `def` | [collectSuggestionsForGoal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AutoTryPublic.lean/declarations/collectsuggestionsforgoal.md) | 343 | `declaration-track:2e9121b3766e218ac110bccc0e300d4ad984f39d56c02777a5a29842282b70df` |
| 13 | `def` | [emitAppendSuggestions](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AutoTryPublic.lean/declarations/emitappendsuggestions.md) | 372 | `declaration-track:ec2fe22c6a6abaf70c2e54b7e7e7ed31d2a82106070a431b17b7da331198c07b` |
| 14 | `def` | [runReplaceTryOnGoal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AutoTryPublic.lean/declarations/runreplacetryongoal.md) | 407 | `declaration-track:d9495521777124cc7b22f2727a5fb2ae26be92cab3f349ba0961548a311d3874` |
| 15 | `def` | [hasNonUnsolvedGoalError](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AutoTryPublic.lean/declarations/hasnonunsolvedgoalerror.md) | 424 | `declaration-track:17877eebb0d2932d85be09f909196502862d03f5bb84e5e02aa4f48e00a54068` |
| 16 | `def` | [singleGoalAtInsertPos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AutoTryPublic.lean/declarations/singlegoalatinsertpos.md) | 449 | `declaration-track:7a8f55422d60ee44fa96e9d230f942fb9d3017bacaf449e41bc43dc9d206c6e1` |
| 17 | `def` | [autoTryHook](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AutoTryPublic.lean/declarations/autotryhook.md) | 471 | `declaration-track:f4c893ae6802a91f3789bee3287be0f915a62a74d94f0214668fb48dcb34f0a3` |
| 18 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AutoTryPublic.lean/declarations/builtin-initialize-source-edition-2.md) | 500 | `declaration-track:706daa8c14898286c4edde1e8ec30570f8030828b466661b1d9c62dc66a478ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=419b52f17c79899a6ae69b489a6c3c9c7066cd90b6bba49f852054381ea6b4a6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoTry/Variant0146f50b66ae7a626c712d1e70437d6356179dfa504583e2618359ad80220ea5.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoTry/Variant0146f50b66ae7a626c712d1e70437d6356179dfa504583e2618359ad80220ea5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
