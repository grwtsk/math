# Surface XYZConformance Main

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**61 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceXYZConformanceMain/Variant98c761902e27ec5aa0ba96437d9325627eef7c840c321447ec7021e4202aeccf.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1a36fc46521ea4828cca3d6fb26bcef5c13d64d9`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SurfaceXYZConformanceMain.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [requestSchema](declarations/requestschema.md) | 20 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [responseSchema](declarations/responseschema.md) | 21 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [observedSchema](declarations/observedschema.md) | 22 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [protocolVersion](declarations/protocolversion.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [maxRequestBytes](declarations/maxrequestbytes.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [maxRequestIdBytes](declarations/maxrequestidbytes.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [maxDecimalBytes](declarations/maxdecimalbytes.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [Request](declarations/request.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [WireRevisionedXYZ](declarations/wirerevisionedxyz.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [jsonArray](declarations/jsonarray.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [stringArray](declarations/stringarray.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [exactObjectKeys](declarations/exactobjectkeys.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [stringField](declarations/stringfield.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [natField](declarations/natfield.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [canonicalNatString](declarations/canonicalnatstring.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [canonicalIntString](declarations/canonicalintstring.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [decimalNatField](declarations/decimalnatfield.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [decimalIntField](declarations/decimalintfield.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [parseWireRevisionedXYZ](declarations/parsewirerevisionedxyz.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [parseRequest](declarations/parserequest.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [successResponse](declarations/successresponse.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [failureResponse](declarations/failureresponse.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [revisionedJson](declarations/revisionedjson.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [typedRevisionedXYZ](declarations/typedrevisionedxyz.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [rawClassification](declarations/rawclassification.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [routeJson](declarations/routejson.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [expectedUpdateJson](declarations/expectedupdatejson.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [checkConcreteCertificateJson](declarations/checkconcretecertificatejson.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [dispatch](declarations/dispatch.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [processRequest](declarations/processrequest.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [routeObservationJson](declarations/routeobservationjson.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [validUpdateObservationJson](declarations/validupdateobservationjson.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [invalidUpdateObservationJson](declarations/invalidupdateobservationjson.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [proposalRejectionCode](declarations/proposalrejectioncode.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [proposalObservationJson](declarations/proposalobservationjson.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [observeProposal](declarations/observeproposal.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [zeroTieBreakContract](declarations/zerotiebreakcontract.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [invalidSchemaProposal](declarations/invalidschemaproposal.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [invalidFramingHash](declarations/invalidframinghash.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [invalidFramingProposal](declarations/invalidframingproposal.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [fabricatedSnapshotHash](declarations/fabricatedsnapshothash.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [fabricatedSnapshotHashProposal](declarations/fabricatedsnapshothashproposal.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [invalidAlgorithmProposal](declarations/invalidalgorithmproposal.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [endpointMismatchProposal](declarations/endpointmismatchproposal.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [revisionOutOfRangeProposal](declarations/revisionoutofrangeproposal.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [channelOutOfRangeProposal](declarations/channeloutofrangeproposal.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [sourceMismatchProposal](declarations/sourcemismatchproposal.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [invalidInvariantXYZ](declarations/invalidinvariantxyz.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [invalidInvariantSnapshot](declarations/invalidinvariantsnapshot.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [invalidInvariantProposal](declarations/invalidinvariantproposal.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [goldenStaleRegister](declarations/goldenstaleregister.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [routeObservations](declarations/routeobservations.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [updateObservations](declarations/updateobservations.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [proposalObservations](declarations/proposalobservations.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [nonclaims](declarations/nonclaims.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [leanObservedCorpus](declarations/leanobservedcorpus.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [emitCorpus](declarations/emitcorpus.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [processFile](declarations/processfile.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [processStdin](declarations/processstdin.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [main](declarations/main-source-edition-2.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [main](declarations/main.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1acb30095c2dd6fd66cfef03adfb056589343870bd269783a38a3bfbe0f40c80 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceXYZConformanceMain/Variant98c761902e27ec5aa0ba96437d9325627eef7c840c321447ec7021e4202aeccf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
