# Verification target: Util Public Fold

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1916e78a59cd91cc756c4e0a3220bef9b916245f",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant93ddc42daba8185771f233433b7b1528ec2a4d6b1c8fb330f85b5ca04a8ef521.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicFold.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicFold.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1916e78a59cd91cc756c4e0a3220bef9b916245f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant93ddc42daba8185771f233433b7b1528ec2a4d6b1c8fb330f85b5ca04a8ef521.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant93ddc42daba8185771f233433b7b1528ec2a4d6b1c8fb330f85b5ca04a8ef521.lean.json)

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
| 1 | `def` | [foldM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicFold.lean/declarations/foldm.md) | 15 | `declaration-track:3769e31f10c3d1da641952fe5a818df3ca29b824fe7444f879ae7122bb614540` |
| 2 | `def` | [fold](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicFold.lean/declarations/fold.md) | 26 | `declaration-track:78f1ef7a7ec69d97d62c60741d3ebbd0b584bd490467526f3217f7dee25c28d3` |
| 3 | `def` | [foldValuesM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicFold.lean/declarations/foldvaluesm.md) | 32 | `declaration-track:a2b67197a499ce8e6e1df400a9cf04df537a48dc1de26b8626c81683936afb6b` |
| 4 | `def` | [foldValues](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicFold.lean/declarations/foldvalues-source-edition-2.md) | 41 | `declaration-track:54ed81ffd6b18a8c09d2adb36549868f23e5c227d92779a9b7a89868be942a26` |
| 5 | `def` | [size](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicFold.lean/declarations/size-source-edition-2.md) | 47 | `declaration-track:5742f2ae243548d269dd3ff62b9affa2c0b350232a6e573881067fdf035e250a` |
| 6 | `def` | [foldM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicFold.lean/declarations/foldm-source-edition-2.md) | 58 | `declaration-track:b650cb73c700217420af2b67d0cae6a2cc54187a0096f184db83161f8f02ba85` |
| 7 | `def` | [fold](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicFold.lean/declarations/fold-source-edition-2.md) | 66 | `declaration-track:ef7740f7c501fd4fa98cb913017d91de74ba1659a075d53e094b8e273b42dcba` |
| 8 | `def` | [foldValuesM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicFold.lean/declarations/foldvaluesm-source-edition-2.md) | 73 | `declaration-track:d920d40661d96baf395549e43fb3634ca718b1513a297dd72d9cbb102efe58f0` |
| 9 | `def` | [foldValues](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicFold.lean/declarations/foldvalues.md) | 81 | `declaration-track:326c39d71e2b43c00a816a97d3f70f8eab9d2068452c9f1c6f4f1aa6c89907d0` |
| 10 | `def` | [containsValueP](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicFold.lean/declarations/containsvaluep.md) | 88 | `declaration-track:0bae5fb9d0848b61bd7a30f434d9c666192806a3f723199a76b7d134df0ef8ae` |
| 11 | `def` | [values](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicFold.lean/declarations/values.md) | 95 | `declaration-track:4b00e641a9cf0720b86f57d0e5f181df97ee5c0f3697d4d05a2af648c0567e9d` |
| 12 | `def` | [toArray](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicFold.lean/declarations/toarray.md) | 102 | `declaration-track:1c7935b4ecfe8504d76c5aec5344f6f8e9a9e126c2182c7951583dcff015a1f6` |
| 13 | `def` | [size](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicFold.lean/declarations/size.md) | 109 | `declaration-track:3c651bd1e10c72c3d84d4811f39f99439945fd1249ecd41179abadc4837ce7c2` |
| 14 | `def` | [Trie.mapArraysM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicFold.lean/declarations/trie-maparraysm.md) | 115 | `declaration-track:ab54ab4a305d22f08e598dc018acbcfca34d07130cdfe62884a17dc42f03454e` |
| 15 | `def` | [mapArraysM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicFold.lean/declarations/maparraysm.md) | 122 | `declaration-track:533ec1ccecaa8d68d52636a0878c41ce779fb53ea75b3aba4546588132554322` |
| 16 | `def` | [mapArrays](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicFold.lean/declarations/maparrays.md) | 126 | `declaration-track:ddb68db95666d4cc12b8f18c0f67b58eb3c1ffda7733e530b831fe197417749b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8306fd63d9dd1b2bc0977d63c34ac6f11281da1b8c90603653d23f01dd2805d6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant93ddc42daba8185771f233433b7b1528ec2a4d6b1c8fb330f85b5ca04a8ef521.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant93ddc42daba8185771f233433b7b1528ec2a4d6b1c8fb330f85b5ca04a8ef521.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
