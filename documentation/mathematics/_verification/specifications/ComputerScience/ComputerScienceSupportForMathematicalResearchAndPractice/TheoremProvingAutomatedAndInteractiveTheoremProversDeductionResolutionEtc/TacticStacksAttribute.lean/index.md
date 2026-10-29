# Verification target: Tactic Stacks Attribute

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6afbcff4dd01e42b91a656be799b5de10b7c1103",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StacksAttribute/Variant75bc04de7e647312d05b51ef51155b518afd96a0b09f138061143543793201db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticStacksAttribute.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticStacksAttribute.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6afbcff4dd01e42b91a656be799b5de10b7c1103`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StacksAttribute/Variant75bc04de7e647312d05b51ef51155b518afd96a0b09f138061143543793201db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StacksAttribute/Variant75bc04de7e647312d05b51ef51155b518afd96a0b09f138061143543793201db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Command` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Init` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Database](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticStacksAttribute.lean/declarations/database.md) | 25 | `declaration-track:3197c0d462de8f039d291147bd161f7ab301d558a66810f1a54a76ddf4717657` |
| 2 | `structure` | [Tag](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticStacksAttribute.lean/declarations/tag.md) | 32 | `declaration-track:d8e4789d83a990f8ad2f01e531e677c277a6e1988d9342a2372453c5b6ad976a` |
| 3 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticStacksAttribute.lean/declarations/initialize-source-edition-2.md) | 45 | `declaration-track:a1380579e3f32096f49fb9d150feaea3729146fe7860d4824ca3bc69d54aee42` |
| 4 | `def` | [addTagEntry](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticStacksAttribute.lean/declarations/addtagentry.md) | 56 | `declaration-track:f07a90de7f5c69496d83815574de4636972f7aa40b9c399a300486bf83dd25ad` |
| 5 | `abbrev` | [stacksTagKind](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticStacksAttribute.lean/declarations/stackstagkind.md) | 65 | `declaration-track:aa77eab02d5f611aaaaae3b2162696aa1f7fcb433ddfdf1fb80bfb1ab1d9859d` |
| 6 | `def` | [stacksTagFn](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticStacksAttribute.lean/declarations/stackstagfn.md) | 69 | `declaration-track:b99b871c396d18eb5fafd1cc3a485b8950c928b58eeda40892d4f8386b9b2b6c` |
| 7 | `def` | [stacksTagNoAntiquot](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticStacksAttribute.lean/declarations/stackstagnoantiquot.md) | 87 | `declaration-track:99d7197faf4d38d05428fa406972ee574398bbe453024137bed9ac877fec1e06` |
| 8 | `def` | [stacksTagParser](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticStacksAttribute.lean/declarations/stackstagparser.md) | 93 | `declaration-track:e301a9a72b9d6516af529f1cc955767e82b702783868d368e09ad69913dec1ea` |
| 9 | `def` | [Lean.TSyntax.getStacksTag](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticStacksAttribute.lean/declarations/lean-tsyntax-getstackstag.md) | 101 | `declaration-track:a2f2306caa2d20ab4de5be416d4b03edfa316a1c9c7fa0c0dbd8f7a1d6c5adf4` |
| 10 | `def` | [stacksTagNoAntiquot.formatter](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticStacksAttribute.lean/declarations/stackstagnoantiquot-formatter.md) | 110 | `declaration-track:f494e99f91aeaa90a7778836b9a908e82a7d2fdb31813ef06b5f62ca4ab35a3c` |
| 11 | `def` | [stacksTagAntiquot.parenthesizer](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticStacksAttribute.lean/declarations/stackstagantiquot-parenthesizer.md) | 118 | `declaration-track:60bb50284a85d78fa5ceaffaa4cb38f9923fbcab040846a572049ad0634d6eb8` |
| 12 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticStacksAttribute.lean/declarations/syntax-source-edition-2.md) | 128 | `declaration-track:9d3a1f7633f80ff0ba1a897347944835d45fbc133d9507de9bbde62f0d34bbc8` |
| 13 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticStacksAttribute.lean/declarations/syntax.md) | 130 | `declaration-track:49e5cce90361f4ec3be15e5476383ef8ed72246a2680fbca5e251f6d53e093fa` |
| 14 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticStacksAttribute.lean/declarations/syntax-source-edition-3.md) | 141 | `declaration-track:b19d212e830b0a6fce5a3f05c2b83a19488b73c65b5f0fb4155a6b175aea5d2d` |
| 15 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticStacksAttribute.lean/declarations/initialize.md) | 143 | `declaration-track:8b7d7b6eed9eb9e44528470fe97c76f085a33d0dbd7012f00f643786497d5849` |
| 16 | `def` | [Lean.Environment.getSortedStackProjectTags](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticStacksAttribute.lean/declarations/lean-environment-getsortedstackprojecttags.md) | 169 | `declaration-track:8e47973ac460f61fb853ff798231c560f77bc5affe348b5e90e8740a2af000e2` |
| 17 | `def` | [Lean.Environment.getSortedStackProjectDeclNames](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticStacksAttribute.lean/declarations/lean-environment-getsortedstackprojectdeclnames.md) | 176 | `declaration-track:16c39f1fa6b79766ba5cedf4b5e0e4bf0cd747638f0dc06ae4d0c020dc669423` |
| 18 | `def` | [databaseURL](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticStacksAttribute.lean/declarations/databaseurl.md) | 183 | `declaration-track:a894e6984bb2c9fbdb36ad30d3c3a3ca507111881a276f1a0a242c632e6502c7` |
| 19 | `def` | [traceStacksTags](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticStacksAttribute.lean/declarations/tracestackstags.md) | 192 | `declaration-track:334bd32d9e495de8ce1d25bd3b23c2117a9f35e3866aa574a277d21860e8742e` |
| 20 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticStacksAttribute.lean/declarations/elab.md) | 219 | `declaration-track:7f17cbac4276155286a614a6d1ffb3f3177dec887d753dd7a388b7b9eac43e5d` |
| 21 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticStacksAttribute.lean/declarations/elab-source-edition-2.md) | 230 | `declaration-track:f00310a0343f58b87467fced3dac0e747f8338a024012ee81863b58d20221f17` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=62d954ecf75541440db6030e1f0f0cb3fe99b849d7b9bc941cb468dd006a783a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StacksAttribute/Variant75bc04de7e647312d05b51ef51155b518afd96a0b09f138061143543793201db.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StacksAttribute/Variant75bc04de7e647312d05b51ef51155b518afd96a0b09f138061143543793201db.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
