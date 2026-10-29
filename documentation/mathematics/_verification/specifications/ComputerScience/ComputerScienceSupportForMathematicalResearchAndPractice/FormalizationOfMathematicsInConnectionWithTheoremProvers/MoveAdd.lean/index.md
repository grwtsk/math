# Verification target: Move Add

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63ccf4c1db9ef137ffec4570852dff9e816b5ed0",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant1d38fc8cad2cb1efe226258092523d44a7d8d5db334ffd8e01cb2b34df6afffc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MoveAdd.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MoveAdd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63ccf4c1db9ef137ffec4570852dff9e816b5ed0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant1d38fc8cad2cb1efe226258092523d44a7d8d5db334ffd8e01cb2b34df6afffc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant1d38fc8cad2cb1efe226258092523d44a7d8d5db334ffd8e01cb2b34df6afffc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.MoveAdd` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Nat` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Basic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MoveAdd.lean/declarations/example-source-edition-6.md) | 13 | `declaration-track:5de21acb237fc0eec54c24d27924a06a87b73a3303ff023c4e2ac3a53cd7ab3a` |
| 2 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MoveAdd.lean/declarations/example-source-edition-5.md) | 17 | `declaration-track:362da08c5eccb21c5b49020a3da17ad377cc7f30e4e4637e5e10e44cf6bb4a37` |
| 3 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MoveAdd.lean/declarations/example-source-edition-20.md) | 21 | `declaration-track:fef12db0cabdcfaedef29885390dbe6d182a90b45cc26d22e08df131c53e30e8` |
| 4 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MoveAdd.lean/declarations/example-source-edition-7.md) | 24 | `declaration-track:5e74f70c8e054be947fb15d8d47e5ee50828c183b816c546568c5a15006ae113` |
| 5 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MoveAdd.lean/declarations/example-source-edition-14.md) | 28 | `declaration-track:b76de3be5836aeb7f5f76bb402b620156988b37980134c23cc2b0d65149ffe40` |
| 6 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MoveAdd.lean/declarations/example-source-edition-15.md) | 32 | `declaration-track:bd9527e7d8e77781696c565cd1b194a374c602b33b13ec034554c9fd756351e7` |
| 7 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MoveAdd.lean/declarations/example-source-edition-13.md) | 37 | `declaration-track:b0060a0f371b437d19c930cfdc2d1493735965a9b0116418053928e430d8cf88` |
| 8 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MoveAdd.lean/declarations/example.md) | 41 | `declaration-track:113aaaa45edfb9d30da46a4c413e6503f9c6f433462b47663fb24f05e95ceb4d` |
| 9 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MoveAdd.lean/declarations/example-source-edition-19.md) | 51 | `declaration-track:f9a4f0eac3d68f9ed05207de230cafdc5997b5bfec4dd07519dee627cf834ee6` |
| 10 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MoveAdd.lean/declarations/example-source-edition-8.md) | 60 | `declaration-track:60f98bce44a4eca573a8db7854bb77aeb7968be0f735a160449dc43eb9b6e563` |
| 11 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MoveAdd.lean/declarations/example-source-edition-17.md) | 64 | `declaration-track:cc753cbb8e72b1d0a89206d6c637e1d5e6a537b265d96cd2332dc28037650c52` |
| 12 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MoveAdd.lean/declarations/example-source-edition-2.md) | 69 | `declaration-track:15d22b565c5c5b120ecbd047c1731f75bc99fd1b895d4c059756d71c66723dab` |
| 13 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MoveAdd.lean/declarations/example-source-edition-16.md) | 74 | `declaration-track:c7e661736a210b228692b2f049d63ecf34ec86cd35eb4da03e2a6a60eb9be174` |
| 14 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MoveAdd.lean/declarations/example-source-edition-12.md) | 83 | `declaration-track:abe89944ee172989aaa186bc39b82cac3e137ea9b02a927278092878adb77183` |
| 15 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MoveAdd.lean/declarations/example-source-edition-10.md) | 87 | `declaration-track:70f22d2644b6d9fbec89212532e9c164cf30c234f45a120e9cc3287c8a50b8e5` |
| 16 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MoveAdd.lean/declarations/example-source-edition-11.md) | 91 | `declaration-track:a9103fde4a79021a238efb3f0c6c3ed609fff0931ab93658b9b9b693c06faadb` |
| 17 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MoveAdd.lean/declarations/example-source-edition-9.md) | 95 | `declaration-track:6c100a66d6d239a4d0a409934c469098b8cfed7d58f6f4d9bf766fbceddd6e90` |
| 18 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MoveAdd.lean/declarations/example-source-edition-4.md) | 102 | `declaration-track:22dfa2ba1eea99b539c90e64cb9c9e419d9872149e4e00ad84c830069ee5b57d` |
| 19 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MoveAdd.lean/declarations/example-source-edition-3.md) | 106 | `declaration-track:1eac42ab727a05e725b6790f4de569cb01ed47c4bdcc534ab766c02a95d084dc` |
| 20 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MoveAdd.lean/declarations/example-source-edition-18.md) | 112 | `declaration-track:d50b881cfd5242563d56ae48ca57b424c2a3d68900256c6a489dab73c33373fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=903dfba66d116d5f256a08f2d2e1200f5ef6eb479fb9383a420399fae9fe110b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant1d38fc8cad2cb1efe226258092523d44a7d8d5db334ffd8e01cb2b34df6afffc.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant1d38fc8cad2cb1efe226258092523d44a7d8d5db334ffd8e01cb2b34df6afffc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
