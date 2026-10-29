# ZFCOrdinal Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant7cf65a21e0b75daf79cfdea655efa0f6588882b645441a48157c0696bebe3393.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f40a2ae12c1639cdf9070fa3d9f9c80afe07c466`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsTransitive](declarations/istransitive.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [isTransitive_empty](declarations/istransitive-empty.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [IsTransitive.subset_of_mem](declarations/istransitive-subset-of-mem.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [isTransitive_iff_mem_trans](declarations/istransitive-iff-mem-trans.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [IsTransitive.inter](declarations/istransitive-inter.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [IsTransitive.sUnion](declarations/istransitive-sunion.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [IsTransitive.sUnion'](declarations/istransitive-sunion-source-edition-2.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [IsTransitive.union](declarations/istransitive-union.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [IsTransitive.powerset](declarations/istransitive-powerset.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [isTransitive_iff_sUnion_subset](declarations/istransitive-iff-sunion-subset.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [isTransitive_iff_subset_powerset](declarations/istransitive-iff-subset-powerset.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [IsOrdinal](declarations/isordinal.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [subset_of_mem](declarations/subset-of-mem.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [mem_trans](declarations/mem-trans.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [isTrans](declarations/istrans.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [ZFCOrdinal Namespaced](declarations/isordinal-iff-istrans.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [mem](declarations/mem.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [ZFCOrdinal Namespaced](declarations/isordinal-iff-forall-mem-istransitive.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [ZFCOrdinal Namespaced](declarations/isordinal-iff-forall-mem-isordinal.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [subset_iff_eq_or_mem](declarations/subset-iff-eq-or-mem.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [mem_of_subset_of_mem](declarations/mem-of-subset-of-mem.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [notMem_iff_subset](declarations/notmem-iff-subset.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [not_subset_iff_mem](declarations/not-subset-iff-mem.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [mem_or_subset](declarations/mem-or-subset.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [subset_total](declarations/subset-total.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [mem_trichotomous](declarations/mem-trichotomous.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [isTrichotomous](declarations/istrichotomous.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [ZFCOrdinal Namespaced](declarations/isordinal-iff-istrichotomous.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [isWellOrder](declarations/iswellorder.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [ZFCOrdinal Namespaced](declarations/isordinal-iff-iswellorder.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [isOrdinal_empty](declarations/isordinal-empty.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=83e6a3f3aa1210fbf3c70720c22059ba64e286b8735b029b66ec295de3a0e3df -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant7cf65a21e0b75daf79cfdea655efa0f6588882b645441a48157c0696bebe3393.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
