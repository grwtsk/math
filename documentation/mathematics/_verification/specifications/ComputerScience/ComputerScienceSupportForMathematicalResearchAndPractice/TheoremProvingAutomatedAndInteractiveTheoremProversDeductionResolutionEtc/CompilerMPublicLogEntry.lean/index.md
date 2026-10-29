# Verification target: Compiler MPublic Log Entry

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "228b06ad5a72fbc0fd3515f59de814615329b97a",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variantf70c6bd642e4a3913bffc02d279324dd1a37007adf6a0c8663ea67481ccfad46.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompilerMPublicLogEntry.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompilerMPublicLogEntry.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `228b06ad5a72fbc0fd3515f59de814615329b97a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variantf70c6bd642e4a3913bffc02d279324dd1a37007adf6a0c8663ea67481ccfad46.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variantf70c6bd642e4a3913bffc02d279324dd1a37007adf6a0c8663ea67481ccfad46.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Compiler.InitAttr` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.Format.Macro` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Compiler.LCNF.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [LogEntry](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompilerMPublicLogEntry.lean/declarations/logentry.md) | 21 | `declaration-track:1ee45f739fe68e770c7863f34311dd67a7d4257d0c94f34559d62dc33abbdb14` |
| 2 | `def` | [fmt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompilerMPublicLogEntry.lean/declarations/fmt.md) | 26 | `declaration-track:9721a82e8c3147f25c9a7c3ffa9eb3cff324ceb8a18a5bb5a71e5b92a64ed751` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompilerMPublicLogEntry.lean/declarations/instance.md) | 30 | `declaration-track:3340d89a4ececcfdc8333199e0e24877376ad1cc01103570b359aa9f60db1730` |
| 4 | `abbrev` | [Log](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompilerMPublicLogEntry.lean/declarations/log.md) | 33 | `declaration-track:12085549d5c1e79811d788b1e820f079549b60d4730a543129e2b1e601e8d926` |
| 5 | `def` | [Log.format](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompilerMPublicLogEntry.lean/declarations/log-format.md) | 35 | `declaration-track:d1f0f023f6225d15a6a9259c269a0d7feaf3c36a39b4c94975788b8455a6aeec` |
| 6 | `def` | [Log.toString](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompilerMPublicLogEntry.lean/declarations/log-tostring.md) | 39 | `declaration-track:3297b8a5d31b29103f67f15cabd91d62f8d57292fb179b363904d9e9170db2ab` |
| 7 | `abbrev` | [CompilerM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompilerMPublicLogEntry.lean/declarations/compilerm.md) | 42 | `declaration-track:b9797aa06c68c83e050146e2c37244b611ce541f08324594dc4fac3182ec95b0` |
| 8 | `def` | [log](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompilerMPublicLogEntry.lean/declarations/log-source-edition-2.md) | 44 | `declaration-track:1ee4e52d414d3456aec60f32b5ec8b5396c01ecd8389cb4299b3d6fc0d775def` |
| 9 | `def` | [tracePrefixOptionName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompilerMPublicLogEntry.lean/declarations/traceprefixoptionname.md) | 47 | `declaration-track:bf39527d58be0d5f84a8467f0a131611630c211302d482bddf1e3e89e1b68f21` |
| 10 | `def` | [isLogEnabledFor](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompilerMPublicLogEntry.lean/declarations/islogenabledfor.md) | 49 | `declaration-track:1d92e218bd89cfb2045a38ebe8be5f5fb0aa8205c171007731c5944a0223a9e3` |
| 11 | `def` | [logDeclsAux](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompilerMPublicLogEntry.lean/declarations/logdeclsaux.md) | 54 | `declaration-track:9094c8ec3bd1675163e7265e20e5b81cb03997397adfd8749b650b1d7ad571f2` |
| 12 | `def` | [logDecls](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompilerMPublicLogEntry.lean/declarations/logdecls.md) | 58 | `declaration-track:7534ddcc2ce447daaa96bbe52cd299987ad99871933ceb41004a8c76b05dcb22` |
| 13 | `def` | [logMessageIfAux](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompilerMPublicLogEntry.lean/declarations/logmessageifaux.md) | 61 | `declaration-track:9bcc6d7d685e752f3879cae131fca42d48df204147ad7c25e0eb5e767e3620d1` |
| 14 | `def` | [logMessageIf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompilerMPublicLogEntry.lean/declarations/logmessageif.md) | 65 | `declaration-track:d8a14b9b38496b29493f8caf6ec3b3cdcd48e2bea17d40fa1a8977e8e32d8bd7` |
| 15 | `def` | [logMessage](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompilerMPublicLogEntry.lean/declarations/logmessage.md) | 68 | `declaration-track:77c2fe9b782886b5904e6cdd5a77a392247d0a343baf544405d04493a684d8c4` |
| 16 | `abbrev` | [DeclMap](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompilerMPublicLogEntry.lean/declarations/declmap.md) | 71 | `declaration-track:db2a25746e58b485bb52fbdfa783c51c973263509eb84b4bac3933779e025cf1` |
| 17 | `abbrev` | [declLt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompilerMPublicLogEntry.lean/declarations/decllt.md) | 73 | `declaration-track:632607bd016549651fb2068a184468ef792b60fc35fb409dd6062cfb1e1cbd5b` |
| 18 | `abbrev` | [sortDecls](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompilerMPublicLogEntry.lean/declarations/sortdecls.md) | 76 | `declaration-track:e27ca7e3ad851d4254a3502378d4cf60b0d646a1e459271d28924d409b81cb61` |
| 19 | `abbrev` | [findAtSorted?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompilerMPublicLogEntry.lean/declarations/findatsorted.md) | 79 | `declaration-track:96d1a70efd6cd3700b1577c0243c5854db7c920efc3a4d0de4f04d89b57f631a` |
| 20 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompilerMPublicLogEntry.lean/declarations/builtin-initialize.md) | 83 | `declaration-track:fbada63417b672e41bdbecb9d5f13a53e887654011893c1d5154a87197712768` |
| 21 | `def` | [exportIREntries](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompilerMPublicLogEntry.lean/declarations/exportirentries.md) | 121 | `declaration-track:d58847ce13f8a7b4cd884fc7326153a198f0fafea8d34f8c667152f15f1f7562` |
| 22 | `def` | [findEnvDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompilerMPublicLogEntry.lean/declarations/findenvdecl-source-edition-2.md) | 142 | `declaration-track:2ade448388bb1e740c8adfbc51339ca7bc9619460d9e8acc4264b817923932ce` |
| 23 | `def` | [findInterpDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompilerMPublicLogEntry.lean/declarations/findinterpdecl.md) | 146 | `declaration-track:c3fde51f8ed38fa14063ad10b23ab8081fc292d472eb79fff32a7264903cd40a` |
| 24 | `def` | [findInterpDeclBoxed](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompilerMPublicLogEntry.lean/declarations/findinterpdeclboxed.md) | 158 | `declaration-track:dacde83f2c4693f28fd2891856d65748cb35222dd7318f315207bd18e3671228` |
| 25 | `def` | [hasCompileError](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompilerMPublicLogEntry.lean/declarations/hascompileerror.md) | 173 | `declaration-track:4a49b83be63fde58a66f30a1eee41e267f505b67ce181f564f87eabf2dfdadbc` |
| 26 | `def` | [findDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompilerMPublicLogEntry.lean/declarations/finddecl.md) | 180 | `declaration-track:031a1bfcf676e7213421c9d7426752c7ab854d5c80ef57bc533622b9b10fa6b8` |
| 27 | `def` | [containsDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompilerMPublicLogEntry.lean/declarations/containsdecl.md) | 183 | `declaration-track:bc111e3cc30b3fb803ddd2710152edaeba7fd7df95e075d7dbf3ef7a4e60a12a` |
| 28 | `def` | [getDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompilerMPublicLogEntry.lean/declarations/getdecl.md) | 186 | `declaration-track:3eb44eb7fa3c975b25ffd472c70f695d111e7b43be7a49f4e7b755c8f845a8a3` |
| 29 | `def` | [findLocalDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompilerMPublicLogEntry.lean/declarations/findlocaldecl.md) | 190 | `declaration-track:fec03e7d12614d8e7faaed0244d38eae3878a104d3102688eb556bc8ff2c257d` |
| 30 | `def` | [getDecls](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompilerMPublicLogEntry.lean/declarations/getdecls.md) | 194 | `declaration-track:eb7bc6bf8634088f413d948bcab4186515b7953067b567d7a55dad2292b8bc51` |
| 31 | `def` | [addDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompilerMPublicLogEntry.lean/declarations/adddecl.md) | 197 | `declaration-track:534c0f40d205a5002c7be609b894e39b0a0f00408af3d71fe8cf034eb1f8dc18` |
| 32 | `def` | [addDecls](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompilerMPublicLogEntry.lean/declarations/adddecls.md) | 200 | `declaration-track:8f5843a471a6acd178f37813bb7b321c9baff1751c4f6f38cae6a7f4ca5bede1` |
| 33 | `def` | [findEnvDecl'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompilerMPublicLogEntry.lean/declarations/findenvdecl.md) | 203 | `declaration-track:2930015fc259eef923110c4940db8eb2db44a15f0dcaf72f3b1223bfe00f04b7` |
| 34 | `def` | [findDecl'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompilerMPublicLogEntry.lean/declarations/finddecl-source-edition-2.md) | 208 | `declaration-track:cc01285250a3d5aab6f4e3824d0a14ba1bc54219562214d5e61ddedc81ce6c44` |
| 35 | `def` | [containsDecl'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompilerMPublicLogEntry.lean/declarations/containsdecl-source-edition-2.md) | 211 | `declaration-track:fec80126e05db8a5d320a1eb8f5dcf7fe3589a342040f8a9d05b259f74591f67` |
| 36 | `def` | [getDecl'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompilerMPublicLogEntry.lean/declarations/getdecl-source-edition-2.md) | 217 | `declaration-track:e843fbbed41d3e502e442df59fae5336d6235fdff77e33620ccafc5d3df0b93d` |
| 37 | `def` | [getSorryDep](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompilerMPublicLogEntry.lean/declarations/getsorrydep.md) | 222 | `declaration-track:73a156c73b11e646dc12485931e7dbbc03d1c00bc7685f88233992114e197b58` |
| 38 | `def` | [getIRExtraConstNames](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompilerMPublicLogEntry.lean/declarations/getirextraconstnames.md) | 229 | `declaration-track:d7ba37a3bf71517ed5132b1642c2885ef80f36d0949ce22bbdfae487330c4c08` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b709813dbc403c848f2ddd2b172e15155eb2db202fed465bbc629b8279930198 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variantf70c6bd642e4a3913bffc02d279324dd1a37007adf6a0c8663ea67481ccfad46.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variantf70c6bd642e4a3913bffc02d279324dd1a37007adf6a0c8663ea67481ccfad46.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
