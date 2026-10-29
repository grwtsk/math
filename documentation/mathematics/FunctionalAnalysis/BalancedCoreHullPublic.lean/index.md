# Balanced Core Hull Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/BalancedCoreHull/Variantbc607bd652d3cc57d904a0c17870233af2fa62ec976dff56b76e4b23ca9d0872.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5118af1439853e7c81bf7e74ae51b1ffbe27e026`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FunctionalAnalysis/BalancedCoreHullPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [balancedCore](declarations/balancedcore.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [balancedCoreAux](declarations/balancedcoreaux.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [balancedHull](declarations/balancedhull.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [balancedCore_subset](declarations/balancedcore-subset.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [balancedCore_empty](declarations/balancedcore-empty.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [mem_balancedCore_iff](declarations/mem-balancedcore-iff.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [smul_balancedCore_subset](declarations/smul-balancedcore-subset.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [balancedCore_balanced](declarations/balancedcore-balanced.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [Balanced.subset_balancedCore_of_subset](declarations/balanced-subset-balancedcore-of-subset.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [Balanced.balancedCore_eq](declarations/balanced-balancedcore-eq.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mem_balancedCoreAux_iff](declarations/mem-balancedcoreaux-iff.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [mem_balancedHull_iff](declarations/mem-balancedhull-iff.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [Balanced.balancedHull_subset_of_subset](declarations/balanced-balancedhull-subset-of-subset.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [balancedHull_mono](declarations/balancedhull-mono.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [balancedCore_zero_mem](declarations/balancedcore-zero-mem.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [balancedCore_nonempty_iff](declarations/balancedcore-nonempty-iff.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [Balanced.zero_mem](declarations/balanced-zero-mem.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [subset_balancedHull](declarations/subset-balancedhull.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [balancedHull.balanced](declarations/balancedhull-balanced.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [balancedHull_add_subset](declarations/balancedhull-add-subset.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [balancedCoreAux_empty](declarations/balancedcoreaux-empty.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [balancedCoreAux_subset](declarations/balancedcoreaux-subset.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [balancedCoreAux_balanced](declarations/balancedcoreaux-balanced.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [balancedCoreAux_maximal](declarations/balancedcoreaux-maximal.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [balancedCore_subset_balancedCoreAux](declarations/balancedcore-subset-balancedcoreaux.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [balancedCore_eq_iInter](declarations/balancedcore-eq-iinter.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [subset_balancedCore](declarations/subset-balancedcore.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [IsClosed.balancedCore](declarations/isclosed-balancedcore.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [IsOpen.balancedHull](declarations/isopen-balancedhull.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [balancedCore_mem_nhds_zero](declarations/balancedcore-mem-nhds-zero.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [nhds_basis_balanced](declarations/nhds-basis-balanced.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [nhds_basis_closed_balanced](declarations/nhds-basis-closed-balanced.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2df0e2cb1e8cd6568ba791a7faf267c40b8b6ffc609c72ebb9700fab6d0bdfa9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/BalancedCoreHull/Variantbc607bd652d3cc57d904a0c17870233af2fa62ec976dff56b76e4b23ca9d0872.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
