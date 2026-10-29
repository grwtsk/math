# Finsupp Multiset

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**35 observed declarations and anonymous commands**, 31 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variantceee407ab11ab0fa013d1de6507d50ba68f5366bfdf7fc23e6a612fe744d2fee.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b2b2e6c7f4914768396b7b46a5f1c1ee3366a20d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/FinsuppMultiset.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [toMultiset](declarations/tomultiset.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [toMultiset_zero](declarations/tomultiset-zero.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [toMultiset_add](declarations/tomultiset-add.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [toMultiset_apply](declarations/tomultiset-apply.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [toMultiset_single](declarations/tomultiset-single.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [toMultiset_sum](declarations/tomultiset-sum.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [toMultiset_sum_single](declarations/tomultiset-sum-single.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [card_toMultiset](declarations/card-tomultiset.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [toMultiset_map](declarations/tomultiset-map.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [prod_toMultiset](declarations/prod-tomultiset.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [toFinset_toMultiset](declarations/tofinset-tomultiset.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [count_toMultiset](declarations/count-tomultiset.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [toMultiset_sup](declarations/tomultiset-sup.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [toMultiset_inf](declarations/tomultiset-inf.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mem_toMultiset](declarations/mem-tomultiset.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [toFinsupp](declarations/tofinsupp.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [toFinsupp_support](declarations/tofinsupp-support.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [toFinsupp_apply](declarations/tofinsupp-apply.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [toFinsupp_zero](declarations/tofinsupp-zero.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [toFinsupp_add](declarations/tofinsupp-add.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [toFinsupp_singleton](declarations/tofinsupp-singleton.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [toFinsupp_toMultiset](declarations/tofinsupp-tomultiset.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [toFinsupp_eq_iff](declarations/tofinsupp-eq-iff.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [toFinsupp_union](declarations/tofinsupp-union.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [toFinsupp_inter](declarations/tofinsupp-inter.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [Finsupp.toMultiset_toFinsupp](declarations/finsupp-tomultiset-tofinsupp.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [Finsupp.toMultiset_eq_iff](declarations/finsupp-tomultiset-eq-iff.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [orderIsoMultiset](declarations/orderisomultiset.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [coe_orderIsoMultiset](declarations/coe-orderisomultiset.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [coe_orderIsoMultiset_symm](declarations/coe-orderisomultiset-symm.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [toMultiset_strictMono](declarations/tomultiset-strictmono.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [sum_id_lt_of_lt](declarations/sum-id-lt-of-lt.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [lt_wf](declarations/lt-wf.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [(anonymous)](declarations/instance.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [Multiset.toFinsupp_strictMono](declarations/multiset-tofinsupp-strictmono.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=df57584e0c3b840743905c5b58bfaad0741eaae44b815f45070fcc03491be0a0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variantceee407ab11ab0fa013d1de6507d50ba68f5366bfdf7fc23e6a612fe744d2fee.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
