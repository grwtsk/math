# Verification target: Pull Fun Decls Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a761dd28b718b7fcb7103088b7348ee05f78d48",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PullFunDecls/Variant3057029e534112fe2649603b79f470285f5614248fa38541252d1db8c6020ea2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PullFunDeclsNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PullFunDeclsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a761dd28b718b7fcb7103088b7348ee05f78d48`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PullFunDecls/Variant3057029e534112fe2649603b79f470285f5614248fa38541252d1db8c6020ea2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PullFunDecls/Variant3057029e534112fe2649603b79f470285f5614248fa38541252d1db8c6020ea2.lean.json)

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
| 1 | `structure` | [ToPull](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PullFunDeclsNamespacedPublic.lean/declarations/topull.md) | 28 | `declaration-track:d3f2e2455073d35fdc6ee027155554eb0e569ee6b48d00b00aa144a2e59e1b77` |
| 2 | `abbrev` | [PullM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PullFunDeclsNamespacedPublic.lean/declarations/pullm.md) | 37 | `declaration-track:0ab24039c3767dd31b912a490e62a739a81e21baff3f3e94f447d69f298fbc1e` |
| 3 | `def` | [findFVarDirectDeps](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PullFunDeclsNamespacedPublic.lean/declarations/findfvardirectdeps.md) | 44 | `declaration-track:9510df830ec24db760ee92011252f6f3d8e7c91ad69f54c7e262f78b7ec21096` |
| 4 | `def` | [findFVarDepsFixpoint](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PullFunDeclsNamespacedPublic.lean/declarations/findfvardepsfixpoint.md) | 61 | `declaration-track:bd7be6b46ba06459e82bfc8632b046a8a2b87405d724999342e7e3d6b9f66a03` |
| 5 | `def` | [findFVarDeps](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PullFunDeclsNamespacedPublic.lean/declarations/findfvardeps.md) | 69 | `declaration-track:cddad0d43f33e2d33ed7feb860162ec691e2f14295a75ef0dba3504d6ad57375` |
| 6 | `def` | [findParamsDeps](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PullFunDeclsNamespacedPublic.lean/declarations/findparamsdeps.md) | 77 | `declaration-track:5588bb61c636fb44ecafb360ef4172522aad37b71d242db0312f1ee0ed79a130` |
| 7 | `def` | [ToPull.attach](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PullFunDeclsNamespacedPublic.lean/declarations/topull-attach.md) | 86 | `declaration-track:a699bb6909eb790f066e6b038b62bfd89fbe4e5752ac209a3e97c97eac24d583` |
| 8 | `def` | [attach](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PullFunDeclsNamespacedPublic.lean/declarations/attach.md) | 95 | `declaration-track:80ca67e8d1d87cc8ad6f43624fc14a7305ef213e58dd788c4e3bf1e8f3c77087` |
| 9 | `def` | [attachFVarDeps](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PullFunDeclsNamespacedPublic.lean/declarations/attachfvardeps.md) | 122 | `declaration-track:b7b969120f00932263ae588def6da7cd2aa5c49aba0cab6c940e75140768f0fc` |
| 10 | `def` | [attachParamsDeps](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PullFunDeclsNamespacedPublic.lean/declarations/attachparamsdeps.md) | 130 | `declaration-track:21e75c0bac618543e34f732e81d3301a7a223a95d2c6f4699823674fee37d299` |
| 11 | `def` | [attachJps](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PullFunDeclsNamespacedPublic.lean/declarations/attachjps.md) | 134 | `declaration-track:2a2ea3979523c6140991c95b94ac568c9170f1560e980eb5d2d36107a59f0182` |
| 12 | `def` | [addToPull](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PullFunDeclsNamespacedPublic.lean/declarations/addtopull.md) | 144 | `declaration-track:d525fbe545faacca8f283161b3a1cfb805ca0c81e6bbc50d79eddceae90c5ad5` |
| 13 | `def` | [pull](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PullFunDeclsNamespacedPublic.lean/declarations/pull.md) | 159 | `declaration-track:1e2508898cd509ac0ea6470a70450430d90a184b3fda639423cecf390b9203f4` |
| 14 | `def` | [Decl.pullFunDecls](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PullFunDeclsNamespacedPublic.lean/declarations/decl-pullfundecls.md) | 186 | `declaration-track:c3f36f6780a7a31cae96704bf8c6058fe9200f09ad8c0773351020dc4bd9e971` |
| 15 | `def` | [pullFunDecls](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PullFunDeclsNamespacedPublic.lean/declarations/pullfundecls.md) | 191 | `declaration-track:1719cb928e9e55de675c32b555ebdd3601d123cd71e90ccbb9ba354cde56078a` |
| 16 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PullFunDeclsNamespacedPublic.lean/declarations/builtin-initialize.md) | 194 | `declaration-track:320c5196afeaeb5cddd80e3613dd0eb64c890fec261311ea6e4ab4f5a3798ab8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cec3783cf92cd752cb86d9a2062726ad39e4736e21c13825e68b578587cc06d0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PullFunDecls/Variant3057029e534112fe2649603b79f470285f5614248fa38541252d1db8c6020ea2.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PullFunDecls/Variant3057029e534112fe2649603b79f470285f5614248fa38541252d1db8c6020ea2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
