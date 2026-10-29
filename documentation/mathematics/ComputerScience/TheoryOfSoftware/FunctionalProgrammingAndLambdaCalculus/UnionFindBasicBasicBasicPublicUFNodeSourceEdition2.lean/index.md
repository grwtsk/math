# Union Find Basic Basic Basic Public UFNode Source Edition2

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**74 observed declarations and anonymous commands**, 40 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant9d8959c0d0b04f129c483d1ff9e2bfaf6e843934eedcb03ab3da8ada7fe4bb99.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a4e5c591b155873cac058a579c12eab1348d52bb`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/UnionFindBasicBasicBasicPublicUFNodeSourceEdition2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [UFNode](declarations/ufnode.md) | 17 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [parentD](declarations/parentd.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [rankD](declarations/rankd.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [parentD_eq](declarations/parentd-eq.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [rankD_eq](declarations/rankd-eq.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [parentD_of_not_lt](declarations/parentd-of-not-lt.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [lt_of_parentD](declarations/lt-of-parentd.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [parentD_set](declarations/parentd-set.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [rankD_set](declarations/rankd-set.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `structure` | [UnionFind](declarations/unionfind.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `abbrev` | [size](declarations/size.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [mkEmpty](declarations/mkempty.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [empty](declarations/empty.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [(anonymous)](declarations/instance.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `abbrev` | [parent](declarations/parent.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [parent'_lt](declarations/parent-lt.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [parent_lt](declarations/parent-lt-source-edition-2.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `abbrev` | [rank](declarations/rank.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [rank_lt](declarations/rank-lt.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [rank'_lt](declarations/rank-lt-source-edition-2.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [rankMax](declarations/rankmax.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [rank'_lt_rankMax](declarations/rank-lt-rankmax.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [rankD_lt_rankMax](declarations/rankd-lt-rankmax.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [lt_rankMax](declarations/lt-rankmax.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [push_rankD](declarations/push-rankd.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [push_parentD](declarations/push-parentd.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [push](declarations/push.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [root](declarations/root.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [rootN](declarations/rootn.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [root!](declarations/root-source-edition-2.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [rootD](declarations/rootd.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [parent_root](declarations/parent-root.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [parent_rootD](declarations/parent-rootd.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [rootD_parent](declarations/rootd-parent.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [rootD_lt](declarations/rootd-lt.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [rootD_eq_self](declarations/rootd-eq-self.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [rootD_rootD](declarations/rootd-rootd.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [rootD_ext](declarations/rootd-ext.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [le_rank_root](declarations/le-rank-root.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [lt_rank_root](declarations/lt-rank-root.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `structure` | [FindAux](declarations/findaux-source-edition-2.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [findAux](declarations/findaux.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [findAux_root](declarations/findaux-root.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [findAux_s](declarations/findaux-s.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [rankD_findAux](declarations/rankd-findaux.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [parentD_findAux](declarations/parentd-findaux.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [parentD_findAux_rootD](declarations/parentd-findaux-rootd.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [parentD_findAux_lt](declarations/parentd-findaux-lt.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [parentD_findAux_or](declarations/parentd-findaux-or.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [lt_rankD_findAux](declarations/lt-rankd-findaux.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [find](declarations/find.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [findN](declarations/findn.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [find!](declarations/find-source-edition-2.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [findD](declarations/findd.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [find_size](declarations/find-size.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [find_root_2](declarations/find-root-2.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [find_parent_1](declarations/find-parent-1.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [find_parent_or](declarations/find-parent-or.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [find_root_1](declarations/find-root-1.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [linkAux](declarations/linkaux.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [setParentBump_rankD_lt](declarations/setparentbump-rankd-lt.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [setParent_rankD_lt](declarations/setparent-rankd-lt.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [linkAux_size](declarations/linkaux-size.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [link](declarations/link.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [linkN](declarations/linkn.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [link!](declarations/link-source-edition-2.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [union](declarations/union-source-edition-2.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [unionN](declarations/unionn.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [union!](declarations/union.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [checkEquiv](declarations/checkequiv-source-edition-2.md) | 558 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [checkEquivN](declarations/checkequivn.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [checkEquiv!](declarations/checkequiv.md) | 569 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [checkEquivD](declarations/checkequivd.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [Equiv](declarations/equiv.md) | 583 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=149378ff3912fb7bf1d48f684e82a54a992510394f00b1585f6a316fd609927c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant9d8959c0d0b04f129c483d1ff9e2bfaf6e843934eedcb03ab3da8ada7fe4bb99.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
