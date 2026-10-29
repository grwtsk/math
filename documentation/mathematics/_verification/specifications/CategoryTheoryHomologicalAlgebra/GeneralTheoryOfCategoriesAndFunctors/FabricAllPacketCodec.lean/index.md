# Verification target: Fabric All Packet Codec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec493229154c66251eca768b95d7210a336170ad",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fabric/Variantc67b543f1780223fa05287ab2b5542786cd167d4765224bbd5846f2abed50f56.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FabricAllPacketCodec.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FabricAllPacketCodec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec493229154c66251eca768b95d7210a336170ad`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fabric/Variantc67b543f1780223fa05287ab2b5542786cd167d4765224bbd5846f2abed50f56.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Fabric/Variantc67b543f1780223fa05287ab2b5542786cd167d4765224bbd5846f2abed50f56.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FilesystemCodec.Codec` — import line 1; external provider; requires a separately pinned dependency.
- `DAF.Fabric.Core` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [allPacketCodec](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FabricAllPacketCodec.lean/declarations/allpacketcodec.md) | 20 | `declaration-track:8ecf206228c385f460e5b584203b2021e9f4a2119f53d6d57c42480881daa646` |
| 2 | `theorem` | [allPacketCodec_valid](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FabricAllPacketCodec.lean/declarations/allpacketcodec-valid.md) | 27 | `result-track:78e88bb8c7fa7d50f887d8abf40b183805257a6c70a9418f87d903ef0e933685` |
| 3 | `def` | [fullPacketSystem](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FabricAllPacketCodec.lean/declarations/fullpacketsystem.md) | 32 | `declaration-track:7b7261800558423098e2fa78811c35af5c2c7ca6e7ec54bc2d066080a3f1b875` |
| 4 | `def` | [payloadLengthSystem](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FabricAllPacketCodec.lean/declarations/payloadlengthsystem.md) | 42 | `declaration-track:aeb15e347bfd45615c77a7f7cf56938d24dcda07cc9a87fd85d8f8a8ab195439` |
| 5 | `def` | [variableMatrixSystem](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FabricAllPacketCodec.lean/declarations/variablematrixsystem.md) | 51 | `declaration-track:e49dc9b3b82c62c458320a171ee1ab53cb5617910ce0cb2d72cc1baff994402b` |
| 6 | `def` | [fullPacketPresentation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FabricAllPacketCodec.lean/declarations/fullpacketpresentation.md) | 60 | `declaration-track:3b8dd38c7c7786b3977b283947bd20407587d3cd11d21e0365b648d775a86aa2` |
| 7 | `def` | [payloadLengthPresentation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FabricAllPacketCodec.lean/declarations/payloadlengthpresentation.md) | 69 | `declaration-track:9e4d5dcbfcd03e2d7607d2afdcd8979badf1d0d5d563add5193c9aa0ebfb9d9a` |
| 8 | `def` | [matrixPresentation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FabricAllPacketCodec.lean/declarations/matrixpresentation.md) | 77 | `declaration-track:10bdbf2666ac1dc18e091f7938c4688c0a833da5a17a3158e2d8e2515c4e4b74` |
| 9 | `def` | [payloadLengthContract](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FabricAllPacketCodec.lean/declarations/payloadlengthcontract.md) | 85 | `declaration-track:fee442822354db395f61b47c9242776ffe9ebe0b42a73bd68ae4a6b4a7dc1bcb` |
| 10 | `def` | [matrixContract](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FabricAllPacketCodec.lean/declarations/matrixcontract.md) | 98 | `declaration-track:1780062a2e1a59357cab48ab106bd67122817ed9c6a1f9518f99f7f13c8c387f` |
| 11 | `def` | [fullPacketContract](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FabricAllPacketCodec.lean/declarations/fullpacketcontract.md) | 111 | `declaration-track:32594eef7593eee4100b85d25b26ee7c6104b5d106882832d84a04e4a359eae7` |
| 12 | `def` | [constantPacketShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FabricAllPacketCodec.lean/declarations/constantpacketshape.md) | 118 | `declaration-track:145d6df45cb1b052a0701dcf66dcfa3ee6ea078753549e97ec9cb54d9229ee58` |
| 13 | `def` | [validPacketFabric](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FabricAllPacketCodec.lean/declarations/validpacketfabric.md) | 122 | `declaration-track:c5110b52d44959e1cdde66a5714a62b802c9c63208a9e32e96e6ca4ca98a63c0` |
| 14 | `theorem` | [fullPacket_distinguishes_matrixOnly](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FabricAllPacketCodec.lean/declarations/fullpacket-distinguishes-matrixonly.md) | 136 | `result-track:04c4aeb02067a5df533e49935902e578843e5ca2da8c01002f48347c476a0888` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d2dd2c4e212a98db2dc54b20f63733161679a5ff4c19b6b67d168f71d38ad7b6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fabric/Variantc67b543f1780223fa05287ab2b5542786cd167d4765224bbd5846f2abed50f56.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Fabric/Variantc67b543f1780223fa05287ab2b5542786cd167d4765224bbd5846f2abed50f56.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
