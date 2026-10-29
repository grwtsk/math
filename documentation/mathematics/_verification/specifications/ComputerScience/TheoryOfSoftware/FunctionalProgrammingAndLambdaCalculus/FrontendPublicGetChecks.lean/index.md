# Verification target: Frontend Public Get Checks

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c22cdb258576b0217a819ba616a6587b1487e025",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantc220e1431d89e12fbe9ba483e0f1eceebb7f5fe811ffaea9049104266f1a105a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FrontendPublicGetChecks.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FrontendPublicGetChecks.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c22cdb258576b0217a819ba616a6587b1487e025`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantc220e1431d89e12fbe9ba483e0f1eceebb7f5fe811ffaea9049104266f1a105a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantc220e1431d89e12fbe9ba483e0f1eceebb7f5fe811ffaea9049104266f1a105a.lean.json)

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
| 1 | `inductive` | [LintVerbosity](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FrontendPublicGetChecks.lean/declarations/lintverbosity.md) | 61 | `declaration-track:0d8b384f2a7885c479adf901ad1da9a6ba2c294406506c2ac67f7e83f9c23879` |
| 2 | `def` | [getChecks](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FrontendPublicGetChecks.lean/declarations/getchecks.md) | 78 | `declaration-track:e9fd0c16a41944a75e74d8df2a6f35316aa6bfbc999fc2ee110c83f74be4c2ff` |
| 3 | `def` | [traceLintCore](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FrontendPublicGetChecks.lean/declarations/tracelintcore.md) | 101 | `declaration-track:6fea406767f179e9052285ded06199d5a3dac74695ef31c2663cdd4c145d06fa` |
| 4 | `def` | [traceLint](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FrontendPublicGetChecks.lean/declarations/tracelint.md) | 113 | `declaration-track:a42010e9a224e2cabe1e115c4a2bf289eaa5885c61a05dad4cbc0907f5470272` |
| 5 | `def` | [lintCore](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FrontendPublicGetChecks.lean/declarations/lintcore.md) | 124 | `declaration-track:07b55c319961261a1d9c439d8707382e92bafdd22c202c48e6c364c1a6b77919` |
| 6 | `def` | [sortResults](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FrontendPublicGetChecks.lean/declarations/sortresults.md) | 168 | `declaration-track:7b2fa1cc0bc011e5009316a1443f79d9a6621db0d53207f42552ff4260daab1a` |
| 7 | `def` | [printWarning](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FrontendPublicGetChecks.lean/declarations/printwarning.md) | 176 | `declaration-track:de6f41e20f13d1e7959b4861dad068e60d95d0cf255fb12d7baecd51e23466d7` |
| 8 | `def` | [printWarnings](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FrontendPublicGetChecks.lean/declarations/printwarnings.md) | 187 | `declaration-track:3835b1004772e5274d022ad470e6e50905f694e5e79540e52c7d035fae2532ee` |
| 9 | `def` | [groupedByFilename](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FrontendPublicGetChecks.lean/declarations/groupedbyfilename.md) | 197 | `declaration-track:ddd2120b46d3265985c723a5488e1168f03d0b8d35fbd3f70f6444780b6ab2e9` |
| 10 | `def` | [formatLinterResults](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FrontendPublicGetChecks.lean/declarations/formatlinterresults.md) | 220 | `declaration-track:4c5630e1f8a6f7b2c95d90e97668efc4f874c5e2f8db01696345c40553461b16` |
| 11 | `def` | [getDeclsInCurrModule](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FrontendPublicGetChecks.lean/declarations/getdeclsincurrmodule.md) | 252 | `declaration-track:67d3f9ccf4e76b4dc268a5381a28389ecde2b8b2d12ada3869023be996abbbe4` |
| 12 | `def` | [getAllDecls](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FrontendPublicGetChecks.lean/declarations/getalldecls.md) | 256 | `declaration-track:2055596e70e366f7778bd0534d07df73831cf7d4e33802f8fa4aaa4f5ad95b6c` |
| 13 | `def` | [getDeclsInPackage](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FrontendPublicGetChecks.lean/declarations/getdeclsinpackage.md) | 260 | `declaration-track:e00af033b9730b17f7847ea72997385aaab5d287c3d585bd8e056e272cfb0919` |
| 14 | `syntax` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FrontendPublicGetChecks.lean/declarations/syntax.md) | 270 | `declaration-track:0114583418fc6783db48babb73eee47dc85f4d75ff831e8ae33ad6b964209114` |
| 15 | `elab` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FrontendPublicGetChecks.lean/declarations/elab-source-edition-2.md) | 276 | `declaration-track:ce4837f0c2de7eebdf78912ded3bd0aee4eaf21ff665e6eb9bf2ec47c9c07109` |
| 16 | `elab` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FrontendPublicGetChecks.lean/declarations/elab.md) | 319 | `declaration-track:77377cf99a60efeddbbaeaa19e2767b6eeda0078bf31090e67ff8e538b8830fc` |
| 17 | `initialize` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FrontendPublicGetChecks.lean/declarations/initialize.md) | 328 | `declaration-track:6d17117d3f0fe3cd60df25cac88937abb44b066fe4ce0e58606133fcbd68be8d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=926610dfe460bf4e3a95edf0742d7a37c95c6bbf742e1fdc6f919e599a2414a3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantc220e1431d89e12fbe9ba483e0f1eceebb7f5fe811ffaea9049104266f1a105a.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantc220e1431d89e12fbe9ba483e0f1eceebb7f5fe811ffaea9049104266f1a105a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
