# ZFCOrdinal Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**58 observed declarations and anonymous commands**, 53 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant8ab295d19b7c9edf61976a75df6295937e6b4a1836b1f8acb0cbb335e1ed9c5a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `43a404c00482ab749b6ebe5e7a4a928c83095b94`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/SetTheory/ZFCOrdinalPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsTransitive](declarations/istransitive.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [isTransitive_empty](declarations/istransitive-empty.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [IsTransitive.subset_of_mem](declarations/istransitive-subset-of-mem.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [isTransitive_iff_mem_trans](declarations/istransitive-iff-mem-trans.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [IsTransitive.inter](declarations/istransitive-inter.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [IsTransitive.sUnion](declarations/istransitive-sunion-source-edition-2.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [IsTransitive.sUnion'](declarations/istransitive-sunion.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [IsTransitive.iUnion](declarations/istransitive-iunion.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [IsTransitive.union](declarations/istransitive-union.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [IsTransitive.powerset](declarations/istransitive-powerset.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [isTransitive_iff_sUnion_subset](declarations/istransitive-iff-sunion-subset.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [isTransitive_iff_subset_powerset](declarations/istransitive-iff-subset-powerset.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [IsOrdinal](declarations/isordinal.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [subset_of_mem](declarations/subset-of-mem.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mem_trans](declarations/mem-trans.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [isTrans](declarations/istrans.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [_root_.ZFSet.isOrdinal_iff_isTrans](declarations/root-zfset-isordinal-iff-istrans.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [mem](declarations/mem.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [_root_.ZFSet.isOrdinal_iff_forall_mem_isTransitive](declarations/root-zfset-isordinal-iff-forall-mem-istransitive.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [_root_.ZFSet.isOrdinal_iff_forall_mem_isOrdinal](declarations/root-zfset-isordinal-iff-forall-mem-isordinal.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [subset_iff_eq_or_mem](declarations/subset-iff-eq-or-mem.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [mem_of_subset_of_mem](declarations/mem-of-subset-of-mem.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [notMem_iff_subset](declarations/notmem-iff-subset.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [not_subset_iff_mem](declarations/not-subset-iff-mem.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [mem_or_subset](declarations/mem-or-subset.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [subset_total](declarations/subset-total.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [mem_trichotomous](declarations/mem-trichotomous.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [trichotomous](declarations/trichotomous.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [_root_.ZFSet.isOrdinal_iff_trichotomous](declarations/root-zfset-isordinal-iff-trichotomous.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [isWellOrder](declarations/iswellorder.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [_root_.ZFSet.isOrdinal_iff_isWellOrder](declarations/root-zfset-isordinal-iff-iswellorder.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [rank_lt_iff_mem](declarations/rank-lt-iff-mem.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [rank_le_iff_subset](declarations/rank-le-iff-subset.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [rank_inj](declarations/rank-inj.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [isOrdinal_empty](declarations/isordinal-empty.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [isOrdinal_succ](declarations/isordinal-succ.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [toPSet](declarations/topset.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [type_toPSet](declarations/type-topset.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [mem_toPSet_iff](declarations/mem-topset-iff.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [rank_toPSet](declarations/rank-topset.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [toZFSet](declarations/tozfset.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [mk_toPSet](declarations/mk-topset.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [mem_toZFSet_iff](declarations/mem-tozfset-iff.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [rank_toZFSet](declarations/rank-tozfset.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [coe_toZFSet](declarations/coe-tozfset.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [toZFSet_mem_toZFSet_of_lt](declarations/tozfset-mem-tozfset-of-lt.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [toZFSet_monotone](declarations/tozfset-monotone.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [toZFSet_mem_toZFSet_iff](declarations/tozfset-mem-tozfset-iff.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [toZFSet_subset_toZFSet_iff](declarations/tozfset-subset-tozfset-iff.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [toZFSet_strictMono](declarations/tozfset-strictmono.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [toZFSet_injective](declarations/tozfset-injective.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [toZFSet_zero](declarations/tozfset-zero.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [toZFSet_add_one](declarations/tozfset-add-one.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [card_toZFSet](declarations/card-tozfset.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [isOrdinal_toZFSet](declarations/isordinal-tozfset.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [IsOrdinal.toZFSet_rank_eq](declarations/isordinal-tozfset-rank-eq.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [isOrdinal_iff_mem_range_toZFSet](declarations/isordinal-iff-mem-range-tozfset.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [_root_.Ordinal.toZFSetIso](declarations/root-ordinal-tozfsetiso.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ca03a532bc003e79f19e786ecd7e184f248ff5e84dec517b0bbba263f252ca34 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant8ab295d19b7c9edf61976a75df6295937e6b4a1836b1f8acb0cbb335e1ed9c5a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
