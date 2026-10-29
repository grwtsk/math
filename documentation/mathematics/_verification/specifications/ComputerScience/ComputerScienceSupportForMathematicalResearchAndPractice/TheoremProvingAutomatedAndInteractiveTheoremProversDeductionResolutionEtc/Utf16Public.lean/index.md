# Verification target: Utf16 Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f3f4a31438e93367af4406a603aae52c475b04e",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Utf16/Variant236bc3a312a3f80ac8db2559d4182d64b8da5c841a64af2ced449422b5f80732.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Utf16Public.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Utf16Public.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f3f4a31438e93367af4406a603aae52c475b04e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Utf16/Variant236bc3a312a3f80ac8db2559d4182d64b8da5c841a64af2ced449422b5f80732.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Utf16/Variant236bc3a312a3f80ac8db2559d4182d64b8da5c841a64af2ced449422b5f80732.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.Search` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [utf16Size](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Utf16Public.lean/declarations/utf16size.md) | 24 | `declaration-track:44a41158aac3cd0bfb63d8423f4b138e88aec8228f579725b68691e1dc93911e` |
| 2 | `def` | [csize16](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Utf16Public.lean/declarations/csize16.md) | 31 | `declaration-track:d1020efdf517d731cc4b5e7eb7b266b7cd99adf0805719875e20fa49903d8e29` |
| 3 | `def` | [utf16Length](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Utf16Public.lean/declarations/utf16length.md) | 34 | `declaration-track:44e1a93e171181b47a62187f7f69c52d4acdc85591b0df33f30ace6ff5751be4` |
| 4 | `def` | [codepointPosToUtf16PosFromAux](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Utf16Public.lean/declarations/codepointpostoutf16posfromaux.md) | 37 | `declaration-track:2c18f78f40da7ffaa98561ccdf4e93e0833c693cec672c192e5778d62fc3ebb7` |
| 5 | `def` | [codepointPosToUtf16PosFrom](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Utf16Public.lean/declarations/codepointpostoutf16posfrom.md) | 44 | `declaration-track:6f45cdcfe7a1b1a45828890db7882d3d8a4110ff190e6728d8dc0344755873ed` |
| 6 | `def` | [codepointPosToUtf16Pos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Utf16Public.lean/declarations/codepointpostoutf16pos.md) | 47 | `declaration-track:3e2df78b12e765e883191f3ad4ee4294470aebbef4bf67a496e8ec24d1f693cf` |
| 7 | `def` | [utf16PosToCodepointPosFromAux](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Utf16Public.lean/declarations/utf16postocodepointposfromaux.md) | 50 | `declaration-track:1ce95449154a2f39505f7462c1f27e2a786c4ff95e6e42bfabcd5f07fe9a55d2` |
| 8 | `def` | [utf16PosToCodepointPosFrom](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Utf16Public.lean/declarations/utf16postocodepointposfrom.md) | 56 | `declaration-track:ab4136bc40e159e50bda7bb57ff4cae91564f96d78d229aa238cdfff3dd56ed0` |
| 9 | `def` | [utf16PosToCodepointPos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Utf16Public.lean/declarations/utf16postocodepointpos.md) | 59 | `declaration-track:e4952929f4486b10604b212d95a6f4c42f1b9e30585d5034b5321a4917a9ccfd` |
| 10 | `def` | [codepointPosToUtf8PosFrom](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Utf16Public.lean/declarations/codepointpostoutf8posfrom.md) | 63 | `declaration-track:000c7ca4bce8e826753f6a82116532676ad1a4174bb906e53e7f855afc2ba4cf` |
| 11 | `def` | [lineStartPos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Utf16Public.lean/declarations/linestartpos.md) | 72 | `declaration-track:7bd4d18b555a61926eca8449730791f8c529649dbf0b3b9633d61327640dc38d` |
| 12 | `def` | [lspPosToUtf8Pos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Utf16Public.lean/declarations/lsppostoutf8pos.md) | 82 | `declaration-track:dc3516cddd9049813bb3c28de7c47d4e9f775d466ca8363ccfc1f8e2335caec2` |
| 13 | `def` | [leanPosToLspPos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Utf16Public.lean/declarations/leanpostolsppos.md) | 87 | `declaration-track:9304119b12e83f785085cbd0e27531cf4dfe3c836981e4219374918dfeaf27b2` |
| 14 | `def` | [utf8PosToLspPos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Utf16Public.lean/declarations/utf8postolsppos.md) | 91 | `declaration-track:e1130bbfe35b260ba53fbe44b7c2e07208f0be338e35920148f622834b70f86e` |
| 15 | `def` | [utf8RangeToLspRange](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Utf16Public.lean/declarations/utf8rangetolsprange.md) | 95 | `declaration-track:9ae446a930d25ca1e690229aaa7d3a24155ec67ca3b673dc780f3e14373abd47` |
| 16 | `def` | [lspRangeOfStx?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Utf16Public.lean/declarations/lsprangeofstx.md) | 99 | `declaration-track:1d191a33cdc9392f3fadf1c47a4e1cfa7e8feee2b46991250f46fff7a60bebf4` |
| 17 | `def` | [lspRangeToUtf8Range](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Utf16Public.lean/declarations/lsprangetoutf8range.md) | 102 | `declaration-track:2ccfa897350505319ae80e42f6603dda22bcd77f68542784e9975a8199a4e64b` |
| 18 | `def` | [DeclarationRange.ofFilePositions](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Utf16Public.lean/declarations/declarationrange-offilepositions.md) | 107 | `declaration-track:fe338ed67aa54f1e29739a421e0dbde6d347c5d3f6fa38c24a11417bd38d72aa` |
| 19 | `def` | [DeclarationRange.ofStringPositions](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Utf16Public.lean/declarations/declarationrange-ofstringpositions.md) | 115 | `declaration-track:5773926beb6dd9383885aedcbc390d117125a079c3576350cccb840569471c48` |
| 20 | `def` | [DeclarationRange.toLspRange](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Utf16Public.lean/declarations/declarationrange-tolsprange.md) | 124 | `declaration-track:90c050557acb80cbb9d29182482e8ab00f6bd96773f8dab40cf4a408125e9e6e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=84fcd4ecd3db3c2d9570251dfcf9067fa0c6c1551a56a60865eb08025cc6ea07 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Utf16/Variant236bc3a312a3f80ac8db2559d4182d64b8da5c841a64af2ced449422b5f80732.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Utf16/Variant236bc3a312a3f80ac8db2559d4182d64b8da5c841a64af2ced449422b5f80732.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
