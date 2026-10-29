# Finsupp Multiset Namespaced

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**35 observed declarations and anonymous commands**, 31 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variant09087cb87aa97b6097dde6b6d49cf1b82a6df87c56c9c52d8f4caadbfdbddef5.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d64fd2da38df7df70b6adf0778cfae133aef461b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/FinsuppMultisetNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [toMultiset](declarations/tomultiset.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [toMultiset_zero](declarations/tomultiset-zero.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [toMultiset_add](declarations/tomultiset-add.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [toMultiset_apply](declarations/tomultiset-apply.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [toMultiset_single](declarations/tomultiset-single.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [toMultiset_sum](declarations/tomultiset-sum.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [toMultiset_sum_single](declarations/tomultiset-sum-single.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [card_toMultiset](declarations/card-tomultiset.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [toMultiset_map](declarations/tomultiset-map.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [prod_toMultiset](declarations/prod-tomultiset.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [toFinset_toMultiset](declarations/tofinset-tomultiset.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [count_toMultiset](declarations/count-tomultiset.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [toMultiset_sup](declarations/tomultiset-sup.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [toMultiset_inf](declarations/tomultiset-inf.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mem_toMultiset](declarations/mem-tomultiset.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [toFinsupp](declarations/tofinsupp.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [toFinsupp_support](declarations/tofinsupp-support.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [toFinsupp_apply](declarations/tofinsupp-apply.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [toFinsupp_zero](declarations/tofinsupp-zero.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [toFinsupp_add](declarations/tofinsupp-add.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [toFinsupp_singleton](declarations/tofinsupp-singleton.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [toFinsupp_toMultiset](declarations/tofinsupp-tomultiset.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [toFinsupp_eq_iff](declarations/tofinsupp-eq-iff.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [toFinsupp_union](declarations/tofinsupp-union.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [toFinsupp_inter](declarations/tofinsupp-inter.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [Finsupp.toMultiset_toFinsupp](declarations/finsupp-tomultiset-tofinsupp.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [Finsupp.toMultiset_eq_iff](declarations/finsupp-tomultiset-eq-iff.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [orderIsoMultiset](declarations/orderisomultiset.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [coe_orderIsoMultiset](declarations/coe-orderisomultiset.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [coe_orderIsoMultiset_symm](declarations/coe-orderisomultiset-symm.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [toMultiset_strictMono](declarations/tomultiset-strictmono.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [sum_id_lt_of_lt](declarations/sum-id-lt-of-lt.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [lt_wf](declarations/lt-wf.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [(anonymous)](declarations/instance.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [Multiset.toFinsupp_strictMono](declarations/multiset-tofinsupp-strictmono.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c9e7d9e9c058c97d4bec0f0fc7aabbc08256505754cd253af5ae6d838d2c6981 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variant09087cb87aa97b6097dde6b6d49cf1b82a6df87c56c9c52d8f4caadbfdbddef5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
