# Finset Dedup Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/Dedup/Variant630abae9d8182a63f72ee5df7278e0c48523f6a2bf3fa2ecb379b060df18f4ef.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1a9821c41e618e89896ad0de0107314a0139a132`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/EnumerativeCombinatorics/FinsetDedupNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [dedup_eq_self](declarations/dedup-eq-self.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [toFinset](declarations/tofinset-source-edition-2.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [toFinset_val](declarations/tofinset-val-source-edition-2.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [toFinset_eq](declarations/tofinset-eq.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [Nodup.toFinset_inj](declarations/nodup-tofinset-inj.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [mem_toFinset](declarations/mem-tofinset-source-edition-2.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [toFinset_subset](declarations/tofinset-subset.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [toFinset_ssubset](declarations/tofinset-ssubset.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [toFinset_dedup](declarations/tofinset-dedup.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [isWellFounded_ssubset](declarations/iswellfounded-ssubset.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [val_toFinset](declarations/val-tofinset.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [val_le_iff_val_subset](declarations/val-le-iff-val-subset.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [toFinset](declarations/tofinset.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [toFinset_val](declarations/tofinset-val.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [toFinset_coe](declarations/tofinset-coe.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [toFinset_eq](declarations/tofinset-eq-source-edition-2.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [mem_toFinset](declarations/mem-tofinset.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [coe_toFinset](declarations/coe-tofinset.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [toFinset_surj_on](declarations/tofinset-surj-on.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [toFinset_surjective](declarations/tofinset-surjective.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [toFinset_eq_iff_perm_dedup](declarations/tofinset-eq-iff-perm-dedup.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [toFinset.ext_iff](declarations/tofinset-ext-iff.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [toFinset.ext](declarations/tofinset-ext.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [toFinset_eq_of_perm](declarations/tofinset-eq-of-perm.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [perm_of_nodup_nodup_toFinset_eq](declarations/perm-of-nodup-nodup-tofinset-eq.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [toFinset_reverse](declarations/tofinset-reverse.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [toList](declarations/tolist.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [nodup_toList](declarations/nodup-tolist.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [mem_toList](declarations/mem-tolist.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [coe_toList](declarations/coe-tolist.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [toList_toFinset](declarations/tolist-tofinset.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [Finset Dedup Namespaced](declarations/tofinset-tolist.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [exists_list_nodup_eq](declarations/exists-list-nodup-eq.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=82dac80a76c0b50d56446295cda0124d0207ef9e2926e57a4b88ec03201eac06 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Dedup/Variant630abae9d8182a63f72ee5df7278e0c48523f6a2bf3fa2ecb379b060df18f4ef.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
