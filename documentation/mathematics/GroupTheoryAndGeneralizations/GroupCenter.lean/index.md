# Group Center

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/Center/Variantc54d6171e6981a05cdf60d8c79db5797142d08cd6d0d6adf7fbbe363807ab298.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `abf7b779137256f2a85575d11ff819acc25b86c1`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GroupTheoryAndGeneralizations/GroupCenter.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [IsAddCentral](declarations/isaddcentral.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [IsMulCentral](declarations/ismulcentral.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [left_comm](declarations/left-comm.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [right_comm](declarations/right-comm.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [center](declarations/center.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [centralizer](declarations/centralizer.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [mem_center_iff](declarations/mem-center-iff.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [mem_centralizer_iff](declarations/mem-centralizer-iff.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [mul_mem_center](declarations/mul-mem-center.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [center_subset_centralizer](declarations/center-subset-centralizer.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [centralizer_union](declarations/centralizer-union.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [centralizer_subset](declarations/centralizer-subset.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [subset_centralizer_centralizer](declarations/subset-centralizer-centralizer.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [centralizer_centralizer_centralizer](declarations/centralizer-centralizer-centralizer.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [decidableMemCentralizer](declarations/decidablememcentralizer.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [centralizer_centralizer_comm_of_comm](declarations/centralizer-centralizer-comm-of-comm.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [_root_.Semigroup.mem_center_iff](declarations/root-semigroup-mem-center-iff.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [mul_mem_centralizer](declarations/mul-mem-centralizer.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [centralizer_eq_top_iff_subset](declarations/centralizer-eq-top-iff-subset.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [centralizer_univ](declarations/centralizer-univ.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [decidableMemCenter](declarations/decidablememcenter.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [center_eq_univ](declarations/center-eq-univ.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [centralizer_eq_univ](declarations/centralizer-eq-univ.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [one_mem_center](declarations/one-mem-center.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [one_mem_centralizer](declarations/one-mem-centralizer.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [subset_center_units](declarations/subset-center-units.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [units_inv_mem_center](declarations/units-inv-mem-center.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [invOf_mem_center](declarations/invof-mem-center.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [inv_mem_center](declarations/inv-mem-center.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [div_mem_center](declarations/div-mem-center.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [inv_mem_centralizer](declarations/inv-mem-centralizer.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [div_mem_centralizer](declarations/div-mem-centralizer.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fd80158a06e7826ed14256c0005070f34779188c37fb5e364a9f990d7bc0f2a3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Center/Variantc54d6171e6981a05cdf60d8c79db5797142d08cd6d0d6adf7fbbe363807ab298.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
