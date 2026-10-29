# Verification target: Share Common Public Object Factory

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d64141f8e6e026170f0fa4089e0cd2e43f9d47bb",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShareCommon/Variant01dfaccfb5fb7aa3ed4990bd9c94420af0b6cbedd9bc7e02f879dfa6c916d8c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ShareCommonPublicObjectFactory.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ShareCommonPublicObjectFactory.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d64141f8e6e026170f0fa4089e0cd2e43f9d47bb`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShareCommon/Variant01dfaccfb5fb7aa3ed4990bd9c94420af0b6cbedd9bc7e02f879dfa6c916d8c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShareCommon/Variant01dfaccfb5fb7aa3ed4990bd9c94420af0b6cbedd9bc7e02f879dfa6c916d8c8.lean.json)

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
| 1 | `def` | [objectFactory](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ShareCommonPublicObjectFactory.lean/declarations/objectfactory.md) | 18 | `declaration-track:0a541f8ebc7ee66a08c63efbccac203a09f2b4f15f6d20cec649a92d7868dea7` |
| 2 | `def` | [persistentObjectFactory](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ShareCommonPublicObjectFactory.lean/declarations/persistentobjectfactory.md) | 24 | `declaration-track:79fe2bba89ba9b68d5385e0ffb73d8a95982d8b3a593bcf864c384a50b8ce51e` |
| 3 | `abbrev` | [ShareCommonT](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ShareCommonPublicObjectFactory.lean/declarations/sharecommont.md) | 30 | `declaration-track:930217bd26cf78718b3e4bc1e81e17c9d5edb222d88f5c2c40d50a2b8708dc5c` |
| 4 | `abbrev` | [PShareCommonT](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ShareCommonPublicObjectFactory.lean/declarations/psharecommont.md) | 31 | `declaration-track:ec99b180e43e26595ad16df90d4ff9de58f265337e2c756b4c05ab2267e17301` |
| 5 | `abbrev` | [ShareCommonM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ShareCommonPublicObjectFactory.lean/declarations/sharecommonm.md) | 32 | `declaration-track:314c0141c8807e61c618be411aef268a69e3e976cbf7b6d6f0653bde98671325` |
| 6 | `abbrev` | [PShareCommonM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ShareCommonPublicObjectFactory.lean/declarations/psharecommonm.md) | 33 | `declaration-track:881fd57fd919a3af2d56d61f64bc968980bee019c598bcd6cdd70c04a3962b6a` |
| 7 | `def` | [ShareCommonT.withShareCommon](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ShareCommonPublicObjectFactory.lean/declarations/sharecommont-withsharecommon.md) | 35 | `declaration-track:4b7103fad189f4b3b688be6eb5c6a3dc87789a9ae72d46ced187c0105d8fab77` |
| 8 | `def` | [PShareCommonT.withShareCommon](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ShareCommonPublicObjectFactory.lean/declarations/psharecommont-withsharecommon.md) | 38 | `declaration-track:11ee2aae25692130d8da5f98d7e1fc308ee7d1595c0114e74da4f6b621168fa9` |
| 9 | `instance` | [ShareCommonT.monadShareCommon](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ShareCommonPublicObjectFactory.lean/declarations/sharecommont-monadsharecommon.md) | 41 | `declaration-track:420668e9f4ad6b20e8a908df7d9327a56d1b9337eba6ce16223ff0456ccfc4c1` |
| 10 | `instance` | [PShareCommonT.monadShareCommon](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ShareCommonPublicObjectFactory.lean/declarations/psharecommont-monadsharecommon.md) | 44 | `declaration-track:e51119e02f2ee6a08c39bc5adef4bc8478d04ecd871ccd8ead3a0cf1a016a033` |
| 11 | `def` | [ShareCommonT.run](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ShareCommonPublicObjectFactory.lean/declarations/sharecommont-run.md) | 47 | `declaration-track:7bfbe9f03e72915133b65919cdc5431a41efe3d5bbee9a27878bbc8370c020e3` |
| 12 | `def` | [PShareCommonT.run](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ShareCommonPublicObjectFactory.lean/declarations/psharecommont-run.md) | 48 | `declaration-track:5e237f78d592829c4403c41c3f649dbe89bd7fe9ae181d87b48e1984487a725b` |
| 13 | `def` | [ShareCommonM.run](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ShareCommonPublicObjectFactory.lean/declarations/sharecommonm-run.md) | 49 | `declaration-track:c5c57fa8cfad1e6561cee845248807d2a026e4f631ed8664658367c05978f544` |
| 14 | `def` | [PShareCommonM.run](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ShareCommonPublicObjectFactory.lean/declarations/psharecommonm-run.md) | 50 | `declaration-track:bb6d4141cb365ee38636f0968d42aee6ecc64b1417f6576f2bff32a5d8a4fdba` |
| 15 | `def` | [shareCommon](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ShareCommonPublicObjectFactory.lean/declarations/sharecommon.md) | 52 | `declaration-track:64c97cd6074cda784f6a86634bd6533abd18716b56bc37082803cfed944bd4b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e24768d1fd9b1d8ade87d04911b51b73c8b3d312eb98eed7a6f3e2c5c49e0a66 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShareCommon/Variant01dfaccfb5fb7aa3ed4990bd9c94420af0b6cbedd9bc7e02f879dfa6c916d8c8.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShareCommon/Variant01dfaccfb5fb7aa3ed4990bd9c94420af0b6cbedd9bc7e02f879dfa6c916d8c8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
