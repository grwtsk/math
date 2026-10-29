# Tactic Term Congr

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant2125a773db37f8bf6f23f5d4eab90f44be344dfebe218a94bd9c2692dbff1c38.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `48c2c2ac2291f3db25e5541b52945c4d78ce245d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongr.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](declarations/initialize.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `syntax` | [(anonymous)](declarations/syntax-source-edition-2.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [congrHoleForLhsKey](declarations/congrholeforlhskey.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [congrHoleIndex](declarations/congrholeindex.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [cHole](declarations/chole-source-edition-2.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [unexpandCHole](declarations/unexpandchole.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [mkCHole](declarations/mkchole.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [cHole?](declarations/chole.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [hasCHole](declarations/haschole.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [removeCHoles](declarations/removecholes.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [elabCHole](declarations/elabchole.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `syntax` | [(anonymous)](declarations/syntax.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [elabCHoleExpand](declarations/elabcholeexpand.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [processAntiquot](declarations/processantiquot.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [elaboratePattern](declarations/elaboratepattern.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [mkEqForExpectedType](declarations/mkeqforexpectedtype.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [mkHEqForExpectedType](declarations/mkheqforexpectedtype.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [mkIffForExpectedType](declarations/mkiffforexpectedtype.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [ensureIff](declarations/ensureiff.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `inductive` | [CongrType](declarations/congrtype.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [CongrResult](declarations/congrresult.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [CongrResult.isRfl](declarations/congrresult-isrfl.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [CongrResult.eq](declarations/congrresult-eq.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [CongrResult.heq](declarations/congrresult-heq.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [CongrResult.iff](declarations/congrresult-iff.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [CongrResult.trans](declarations/congrresult-trans.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [CongrResult.mk'](declarations/congrresult-mk.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [CongrResult.defeq](declarations/congrresult-defeq.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [CongrResult.mkDefault](declarations/congrresult-mkdefault-source-edition-2.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [CongrResult.mkDefault'](declarations/congrresult-mkdefault.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [throwCongrEx](declarations/throwcongrex.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [mkCongrOfCHole?](declarations/mkcongrofchole.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [mkCongrOf](declarations/mkcongrof.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [elabTermCongr](declarations/elabtermcongr.md) | 607 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=16d096e1cbed7585526f5ecc590719a2fd2d9d053bf2c5dc94adff5358f0e7a1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant2125a773db37f8bf6f23f5d4eab90f44be344dfebe218a94bd9c2692dbff1c38.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
