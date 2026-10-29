# Verification target: Print Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8bdbae57a80b5eb963b38beef630040a3f4c28ff",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Print/Variant459b4ecda77dc07c346b6cb48be0f8941c9aa30e2729ffb8f339f604052140a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrintPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrintPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8bdbae57a80b5eb963b38beef630040a3f4c28ff`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Print/Variant459b4ecda77dc07c346b6cb48be0f8941c9aa30e2729ffb8f339f604052140a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Print/Variant459b4ecda77dc07c346b6cb48be0f8941c9aa30e2729ffb8f339f604052140a3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.PrettyPrinter.Delaborator.Builtins` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [throwUnknownId](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrintPublic.lean/declarations/throwunknownid.md) | 14 | `declaration-track:cafa9bf9ea72946f92403b9c87c633b6da1131e0180ef9965e66c05773e1d468` |
| 2 | `def` | [levelParamsToMessageData](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrintPublic.lean/declarations/levelparamstomessagedata.md) | 17 | `declaration-track:6801a12dfa17e34749d507a651ae0ffa27be4f56f4263d460a1505eabf2233e3` |
| 3 | `def` | [mkHeader](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrintPublic.lean/declarations/mkheader.md) | 26 | `declaration-track:07dc3659d07b7533a806aa4c4a99206028488cdd3ed81644b9dc62bd8752fff2` |
| 4 | `def` | [mkOmittedMsg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrintPublic.lean/declarations/mkomittedmsg.md) | 71 | `declaration-track:363fa281fbed42c5e8e293800a8c6a3e8db55bf7035a1f209da1c1b3c251e98e` |
| 5 | `def` | [printAxiomLike](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrintPublic.lean/declarations/printaxiomlike.md) | 75 | `declaration-track:95f3ed1687e4968ddaf947749c154ea51930ed1fc1a00c13539c4622c1242ca8` |
| 6 | `def` | [printDefLike](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrintPublic.lean/declarations/printdeflike.md) | 78 | `declaration-track:731a98dc54f5551870b19a844aa0b70f6e1ce12deb1526ac4604703716ceb8ce` |
| 7 | `def` | [printQuot](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrintPublic.lean/declarations/printquot.md) | 86 | `declaration-track:b31d7ce1956c0daeb77903529bf98b87119dbf54c9a0c6099967df9013541cd8` |
| 8 | `def` | [printInduct](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrintPublic.lean/declarations/printinduct.md) | 89 | `declaration-track:d4cb62da0bb75861b9f4e3b6c88bc2338268f142b339d09297b581a282b04210` |
| 9 | `def` | [printRecursor](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrintPublic.lean/declarations/printrecursor.md) | 99 | `declaration-track:948e4e31ea1139618d5ad2f3c8a921e897b176799ea37ebe986e279930e93486` |
| 10 | `def` | [getFieldOrigin](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrintPublic.lean/declarations/getfieldorigin.md) | 116 | `declaration-track:34a007c94b4cec7b7cc52b339f5519240de2cd4aca31c9a76cb892be95a24065` |
| 11 | `def` | [printStructure](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrintPublic.lean/declarations/printstructure.md) | 126 | `declaration-track:237436d0473c4c5fee66cbc7336b3d2d8b8fa8a8ccc49c556ad0e7b6c58e3e96` |
| 12 | `def` | [printIdCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrintPublic.lean/declarations/printidcore.md) | 199 | `declaration-track:8a3123f10154d433dd9f962e4c7d9fb519350d047bdecf673c159d961ff3bb0a` |
| 13 | `def` | [printId](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrintPublic.lean/declarations/printid.md) | 220 | `declaration-track:ce55ba75514fa0b963362a9032aba0cae04432f08bbda4416fd09803735e5937` |
| 14 | `def` | [elabPrint](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrintPublic.lean/declarations/elabprint.md) | 225 | `declaration-track:be71abefc1b2bbb5554fd769d5fbfc27fa0998d68fe7de1479b18200db56c700` |
| 15 | `def` | [printIdSig](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrintPublic.lean/declarations/printidsig.md) | 230 | `declaration-track:c4a2ac7623887b78cb483bd359fdc6e11ec53cb9f3358332150d462e83c94a77` |
| 16 | `def` | [elabPrintSig](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrintPublic.lean/declarations/elabprintsig.md) | 235 | `declaration-track:6a3fd3728bbeec14213423df7b1ff0ffa3f0c6dbfe4a722b84a067de1f19478e` |
| 17 | `def` | [printAxiomsOf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrintPublic.lean/declarations/printaxiomsof.md) | 240 | `declaration-track:97631e2f656f47f625217fece53030d043ee6a65d979c87a7238bb34afb50be1` |
| 18 | `def` | [elabPrintAxioms](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrintPublic.lean/declarations/elabprintaxioms.md) | 247 | `declaration-track:7de2253b9d307d22a1beffe26a28adf1a9ad7b1fe24be90489e702567fc4a143` |
| 19 | `def` | [printEqnsOf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrintPublic.lean/declarations/printeqnsof.md) | 253 | `declaration-track:df4185db1b2603634e03c41cbff5693f4ef59ab2eda4d26fc33cc5692ace4106` |
| 20 | `def` | [elabPrintEqns](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrintPublic.lean/declarations/elabprinteqns.md) | 262 | `declaration-track:b82f9624ca9b0810e342304ca244f1acdbec81893dba108e13451cee7add3eff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d81c591ad863085e617383c18f404666adfedd0f5ffdb954ae4949754b3c7c15 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Print/Variant459b4ecda77dc07c346b6cb48be0f8941c9aa30e2729ffb8f339f604052140a3.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Print/Variant459b4ecda77dc07c346b6cb48be0f8941c9aa30e2729ffb8f339f604052140a3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
