# Order Group Multiset Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 21 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variant806b87b6c8abcca1e90d4e0b9282894f5149c930ba431ffeeedceba8b76cc1ff.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `650b0f40597f259bb94fc556273889a1a1ca6162`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderGroupMultisetNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [instAddLeftMono](declarations/instaddleftmono.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [instAddLeftReflectLE](declarations/instaddleftreflectle.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [instAddCancelCommMonoid](declarations/instaddcancelcommmonoid.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [mem_of_mem_nsmul](declarations/mem-of-mem-nsmul.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [mem_nsmul](declarations/mem-nsmul.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [mem_nsmul_of_ne_zero](declarations/mem-nsmul-of-ne-zero.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [smul_subset_self](declarations/smul-subset-self.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [subset_smul_self_of_ne_zero](declarations/subset-smul-self-of-ne-zero.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [nsmul_cons](declarations/nsmul-cons.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [cardHom](declarations/cardhom.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [card_nsmul](declarations/card-nsmul.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [replicateAddMonoidHom](declarations/replicateaddmonoidhom.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [nsmul_replicate](declarations/nsmul-replicate.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [nsmul_singleton](declarations/nsmul-singleton.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [mapAddMonoidHom](declarations/mapaddmonoidhom.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [coe_mapAddMonoidHom](declarations/coe-mapaddmonoidhom.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [map_nsmul](declarations/map-nsmul.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [(anonymous)](declarations/instance.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [filter_nsmul](declarations/filter-nsmul.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [countP_nsmul](declarations/countp-nsmul.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [countPAddMonoidHom](declarations/countpaddmonoidhom.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [coe_countPAddMonoidHom](declarations/coe-countpaddmonoidhom.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [dedup_nsmul](declarations/dedup-nsmul.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [Nodup.le_nsmul_iff_le](declarations/nodup-le-nsmul-iff-le.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [countAddMonoidHom](declarations/countaddmonoidhom.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [coe_countAddMonoidHom](declarations/coe-countaddmonoidhom.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [count_nsmul](declarations/count-nsmul.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [le_card_smul_iff_subset](declarations/le-card-smul-iff-subset.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [addHom_ext](declarations/addhom-ext.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [le_smul_dedup](declarations/le-smul-dedup.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=17b0aa8ccea7be1292e80bae23a8a005440209c8621b0554e9a946365c34893b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variant806b87b6c8abcca1e90d4e0b9282894f5149c930ba431ffeeedceba8b76cc1ff.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
