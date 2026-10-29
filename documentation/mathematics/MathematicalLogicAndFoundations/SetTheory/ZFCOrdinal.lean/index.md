# ZFCOrdinal

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc62c5a875496c77daf0bacf25ab75f99c523bf8d91949e51a49b17f836b09f53.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `97235e3261fdc56f243d41a3007ddd24ecfff269`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/SetTheory/ZFCOrdinal.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsTransitive](declarations/istransitive.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [isTransitive_empty](declarations/istransitive-empty.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [IsTransitive.subset_of_mem](declarations/istransitive-subset-of-mem.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [isTransitive_iff_mem_trans](declarations/istransitive-iff-mem-trans.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [IsTransitive.inter](declarations/istransitive-inter.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [IsTransitive.sUnion](declarations/istransitive-sunion-source-edition-2.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [IsTransitive.sUnion'](declarations/istransitive-sunion.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [IsTransitive.union](declarations/istransitive-union.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [IsTransitive.powerset](declarations/istransitive-powerset.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [isTransitive_iff_sUnion_subset](declarations/istransitive-iff-sunion-subset.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [isTransitive_iff_subset_powerset](declarations/istransitive-iff-subset-powerset.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [IsOrdinal](declarations/isordinal.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [subset_of_mem](declarations/subset-of-mem.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [mem_trans](declarations/mem-trans.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [isTrans](declarations/istrans.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [_root_.ZFSet.isOrdinal_iff_isTrans](declarations/root-zfset-isordinal-iff-istrans.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [mem](declarations/mem.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [_root_.ZFSet.isOrdinal_iff_forall_mem_isTransitive](declarations/root-zfset-isordinal-iff-forall-mem-istransitive.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [_root_.ZFSet.isOrdinal_iff_forall_mem_isOrdinal](declarations/root-zfset-isordinal-iff-forall-mem-isordinal.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [subset_iff_eq_or_mem](declarations/subset-iff-eq-or-mem.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [mem_of_subset_of_mem](declarations/mem-of-subset-of-mem.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [notMem_iff_subset](declarations/notmem-iff-subset.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [not_subset_iff_mem](declarations/not-subset-iff-mem.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [mem_or_subset](declarations/mem-or-subset.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [subset_total](declarations/subset-total.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [mem_trichotomous](declarations/mem-trichotomous.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [isTrichotomous](declarations/istrichotomous.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [_root_.ZFSet.isOrdinal_iff_isTrichotomous](declarations/root-zfset-isordinal-iff-istrichotomous.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [isWellOrder](declarations/iswellorder.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [_root_.ZFSet.isOrdinal_iff_isWellOrder](declarations/root-zfset-isordinal-iff-iswellorder.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [isOrdinal_empty](declarations/isordinal-empty.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=36e435e54f3e8ac589ff25b9a9d2100f040f448db5de2195aa72be5c4438754e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc62c5a875496c77daf0bacf25ab75f99c523bf8d91949e51a49b17f836b09f53.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
