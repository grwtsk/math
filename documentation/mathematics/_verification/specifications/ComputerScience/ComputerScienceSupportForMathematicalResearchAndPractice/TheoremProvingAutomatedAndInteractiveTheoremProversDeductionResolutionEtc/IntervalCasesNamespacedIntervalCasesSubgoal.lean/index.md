# Verification target: Interval Cases Namespaced Interval Cases Subgoal

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ab29fabd52e41b2d813c0fea7a32026e498158f",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variantd6c0994a3281e45599c0780e5b19da7cdb1cb65f124b6ecf6244e07fa04faa95.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/IntervalCasesNamespacedIntervalCasesSubgoal.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/IntervalCasesNamespacedIntervalCasesSubgoal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ab29fabd52e41b2d813c0fea7a32026e498158f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variantd6c0994a3281e45599c0780e5b19da7cdb1cb65f124b6ecf6244e07fa04faa95.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variantd6c0994a3281e45599c0780e5b19da7cdb1cb65f124b6ecf6244e07fa04faa95.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.NormNum` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IntervalCasesSubgoal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/IntervalCasesNamespacedIntervalCasesSubgoal.lean/declarations/intervalcasessubgoal.md) | 42 | `declaration-track:86cf3ae2a99fb7cbff31b8ecb32470073f9b348b30c7f4fa70edf560e6cf9456` |
| 2 | `inductive` | [Bound](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/IntervalCasesNamespacedIntervalCasesSubgoal.lean/declarations/bound.md) | 56 | `declaration-track:b60a81e70191b718f72e95d06f504f2df85aca2c9e1aff0f399a80b249001b1d` |
| 3 | `def` | [Bound.asLower](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/IntervalCasesNamespacedIntervalCasesSubgoal.lean/declarations/bound-aslower.md) | 69 | `declaration-track:e9db3a26e6907d5c1a23f6a175f5d71267ca2bad2eff54ea44dfefa65bb5bd29` |
| 4 | `def` | [Bound.asUpper](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/IntervalCasesNamespacedIntervalCasesSubgoal.lean/declarations/bound-asupper.md) | 81 | `declaration-track:78552a26b877cd50d822227ddc2e91599047373994536194af0e87bd87dff49d` |
| 5 | `def` | [parseBound](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/IntervalCasesNamespacedIntervalCasesSubgoal.lean/declarations/parsebound.md) | 91 | `declaration-track:97cfbd93d7605e8801fd92326ba24f2d050fa5b0095793752521c3aa3b66c9d7` |
| 6 | `structure` | [Methods](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/IntervalCasesNamespacedIntervalCasesSubgoal.lean/declarations/methods.md) | 109 | `declaration-track:0d8831b63b8b5d29bf18e8fc2312ad21093cf1c017a36f8cd3a6401d143fd9ea` |
| 7 | `theorem` | [of_not_lt_left](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/IntervalCasesNamespacedIntervalCasesSubgoal.lean/declarations/of-not-lt-left.md) | 132 | `result-track:dd3c705ce6682c90f5f9f73fde8d6bcfb710a2a74f9f8dae9fb49654d7004a98` |
| 8 | `theorem` | [of_not_lt_right](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/IntervalCasesNamespacedIntervalCasesSubgoal.lean/declarations/of-not-lt-right.md) | 133 | `result-track:86bf39e470f308485d3a984dd6baa0c7a69a1b6e15a3f927ff7b86c197efa76e` |
| 9 | `theorem` | [of_not_le_left](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/IntervalCasesNamespacedIntervalCasesSubgoal.lean/declarations/of-not-le-left.md) | 134 | `result-track:b863e13d816b5d1eebadfc44b8dc265efdf24530a5eecc19d270447e28eebbbd` |
| 10 | `theorem` | [of_not_le_right](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/IntervalCasesNamespacedIntervalCasesSubgoal.lean/declarations/of-not-le-right.md) | 135 | `result-track:0d816322de53c0760df1a6df12f610ef3a95dec6adcbad172bef142e0e72394c` |
| 11 | `theorem` | [of_lt_left](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/IntervalCasesNamespacedIntervalCasesSubgoal.lean/declarations/of-lt-left.md) | 136 | `result-track:36b58afeb605fe35d6dc1c1c12c43107046280c506e29611b57860b3c13041be` |
| 12 | `theorem` | [of_lt_right](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/IntervalCasesNamespacedIntervalCasesSubgoal.lean/declarations/of-lt-right.md) | 137 | `result-track:398a5fb77a104339cb0e389d47fcae6c775bd280f6b467878566b1719393a853` |
| 13 | `theorem` | [of_le_left](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/IntervalCasesNamespacedIntervalCasesSubgoal.lean/declarations/of-le-left.md) | 138 | `result-track:96c4a891893e8d1234f8266579bacd76fd7f53fe55eb3339310968e68c3884aa` |
| 14 | `theorem` | [of_le_right](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/IntervalCasesNamespacedIntervalCasesSubgoal.lean/declarations/of-le-right.md) | 139 | `result-track:d62d97d4a87dea32cd4babee6ad15840cc416bd97d443c79ddbb7a81686be72f` |
| 15 | `def` | [Methods.getBound](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/IntervalCasesNamespacedIntervalCasesSubgoal.lean/declarations/methods-getbound.md) | 146 | `declaration-track:0ea91781bcfceb7a84a5397bff9d0b0e8cffae64f37b47c3dd8ffa74f8b05ed2` |
| 16 | `theorem` | [le_of_not_le_of_le](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/IntervalCasesNamespacedIntervalCasesSubgoal.lean/declarations/le-of-not-le-of-le.md) | 168 | `result-track:5d2bb3f7101ac10ea2224307a6283a7de083914a1d9ca2a5d639df2d8c55c94f` |
| 17 | `def` | [Methods.inconsistentBounds](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/IntervalCasesNamespacedIntervalCasesSubgoal.lean/declarations/methods-inconsistentbounds.md) | 176 | `declaration-track:bdc5aeeefde89462cc142cd967401917a9ae45d1f7d00923e6835fca1e0e465b` |
| 18 | `def` | [Methods.bisect](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/IntervalCasesNamespacedIntervalCasesSubgoal.lean/declarations/methods-bisect.md) | 199 | `declaration-track:95254c840349c3853f67f498a155147f21603103122f7e76bd08bbccea2fd5ef` |
| 19 | `def` | [natMethods](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/IntervalCasesNamespacedIntervalCasesSubgoal.lean/declarations/natmethods.md) | 223 | `declaration-track:54ba79600ad7ba0b7e0c8d2e0840dd334da0d77342848ce335c5c336e6a8b40a` |
| 20 | `theorem` | [Interval Cases Namespaced Interval Cases Subgoal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/IntervalCasesNamespacedIntervalCasesSubgoal.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-inter-source-edition-2.md) | 237 | `result-track:eb3df537ae6df14601f9be3179e689a543bcc7d575d9d930c48bc851ae40d9e1` |
| 21 | `theorem` | [Interval Cases Namespaced Interval Cases Subgoal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/IntervalCasesNamespacedIntervalCasesSubgoal.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-inter.md) | 239 | `result-track:176bb364f163e63a3538da8a5208148dac9d3db5a69b93e2c2a99da9a9279686` |
| 22 | `def` | [intMethods](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/IntervalCasesNamespacedIntervalCasesSubgoal.lean/declarations/intmethods.md) | 244 | `declaration-track:ff9edda3553be78a1a409f2b0dd8fc1a6fc04278c2a51b3c93784abda3be409f` |
| 23 | `def` | [intervalCases](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/IntervalCasesNamespacedIntervalCasesSubgoal.lean/declarations/intervalcases.md) | 282 | `declaration-track:5e5f2fe7ca59136bd9caa868374bd72f9d472d43235dd6002f0a7884b99a944c` |
| 24 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/IntervalCasesNamespacedIntervalCasesSubgoal.lean/declarations/syntax.md) | 351 | `declaration-track:48c68ce1f8a4c2d3ed29fd3bebbee1ddc94df924d720faa334f941198f54f4ba` |
| 25 | `elab_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/IntervalCasesNamespacedIntervalCasesSubgoal.lean/declarations/elab-rules.md) | 354 | `declaration-track:71d48725c8d50c8c85cae84e088b9d0bd062a18f34695f5cece08ce0a66dc6c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=331503b6d55ffd9f94cef1972d06ff73c8f09f55a0fb8376fac55a2ab4837317 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variantd6c0994a3281e45599c0780e5b19da7cdb1cb65f124b6ecf6244e07fa04faa95.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variantd6c0994a3281e45599c0780e5b19da7cdb1cb65f124b6ecf6244e07fa04faa95.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
