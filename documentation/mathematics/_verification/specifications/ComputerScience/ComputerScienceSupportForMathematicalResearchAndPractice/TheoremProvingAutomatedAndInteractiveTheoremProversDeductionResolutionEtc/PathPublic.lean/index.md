# Verification target: Path Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "09c0253b7066a88d65ab556dcc224463479090ea",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Path/Variant52cf9aa41a82db18d0d3c93bf6257d064f773af9e62b8b43be89ce1b0e00055f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PathPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PathPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `09c0253b7066a88d65ab556dcc224463479090ea`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Path/Variant52cf9aa41a82db18d0d3c93bf6257d064f773af9e62b8b43be89ce1b0e00055f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Path/Variant52cf9aa41a82db18d0d3c93bf6257d064f773af9e62b8b43be89ce1b0e00055f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Control.Do` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.ToString.Name` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.String.TakeDrop` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.List.Monadic` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.Option.BasicAux` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.ToString.Macro` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Data.String.Length` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [forEachModuleInDir](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PathPublic.lean/declarations/foreachmoduleindir.md) | 33 | `declaration-track:4cd981bd7176b923a4ba914b15a193fea6ed815cc5f1f131bfd45d2a4e41d0b3` |
| 2 | `def` | [realPathNormalized](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PathPublic.lean/declarations/realpathnormalized.md) | 42 | `declaration-track:be445c1f1e6c0741038a86f24763984ffa3012f7d61bb87518b46b9780703fc2` |
| 3 | `def` | [modToFilePath](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PathPublic.lean/declarations/modtofilepath.md) | 45 | `declaration-track:a89e056d6756a0b080d4ba7ba72a90e27e31dcd3d229e0bf15fd9581730ec42d` |
| 4 | `abbrev` | [SearchPath](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PathPublic.lean/declarations/searchpath.md) | 54 | `declaration-track:26a1d04535bed8ee1489e813ccd90f1bfd3f105fefe3fd4d89802ab54f63181c` |
| 5 | `def` | [findWithExt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PathPublic.lean/declarations/findwithext.md) | 61 | `declaration-track:4baea10c27d9e482875808872c4efa967e7fe0b309de92dae6983c590434f85b` |
| 6 | `def` | [findModuleWithExt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PathPublic.lean/declarations/findmodulewithext.md) | 68 | `declaration-track:24af234b617e6898d52d50f84e9f92f3cffa986105ff47d8f948d3343bab421e` |
| 7 | `def` | [findAllWithExt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PathPublic.lean/declarations/findallwithext.md) | 74 | `declaration-track:666584d14e39b00bb2f20512fa1a083ad54338af4a19ff9996078c7f64caef03` |
| 8 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PathPublic.lean/declarations/builtin-initialize.md) | 83 | `declaration-track:d112777ddc0b6d8b86554c5efd574de20eb8bfd66daeb0939a8ae59a7361484f` |
| 9 | `def` | [getBuildDir](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PathPublic.lean/declarations/getbuilddir.md) | 85 | `declaration-track:0a75dd91a08e50eab9a9bab29a69735f9c353354e0e2a35d65e3a0c527d7d64b` |
| 10 | `def` | [getLibDir](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PathPublic.lean/declarations/getlibdir.md) | 88 | `declaration-track:6411cbe5764a86ee7c1378679f1e9ab28275d216c1a797450930d7ff59d46276` |
| 11 | `def` | [getBuiltinSearchPath](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PathPublic.lean/declarations/getbuiltinsearchpath.md) | 95 | `declaration-track:24a1906c5039eee921f713562b3dd4adb178a63335a456aae25eee4788d56188` |
| 12 | `def` | [addSearchPathFromEnv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PathPublic.lean/declarations/addsearchpathfromenv.md) | 98 | `declaration-track:5f11d0b9aeaa4bca3c20bc98c93d00e4f7d77a8b0c010f56b91eb3b55f2b72ee` |
| 13 | `def` | [initSearchPath](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PathPublic.lean/declarations/initsearchpath.md) | 108 | `declaration-track:5c62b67f23c6fcee60938b5e7abbe4b420bac029e1e47bc59105ea9dffedab27` |
| 14 | `def` | [initSearchPathInternal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PathPublic.lean/declarations/initsearchpathinternal.md) | 113 | `declaration-track:1c2301b890759dd788fa181857057675cb84cd1df46bd4dbd9229f2ee3ccc28d` |
| 15 | `def` | [findOLean](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PathPublic.lean/declarations/findolean.md) | 117 | `declaration-track:8b15778e2ac7dadf6cadd81adb374a4921089c7db730e1bd81ed4c5a2528a95b` |
| 16 | `def` | [findLean](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PathPublic.lean/declarations/findlean.md) | 128 | `declaration-track:4465e7023def0d6d83a18113b79a5c648b708469e42abbc29f47fa7bdf7bc456` |
| 17 | `def` | [getSrcSearchPath](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PathPublic.lean/declarations/getsrcsearchpath.md) | 137 | `declaration-track:81412c8bcf7e9030d245401803bea0f9420ff104cc27ea2e317a4b328649408e` |
| 18 | `def` | [moduleNameOfFileName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PathPublic.lean/declarations/modulenameoffilename.md) | 146 | `declaration-track:2e9a7b7d1da781ff258ca3bb4e8907793a36be764594cddfb53bb35799f475e9` |
| 19 | `def` | [searchModuleNameOfFileName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PathPublic.lean/declarations/searchmodulenameoffilename.md) | 162 | `declaration-track:cd27eb31180008325daaa96b74281a9f54789fb3eda1004e4e2171a5fe56b0c6` |
| 20 | `def` | [findSysroot](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PathPublic.lean/declarations/findsysroot.md) | 180 | `declaration-track:97f045b3036dbcddf225da5539013d26562d58c520bdb9831f90fd54eb4e7aab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f4ea167bd91605cceb063b05f074aa107b5f0cb9751eef245b03a052e754ef8c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Path/Variant52cf9aa41a82db18d0d3c93bf6257d064f773af9e62b8b43be89ce1b0e00055f.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Path/Variant52cf9aa41a82db18d0d3c93bf6257d064f773af9e62b8b43be89ce1b0e00055f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
