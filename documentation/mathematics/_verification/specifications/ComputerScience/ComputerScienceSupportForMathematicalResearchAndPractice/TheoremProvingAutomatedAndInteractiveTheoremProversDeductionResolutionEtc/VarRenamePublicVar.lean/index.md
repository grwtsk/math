# Verification target: Var Rename Public Var

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e3dcc1dbe3ef12d971e44f68ae4ad9627a97d56d",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VarRename/Variant000c5d87ee12961812781bac52458602265153cc4cdffb5b7f98d01ba1a13a40.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/VarRenamePublicVar.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/VarRenamePublicVar.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e3dcc1dbe3ef12d971e44f68ae4ad9627a97d56d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VarRename/Variant000c5d87ee12961812781bac52458602265153cc4cdffb5b7f98d01ba1a13a40.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VarRename/Variant000c5d87ee12961812781bac52458602265153cc4cdffb5b7f98d01ba1a13a40.lean.json)

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
| 1 | `abbrev` | [Var](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/VarRenamePublicVar.lean/declarations/var.md) | 15 | `declaration-track:1717402565352268ad68296e747ba9ba142cd2261d27c8f33ac7f0c7a9dc7df8` |
| 2 | `abbrev` | [FoundVars](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/VarRenamePublicVar.lean/declarations/foundvars.md) | 16 | `declaration-track:069750b116702abd110a64e34175040ba51bcc3f59625cbbeccd8708f23cf06f` |
| 3 | `abbrev` | [VarCollector](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/VarRenamePublicVar.lean/declarations/varcollector.md) | 18 | `declaration-track:a50924ff6d11cf44efd8e28f980b2844195200d18a5a01cc11a1868ed0330dbe` |
| 4 | `def` | [collectVar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/VarRenamePublicVar.lean/declarations/collectvar.md) | 20 | `declaration-track:caf91e46bf130563010268136e14fc38de7bbee905f292e942125cb9650823e4` |
| 5 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/VarRenamePublicVar.lean/declarations/instance-source-edition-2.md) | 22 | `declaration-track:5fdb85e318eb3c223658b0151120fa09df3b4e598fb84b55ef0395ba4cb86e45` |
| 6 | `def` | [collectMapVars](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/VarRenamePublicVar.lean/declarations/collectmapvars.md) | 25 | `declaration-track:27ce95f747ea86f1eb87470ec1a176474b1b4e77a51408a572e9c42d6e1ad8a5` |
| 7 | `def` | [FoundVars.toArray](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/VarRenamePublicVar.lean/declarations/foundvars-toarray.md) | 31 | `declaration-track:1450a2b4f28288377dafd87a3c0cb602ab517ad1af741f32cffcb590952797fd` |
| 8 | `structure` | [VarRename](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/VarRenamePublicVar.lean/declarations/varrename.md) | 34 | `declaration-track:820ecf6153d84ef6518928fb44bd00b53e02317d5b96185c4f468b718a3cd84f` |
| 9 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/VarRenamePublicVar.lean/declarations/instance.md) | 37 | `declaration-track:2430a8c6fdcc37235610c42655bc48879b21834e69d35db71c7833e3fa0a03c5` |
| 10 | `def` | [mkVarRename](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/VarRenamePublicVar.lean/declarations/mkvarrename.md) | 40 | `declaration-track:91bd9c09510397dcc8f392dfc6aa8ba4c8e0f3d29205f23faa3b4c6195f70a6d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=09ca289402dfdf5e948a767ffb973e72eca5f52dafef02226143c96d014d00ea -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VarRename/Variant000c5d87ee12961812781bac52458602265153cc4cdffb5b7f98d01ba1a13a40.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VarRename/Variant000c5d87ee12961812781bac52458602265153cc4cdffb5b7f98d01ba1a13a40.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
