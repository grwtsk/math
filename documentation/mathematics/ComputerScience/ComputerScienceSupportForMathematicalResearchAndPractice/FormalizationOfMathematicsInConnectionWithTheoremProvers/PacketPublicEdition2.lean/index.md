# Packet Public Edition2

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 2 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Packet/Variantb75a49321a53091aa521c25d4d0955598c1c48e495c93a32985579b519d9bee3.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8cfd0b4ffd352b7d42178e5fd21c932ad1c60ae2`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PacketPublicEdition2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [structuralPacketMagic](declarations/structuralpacketmagic.md) | 22 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [structuralPacketSchemaVersion](declarations/structuralpacketschemaversion.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [structuralPacketHeaderBytes](declarations/structuralpacketheaderbytes.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [structuralPacketDirectoryEntryBytes](declarations/structuralpacketdirectoryentrybytes.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [structuralPacketLittleEndianCode](declarations/structuralpacketlittleendiancode.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `inductive` | [SectionKind](declarations/sectionkind.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [SectionKind.code](declarations/sectionkind-code.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [SectionKind.ofCode?](declarations/sectionkind-ofcode.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [sectionKindCode_roundtrip](declarations/sectionkindcode-roundtrip.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [requiredSectionKindsV1](declarations/requiredsectionkindsv1.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [SectionDirectoryEntry](declarations/sectiondirectoryentry.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [SectionDirectoryEntry.Valid](declarations/sectiondirectoryentry-valid.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [sectionIntervalsDisjoint](declarations/sectionintervalsdisjoint.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [SectionsDisjoint](declarations/sectionsdisjoint.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [RequiredSectionsPresent](declarations/requiredsectionspresent.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `structure` | [StructuralPacketHeaderV1](declarations/structuralpacketheaderv1.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [StructuralPacketHeaderV1.Valid](declarations/structuralpacketheaderv1-valid.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `inductive` | [DiagnosticSeverity](declarations/diagnosticseverity.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `structure` | [DiagnosticRecord](declarations/diagnosticrecord.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [DiagnosticRecord.Valid](declarations/diagnosticrecord-valid.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [orderedForestEdgeCount](declarations/orderedforestedgecount.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `structure` | [StructuralPacketV1](declarations/structuralpacketv1.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [StructuralPacketV1.WellFormed](declarations/structuralpacketv1-wellformed.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [wellFormedPacket_projection_balanced](declarations/wellformedpacket-projection-balanced.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `structure` | [StructuralPacketLimits](declarations/structuralpacketlimits.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [OrderedSyntaxTree.depth](declarations/orderedsyntaxtree-depth.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [orderedForestDepth](declarations/orderedforestdepth.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [stringTableByteLength](declarations/stringtablebytelength.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [StructuralPacketV1.WithinLimits](declarations/structuralpacketv1-withinlimits.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `structure` | [CompletePacketDescriptor](declarations/completepacketdescriptor.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [CompletePacketDescriptor.Valid](declarations/completepacketdescriptor-valid.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [(anonymous)](declarations/instance.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `inductive` | [StructuralPublication](declarations/structuralpublication.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `inductive` | [PacketHashFramingV1](declarations/packethashframingv1.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1fed1b838d31875985a57e2e18c24369ac1fc53d51f1d329dea6a9274eb83df4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Packet/Variantb75a49321a53091aa521c25d4d0955598c1c48e495c93a32985579b519d9bee3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
