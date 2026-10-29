# Verification target: Rule Set Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1069d357ec7c206dbbad9cc19842067e269ea8dc",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant7d08d9588a327688bb48a5c548f6ab7e2c2f9a3d1139f30f7287a1aa5f32ff68.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RuleSetPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RuleSetPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1069d357ec7c206dbbad9cc19842067e269ea8dc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant7d08d9588a327688bb48a5c548f6ab7e2c2f9a3d1139f30f7287a1aa5f32ff68.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant7d08d9588a327688bb48a5c548f6ab7e2c2f9a3d1139f30f7287a1aa5f32ff68.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Lean.PersistentHashMap` — import line 13; external provider; requires a separately pinned dependency.
- `Batteries.Lean.PersistentHashSet` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Simp.Attr` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BaseRuleSet](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RuleSetPublic.lean/declarations/baseruleset.md) | 33 | `declaration-track:968dab320b03cdc79fd2214dd1869e6c72ec6c58e26b19872fa651c9f6064eae` |
| 2 | `structure` | [GlobalRuleSet](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RuleSetPublic.lean/declarations/globalruleset.md) | 92 | `declaration-track:05f3e6362e4fe5820c2b835811c25a070e1a0774d111c2b7abd8305ad7c97d53` |
| 3 | `structure` | [LocalRuleSet](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RuleSetPublic.lean/declarations/localruleset.md) | 108 | `declaration-track:a764e0e8c4264a0b98111db39bd016c84efe1371f3003a03e4cbf227df3a3221` |
| 4 | `def` | [onBaseM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RuleSetPublic.lean/declarations/onbasem.md) | 139 | `declaration-track:029f134a94a4335004b574e003057ed04f1c53fc19cbbdcba57e4c60b8fa101e` |
| 5 | `def` | [onBase](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RuleSetPublic.lean/declarations/onbase.md) | 146 | `declaration-track:24841c546a9af74aca7ca5f907ac2472d89ff7e6054caad41be1a9519c11fa3b` |
| 6 | `def` | [modifyBaseM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RuleSetPublic.lean/declarations/modifybasem-source-edition-2.md) | 151 | `declaration-track:fb6e55ff1afde7e609051e74bde94c9ad5fe7c1c7c865446f08403abd559e7fc` |
| 7 | `def` | [modifyBase](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RuleSetPublic.lean/declarations/modifybase.md) | 156 | `declaration-track:4c8885104f511abe6d58db7839ab6959206420eedf91589f3c713d74b81867e7` |
| 8 | `def` | [onBaseM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RuleSetPublic.lean/declarations/onbasem-source-edition-2.md) | 166 | `declaration-track:61d5379b1d579760c2bd56f3e5dad93486c2a7ee99b62783af3336a937e36283` |
| 9 | `def` | [onBase](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RuleSetPublic.lean/declarations/onbase-source-edition-2.md) | 172 | `declaration-track:9a8d02a7ad04e8b585a7332948b8c3d7804070f18f0de5d34e57e1cd9e8d17d7` |
| 10 | `def` | [modifyBaseM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RuleSetPublic.lean/declarations/modifybasem.md) | 176 | `declaration-track:64ff81daa5ba5cfb7230104891471f64b27d9a336d741629486f7d450c1132ec` |
| 11 | `def` | [modifyBase](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RuleSetPublic.lean/declarations/modifybase-source-edition-2.md) | 180 | `declaration-track:80f49ac4bf5398b4cda2f68726bdcdeff386fc74227867d340f98478a1663ca4` |
| 12 | `def` | [BaseRuleSet.trace](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RuleSetPublic.lean/declarations/baseruleset-trace.md) | 187 | `declaration-track:5510b3a628dc87f5ca3f8f3d37c4f4a9d02677c1c7bd25bedc3dbbd524539dc7` |
| 13 | `def` | [GlobalRuleSet.trace](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RuleSetPublic.lean/declarations/globalruleset-trace.md) | 209 | `declaration-track:4ab4cc79228e8c2610de773ca1a2894cb1297cdcf4231dfb8fe8a53a77e54f7e` |
| 14 | `def` | [LocalRuleSet.trace](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RuleSetPublic.lean/declarations/localruleset-trace.md) | 218 | `declaration-track:39dea23c638087a5c4f6bc253c5f4de4b76d6f5406037150fe0f6dc4ffae3723` |
| 15 | `def` | [BaseRuleSet.empty](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RuleSetPublic.lean/declarations/baseruleset-empty.md) | 235 | `declaration-track:9b797ee445aa94bd4093ac0c9b408ba602269e35536767414a85a613ab8ceb4a` |
| 16 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RuleSetPublic.lean/declarations/instance-source-edition-4.md) | 238 | `declaration-track:fd8a948031979d7e4cb393264e3c3aac36963b17a1bbfd9e3b4407496f176294` |
| 17 | `def` | [GlobalRuleSet.empty](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RuleSetPublic.lean/declarations/globalruleset-empty.md) | 241 | `declaration-track:8ddfd415d455cfaaded3727f72f41b66393e64b783c40e761b567844b95d1371` |
| 18 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RuleSetPublic.lean/declarations/instance-source-edition-2.md) | 244 | `declaration-track:505ccf7f9df2880085d7b502b611933febde0b01526094079e885946909c249e` |
| 19 | `def` | [LocalRuleSet.empty](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RuleSetPublic.lean/declarations/localruleset-empty.md) | 247 | `declaration-track:192be38cdf3e83c1139ed7f730c93a6f9cfcdec0c4fbb1a6638da3bfe44dbbb6` |
| 20 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RuleSetPublic.lean/declarations/instance-source-edition-3.md) | 255 | `declaration-track:86db558697a49da63a010316eb90ca85caa18397a9ad3f895a882c0625a7dae2` |
| 21 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RuleSetPublic.lean/declarations/instance.md) | 258 | `declaration-track:106e177549e4c0d7403cd63f9def2690ab462ee6d303c296be79e07ae03622af` |
| 22 | `def` | [BaseRuleSet.isErased](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RuleSetPublic.lean/declarations/baseruleset-iserased.md) | 262 | `declaration-track:42c1a9570142c0b84fdc956042aac255df845dd097e383af04ea7efd73afbb2e` |
| 23 | `def` | [BaseRuleSet.contains](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RuleSetPublic.lean/declarations/baseruleset-contains.md) | 265 | `declaration-track:846e6b6a58a3a7b258cc6d6bf9b06038b219ff4ae744a9409041f912aee8a4a5` |
| 24 | `def` | [GlobalRuleSet.contains](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RuleSetPublic.lean/declarations/globalruleset-contains.md) | 272 | `declaration-track:42faa37d01ea67ef0e4f41fc90463882fbb06e20172645956592f522d26dd82b` |
| 25 | `def` | [LocalRuleSet.containsGlobalSimpTheorem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RuleSetPublic.lean/declarations/localruleset-containsglobalsimptheorem.md) | 277 | `declaration-track:26fd9f78eb0d454328a29f84fb63fb426c526533b61d6bfbcbfe4b779073d38f` |
| 26 | `def` | [LocalRuleSet.contains](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RuleSetPublic.lean/declarations/localruleset-contains.md) | 282 | `declaration-track:6b0fb2d42b9cdc20f6ccc7e8719c7e799fa7242e4a0bc4f825534722d8a46296` |
| 27 | `def` | [BaseRuleSet.merge](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RuleSetPublic.lean/declarations/baseruleset-merge.md) | 290 | `declaration-track:97797286e00ce21268a3622affa461684c22d3fea0f41c9b59fd595424a7cb61` |
| 28 | `def` | [BaseRuleSet.add](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RuleSetPublic.lean/declarations/baseruleset-add.md) | 314 | `declaration-track:b4d83007dc4f75bfc7cd6bc20907ce826877b796a7b9b3aa0776d172c2eaf54b` |
| 29 | `def` | [LocalRuleSet.add](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RuleSetPublic.lean/declarations/localruleset-add.md) | 366 | `declaration-track:36c7fd26ea5ad41403525a26909e2a05e3e1b475a921e2a64256035bd1093905` |
| 30 | `def` | [BaseRuleSet.erase](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RuleSetPublic.lean/declarations/baseruleset-erase.md) | 382 | `declaration-track:a776e38ab194fd0ac761e7a6d94599bc2d63b728d1a38205ead87c960dde9224` |
| 31 | `def` | [GlobalRuleSet.erase](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RuleSetPublic.lean/declarations/globalruleset-erase.md) | 408 | `declaration-track:73fc8ecbf67267c72d281524c299dcd2122aaca10704a4c947285696671e021c` |
| 32 | `def` | [LocalRuleSet.erase](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RuleSetPublic.lean/declarations/localruleset-erase.md) | 417 | `declaration-track:a83a791781210c140c7c9fe93b52cc3a5ad552534845c39d02d8b166ffb805bb` |
| 33 | `def` | [fwdRulePredicate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RuleSetPublic.lean/declarations/fwdrulepredicate.md) | 452 | `declaration-track:a98a8fec64d6cc0c509b715db29e0cf9b971abec683763cfb62f8b2bd14acda6` |
| 34 | `def` | [rulePredicate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RuleSetPublic.lean/declarations/rulepredicate.md) | 457 | `declaration-track:fd9dc55f04090b5d373c6df870902706a2422ab16ccdd27a5fbbbd19675a3499` |
| 35 | `def` | [postprocessForwardMatchRules](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RuleSetPublic.lean/declarations/postprocessforwardmatchrules.md) | 467 | `declaration-track:ee081b72259cc7e1354ea8a645e6e532259d904cee4906fcf37beb611c44c3cd` |
| 36 | `def` | [applicableNormalizationRulesWith](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RuleSetPublic.lean/declarations/applicablenormalizationruleswith.md) | 473 | `declaration-track:1417305c0cf48528f57b7606b819da008207ecd7a8c6349b70d104e0a04f74ea` |
| 37 | `def` | [applicableNormalizationRules](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RuleSetPublic.lean/declarations/applicablenormalizationrules.md) | 483 | `declaration-track:4e501e8b81180fd135231251bcea678630ec4154958ffc880b7a64c7e943d4f5` |
| 38 | `def` | [applicableUnsafeRulesWith](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RuleSetPublic.lean/declarations/applicableunsaferuleswith.md) | 487 | `declaration-track:598631cd3838d10bbd021782d891b4306b3c48befb0e890179d79beb3ee18650` |
| 39 | `def` | [applicableUnsafeRules](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RuleSetPublic.lean/declarations/applicableunsaferules.md) | 497 | `declaration-track:afc0b2d0a6283099328bbd37dcf8634cd61312d538b05059bffcb99ab5055a4c` |
| 40 | `def` | [applicableSafeRulesWith](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RuleSetPublic.lean/declarations/applicablesaferuleswith.md) | 501 | `declaration-track:a893e739e890c0bb12c827b9b6bbc1c121267ff312c351cd3562af3ac86a4cac` |
| 41 | `def` | [applicableSafeRules](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RuleSetPublic.lean/declarations/applicablesaferules.md) | 511 | `declaration-track:1529556f0af18cebfde99007e9552d1a8ac7e5d8a38fd3458b785de59801ebd0` |
| 42 | `def` | [applicableForwardRulesWith](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RuleSetPublic.lean/declarations/applicableforwardruleswith.md) | 515 | `declaration-track:502777139b42f8776f181a8f30943cc73856ea1ec8cdcdd66b096e0f98719f07` |
| 43 | `def` | [applicableForwardRules](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RuleSetPublic.lean/declarations/applicableforwardrules.md) | 530 | `declaration-track:74bc56114d11b2159bb5c097cc499dc8e4cc5a391a9fae4098c001ced5bea368` |
| 44 | `def` | [constForwardRuleMatches](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RuleSetPublic.lean/declarations/constforwardrulematches.md) | 534 | `declaration-track:5868ba1d8e9eba6941424f4be36b26a73902dd1c8b51b9a70c528a4eafa21851` |
| 45 | `def` | [postprocessPatSubstMap](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RuleSetPublic.lean/declarations/postprocesspatsubstmap.md) | 539 | `declaration-track:a0cfbca28a8b3aa56f58b32a26dd0ede600db14816bf9d1537762e7c672c8e7a` |
| 46 | `def` | [forwardRulePatternSubstsInExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RuleSetPublic.lean/declarations/forwardrulepatternsubstsinexpr.md) | 544 | `declaration-track:0ca77268a45ef83234f9a38f3cf64fa631864c54965bc3cce19770718dd77d47` |
| 47 | `def` | [forwardRulePatternSubstsInLocalDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RuleSetPublic.lean/declarations/forwardrulepatternsubstsinlocaldecl.md) | 554 | `declaration-track:905e1b3d0a49038a616ef4b2f7ac3f417a7c8d7d2b2bf8141c7659c4af6821c1` |
| 48 | `def` | [unindex](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RuleSetPublic.lean/declarations/unindex.md) | 567 | `declaration-track:3f65d5882e8eee3c566fd3275f737e866ec1ad71f11b7cd920850bda0d60f764` |
| 49 | `def` | [unindexPredicate?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RuleSetPublic.lean/declarations/unindexpredicate.md) | 578 | `declaration-track:cc9d7201ba033c2449e5bdff660d18f70b215507624e2e46ccfe45b37c8239b1` |
| 50 | `def` | [mkLocalRuleSet](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RuleSetPublic.lean/declarations/mklocalruleset.md) | 584 | `declaration-track:0fe8c98c963097ffc604ecd7776d79e8d9fa4913092cc2bf032e6326a7540e9c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a6eb3ec64d41b1569f25c75ad85e6892eae46ec96235c4dac50df05212035d1a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant7d08d9588a327688bb48a5c548f6ab7e2c2f9a3d1139f30f7287a1aa5f32ff68.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant7d08d9588a327688bb48a5c548f6ab7e2c2f9a3d1139f30f7287a1aa5f32ff68.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
