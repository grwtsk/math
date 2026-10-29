# Split Public Split Status

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Split/Variant5182c4cfdca88a121c4a84cb239f8553b7a8f784be078981c25caf9baeb6b586.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b43ce3f054bf56f72211b5d290ec1e7fce59a9bc`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SplitPublicSplitStatus.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [SplitStatus](declarations/splitstatus.md) | 20 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [checkIteCondStatus](declarations/checkitecondstatus.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [checkDisjunctStatus](declarations/checkdisjunctstatus.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [checkConjunctStatus](declarations/checkconjunctstatus.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [checkIffStatus](declarations/checkiffstatus.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [isCongrToPrevSplit](declarations/iscongrtoprevsplit.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [checkDefaultSplitStatus](declarations/checkdefaultsplitstatus.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [checkSplitInfoArgStatus](declarations/checksplitinfoargstatus.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [checkForallStatus](declarations/checkforallstatus.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [checkSplitStatus](declarations/checksplitstatus.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `inductive` | [SplitCandidate](declarations/splitcandidate.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [checkAnchorRefs](declarations/checkanchorrefs.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [selectNextSplit?](declarations/selectnextsplit.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [mkGrindEM](declarations/mkgrindem.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [mkCasesMajor](declarations/mkcasesmajor.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [casesWithTrace](declarations/caseswithtrace.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `structure` | [SplitCandidateWithAnchor](declarations/splitcandidatewithanchor.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [(anonymous)](declarations/instance.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `structure` | [SplitCandidateAnchors](declarations/splitcandidateanchors.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [getSplitCandidateAnchors](declarations/getsplitcandidateanchors.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [SplitAnchorRefInfo](declarations/splitanchorrefinfo.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [mkSplitAnchorRefInfo](declarations/mksplitanchorrefinfo.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [SplitAnchorRefInfo.toSyntax](declarations/splitanchorrefinfo-tosyntax.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [getFalseProof?](declarations/getfalseproof.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [isCompressibleSeq](declarations/iscompressibleseq.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [mkAndThenSeq](declarations/mkandthenseq.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [mkCasesAndThen](declarations/mkcasesandthen.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [isCompressibleAlts](declarations/iscompressiblealts.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [isSorryAlt](declarations/issorryalt.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [mkCasesResultSeq](declarations/mkcasesresultseq.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [splitCore](declarations/splitcore.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [splitNext](declarations/splitnext.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=700a6f8429f979faaa6f71c66865a2f30173f0253fbfddfbd94caeae22878e11 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Split/Variant5182c4cfdca88a121c4a84cb239f8553b7a8f784be078981c25caf9baeb6b586.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
