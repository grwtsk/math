# Json Rpc Namespaced Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**50 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JsonRpc/Variant4a746a47fd23b01071bb085742cdd5247d1946632f4f591b2430e3810e82c091.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `457765bf7baa7f06446bfcc010c9ceb5efcb1e9a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/JsonRpcNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [RequestID](declarations/requestid.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance-source-edition-18.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `inductive` | [ErrorCode](declarations/errorcode.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance-source-edition-17.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `inductive` | [Message](declarations/message.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [Batch](declarations/batch.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [Request](declarations/request.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [Request.ofMessage?](declarations/request-ofmessage.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [Notification](declarations/notification.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [Notification.ofMessage?](declarations/notification-ofmessage.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `structure` | [Response](declarations/response.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [(anonymous)](declarations/instance-source-edition-16.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [Response.ofMessage?](declarations/response-ofmessage.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `structure` | [ResponseError](declarations/responseerror.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [(anonymous)](declarations/instance.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [ResponseError.ofMessage?](declarations/responseerror-ofmessage.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [RequestID.lt](declarations/requestid-lt.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [RequestID.ltProp](declarations/requestid-ltprop.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [(anonymous)](declarations/instance-source-edition-13.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [(anonymous)](declarations/instance-source-edition-14.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [(anonymous)](declarations/instance-source-edition-15.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `inductive` | [MessageMetaData](declarations/messagemetadata.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [Message.metaData](declarations/message-metadata.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [MessageMetaData.toMessage](declarations/messagemetadata-tomessage.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [messageMetaDataParser](declarations/messagemetadataparser.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [parseMessageMetaData](declarations/parsemessagemetadata.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `inductive` | [MessageDirection](declarations/messagedirection.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `inductive` | [MessageKind](declarations/messagekind.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [MessageKind.ofMessage](declarations/messagekind-ofmessage.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [readMessage](declarations/readmessage.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [readRequestAs](declarations/readrequestas.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [readNotificationAs](declarations/readnotificationas.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [readResponseAs](declarations/readresponseas.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [writeMessage](declarations/writemessage.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [writeRequest](declarations/writerequest.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [writeNotification](declarations/writenotification.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [writeResponse](declarations/writeresponse.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [writeResponseError](declarations/writeresponseerror.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [writeResponseErrorWithData](declarations/writeresponseerrorwithdata.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=70a9af66dad1bdb300cce997c0dad454efffab647b8b55736b9ae4c61b8b6b31 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JsonRpc/Variant4a746a47fd23b01071bb085742cdd5247d1946632f4f591b2430e3810e82c091.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
