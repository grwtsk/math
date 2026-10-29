# Verification target: Transport Public Transport

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bce14c88bc79886f8b938e008b22c2a92c043957",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transport/Varianta67232785c58287032a97f6f668a24495f20894ee80051648de55490f5167f9b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TransportPublicTransport.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TransportPublicTransport.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bce14c88bc79886f8b938e008b22c2a92c043957`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transport/Varianta67232785c58287032a97f6f668a24495f20894ee80051648de55490f5167f9b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transport/Varianta67232785c58287032a97f6f668a24495f20894ee80051648de55490f5167f9b.lean.json)

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
| 1 | `class` | [Transport](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TransportPublicTransport.lean/declarations/transport.md) | 28 | `declaration-track:1855002800cf723c8a61b56e2e202801310efc1b0213d906ce79eea7a4429c44` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TransportPublicTransport.lean/declarations/instance.md) | 52 | `declaration-track:0863fb6896aafaf8e731f866ab4b96162e7555cd1f34f34d696d7faba1fd7760` |
| 3 | `structure` | [Mock.SharedState](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TransportPublicTransport.lean/declarations/mock-sharedstate.md) | 64 | `declaration-track:c4cf1867b62a3e23a537e40124411e25242e9b398bdd8c60283157e63230b251` |
| 4 | `structure` | [Mock.Client](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TransportPublicTransport.lean/declarations/mock-client.md) | 78 | `declaration-track:81928a4299a0e91bdb6d271d2d0f9e28f4fb72348d3e2fc5c9575f04bcc72304` |
| 5 | `structure` | [Mock.Server](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TransportPublicTransport.lean/declarations/mock-server.md) | 84 | `declaration-track:d14db65d473360d29e7d5a3cdacdec576277fa1d3babe61347dc714322feb835` |
| 6 | `def` | [new](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TransportPublicTransport.lean/declarations/new.md) | 93 | `declaration-track:4645a58ef04b846ba60922d740477252f01917759cdc1c33714f59ee7006f267` |
| 7 | `def` | [recvJoined](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TransportPublicTransport.lean/declarations/recvjoined.md) | 103 | `declaration-track:c87ea4792668e731c0f1c6ef2ae9f73b7ef24956db1d6a2ac0f6d4c1c2dc30a4` |
| 8 | `def` | [send](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TransportPublicTransport.lean/declarations/send-source-edition-3.md) | 120 | `declaration-track:ae2914d73f4c44b3113e0128e318d00ee3157bed1e94afac1704a9d46211d3cb` |
| 9 | `def` | [sendAll](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TransportPublicTransport.lean/declarations/sendall.md) | 126 | `declaration-track:abb0b13bad0e0aa220526892fd5c4c086b419396dcaefbd21d02e05d749a38e9` |
| 10 | `def` | [recvSelector](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TransportPublicTransport.lean/declarations/recvselector.md) | 133 | `declaration-track:6d455d1df3b06a27b3d76f3fd3efd4f7a62a024663b83f71eb47a05e813c2a28` |
| 11 | `def` | [getRecvChan](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TransportPublicTransport.lean/declarations/getrecvchan-source-edition-2.md) | 143 | `declaration-track:aec638c2049adbb7992a4af0b8a3de9dc49d29ec8224437c3fc2798ae06c46de` |
| 12 | `def` | [getSendChan](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TransportPublicTransport.lean/declarations/getsendchan-source-edition-2.md) | 149 | `declaration-track:ee7aa18eb161c2b8c359e59371a48a2e95040d2d7b79c67d559e13249f3e92b0` |
| 13 | `def` | [send](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TransportPublicTransport.lean/declarations/send-source-edition-2.md) | 155 | `declaration-track:ad928bfcd7b9033a5b576fc93271b98bb8425b5c5d0b5a54a6553baf0f11cf9c` |
| 14 | `def` | [recv?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TransportPublicTransport.lean/declarations/recv.md) | 161 | `declaration-track:bade70aa4f6ab1baf92a8fdc8f67130888c3962edda55785aa1155d043b7ab7c` |
| 15 | `def` | [tryRecv?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TransportPublicTransport.lean/declarations/tryrecv-source-edition-2.md) | 168 | `declaration-track:540a762b738176e63b944fdd14e861b54bf50a05427dfd94a6b703b1b9f6e364` |
| 16 | `def` | [close](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TransportPublicTransport.lean/declarations/close.md) | 182 | `declaration-track:1c5998af0838ccb4edb19f7dcf5ca797b96831912f3c1877312bb32f610efe08` |
| 17 | `def` | [getRecvChan](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TransportPublicTransport.lean/declarations/getrecvchan.md) | 193 | `declaration-track:7a3e74f8da225ae9ca3659dbd1acc0becca8cb090ab39f5726a0e1c999a57e86` |
| 18 | `def` | [getSendChan](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TransportPublicTransport.lean/declarations/getsendchan.md) | 199 | `declaration-track:8cedf46410bc1558aa84e1ef6852f1704f4295b987e6d7b8ca45a72f5e15e896` |
| 19 | `def` | [send](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TransportPublicTransport.lean/declarations/send.md) | 205 | `declaration-track:3a80753f499002abb5f71bd1219fedf26085b055ef101964dfefd7d0d2b7e238` |
| 20 | `def` | [recv?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TransportPublicTransport.lean/declarations/recv-source-edition-2.md) | 211 | `declaration-track:ed55457ef5c0ebbd1f31dc45287aae8300a9e9524498305c14d11b2a19676931` |
| 21 | `def` | [tryRecv?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TransportPublicTransport.lean/declarations/tryrecv.md) | 218 | `declaration-track:386b4467d6add5f7c60a42566502c541c0533233c39633424c30aa438d5afba6` |
| 22 | `def` | [close](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TransportPublicTransport.lean/declarations/close-source-edition-2.md) | 232 | `declaration-track:e2179d913c0e1acd1504726a0877f48119354904aa322c5712cc8ae7bd010120` |
| 23 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TransportPublicTransport.lean/declarations/instance-source-edition-2.md) | 239 | `declaration-track:6671150ebe9791d374fd39fec0c79577d4b6a2a94637898ee486832b48f801d8` |
| 24 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TransportPublicTransport.lean/declarations/instance-source-edition-3.md) | 245 | `declaration-track:b793267530632a5259ca9f54ff04b54e792a13cbc757c90b8daf7c77ecb8c53b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=82acca145cc1c43a76ce944b8bfbd60704f82dfdaa75c5672ef6505a76f10597 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transport/Varianta67232785c58287032a97f6f668a24495f20894ee80051648de55490f5167f9b.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transport/Varianta67232785c58287032a97f6f668a24495f20894ee80051648de55490f5167f9b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
