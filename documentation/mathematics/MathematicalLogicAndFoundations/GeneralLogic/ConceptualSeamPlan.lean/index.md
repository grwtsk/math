# Conceptual Seam Plan

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**38 observed declarations and anonymous commands**, 7 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalOrganization/ConceptualSeamPlan.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `59d2bb040d2b8f940c179c62a90a3cc343e8575c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/GeneralLogic/ConceptualSeamPlan.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [ByteSpan](declarations/bytespan.md) | 20 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [CoversFrom](declarations/coversfrom.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [CommandIdentity](declarations/commandidentity.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `inductive` | [DeclarationVisibility](declarations/declarationvisibility.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `inductive` | [DeclarationOriginKind](declarations/declarationoriginkind.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [DeclarationFingerprint](declarations/declarationfingerprint.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [DeclarationOrigin](declarations/declarationorigin.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [ContextState](declarations/contextstate.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [CommandUnit](declarations/commandunit.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `inductive` | [DependencyKind](declarations/dependencykind.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [DependencyKind.hard](declarations/dependencykind-hard.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [DependencyEdge](declarations/dependencyedge.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [ConceptualSlice](declarations/conceptualslice.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [ModuleDependency](declarations/moduledependency.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [AppearsBefore](declarations/appearsbefore.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [commandOrdinals](declarations/commandordinals.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [sliceCommandOrdinals](declarations/slicecommandordinals.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [SlicesCoverExactly](declarations/slicescoverexactly.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [declarationFingerprints](declarations/declarationfingerprints.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [CommandsCoLocated](declarations/commandscolocated.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [HardDependenciesCoLocated](declarations/harddependenciescolocated.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [MachineSlicesConservative](declarations/machineslicesconservative.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [PinnedSlicesStable](declarations/pinnedslicesstable.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `structure` | [SeamPlan](declarations/seamplan.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [SeamPlan.reconstructsExactBytes](declarations/seamplan-reconstructsexactbytes.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [SeamPlan.coversExactSourceRange](declarations/seamplan-coversexactsourcerange.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [SeamPlan.keepsHardDependenciesTogether](declarations/seamplan-keepsharddependenciestogether.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [SeamPlan.preservesPublicSignatures](declarations/seamplan-preservespublicsignatures.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [SeamPlan.preservesNotices](declarations/seamplan-preservesnotices.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [SeamPlan.ordersEveryResultDependency](declarations/seamplan-orderseveryresultdependency.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [SeamPlan.noMachineImplication](declarations/seamplan-nomachineimplication.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [spanZeroTwo](declarations/spanzerotwo.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [spanTwoThree](declarations/spantwothree.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [spanOneThree](declarations/spanonethree.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `example` | [(anonymous)](declarations/example.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `example` | [(anonymous)](declarations/example-source-edition-4.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `example` | [(anonymous)](declarations/example-source-edition-2.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `example` | [(anonymous)](declarations/example-source-edition-3.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=30a5f77f524698ae9a0666234f68ae95e0878ac3b78fe7c67fa1d60ec52a8ca9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalOrganization/ConceptualSeamPlan.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
