# List AList Namespaced

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**79 observed declarations and anonymous commands**, 59 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant72111eff1c7cd2240812126907ae57792123fd439040c45683252e569ce55d1f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7be339f36a0ed8d367667d6ed2cf91f18516b996`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/ListAListNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [AList](declarations/alist.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [List.toAList](declarations/list-toalist.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [ext](declarations/ext.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [keys](declarations/keys.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [keys_nodup](declarations/keys-nodup.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [(anonymous)](declarations/instance.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [mem_keys](declarations/mem-keys.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [mem_of_perm](declarations/mem-of-perm.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [notMem_empty](declarations/notmem-empty.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [empty_entries](declarations/empty-entries.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [keys_empty](declarations/keys-empty.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [singleton](declarations/singleton.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [singleton_entries](declarations/singleton-entries.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [keys_singleton](declarations/keys-singleton.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [lookup](declarations/lookup.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [lookup_empty](declarations/lookup-empty.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [lookup_isSome](declarations/lookup-issome.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [lookup_eq_none](declarations/lookup-eq-none.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [mem_lookup_iff](declarations/mem-lookup-iff.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [perm_lookup](declarations/perm-lookup.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [keys_subset_keys_of_entries_subset_entries](declarations/keys-subset-keys-of-entries-subset-entries.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [replace](declarations/replace.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [keys_replace](declarations/keys-replace.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [mem_replace](declarations/mem-replace.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [perm_replace](declarations/perm-replace.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [foldl](declarations/foldl.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [erase](declarations/erase.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [keys_erase](declarations/keys-erase.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [mem_erase](declarations/mem-erase.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [perm_erase](declarations/perm-erase.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [lookup_erase](declarations/lookup-erase.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [lookup_erase_ne](declarations/lookup-erase-ne.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [erase_erase](declarations/erase-erase.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [insert](declarations/insert.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [entries_insert](declarations/entries-insert.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [entries_insert_of_notMem](declarations/entries-insert-of-notmem.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [insert_of_notMem](declarations/insert-of-notmem.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [insert_empty](declarations/insert-empty.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [mem_insert](declarations/mem-insert.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [keys_insert](declarations/keys-insert.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [perm_insert](declarations/perm-insert.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [lookup_insert](declarations/lookup-insert.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [lookup_insert_ne](declarations/lookup-insert-ne.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [lookup_insert_eq_none](declarations/lookup-insert-eq-none.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [lookup_to_alist](declarations/lookup-to-alist.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [insert_insert](declarations/insert-insert.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [insert_insert_of_ne](declarations/insert-insert-of-ne.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [insert_singleton_eq](declarations/insert-singleton-eq.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [entries_toAList](declarations/entries-toalist.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [toAList_cons](declarations/toalist-cons.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [mk_cons_eq_insert](declarations/mk-cons-eq-insert.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [insertRec](declarations/insertrec.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `example` | [(anonymous)](declarations/example.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [insertRec_empty](declarations/insertrec-empty.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [insertRec_insert](declarations/insertrec-insert.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [insertRec_insert_mk](declarations/insertrec-insert-mk.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [extract](declarations/extract.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [extract_eq_lookup_erase](declarations/extract-eq-lookup-erase.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [union](declarations/union.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [union_entries](declarations/union-entries.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [empty_union](declarations/empty-union.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [union_empty](declarations/union-empty.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [mem_union](declarations/mem-union.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [perm_union](declarations/perm-union.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [union_erase](declarations/union-erase.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [lookup_union_left](declarations/lookup-union-left.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [lookup_union_right](declarations/lookup-union-right.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [mem_lookup_union](declarations/mem-lookup-union.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [lookup_union_eq_some](declarations/lookup-union-eq-some.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [mem_lookup_union_middle](declarations/mem-lookup-union-middle.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [insert_union](declarations/insert-union.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [union_assoc](declarations/union-assoc.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [Disjoint](declarations/disjoint.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [union_comm_of_disjoint](declarations/union-comm-of-disjoint.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=73036f0d399d05f481ccde1e741acff82c85f68d0e85390d3cc9ae1ad1ec77a0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant72111eff1c7cd2240812126907ae57792123fd439040c45683252e569ce55d1f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
