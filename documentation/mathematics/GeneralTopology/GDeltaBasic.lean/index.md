# GDelta Basic

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/Basic/Variant9257605dbffd0602f1a4adce519a4ab4734e9537603e47729f0598f053034240.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ed3c3a59de879409393c7d15eef40dbfb70ab977`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/GDeltaBasic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsGδ](declarations/isg.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [IsOpen.isGδ](declarations/isopen-isg.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [IsGδ.empty](declarations/isg-empty.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [IsGδ.univ](declarations/isg-univ.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [IsGδ.biInter_of_isOpen](declarations/isg-biinter-of-isopen.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [IsGδ.iInter_of_isOpen](declarations/isg-iinter-of-isopen.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [isGδ_iff_eq_iInter_nat](declarations/isg-iff-eq-iinter-nat.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [IsGδ.iInter](declarations/isg-iinter.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [IsGδ.biInter](declarations/isg-biinter.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [IsGδ.sInter](declarations/isg-sinter.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [IsGδ.inter](declarations/isg-inter.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [IsGδ.union](declarations/isg-union.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [IsGδ.sUnion](declarations/isg-sunion.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [IsGδ.biUnion](declarations/isg-biunion.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [IsGδ.iUnion](declarations/isg-iunion.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [residual](declarations/residual.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [countableInterFilter_residual](declarations/countableinterfilter-residual.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [residual_of_dense_open](declarations/residual-of-dense-open.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [residual_of_dense_Gδ](declarations/residual-of-dense-g.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [mem_residual_iff](declarations/mem-residual-iff.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [IsNowhereDense](declarations/isnowheredense.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [isNowhereDense_empty](declarations/isnowheredense-empty.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [IsClosed.isNowhereDense_iff](declarations/isclosed-isnowheredense-iff.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [IsNowhereDense.closure](declarations/isnowheredense-closure.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [IsNowhereDense.subset_of_closed_isNowhereDense](declarations/isnowheredense-subset-of-closed-isnowheredense.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [isClosed_isNowhereDense_iff_compl](declarations/isclosed-isnowheredense-iff-compl.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [IsMeagre](declarations/ismeagre.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [meagre_empty](declarations/meagre-empty.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [IsMeagre.mono](declarations/ismeagre-mono.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [IsMeagre.inter](declarations/ismeagre-inter.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [isMeagre_iUnion](declarations/ismeagre-iunion.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [isMeagre_iff_countable_union_isNowhereDense](declarations/ismeagre-iff-countable-union-isnowheredense.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5e75cbc8f24f62e51126fc6ad74aeea364b228b5940c2f5fda6a791d328c594d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant9257605dbffd0602f1a4adce519a4ab4734e9537603e47729f0598f053034240.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
