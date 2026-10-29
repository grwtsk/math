# Sets

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**55 observed declarations and anonymous commands**, 41 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `af04803ae323d939ac3e1286bca22111158249cb`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/EnumerativeCombinatorics/Sets.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [toFinset](declarations/tofinset.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [toFinset_congr](declarations/tofinset-congr.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [mem_toFinset](declarations/mem-tofinset.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [toFinset_ofFinset](declarations/tofinset-offinset.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [decidableMemOfFintype](declarations/decidablememoffintype.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [coe_toFinset](declarations/coe-tofinset.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [toFinset_nonempty](declarations/tofinset-nonempty.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [toFinset_inj](declarations/tofinset-inj.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [toFinset_subset_toFinset](declarations/tofinset-subset-tofinset.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [toFinset_ssubset](declarations/tofinset-ssubset.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [subset_toFinset](declarations/subset-tofinset.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [ssubset_toFinset](declarations/ssubset-tofinset.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [toFinset_ssubset_toFinset](declarations/tofinset-ssubset-tofinset.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [toFinset_subset](declarations/tofinset-subset.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [disjoint_toFinset](declarations/disjoint-tofinset.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [toFinset_nontrivial](declarations/tofinset-nontrivial.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [toFinset_inter](declarations/tofinset-inter.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [toFinset_union](declarations/tofinset-union.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [toFinset_diff](declarations/tofinset-diff.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [toFinset_symmDiff](declarations/tofinset-symmdiff.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [toFinset_compl](declarations/tofinset-compl.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [toFinset_empty](declarations/tofinset-empty.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [toFinset_univ](declarations/tofinset-univ.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [toFinset_eq_empty](declarations/tofinset-eq-empty.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [toFinset_eq_univ](declarations/tofinset-eq-univ.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [toFinset_setOf](declarations/tofinset-setof.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [toFinset_ssubset_univ](declarations/tofinset-ssubset-univ.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [toFinset_image](declarations/tofinset-image.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [toFinset_range](declarations/tofinset-range.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [toFinset_singleton](declarations/tofinset-singleton.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [toFinset_insert](declarations/tofinset-insert.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [filter_mem_univ_eq_toFinset](declarations/filter-mem-univ-eq-tofinset.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [Finset.toFinset_coe](declarations/finset-tofinset-coe.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [Finset.fintypeCoeSort](declarations/finset-fintypecoesort.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [Finset.univ_eq_attach](declarations/finset-univ-eq-attach.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [Fintype.coe_image_univ](declarations/fintype-coe-image-univ.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [List.Subtype.fintype](declarations/list-subtype-fintype.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [Multiset.Subtype.fintype](declarations/multiset-subtype-fintype.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [Finset.Subtype.fintype](declarations/finset-subtype-fintype.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [FinsetCoe.fintype](declarations/finsetcoe-fintype.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [Finset.attach_eq_univ](declarations/finset-attach-eq-univ.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [Prop.fintype](declarations/prop-fintype.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [Fintype.univ_Prop](declarations/fintype-univ-prop.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [Subtype.fintype](declarations/subtype-fintype.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [setFintype](declarations/setfintype.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [finsetEquivSet](declarations/finsetequivset.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [coe_finsetEquivSet](declarations/coe-finsetequivset.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [finsetEquivSet_apply](declarations/finsetequivset-apply.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [finsetEquivSet_symm_apply](declarations/finsetequivset-symm-apply.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [finsetOrderIsoSet](declarations/finsetorderisoset.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [coe_finsetOrderIsoSet](declarations/coe-finsetorderisoset.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [coe_finsetOrderIsoSet_symm](declarations/coe-finsetorderisoset-symm.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [mem_image_univ_iff_mem_range](declarations/mem-image-univ-iff-mem-range.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `elab` | [(anonymous)](declarations/elab.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [precheckFinsetStx](declarations/precheckfinsetstx.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e535c81f28cdd35ffea47dfa40e60d0f8fa25589e1505d36da4c7cedd5170919 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
