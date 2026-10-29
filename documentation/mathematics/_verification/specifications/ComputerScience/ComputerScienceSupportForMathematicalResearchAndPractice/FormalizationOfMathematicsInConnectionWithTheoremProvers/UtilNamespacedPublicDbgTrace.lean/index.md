# Verification target: Util Namespaced Public Dbg Trace

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6072fee3bcbd22210117b8268a5eeee1575cbf0e",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variante3dbf3fab068e2a651d8eba0a468e330afa11ca993d670d3c721f6706f06b1ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UtilNamespacedPublicDbgTrace.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UtilNamespacedPublicDbgTrace.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6072fee3bcbd22210117b8268a5eeee1575cbf0e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variante3dbf3fab068e2a651d8eba0a468e330afa11ca993d670d3c721f6706f06b1ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variante3dbf3fab068e2a651d8eba0a468e330afa11ca993d670d3c721f6706f06b1ba.lean.json)

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
| 1 | `def` | [dbgTrace](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UtilNamespacedPublicDbgTrace.lean/declarations/dbgtrace.md) | 27 | `declaration-track:0678ed9500dc8132bb5e2ba1e0a2c497c981943660e40a7e71e45a299bd5792d` |
| 2 | `def` | [dbgTraceVal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UtilNamespacedPublicDbgTrace.lean/declarations/dbgtraceval.md) | 29 | `declaration-track:ac56b577c8a71be5784ddd37d4781b06021261b8503ee3bac11ef665d1ee2f31` |
| 3 | `def` | [dbgTraceIfShared](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UtilNamespacedPublicDbgTrace.lean/declarations/dbgtraceifshared.md) | 35 | `declaration-track:414c2358ea5278fa08a34b3a0c8b5c82705fdede0d7c8d6488c14464ad790b64` |
| 4 | `def` | [dbgStackTrace](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UtilNamespacedPublicDbgTrace.lean/declarations/dbgstacktrace.md) | 39 | `declaration-track:c5a6e27cf8723d49e7e813e2c2831ad7bb7b0156b09797ba72f7b6011595a73d` |
| 5 | `def` | [dbgStackTraceIf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UtilNamespacedPublicDbgTrace.lean/declarations/dbgstacktraceif.md) | 46 | `declaration-track:0f29739103348dc0966e3d787469f4d15a3779f91a2343ce600819c8448320f1` |
| 6 | `def` | [dbgSleep](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UtilNamespacedPublicDbgTrace.lean/declarations/dbgsleep.md) | 50 | `declaration-track:67c921596cdbe823ef44a92ce192b0c677ca5b6016adba8d13aaf95786d49e53` |
| 7 | `def` | [mkPanicMessage](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UtilNamespacedPublicDbgTrace.lean/declarations/mkpanicmessage.md) | 52 | `declaration-track:bc4ac7747bbf8552736c83316a072257ad22275d750d27ea617aa1b8cf00a4c4` |
| 8 | `def` | [panicWithPos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UtilNamespacedPublicDbgTrace.lean/declarations/panicwithpos.md) | 67 | `declaration-track:0e03eac244fd4dbc46067df34c6622c565c7ad2ac07e5894ed3d8a430e7e75fd` |
| 9 | `def` | [mkPanicMessageWithDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UtilNamespacedPublicDbgTrace.lean/declarations/mkpanicmessagewithdecl.md) | 70 | `declaration-track:c64d6f9617d75eca86586f9cdd8ffba3ab8c8c236f2c1c716505d47675555190` |
| 10 | `def` | [panicWithPosWithDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UtilNamespacedPublicDbgTrace.lean/declarations/panicwithposwithdecl.md) | 89 | `declaration-track:d38a5706c7c1f6ac1a907ef628774b6e3b0be526690f2747e043718140e0991e` |
| 11 | `opaque` | [ptrAddrUnsafe](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UtilNamespacedPublicDbgTrace.lean/declarations/ptraddrunsafe.md) | 98 | `declaration-track:60bb26521321d1ce2e11e73c9b33e349abc7abf5fe72fec6fc817baafedbc314` |
| 12 | `opaque` | [isExclusiveUnsafe](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UtilNamespacedPublicDbgTrace.lean/declarations/isexclusiveunsafe.md) | 107 | `declaration-track:44d37c84d6fb5a5ceff592d4988c5a4e6175b39115c3bfc8afb4dd0a63a0d64d` |
| 13 | `def` | [withPtrAddrUnsafe](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UtilNamespacedPublicDbgTrace.lean/declarations/withptraddrunsafe.md) | 110 | `declaration-track:accea65bc5890be857486cc069d9ee124dce783fc4bb0f14b7b98e1b357c99b0` |
| 14 | `def` | [ptrEq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UtilNamespacedPublicDbgTrace.lean/declarations/ptreq.md) | 119 | `declaration-track:7ca473d441ffc947dc51167c2ae6f3f1f724aae9f8a7ff426dbf1002b2abbaf8` |
| 15 | `def` | [ptrEqList](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UtilNamespacedPublicDbgTrace.lean/declarations/ptreqlist.md) | 128 | `declaration-track:52e835ea2d29ef7ca75485d180594806c0d31a06079ad52f8bed7e528e90732b` |
| 16 | `def` | [withPtrEqUnsafe](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UtilNamespacedPublicDbgTrace.lean/declarations/withptrequnsafe.md) | 134 | `declaration-track:128a1688809fdb622db7ec7779bf326ec64255bc5aaee7dcd7b0a15ae9126e38` |
| 17 | `def` | [withPtrEq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UtilNamespacedPublicDbgTrace.lean/declarations/withptreq.md) | 138 | `declaration-track:ab194941b7f34b861cf18bc450ea9ebc46903e4ab5975864650aa3454ebf3ad5` |
| 18 | `def` | [withPtrEqDecEq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UtilNamespacedPublicDbgTrace.lean/declarations/withptreqdeceq.md) | 141 | `declaration-track:d8d36ee1c5ca5fc9a0339faf8c8aede8ed038b1eb197e2acda4a4fdba2734490` |
| 19 | `def` | [withPtrAddr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UtilNamespacedPublicDbgTrace.lean/declarations/withptraddr.md) | 148 | `declaration-track:8bf4215f1bfbefe91fe99a7c0f7af1b1ed92badb08d11bcd452eef494a2be8ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6b44be0dbad5c487f25f208a2ac9cb3f7f869a21516621a17212c3e13da5d22e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variante3dbf3fab068e2a651d8eba0a468e330afa11ca993d670d3c721f6706f06b1ba.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variante3dbf3fab068e2a651d8eba0a468e330afa11ca993d670d3c721f6706f06b1ba.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
