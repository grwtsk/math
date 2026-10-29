# List AList

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**79 observed declarations and anonymous commands**, 59 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant5f019510d60398ca0f3ecfe2cae65409e09f5b22f978391284049d74d518fc48.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `536f64f75d09e149a90802384b344e6e15929651`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/ListAList.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [AList](declarations/alist.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [List.toAList](declarations/list-toalist.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [ext](declarations/ext.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [keys](declarations/keys.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [keys_nodup](declarations/keys-nodup.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [(anonymous)](declarations/instance.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [mem_keys](declarations/mem-keys.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [mem_of_perm](declarations/mem-of-perm.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [notMem_empty](declarations/notmem-empty.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [empty_entries](declarations/empty-entries.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [keys_empty](declarations/keys-empty.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [singleton](declarations/singleton.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [singleton_entries](declarations/singleton-entries.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [keys_singleton](declarations/keys-singleton.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [lookup](declarations/lookup.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [lookup_empty](declarations/lookup-empty.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [lookup_isSome](declarations/lookup-issome.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [lookup_eq_none](declarations/lookup-eq-none.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [mem_lookup_iff](declarations/mem-lookup-iff.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [perm_lookup](declarations/perm-lookup.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [keys_subset_keys_of_entries_subset_entries](declarations/keys-subset-keys-of-entries-subset-entries.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [replace](declarations/replace.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [keys_replace](declarations/keys-replace.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [mem_replace](declarations/mem-replace.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [perm_replace](declarations/perm-replace.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [foldl](declarations/foldl.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [erase](declarations/erase.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [keys_erase](declarations/keys-erase.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [mem_erase](declarations/mem-erase.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [perm_erase](declarations/perm-erase.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [lookup_erase](declarations/lookup-erase.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [lookup_erase_ne](declarations/lookup-erase-ne.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [erase_erase](declarations/erase-erase.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [insert](declarations/insert.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [entries_insert](declarations/entries-insert.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [entries_insert_of_notMem](declarations/entries-insert-of-notmem.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [insert_of_notMem](declarations/insert-of-notmem.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [insert_empty](declarations/insert-empty.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [mem_insert](declarations/mem-insert.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [keys_insert](declarations/keys-insert.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [perm_insert](declarations/perm-insert.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [lookup_insert](declarations/lookup-insert.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [lookup_insert_ne](declarations/lookup-insert-ne.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [lookup_insert_eq_none](declarations/lookup-insert-eq-none.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [lookup_to_alist](declarations/lookup-to-alist.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [insert_insert](declarations/insert-insert.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [insert_insert_of_ne](declarations/insert-insert-of-ne.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [insert_singleton_eq](declarations/insert-singleton-eq.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [entries_toAList](declarations/entries-toalist.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [toAList_cons](declarations/toalist-cons.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [mk_cons_eq_insert](declarations/mk-cons-eq-insert.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [insertRec](declarations/insertrec.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `example` | [(anonymous)](declarations/example.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [insertRec_empty](declarations/insertrec-empty.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [insertRec_insert](declarations/insertrec-insert.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [insertRec_insert_mk](declarations/insertrec-insert-mk.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [extract](declarations/extract.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [extract_eq_lookup_erase](declarations/extract-eq-lookup-erase.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [union](declarations/union.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [union_entries](declarations/union-entries.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [empty_union](declarations/empty-union.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [union_empty](declarations/union-empty.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [mem_union](declarations/mem-union.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [perm_union](declarations/perm-union.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [union_erase](declarations/union-erase.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [lookup_union_left](declarations/lookup-union-left.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [lookup_union_right](declarations/lookup-union-right.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [mem_lookup_union](declarations/mem-lookup-union.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [lookup_union_eq_some](declarations/lookup-union-eq-some.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [mem_lookup_union_middle](declarations/mem-lookup-union-middle.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [insert_union](declarations/insert-union.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [union_assoc](declarations/union-assoc.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [Disjoint](declarations/disjoint.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [union_comm_of_disjoint](declarations/union-comm-of-disjoint.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2faa8a615e08ed796ad061a6eed6ed1517cc0bfa11220433d8424f508a83e7dd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant5f019510d60398ca0f3ecfe2cae65409e09f5b22f978391284049d74d518fc48.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
