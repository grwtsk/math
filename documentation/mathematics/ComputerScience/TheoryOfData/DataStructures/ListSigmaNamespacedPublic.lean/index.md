# List Sigma Namespaced Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**115 observed declarations and anonymous commands**, 105 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sigma/Variant81152708d44421bef196c34bfe28a51cfb0702031ae3e5279d243b1cbcd673a4.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `db61810f06a57c2d288ca5ed3d3d06ca2b95a77f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [keys](declarations/keys.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [keys_nil](declarations/keys-nil.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [keys_cons](declarations/keys-cons.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [keys_append](declarations/keys-append.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [mem_keys_of_mem](declarations/mem-keys-of-mem.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [exists_of_mem_keys](declarations/exists-of-mem-keys.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [mem_keys](declarations/mem-keys.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [notMem_keys](declarations/notmem-keys.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [ne_key](declarations/ne-key.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [NodupKeys](declarations/nodupkeys.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [nodupKeys_iff_pairwise](declarations/nodupkeys-iff-pairwise.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [NodupKeys.pairwise_ne](declarations/nodupkeys-pairwise-ne.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [nodupKeys_nil](declarations/nodupkeys-nil.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [nodupKeys_cons](declarations/nodupkeys-cons.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [nodupKeys_middle](declarations/nodupkeys-middle.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [notMem_keys_of_nodupKeys_cons](declarations/notmem-keys-of-nodupkeys-cons.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [nodupKeys_of_nodupKeys_cons](declarations/nodupkeys-of-nodupkeys-cons.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [NodupKeys.eq_of_fst_eq](declarations/nodupkeys-eq-of-fst-eq.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [NodupKeys.eq_of_mk_mem](declarations/nodupkeys-eq-of-mk-mem.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [nodupKeys_singleton](declarations/nodupkeys-singleton.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [NodupKeys.sublist](declarations/nodupkeys-sublist.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [NodupKeys.nodup](declarations/nodupkeys-nodup.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [perm_nodupKeys](declarations/perm-nodupkeys.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [nodupKeys_flatten](declarations/nodupkeys-flatten.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [nodup_zipIdx_map_snd](declarations/nodup-zipidx-map-snd.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [mem_ext](declarations/mem-ext.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [dlookup](declarations/dlookup.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [dlookup_nil](declarations/dlookup-nil.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [dlookup_cons_eq](declarations/dlookup-cons-eq.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [dlookup_cons_ne](declarations/dlookup-cons-ne.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [dlookup_isSome](declarations/dlookup-issome.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [dlookup_eq_none](declarations/dlookup-eq-none.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [of_mem_dlookup](declarations/of-mem-dlookup.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [mem_dlookup](declarations/mem-dlookup.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [map_dlookup_eq_find](declarations/map-dlookup-eq-find.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [mem_dlookup_iff](declarations/mem-dlookup-iff.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [perm_dlookup](declarations/perm-dlookup.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [lookup_ext](declarations/lookup-ext.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [dlookup_map](declarations/dlookup-map.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [dlookup_map₁](declarations/dlookup-map-source-edition-3.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [dlookup_map₂](declarations/dlookup-map-source-edition-2.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [NodupKeys.map₁](declarations/nodupkeys-map.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [map₂_keys](declarations/map-keys.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [NodupKeys.map₂](declarations/nodupkeys-map-source-edition-2.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [dlookup_append](declarations/dlookup-append.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [sublist_dlookup](declarations/sublist-dlookup.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [lookupAll](declarations/lookupall.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [lookupAll_nil](declarations/lookupall-nil.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [lookupAll_cons_eq](declarations/lookupall-cons-eq.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [lookupAll_cons_ne](declarations/lookupall-cons-ne.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [lookupAll_eq_nil](declarations/lookupall-eq-nil.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [head?_lookupAll](declarations/head-lookupall.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [mem_lookupAll](declarations/mem-lookupall.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [lookupAll_sublist](declarations/lookupall-sublist.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [lookupAll_length_le_one](declarations/lookupall-length-le-one.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [lookupAll_eq_dlookup](declarations/lookupall-eq-dlookup.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [lookupAll_nodup](declarations/lookupall-nodup.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [perm_lookupAll](declarations/perm-lookupall.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [kreplace](declarations/kreplace.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [kreplace_of_forall_not](declarations/kreplace-of-forall-not.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [kreplace_self](declarations/kreplace-self.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [keys_kreplace](declarations/keys-kreplace.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [kreplace_nodupKeys](declarations/kreplace-nodupkeys.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [Perm.kreplace](declarations/perm-kreplace.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [kerase](declarations/kerase.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [kerase_nil](declarations/kerase-nil.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [kerase_cons_eq](declarations/kerase-cons-eq.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [kerase_cons_ne](declarations/kerase-cons-ne.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [kerase_of_notMem_keys](declarations/kerase-of-notmem-keys.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [kerase_sublist](declarations/kerase-sublist.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [kerase_keys_subset](declarations/kerase-keys-subset.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [mem_keys_of_mem_keys_kerase](declarations/mem-keys-of-mem-keys-kerase.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [exists_of_kerase](declarations/exists-of-kerase.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [mem_keys_kerase_of_ne](declarations/mem-keys-kerase-of-ne.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [keys_kerase](declarations/keys-kerase.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [kerase_kerase](declarations/kerase-kerase.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [NodupKeys.kerase](declarations/nodupkeys-kerase.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [Perm.kerase](declarations/perm-kerase.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [notMem_keys_kerase](declarations/notmem-keys-kerase.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [dlookup_kerase](declarations/dlookup-kerase.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [dlookup_kerase_ne](declarations/dlookup-kerase-ne.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [kerase_append_left](declarations/kerase-append-left.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [kerase_append_right](declarations/kerase-append-right.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [kerase_comm](declarations/kerase-comm.md) | 540 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [sizeOf_kerase](declarations/sizeof-kerase.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [kinsert](declarations/kinsert.md) | 567 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [kinsert_def](declarations/kinsert-def.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [mem_keys_kinsert](declarations/mem-keys-kinsert.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [kinsert_nodupKeys](declarations/kinsert-nodupkeys.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [Perm.kinsert](declarations/perm-kinsert.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [dlookup_kinsert](declarations/dlookup-kinsert.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [dlookup_kinsert_ne](declarations/dlookup-kinsert-ne.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [kextract](declarations/kextract.md) | 597 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [kextract_eq_dlookup_kerase](declarations/kextract-eq-dlookup-kerase.md) | 606 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `def` | [dedupKeys](declarations/dedupkeys.md) | 619 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [dedupKeys_cons](declarations/dedupkeys-cons.md) | 622 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [nodupKeys_dedupKeys](declarations/nodupkeys-dedupkeys.md) | 626 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [dlookup_dedupKeys](declarations/dlookup-dedupkeys.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [sizeOf_cons_le_sizeOf_cons](declarations/sizeof-cons-le-sizeof-cons.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [sizeOf_dedupKeys](declarations/sizeof-dedupkeys.md) | 660 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [kunion](declarations/kunion.md) | 673 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [nil_kunion](declarations/nil-kunion.md) | 678 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [kunion_nil](declarations/kunion-nil.md) | 682 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [kunion_cons](declarations/kunion-cons.md) | 687 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [mem_keys_kunion](declarations/mem-keys-kunion.md) | 692 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [kunion_kerase](declarations/kunion-kerase.md) | 699 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [NodupKeys.kunion](declarations/nodupkeys-kunion.md) | 704 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [Perm.kunion_right](declarations/perm-kunion-right.md) | 711 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [Perm.kunion_left](declarations/perm-kunion-left.md) | 720 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [Perm.kunion](declarations/perm-kunion.md) | 725 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [dlookup_kunion_left](declarations/dlookup-kunion-left.md) | 730 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [dlookup_kunion_right](declarations/dlookup-kunion-right.md) | 745 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [mem_dlookup_kunion](declarations/mem-dlookup-kunion.md) | 751 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [dlookup_kunion_eq_some](declarations/dlookup-kunion-eq-some.md) | 763 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [mem_dlookup_kunion_middle](declarations/mem-dlookup-kunion-middle.md) | 768 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=541b8e0cfebcc0bac50fffa72e1c3fd2131c444ab2eb12e1c91cdbabf53af6d4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sigma/Variant81152708d44421bef196c34bfe28a51cfb0702031ae3e5279d243b1cbcd673a4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
