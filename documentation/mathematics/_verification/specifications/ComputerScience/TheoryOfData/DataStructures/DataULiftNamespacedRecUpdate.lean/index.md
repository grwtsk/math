# Verification target: Data ULift Namespaced Rec Update

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5a4b424e7bb7871226a7e4d677678db86faa3f5",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ULift/Variantce019e326fb568fdfe2ed5746f464dfb91c088a718123108329ba6123ab8ca84.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedRecUpdate.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedRecUpdate.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5a4b424e7bb7871226a7e4d677678db86faa3f5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ULift/Variantce019e326fb568fdfe2ed5746f464dfb91c088a718123108329ba6123ab8ca84.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/ULift/Variantce019e326fb568fdfe2ed5746f464dfb91c088a718123108329ba6123ab8ca84.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.ULift` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedRecUpdate.lean/declarations/instance-source-edition-5.md) | 33 | `declaration-track:3a117ff083c42fea7b7ee423ea8776982735f32b9cf36919114683fc86735318` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedRecUpdate.lean/declarations/instance-source-edition-4.md) | 36 | `declaration-track:1dede31a61d4a118127feb03ae4a4992430c28ef8adf7a2d67dfc967ade2f11d` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedRecUpdate.lean/declarations/instance-source-edition-3.md) | 39 | `declaration-track:1d07537cc515aaa95dcbc64a4ace05b8264e9a2b4bea49f122f6b5af2b1ee729` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedRecUpdate.lean/declarations/instance-source-edition-10.md) | 42 | `declaration-track:a7c411688636a16b5ee5d0d71bd7283dfde82d6737479f8601960b90e488851f` |
| 5 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedRecUpdate.lean/declarations/instance-source-edition-6.md) | 45 | `declaration-track:417ec21563f11528a22096225674e8ffb23f727f3fbee591a4bd11d0f5827b33` |
| 6 | `theorem` | [up_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedRecUpdate.lean/declarations/up-injective.md) | 48 | `result-track:6d62c6e737e252856f8b366557bb2cfac092e336038015a34f0c66214dbe4d31` |
| 7 | `theorem` | [up_surjective](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedRecUpdate.lean/declarations/up-surjective.md) | 51 | `result-track:6289e65f0965327e4cd877e35d8bb3f997360db6c191ae7da6a95137e69d5746` |
| 8 | `theorem` | [up_bijective](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedRecUpdate.lean/declarations/up-bijective.md) | 54 | `result-track:ae03ac8e65bcccd1a0f2f65ceb223463da3c9ece8b6253825923bab108efd97d` |
| 9 | `theorem` | [up_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedRecUpdate.lean/declarations/up-inj.md) | 57 | `result-track:166341fe4497445f3f513a1f8ce507c41303fc185b86996aab0331b4a11ba4cd` |
| 10 | `theorem` | [down_surjective](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedRecUpdate.lean/declarations/down-surjective.md) | 59 | `result-track:0ef531b336b786b68e95df23fed815b3718ff6cc3a7913d68e473da43b563b56` |
| 11 | `theorem` | [down_bijective](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedRecUpdate.lean/declarations/down-bijective.md) | 62 | `result-track:8f3eaf5c4c1ca7d25c2158a7c343f5d31844966d391beaa6a801f012292f21a0` |
| 12 | `theorem` | [«forall»](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedRecUpdate.lean/declarations/forall-source-edition-2.md) | 66 | `result-track:ac48421b11242f6f8458c4bfb32b16123dd47721119f7461da8379a74d0b1f84` |
| 13 | `theorem` | [«exists»](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedRecUpdate.lean/declarations/exists-source-edition-2.md) | 70 | `result-track:f686778bcf65e402f5a72a33e54ec8cad67dae0de260d3529109c6ddb0776806` |
| 14 | `lemma` | [map_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedRecUpdate.lean/declarations/map-injective.md) | 73 | `result-track:0d86bb2c1aa83ecd0623ae455679fc84a8475d8e5911664649eab3502f887a5e` |
| 15 | `lemma` | [map_surjective](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedRecUpdate.lean/declarations/map-surjective.md) | 76 | `result-track:a51f30a70001e744524f9a41ca7da7e89d805fe4040679c12e4dd6de38f01555` |
| 16 | `lemma` | [map_bijective](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedRecUpdate.lean/declarations/map-bijective.md) | 79 | `result-track:0a400cdd8c3c26660d99eb3c41ebb8b21a51f68b5847a5a5a039c51618f12664` |
| 17 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedRecUpdate.lean/declarations/instance-source-edition-2.md) | 88 | `declaration-track:0e78bcb0002c735e37775d2e4308527f6e0d1fdcf69ee338a8fdefe938fd5386` |
| 18 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedRecUpdate.lean/declarations/instance.md) | 91 | `declaration-track:04d304fd16d8b25fadd77669d96fcbb21e644af4e5d05360f1f94ca8ce278368` |
| 19 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedRecUpdate.lean/declarations/instance-source-edition-7.md) | 94 | `declaration-track:63ca1b773438748311f036ccaf9c4d86950badca9bbfc9f8584b19333218267e` |
| 20 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedRecUpdate.lean/declarations/instance-source-edition-8.md) | 97 | `declaration-track:6d5c008c28270fdd9a9505e9a850b6067efb7e199a353ccdfd5e7854603a791c` |
| 21 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedRecUpdate.lean/declarations/instance-source-edition-9.md) | 100 | `declaration-track:7f524a2a3a8ff27e8f3a4a8cfd098e149ddc484f4d9990dbfc507d0d8baefa76` |
| 22 | `theorem` | [up_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedRecUpdate.lean/declarations/up-injective-source-edition-2.md) | 103 | `result-track:86d21cdf1f7c5abb3e2bb7571971fd134068717d798e16c24d1b237282deb92a` |
| 23 | `theorem` | [up_surjective](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedRecUpdate.lean/declarations/up-surjective-source-edition-2.md) | 106 | `result-track:d75cec6dfcee3b58b231ebb3d98476c785861ae28f6fb0122c759db81ab56a15` |
| 24 | `theorem` | [up_bijective](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedRecUpdate.lean/declarations/up-bijective-source-edition-2.md) | 109 | `result-track:d7d452abdde37952ff328ab8547433065fe7caad5687622e5f4ee5042149712f` |
| 25 | `theorem` | [up_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedRecUpdate.lean/declarations/up-inj-source-edition-2.md) | 112 | `result-track:471c2323e2c7a24838b1b0c49577842666c79498f58598f57b05ca71ec76311d` |
| 26 | `theorem` | [down_surjective](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedRecUpdate.lean/declarations/down-surjective-source-edition-2.md) | 114 | `result-track:c098172069e0624c7abd91c18ed3ad78b3bf5ec9265d96db8838376f5ef1c644` |
| 27 | `theorem` | [down_bijective](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedRecUpdate.lean/declarations/down-bijective-source-edition-2.md) | 117 | `result-track:afc6da9a39b4cb4501dcbf8a39e1fa959923fbf9633737456ec061f20b2a02bb` |
| 28 | `theorem` | [«forall»](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedRecUpdate.lean/declarations/forall.md) | 121 | `result-track:618b5c321ddfd38bc877d94ca800732e8f5f9c72c3938ea2d770ee925834d3c7` |
| 29 | `theorem` | [«exists»](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedRecUpdate.lean/declarations/exists.md) | 125 | `result-track:18842b4706ab0a1a88493ae8c56708a97b099eef2ab3f1df7129879708944834` |
| 30 | `lemma` | [map_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedRecUpdate.lean/declarations/map-injective-source-edition-2.md) | 128 | `result-track:da1a57123c3d1442f9710897df4add20504152d09735ecb379256a34389dcdc6` |
| 31 | `lemma` | [map_surjective](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedRecUpdate.lean/declarations/map-surjective-source-edition-2.md) | 131 | `result-track:f7c1b10e044c91917c702fb4b4b67e0af8cc4df3ddcde08c678a4013864f230e` |
| 32 | `lemma` | [map_bijective](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedRecUpdate.lean/declarations/map-bijective-source-edition-2.md) | 135 | `result-track:d2f4a21cd361aa4024d831d246b6ac6f769e7b5638c62a0927f933eb8ebae114` |
| 33 | `theorem` | [ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedRecUpdate.lean/declarations/ext.md) | 139 | `result-track:639ac95f38ed5fb43cc360f35c4a9b005a7ad585a2f447c311d26b14bb78c242` |
| 34 | `lemma` | [rec_update](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataULiftNamespacedRecUpdate.lean/declarations/rec-update.md) | 143 | `result-track:18c7df2f31d4b6145f297271e2d82f0858f8bbe22afe4c771416d77980cc7fe9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9b6b9fb5de01a117324ceb379d13a84468ee7b259e0b88485a0d7abf9759cb61 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ULift/Variantce019e326fb568fdfe2ed5746f464dfb91c088a718123108329ba6123ab8ca84.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/ULift/Variantce019e326fb568fdfe2ed5746f464dfb91c088a718123108329ba6123ab8ca84.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
