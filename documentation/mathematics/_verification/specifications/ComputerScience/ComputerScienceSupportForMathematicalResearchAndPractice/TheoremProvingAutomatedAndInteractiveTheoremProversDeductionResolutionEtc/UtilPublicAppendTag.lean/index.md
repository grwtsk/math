# Verification target: Util Public Append Tag

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b583d6d0da51794fceeda6e78f95cfb8f0834316",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant7bddc17dfb103161a798ba33babdd9af41155f1ac1995107dee25f2343ee99ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicAppendTag.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicAppendTag.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b583d6d0da51794fceeda6e78f95cfb8f0834316`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant7bddc17dfb103161a798ba33babdd9af41155f1ac1995107dee25f2343ee99ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant7bddc17dfb103161a798ba33babdd9af41155f1ac1995107dee25f2343ee99ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.AppBuilder` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [_root_.Lean.MVarId.getTag](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicAppendTag.lean/declarations/root-lean-mvarid-gettag.md) | 23 | `declaration-track:9ea7f2eaba422b51757613663967b0c500a671753f79cfeaf6e103a4febf6b7c` |
| 2 | `def` | [_root_.Lean.MVarId.setTag](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicAppendTag.lean/declarations/root-lean-mvarid-settag.md) | 26 | `declaration-track:151fe79ff262b736d15105ba274ae16d48375b641972c332a39e36311e7bc83e` |
| 3 | `def` | [appendTag](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicAppendTag.lean/declarations/appendtag.md) | 29 | `declaration-track:873de5b09d64fed669dbbb77396415cf36a860dd3d3254cc2d8c040d9f4bea2b` |
| 4 | `def` | [appendTagSuffix](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicAppendTag.lean/declarations/appendtagsuffix.md) | 32 | `declaration-track:8638b8db6d134925e0ae5fdb5e95da121656cf6f0090fe464558c9f5ba6fb00c` |
| 5 | `def` | [mkFreshExprSyntheticOpaqueMVar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicAppendTag.lean/declarations/mkfreshexprsyntheticopaquemvar.md) | 36 | `declaration-track:6b61f11e0bdf73a6c2c3119d67d09fe45d691eff8fe922fe449b14b25ff43533` |
| 6 | `def` | [mkTacticExMsg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicAppendTag.lean/declarations/mktacticexmsg.md) | 43 | `declaration-track:9111fb6cdf781e0d48c37eb6f3b5656f5d250c64e6dda895e9cb82ff57e5a0c8` |
| 7 | `def` | [throwTacticEx](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicAppendTag.lean/declarations/throwtacticex.md) | 46 | `declaration-track:ac8071f8265c461065f2f8c7e17ca570cbd7ddb492e54c59ccbff9d225e76603` |
| 8 | `def` | [throwNestedTacticEx](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicAppendTag.lean/declarations/thrownestedtacticex.md) | 55 | `declaration-track:f8726d8e5ea7cf4eff5072078f50d88c39f5aa51c1f1b8029203f9136f2fad61` |
| 9 | `def` | [_root_.Lean.MVarId.checkNotAssigned](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicAppendTag.lean/declarations/root-lean-mvarid-checknotassigned.md) | 65 | `declaration-track:37d63f1bac566cd90c59fc2bb3f4df502bb7f8175c643e1bb803cbf009f0f2a9` |
| 10 | `def` | [_root_.Lean.MVarId.getType](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicAppendTag.lean/declarations/root-lean-mvarid-gettype.md) | 72 | `declaration-track:8640ccab746378bb77e9fb0169e5bd4be500bfcce523087ef8962009ba9cc532` |
| 11 | `def` | [_root_.Lean.MVarId.getType'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicAppendTag.lean/declarations/root-lean-mvarid-gettype-source-edition-2.md) | 80 | `declaration-track:a43753c89a5fcce733271857d5986ce2b150caa70bf3cc1ca7b3c04df5bbb771` |
| 12 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicAppendTag.lean/declarations/builtin-initialize.md) | 83 | `declaration-track:7a0b7240e1dbb48c9835c412797c161a7005ca94353875e49e064517c5dd707d` |
| 13 | `def` | [_root_.Lean.MVarId.admit](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicAppendTag.lean/declarations/root-lean-mvarid-admit.md) | 86 | `declaration-track:703c221397c2a77ad8096ad41eb3b1c69d25db172715b030325db7b9672f007d` |
| 14 | `def` | [_root_.Lean.MVarId.headBetaType](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicAppendTag.lean/declarations/root-lean-mvarid-headbetatype.md) | 94 | `declaration-track:e8943282defebab0e9ab9c949db29e6133782b1d50dc0d6192bac2fe7173b001` |
| 15 | `def` | [_root_.Lean.MVarId.getNondepPropHyps](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicAppendTag.lean/declarations/root-lean-mvarid-getnondepprophyps.md) | 98 | `declaration-track:ff5453e76247360e6fb231e4e998539d49960346895c210d47ccffebe4bf2e8d` |
| 16 | `def` | [saturate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicAppendTag.lean/declarations/saturate.md) | 126 | `declaration-track:fa7a4cef259d069fb3734fd54e35834b99fabe3100d7508126d13c161c48ae9d` |
| 17 | `def` | [exactlyOne](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicAppendTag.lean/declarations/exactlyone.md) | 136 | `declaration-track:9e137359090552deb28ccc9214903cee3cc6c3847ce24c5750988f3d743615ea` |
| 18 | `def` | [ensureAtMostOne](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicAppendTag.lean/declarations/ensureatmostone.md) | 141 | `declaration-track:1e633b2a041f061ed67fc741330182ab61434eaa530aadba4506032b54048b83` |
| 19 | `def` | [getPropHyps](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicAppendTag.lean/declarations/getprophyps.md) | 148 | `declaration-track:a9b2a82fa1b731595e02b503d790ad2f870894be4da35758c0fcf36e12ed6725` |
| 20 | `def` | [_root_.Lean.MVarId.inferInstance](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicAppendTag.lean/declarations/root-lean-mvarid-inferinstance.md) | 156 | `declaration-track:99b497d89773f65512c264562f1f4336a4e60af23bac1618f31d1a3354baab4f` |
| 21 | `inductive` | [TacticResultCNM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicAppendTag.lean/declarations/tacticresultcnm.md) | 162 | `declaration-track:8b46175c8e84891a0650e182bc5f73b5cf1e74d07d7ef25457d5e15d66603790` |
| 22 | `def` | [_root_.Lean.MVarId.isSubsingleton](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicAppendTag.lean/declarations/root-lean-mvarid-issubsingleton.md) | 169 | `declaration-track:51120568493fafbfcb30820f9fd168598374353835191b6157c98abf5d43034c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=57f4585cfaa2d558f2844c8ef84d48eb6096e2461b90647b806eb5a3e5b58dee -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant7bddc17dfb103161a798ba33babdd9af41155f1ac1995107dee25f2343ee99ec.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant7bddc17dfb103161a798ba33babdd9af41155f1ac1995107dee25f2343ee99ec.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
