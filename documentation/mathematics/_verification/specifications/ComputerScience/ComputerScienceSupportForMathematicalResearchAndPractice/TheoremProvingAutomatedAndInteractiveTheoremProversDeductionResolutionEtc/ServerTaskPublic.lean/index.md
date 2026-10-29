# Verification target: Server Task Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a78c00ca31949683e87d180c1a89b579490f2b27",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ServerTask/Variant6b84e34959bb12b71b11ed2c03aeb7430a2b25412f94db33dc9a48ea16324a54.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ServerTaskPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ServerTaskPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a78c00ca31949683e87d180c1a89b579490f2b27`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ServerTask/Variant6b84e34959bb12b71b11ed2c03aeb7430a2b25412f94db33dc9a48ea16324a54.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ServerTask/Variant6b84e34959bb12b71b11ed2c03aeb7430a2b25412f94db33dc9a48ea16324a54.lean.json)

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
| 1 | `structure` | [ServerTask](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ServerTaskPublic.lean/declarations/servertask.md) | 45 | `declaration-track:f66446bc0878b602bd6f9d0269ee79c8b4b7c4f9a79d3428285cac75aefa16ed` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ServerTaskPublic.lean/declarations/instance.md) | 49 | `declaration-track:7bd0424fa594d64d3b5f88afafaf0f895da818d75940e77e340903c01c64fdc0` |
| 3 | `def` | [pure](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ServerTaskPublic.lean/declarations/pure.md) | 54 | `declaration-track:dc32434430f146938bf6588c11ffbdb203f820cc58775ed2001d484afec7d8cb` |
| 4 | `def` | [get](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ServerTaskPublic.lean/declarations/get.md) | 56 | `declaration-track:a70578346e9b5293ca634e8c766ee7158df47ae0db7597dee27604f27757d69d` |
| 5 | `def` | [wait](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ServerTaskPublic.lean/declarations/wait.md) | 58 | `declaration-track:0970cde1190d491f7cafd17f54652f55e36dd19879c84c6f044220d0339ab668` |
| 6 | `def` | [mapCheap](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ServerTaskPublic.lean/declarations/mapcheap.md) | 60 | `declaration-track:43a40f82ebfd144d23ceaa032b5c86f85662711e0c62d504f4ede4dc374c1e66` |
| 7 | `def` | [mapCostly](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ServerTaskPublic.lean/declarations/mapcostly.md) | 63 | `declaration-track:9086e58b658875140fed9d1a5ab82a2050a9c55e49f8fe6d8b081c4710817629` |
| 8 | `def` | [bindCheap](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ServerTaskPublic.lean/declarations/bindcheap.md) | 66 | `declaration-track:91f30f7a85cfd32509393b80dca85a77bcfb663ba564110a99482606d6b000a1` |
| 9 | `def` | [bindCostly](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ServerTaskPublic.lean/declarations/bindcostly.md) | 69 | `declaration-track:92470f07859f815242791934f83e5e92fc379b403b56e231ea3d3378f949030b` |
| 10 | `def` | [join](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ServerTaskPublic.lean/declarations/join.md) | 72 | `declaration-track:10c9b5e0f74a0eca16d0e0e743495f3173cbde9ff7fdfc31ccfa011300d183cf` |
| 11 | `def` | [asTask](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ServerTaskPublic.lean/declarations/astask.md) | 80 | `declaration-track:1cf6d87a27ba98e93b56c181fa61a42e7b68253939cfcd819c6af55a12585a38` |
| 12 | `def` | [mapTaskCheap](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ServerTaskPublic.lean/declarations/maptaskcheap.md) | 83 | `declaration-track:804e24d2715eb81b5920133972d6cc24c2d186a9c38bea5dd96401a847b9d49b` |
| 13 | `def` | [mapTaskCostly](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ServerTaskPublic.lean/declarations/maptaskcostly-source-edition-3.md) | 86 | `declaration-track:e781eb34d8790bb2f0bfe0cfa66c089bf3a7e38f6da2daecd6b12a327626425c` |
| 14 | `def` | [bindTaskCheap](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ServerTaskPublic.lean/declarations/bindtaskcheap-source-edition-2.md) | 89 | `declaration-track:1e00d755eb79d98a57588a4e3b4839e577bc3684c86adcaf43ea572418c14a11` |
| 15 | `def` | [bindTaskCostly](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ServerTaskPublic.lean/declarations/bindtaskcostly-source-edition-2.md) | 92 | `declaration-track:6c906ae87f7ae19092551fd1d35b931894edccbdca29c67736c1bb964ce4d3d8` |
| 16 | `def` | [asTask](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ServerTaskPublic.lean/declarations/astask-source-edition-2.md) | 99 | `declaration-track:d94d2a813036a73c6ea10e99457610428a308b6d71a070468233dcf27bb62553` |
| 17 | `def` | [mapTaskCheap](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ServerTaskPublic.lean/declarations/maptaskcheap-source-edition-2.md) | 102 | `declaration-track:96dddf48a4fff130701c185f80839c2189cd900dd52adf34874a5023c8f9594a` |
| 18 | `def` | [mapTaskCostly](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ServerTaskPublic.lean/declarations/maptaskcostly.md) | 105 | `declaration-track:8313f790b6b22c835079eea0671d78793bcb85ec5cfbb603d3ab3fba80f22d47` |
| 19 | `def` | [bindTaskCheap](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ServerTaskPublic.lean/declarations/bindtaskcheap-source-edition-3.md) | 108 | `declaration-track:46ef7a02d8713276d0570f694afbb183cc3603d914bc85b5682e2d4c485520f2` |
| 20 | `def` | [bindTaskCostly](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ServerTaskPublic.lean/declarations/bindtaskcostly-source-edition-3.md) | 111 | `declaration-track:6cc7626c1f949e6c156c50c220b92eb2e223c05f14c572340c3845b8024ceae0` |
| 21 | `def` | [asTask](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ServerTaskPublic.lean/declarations/astask-source-edition-3.md) | 118 | `declaration-track:e8df37c8ee10000e2eba3476c02c03a59480f84041e5012d219813443e674213` |
| 22 | `def` | [mapTaskCheap](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ServerTaskPublic.lean/declarations/maptaskcheap-source-edition-3.md) | 121 | `declaration-track:975ecf1e23f71d4b63c530fa7d3dd29b7b1190de8f9d560020b79d1c86d76b6e` |
| 23 | `def` | [mapTaskCostly](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ServerTaskPublic.lean/declarations/maptaskcostly-source-edition-2.md) | 124 | `declaration-track:d88fe25041a5e3ed96aaf3afe7f90183209da7d69a0004a52b0d31e8149b94ac` |
| 24 | `def` | [bindTaskCheap](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ServerTaskPublic.lean/declarations/bindtaskcheap.md) | 127 | `declaration-track:11049a3526f4ff14922d3efb748aad393830642e5343760f0f40ad4afb9698be` |
| 25 | `def` | [bindTaskCostly](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ServerTaskPublic.lean/declarations/bindtaskcostly.md) | 130 | `declaration-track:01968af9342a562937b9906c2447288e8e6414d1d712970212cabcedfaa956f2` |
| 26 | `def` | [hasFinished](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ServerTaskPublic.lean/declarations/hasfinished.md) | 135 | `declaration-track:b3565621ee0e163918a120f9f211c355e7fb9cd5c9407aabb257bd82d6b54e88` |
| 27 | `def` | [waitAny](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ServerTaskPublic.lean/declarations/waitany.md) | 138 | `declaration-track:670dc4912942d5238d011c0f9df79c7a78f6fb99e4d8b3456082b6c877435b99` |
| 28 | `def` | [cancel](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ServerTaskPublic.lean/declarations/cancel.md) | 144 | `declaration-track:a9e5accab3c6ad385cfe101008f28920eff3a68d32fc7b6e890d105a186e9c3f` |
| 29 | `def` | [Lean.Task.asServerTask](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ServerTaskPublic.lean/declarations/lean-task-asservertask.md) | 149 | `declaration-track:c9375539b1f48a71c1cb51b5da787211a45395b2a09995dd32699c2cbcb30685` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7e63a4164a58d523ef403565fc7746ed0190c33e7200d026a60acf27c5247962 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ServerTask/Variant6b84e34959bb12b71b11ed2c03aeb7430a2b25412f94db33dc9a48ea16324a54.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ServerTask/Variant6b84e34959bb12b71b11ed2c03aeb7430a2b25412f94db33dc9a48ea16324a54.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
