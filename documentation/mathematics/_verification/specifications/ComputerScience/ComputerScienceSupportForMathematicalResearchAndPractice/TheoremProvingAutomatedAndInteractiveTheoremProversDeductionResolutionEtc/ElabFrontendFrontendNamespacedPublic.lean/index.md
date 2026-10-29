# Verification target: Elab Frontend Frontend Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab296b81b15379f9aae54d4b49af132bc976ecbe",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Frontend/Variante154c6df4b65c125cd1aad29d57a8dc455432ad8e35bed6e13c7da8f19e4d367.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElabFrontendFrontendNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElabFrontendFrontendNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab296b81b15379f9aae54d4b49af132bc976ecbe`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Frontend/Variante154c6df4b65c125cd1aad29d57a8dc455432ad8e35bed6e13c7da8f19e4d367.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/Frontend/Variante154c6df4b65c125cd1aad29d57a8dc455432ad8e35bed6e13c7da8f19e4d367.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.System.Platform` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Compiler.Options` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Compiler.InitAttr` — import line 19; external provider; requires a separately pinned dependency.
- `Lean.Linter.PersistentLintLog` — import line 20; external provider; requires a separately pinned dependency.
- `Lean.Util.ProfilerServer` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [State](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElabFrontendFrontendNamespacedPublic.lean/declarations/state.md) | 30 | `declaration-track:56ddab14b6a607c26f3fa3f698a2a8aa75c3354b2c3afab1998b36d601c9b015` |
| 2 | `structure` | [Context](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElabFrontendFrontendNamespacedPublic.lean/declarations/context.md) | 37 | `declaration-track:07cb9fe7875681f3372d6253653362e29e2ef034fc4f3a402e8cad20dc0077c9` |
| 3 | `abbrev` | [FrontendM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElabFrontendFrontendNamespacedPublic.lean/declarations/frontendm.md) | 40 | `declaration-track:127d19facb1b3af4466de2f027f20e0bab01573f1244767a39f3722caf0aada3` |
| 4 | `def` | [setCommandState](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElabFrontendFrontendNamespacedPublic.lean/declarations/setcommandstate.md) | 42 | `declaration-track:d43e00b8cdfa45d16f6c87f47b8c5a499f690466d6e8f24b23c2c969ce7e9240` |
| 5 | `def` | [runCommandElabM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElabFrontendFrontendNamespacedPublic.lean/declarations/runcommandelabm.md) | 45 | `declaration-track:c8b707ae77b6c4961f3574b3c1cb42a4d243fa7a5c896a750e8a98740a1f15b7` |
| 6 | `def` | [elabCommandAtFrontend](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElabFrontendFrontendNamespacedPublic.lean/declarations/elabcommandatfrontend.md) | 59 | `declaration-track:c19e4eef7e0e343825a93d7c9772883cd0125710e46885e7682e9506a6e14379` |
| 7 | `def` | [updateCmdPos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElabFrontendFrontendNamespacedPublic.lean/declarations/updatecmdpos.md) | 63 | `declaration-track:44c1ab4941171ade262090154c054c8fd97676b06f4ad8d94fe2b83f05bff095` |
| 8 | `def` | [getParserState](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElabFrontendFrontendNamespacedPublic.lean/declarations/getparserstate.md) | 66 | `declaration-track:384394ceab140fb456c033b735f41bf5408aa2da8f608df265d802a58aeb9eb6` |
| 9 | `def` | [getCommandState](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElabFrontendFrontendNamespacedPublic.lean/declarations/getcommandstate.md) | 67 | `declaration-track:2d9df72ee5c7754dc8bb11d37f9ae384877bba4d14c9fb35aa16a748bc32c2c4` |
| 10 | `def` | [setParserState](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElabFrontendFrontendNamespacedPublic.lean/declarations/setparserstate.md) | 68 | `declaration-track:f0dd2e8f5e5566b5e1f3c57fe8a0531d6f3bf261d11edd66b2a38a1f6599f9f0` |
| 11 | `def` | [setMessages](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElabFrontendFrontendNamespacedPublic.lean/declarations/setmessages.md) | 69 | `declaration-track:7d77d8cf6ea30ca7ab0d7578b8d3e43f08d4b53aeec3e8ac5e37fad5313dfceb` |
| 12 | `def` | [getInputContext](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElabFrontendFrontendNamespacedPublic.lean/declarations/getinputcontext.md) | 70 | `declaration-track:fa824096c7da4ca31a23a001a24f15d4704bac51b69cfd4c7af45d78f77c4cc7` |
| 13 | `def` | [processCommand](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElabFrontendFrontendNamespacedPublic.lean/declarations/processcommand.md) | 72 | `declaration-track:280b67db02a8f8c22d62c32353fe4efa9a671a85d0776e0eb8491674563c0949` |
| 14 | `def` | [processCommands](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElabFrontendFrontendNamespacedPublic.lean/declarations/processcommands.md) | 87 | `declaration-track:17e0b0b1b6edd9464bf2ba9a5523835536103d342e198c6f8a48eadb0053d4cc` |
| 15 | `structure` | [IncrementalState](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElabFrontendFrontendNamespacedPublic.lean/declarations/incrementalstate.md) | 96 | `declaration-track:ce113fcac62c423a7fc5466e98b268d0578dec6013f7e677dd024e6a7a399ef2` |
| 16 | `def` | [IO.processCommandsIncrementally](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElabFrontendFrontendNamespacedPublic.lean/declarations/io-processcommandsincrementally.md) | 107 | `declaration-track:08d8eff83a804905314398defff5d0eabf09c0c8d779ce22da9633436500ff7d` |
| 17 | `def` | [IO.processCommands](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElabFrontendFrontendNamespacedPublic.lean/declarations/io-processcommands.md) | 137 | `declaration-track:6c67706c2f33ae4488f5b0a3f900c959f44c30dcbf8f1e41189d07f18ec80be3` |
| 18 | `def` | [process](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElabFrontendFrontendNamespacedPublic.lean/declarations/process.md) | 142 | `declaration-track:fecb7bfbce825d2e7dace769570b825b898467da1339c0aa41e65021e4666df3` |
| 19 | `def` | [collectCommandLints](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElabFrontendFrontendNamespacedPublic.lean/declarations/collectcommandlints.md) | 152 | `declaration-track:5f9323d77f35193cead1360e4f8e95c2176c24f5d910bee1945be7c15890169e` |
| 20 | `structure` | [IncrSnapshot](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElabFrontendFrontendNamespacedPublic.lean/declarations/incrsnapshot.md) | 163 | `declaration-track:164b4e9b9a0bd0e8df21838e441b004f72085021fc9b4927222bbaddfd7266a3` |
| 21 | `def` | [regionsToModuleArtifacts](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElabFrontendFrontendNamespacedPublic.lean/declarations/regionstomoduleartifacts.md) | 172 | `declaration-track:179c83749b02c7a88c84af5ec8e976dbff7c18974417ba2917364cfa40f34ddf` |
| 22 | `def` | [readModuleArtifactRegions](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElabFrontendFrontendNamespacedPublic.lean/declarations/readmoduleartifactregions.md) | 191 | `declaration-track:17d063f1cbd5bfff831c0b7c5a18a03d23419500ed1d673b3e6085c67f5a1cc4` |
| 23 | `def` | [loadIncrSnapshot](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElabFrontendFrontendNamespacedPublic.lean/declarations/loadincrsnapshot.md) | 205 | `declaration-track:6697867e9fa7fdb40ca09bfe5a372491451f88a81b696749fa7f445e6c7aabfa` |
| 24 | `def` | [resolveCancelTokensForSave](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElabFrontendFrontendNamespacedPublic.lean/declarations/resolvecanceltokensforsave.md) | 244 | `declaration-track:dc5e66429e59faef084e7a026c9529d8b5ee37061d21b121ca720170a0e384c9` |
| 25 | `def` | [setMainModule](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElabFrontendFrontendNamespacedPublic.lean/declarations/setmainmodule.md) | 257 | `declaration-track:a65da13e4d5893d305d19c2b84421a8c8bbe4be1d4541fff56ecb8d47659d163` |
| 26 | `def` | [runFrontend](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElabFrontendFrontendNamespacedPublic.lean/declarations/runfrontend.md) | 277 | `declaration-track:5ed865517249c5ecdf88e87c83fb212eb65cbe6842066b55eababc73e52b7e31` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3e6407da684aa477a7dac53d7bed6e48b9ddf47121ab9264714ef44100ee9243 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Frontend/Variante154c6df4b65c125cd1aad29d57a8dc455432ad8e35bed6e13c7da8f19e4d367.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/ModelTheory/Frontend/Variante154c6df4b65c125cd1aad29d57a8dc455432ad8e35bed6e13c7da8f19e4d367.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
