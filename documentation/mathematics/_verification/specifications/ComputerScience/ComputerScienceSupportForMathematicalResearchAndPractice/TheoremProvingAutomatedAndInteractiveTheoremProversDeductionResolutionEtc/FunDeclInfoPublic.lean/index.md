# Verification target: Fun Decl Info Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "86f65f77e7686c5a8040ead7e1689df80014fdc0",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunDeclInfo/Variantec24eb074cc0ee27d8e9f694f7c43426693518db4a22e4a247fd23ec6f6298fc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FunDeclInfoPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FunDeclInfoPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `86f65f77e7686c5a8040ead7e1689df80014fdc0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunDeclInfo/Variantec24eb074cc0ee27d8e9f694f7c43426693518db4a22e4a247fd23ec6f6298fc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunDeclInfo/Variantec24eb074cc0ee27d8e9f694f7c43426693518db4a22e4a247fd23ec6f6298fc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Format.Macro` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [FunDeclInfo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FunDeclInfoPublic.lean/declarations/fundeclinfo.md) | 25 | `declaration-track:3c244270c21e9b17778d5be872e9026f41f933e2aceaf0ab82ff1e79f1e60f5e` |
| 2 | `structure` | [FunDeclInfoMap](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FunDeclInfoPublic.lean/declarations/fundeclinfomap.md) | 44 | `declaration-track:376257ca01064650f15720a7fa0e27f6ad741057a3bc06a62acafb45207c567a` |
| 3 | `def` | [FunDeclInfoMap.format](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FunDeclInfoPublic.lean/declarations/fundeclinfomap-format.md) | 51 | `declaration-track:892151d406ce741c3d9bd0206993c5ebe57c4286029bbd46fdc971e779ec2b53` |
| 4 | `def` | [FunDeclInfoMap.add](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FunDeclInfoPublic.lean/declarations/fundeclinfomap-add.md) | 61 | `declaration-track:05c464be637bfeb789ee808b380bb4225d8bf0744b4a59885b320f1311094992` |
| 5 | `def` | [FunDeclInfoMap.addHo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FunDeclInfoPublic.lean/declarations/fundeclinfomap-addho.md) | 72 | `declaration-track:1ec353799ee728e1985faad86b713037179273cbdeda911355e410e785d26266` |
| 6 | `def` | [FunDeclInfoMap.addMustInline](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FunDeclInfoPublic.lean/declarations/fundeclinfomap-addmustinline.md) | 82 | `declaration-track:3ed86d207e6d9536277045c012fccd5d5ff44d2e60b5720006cae7f103d5a987` |
| 7 | `def` | [FunDeclInfoMap.restore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FunDeclInfoPublic.lean/declarations/fundeclinfomap-restore.md) | 86 | `declaration-track:a8618a9cdfe0df95b879c1f9214c7e54647e965b0255e294e7f6a120b1fdca87` |
| 8 | `def` | [FunDeclInfoMap.update](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FunDeclInfoPublic.lean/declarations/fundeclinfomap-update.md) | 98 | `declaration-track:064ff8cd35952100a7c36e82788ff9f7b9581f9e17f526e10627e52fdbc361b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2877a7082d1f75de097b2cc7091b88463b7618685d8ad0ebbf27b2454e5fb08f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunDeclInfo/Variantec24eb074cc0ee27d8e9f694f7c43426693518db4a22e4a247fd23ec6f6298fc.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunDeclInfo/Variantec24eb074cc0ee27d8e9f694f7c43426693518db4a22e4a247fd23ec6f6298fc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
