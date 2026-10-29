# Verification target: Main Namespaced Public Elab Grind Pattern

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "93798e57a87dfaf7967adb2e3d16f3091a812a55",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant0b2abc22b14f74b35d4bd0aa4d93c2defc4ba66c9ec920559eb5196ecc6c04df.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MainNamespacedPublicElabGrindPattern.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MainNamespacedPublicElabGrindPattern.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `93798e57a87dfaf7967adb2e3d16f3091a812a55`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant0b2abc22b14f74b35d4bd0aa4d93c2defc4ba66c9ec920559eb5196ecc6c04df.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant0b2abc22b14f74b35d4bd0aa4d93c2defc4ba66c9ec920559eb5196ecc6c04df.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.SimpUtil` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Grind.Param` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Finish` — import line 19; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.CollectParams` — import line 20; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Parser` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [elabGrindPattern](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MainNamespacedPublicElabGrindPattern.lean/declarations/elabgrindpattern.md) | 32 | `declaration-track:6c7721e06e195f128146b87bd09cc1696e8b3bfea602a492392b34341df0f639` |
| 2 | `def` | [elabResetGrindAttrs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MainNamespacedPublicElabGrindPattern.lean/declarations/elabresetgrindattrs.md) | 150 | `declaration-track:c63a545ae4ab29420c8426412ed062615a7f975db9ddb4ad0ec54dfc5ee9924e` |
| 3 | `def` | [elabInitGrindNorm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MainNamespacedPublicElabGrindPattern.lean/declarations/elabinitgrindnorm.md) | 158 | `declaration-track:44fd68af250c1d83fd4e8d032f8e4f4eadaed9a0011ccea8a966e11f102cdde9` |
| 4 | `def` | [parseModifier](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MainNamespacedPublicElabGrindPattern.lean/declarations/parsemodifier.md) | 171 | `declaration-track:87f6dae64e97354c252f2bdccb433c3bcba365621192f7626d70c284301d69ad` |
| 5 | `def` | [elabGrindSuggestions](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MainNamespacedPublicElabGrindPattern.lean/declarations/elabgrindsuggestions.md) | 178 | `declaration-track:3380395e805c28cf08ca4f7cc42eab3667bef4da4e91d100be09807f1948fb92` |
| 6 | `def` | [elabGrindLocals](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MainNamespacedPublicElabGrindPattern.lean/declarations/elabgrindlocals.md) | 203 | `declaration-track:fea8d460f443876c7c5eb322f06684066482c2ae98752101922b432621faee76` |
| 7 | `def` | [mkGrindParams](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MainNamespacedPublicElabGrindPattern.lean/declarations/mkgrindparams.md) | 222 | `declaration-track:ec3661f2265c10d6780247da9cbb2593cf2dca154b09178271bfb063ce0367fe` |
| 8 | `def` | [checkTerminalAsSorry](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MainNamespacedPublicElabGrindPattern.lean/declarations/checkterminalassorry.md) | 249 | `declaration-track:2ce34a812d6bf9e74fee2feaaf2d1390d925d84ae470cf3c0f2791f40595ec0b` |
| 9 | `def` | [grind](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MainNamespacedPublicElabGrindPattern.lean/declarations/grind.md) | 257 | `declaration-track:ee989ffaf4ea7eac532045d30384b0480c4fadf960aae8ea6d11af44a409bdb4` |
| 10 | `def` | [evalGrindCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MainNamespacedPublicElabGrindPattern.lean/declarations/evalgrindcore.md) | 289 | `declaration-track:6f0023cde8c5ab0063c8b2045325cb4422ef077ecc80c3c38eed2c2ca830200a` |
| 11 | `def` | [grindParamsPos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MainNamespacedPublicElabGrindPattern.lean/declarations/grindparamspos.md) | 304 | `declaration-track:542c8b0c2261aba8c73143624211f68884512f2a097c0d2353eb387933f4b1f3` |
| 12 | `def` | [grindOnlyPos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MainNamespacedPublicElabGrindPattern.lean/declarations/grindonlypos.md) | 307 | `declaration-track:57d2051bccc58cca892677c2b76b6b240c0eded423788a06b7b65061cf9a471a` |
| 13 | `def` | [isGrindOnly](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MainNamespacedPublicElabGrindPattern.lean/declarations/isgrindonly.md) | 309 | `declaration-track:f15b057627f9773ae24a8a7f5d61f51f30550f82380bb7226b05672ba1e727c0` |
| 14 | `def` | [setGrindParams](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MainNamespacedPublicElabGrindPattern.lean/declarations/setgrindparams.md) | 312 | `declaration-track:54663df2c7f83354277e3bf14516873d1d4b9c99a4137419e54baf5a46f02b22` |
| 15 | `def` | [getGrindParams](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MainNamespacedPublicElabGrindPattern.lean/declarations/getgrindparams.md) | 319 | `declaration-track:3372214968fb5be2c634ac886120593a75264eda6d690ef09534194640e1f04a` |
| 16 | `def` | [filterSuggestionsAndLocalsFromGrindConfig](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MainNamespacedPublicElabGrindPattern.lean/declarations/filtersuggestionsandlocalsfromgrindconfig.md) | 323 | `declaration-track:7a641be504886cc649a26fdfef378b8641cd6d3195c097dc7faf5a8fdefa7177` |
| 17 | `def` | [elabGrindConfig'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MainNamespacedPublicElabGrindPattern.lean/declarations/elabgrindconfig.md) | 341 | `declaration-track:2c9fc979c169653e77390259f0ee4b13940b46265dda05c973b267bc6bf5abd5` |
| 18 | `def` | [evalGrind](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MainNamespacedPublicElabGrindPattern.lean/declarations/evalgrind.md) | 347 | `declaration-track:05af209820c6c03b441aa80a842496f8742e5b1b9a9d7b55daa75731c68960c9` |
| 19 | `def` | [evalSym](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MainNamespacedPublicElabGrindPattern.lean/declarations/evalsym.md) | 356 | `declaration-track:fdcbe5633d118e312fe0219f6329a143d59f7513b758a8f75235484f9fef3470` |
| 20 | `def` | [evalGrindTraceCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MainNamespacedPublicElabGrindPattern.lean/declarations/evalgrindtracecore.md) | 375 | `declaration-track:6a9189c456236ea315f6a985c33fbba96634f3199f07b3fd82a45aa28f259adc` |
| 21 | `def` | [evalGrindTrace](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MainNamespacedPublicElabGrindPattern.lean/declarations/evalgrindtrace.md) | 454 | `declaration-track:f57bfb04763f76807415f79fad4349f1f3c78311b5343386215c1c6a66e9fe6d` |
| 22 | `def` | [evalLia](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MainNamespacedPublicElabGrindPattern.lean/declarations/evallia.md) | 461 | `declaration-track:a2e255abd3bb5c0848632e47c37bc9eb768712fd785bcba93d962eb8497d3026` |
| 23 | `def` | [evalCutsat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MainNamespacedPublicElabGrindPattern.lean/declarations/evalcutsat.md) | 467 | `declaration-track:e1ca0818e35278b576b4fc92057864fbf378695295450d84cd7c9250c030af86` |
| 24 | `def` | [evalOrder](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MainNamespacedPublicElabGrindPattern.lean/declarations/evalorder.md) | 479 | `declaration-track:b7d6b9bc7f3791fa35c4afbda1d10821312ca5189bf36e332431fc733f759581` |
| 25 | `def` | [evalLinarith](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MainNamespacedPublicElabGrindPattern.lean/declarations/evallinarith.md) | 484 | `declaration-track:09e989a5592c0c777711f826ba730a7d6569fc4305cd0252db933add2fcff61b` |
| 26 | `def` | [evalGrobner](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MainNamespacedPublicElabGrindPattern.lean/declarations/evalgrobner.md) | 489 | `declaration-track:10bff14faead0522f6ba7eff860479bc82eb2f8787ea3a3cffc92bb0d2b66798` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=86024cb2f62b9cca6f640a0883ed50c8aa5a0f7bf871169d862d7f9cfbc099cf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant0b2abc22b14f74b35d4bd0aa4d93c2defc4ba66c9ec920559eb5196ecc6c04df.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant0b2abc22b14f74b35d4bd0aa4d93c2defc4ba66c9ec920559eb5196ecc6c04df.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
