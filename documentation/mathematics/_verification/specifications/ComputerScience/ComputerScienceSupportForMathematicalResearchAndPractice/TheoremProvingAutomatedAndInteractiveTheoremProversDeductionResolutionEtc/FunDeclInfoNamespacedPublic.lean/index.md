# Verification target: Fun Decl Info Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c5d01e126905498351aded903c8fcc55fc405d5f",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunDeclInfo/Variant0b020b9b4b1ca75989bce785a8e446d13038c2602920ad1c8e425ce819a1cd29.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FunDeclInfoNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FunDeclInfoNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c5d01e126905498351aded903c8fcc55fc405d5f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunDeclInfo/Variant0b020b9b4b1ca75989bce785a8e446d13038c2602920ad1c8e425ce819a1cd29.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunDeclInfo/Variant0b020b9b4b1ca75989bce785a8e446d13038c2602920ad1c8e425ce819a1cd29.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Format.Macro` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [FunDeclInfo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FunDeclInfoNamespacedPublic.lean/declarations/fundeclinfo.md) | 33 | `declaration-track:1b40d9f8030921d80e6575d0e84cfb9bc14b8b6b906c94f9c7038b2ad647307c` |
| 2 | `structure` | [FunDeclInfoMap](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FunDeclInfoNamespacedPublic.lean/declarations/fundeclinfomap.md) | 52 | `declaration-track:e6f84f5fdf940d26240742fb3d2c08bea3df8b76b38fc58012dc7918ae44c904` |
| 3 | `def` | [FunDeclInfoMap.format](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FunDeclInfoNamespacedPublic.lean/declarations/fundeclinfomap-format.md) | 59 | `declaration-track:3591284a4dfa0bb04d768a01426bb559940d57bb80dc495fd222cb7ebc1c1dbc` |
| 4 | `def` | [FunDeclInfoMap.add](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FunDeclInfoNamespacedPublic.lean/declarations/fundeclinfomap-add.md) | 69 | `declaration-track:dbf0d467fe516afe279dd95afaf93a80e338dda37c152422c7f922381f3041c5` |
| 5 | `def` | [FunDeclInfoMap.addHo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FunDeclInfoNamespacedPublic.lean/declarations/fundeclinfomap-addho.md) | 80 | `declaration-track:04ff6213e21ff4b0b3cb4a07a4094beb27db444bc54d3cc38e96ccd0a4a25f20` |
| 6 | `def` | [FunDeclInfoMap.addMustInline](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FunDeclInfoNamespacedPublic.lean/declarations/fundeclinfomap-addmustinline.md) | 90 | `declaration-track:702c92889226191df9f8dc6eb7fb24d6cd3e73c773ad79670739cc70094efdd3` |
| 7 | `def` | [FunDeclInfoMap.restore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FunDeclInfoNamespacedPublic.lean/declarations/fundeclinfomap-restore.md) | 94 | `declaration-track:4d866eea50b42266379084083a2c4ef3bc8c873180f78bed1a8175b437ea8f0c` |
| 8 | `def` | [FunDeclInfoMap.update](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FunDeclInfoNamespacedPublic.lean/declarations/fundeclinfomap-update.md) | 106 | `declaration-track:662e5ea0ef6709700d1b17e220b9b12d487679ce7fff6ad2a9a524f4b9a2230e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d50ac516ff05a791a18bc98cae311d4cab9ea6caad3deab024f4cc80af35de95 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunDeclInfo/Variant0b020b9b4b1ca75989bce785a8e446d13038c2602920ad1c8e425ce819a1cd29.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunDeclInfo/Variant0b020b9b4b1ca75989bce785a8e446d13038c2602920ad1c8e425ce819a1cd29.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
