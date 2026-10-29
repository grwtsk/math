# Finset Dedup

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/Dedup/Variantf71f0a5d490feb3e67f2b126f8486dced79af0db39975c2ffa96cbc2cc5d119f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `558784b0d6409f80bc9a65b3b52c36ceb2f25631`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/EnumerativeCombinatorics/FinsetDedup.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [dedup_eq_self](declarations/dedup-eq-self.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [toFinset](declarations/tofinset-source-edition-2.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [toFinset_val](declarations/tofinset-val.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [toFinset_eq](declarations/tofinset-eq.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [Nodup.toFinset_inj](declarations/nodup-tofinset-inj.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [mem_toFinset](declarations/mem-tofinset.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [toFinset_subset](declarations/tofinset-subset.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [toFinset_ssubset](declarations/tofinset-ssubset.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [toFinset_dedup](declarations/tofinset-dedup.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [isWellFounded_ssubset](declarations/iswellfounded-ssubset.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [val_toFinset](declarations/val-tofinset.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [val_le_iff_val_subset](declarations/val-le-iff-val-subset.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [toFinset](declarations/tofinset.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [toFinset_val](declarations/tofinset-val-source-edition-2.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [toFinset_coe](declarations/tofinset-coe.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [toFinset_eq](declarations/tofinset-eq-source-edition-2.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [mem_toFinset](declarations/mem-tofinset-source-edition-2.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [coe_toFinset](declarations/coe-tofinset.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [toFinset_surj_on](declarations/tofinset-surj-on.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [toFinset_surjective](declarations/tofinset-surjective.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [toFinset_eq_iff_perm_dedup](declarations/tofinset-eq-iff-perm-dedup.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [toFinset.ext_iff](declarations/tofinset-ext-iff.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [toFinset.ext](declarations/tofinset-ext.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [toFinset_eq_of_perm](declarations/tofinset-eq-of-perm.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [perm_of_nodup_nodup_toFinset_eq](declarations/perm-of-nodup-nodup-tofinset-eq.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [toFinset_reverse](declarations/tofinset-reverse.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [toList](declarations/tolist.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [nodup_toList](declarations/nodup-tolist.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [mem_toList](declarations/mem-tolist.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [coe_toList](declarations/coe-tolist.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [toList_toFinset](declarations/tolist-tofinset.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [_root_.List.toFinset_toList](declarations/root-list-tofinset-tolist.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [exists_list_nodup_eq](declarations/exists-list-nodup-eq.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1272580c796162f89ff52ca0bd55f91e35ca9ff0c975dd43677bacab83036678 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Dedup/Variantf71f0a5d490feb3e67f2b126f8486dced79af0db39975c2ffa96cbc2cc5d119f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
