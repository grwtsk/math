# Split Namespaced Public Split Status

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Split/Variantd8a46d3caee1d2139e6588614d129f349cdddc06eb1e2be2db0cf8162490eafd.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `81fbcb73a7a33e0d5570bca16c0e1b92445ff46e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SplitNamespacedPublicSplitStatus.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [SplitStatus](declarations/splitstatus.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [checkIteCondStatus](declarations/checkitecondstatus.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [checkDisjunctStatus](declarations/checkdisjunctstatus.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [checkConjunctStatus](declarations/checkconjunctstatus.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [checkIffStatus](declarations/checkiffstatus.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [isCongrToPrevSplit](declarations/iscongrtoprevsplit.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [checkDefaultSplitStatus](declarations/checkdefaultsplitstatus.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [checkSplitInfoArgStatus](declarations/checksplitinfoargstatus.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [checkForallStatus](declarations/checkforallstatus.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [checkSplitStatus](declarations/checksplitstatus.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `inductive` | [SplitCandidate](declarations/splitcandidate.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [checkAnchorRefs](declarations/checkanchorrefs.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [selectNextSplit?](declarations/selectnextsplit.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [mkGrindEM](declarations/mkgrindem.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [mkCasesMajor](declarations/mkcasesmajor.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [casesWithTrace](declarations/caseswithtrace.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `structure` | [SplitCandidateWithAnchor](declarations/splitcandidatewithanchor.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [(anonymous)](declarations/instance.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `structure` | [SplitCandidateAnchors](declarations/splitcandidateanchors.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [getSplitCandidateAnchors](declarations/getsplitcandidateanchors.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [SplitAnchorRefInfo](declarations/splitanchorrefinfo.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [mkSplitAnchorRefInfo](declarations/mksplitanchorrefinfo.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [SplitAnchorRefInfo.toSyntax](declarations/splitanchorrefinfo-tosyntax.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [getFalseProof?](declarations/getfalseproof.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [isCompressibleSeq](declarations/iscompressibleseq.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [mkAndThenSeq](declarations/mkandthenseq.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [mkCasesAndThen](declarations/mkcasesandthen.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [isCompressibleAlts](declarations/iscompressiblealts.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [isSorryAlt](declarations/issorryalt.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [mkCasesResultSeq](declarations/mkcasesresultseq.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [splitCore](declarations/splitcore.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [splitNext](declarations/splitnext.md) | 559 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d522fbc32ba62484852fb0cf97b239cead5b909628ae8d65cb6e01a7ffde3fbf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Split/Variantd8a46d3caee1d2139e6588614d129f349cdddc06eb1e2be2db0cf8162490eafd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
