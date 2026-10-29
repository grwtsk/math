# List Sigma Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**115 observed declarations and anonymous commands**, 105 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sigma/Variantb45756c5f0281073dac569d33de02cfa2e70c1cc41467539bf12bbe18d91e058.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6bcbca6769cfb4a6cadb9e3501641adff98156e3`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/ListSigmaPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [keys](declarations/keys.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [keys_nil](declarations/keys-nil.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [keys_cons](declarations/keys-cons.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [keys_append](declarations/keys-append.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [mem_keys_of_mem](declarations/mem-keys-of-mem.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [exists_of_mem_keys](declarations/exists-of-mem-keys.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [mem_keys](declarations/mem-keys.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [notMem_keys](declarations/notmem-keys.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [ne_key](declarations/ne-key.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [NodupKeys](declarations/nodupkeys.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [nodupKeys_iff_pairwise](declarations/nodupkeys-iff-pairwise.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [NodupKeys.pairwise_ne](declarations/nodupkeys-pairwise-ne.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [nodupKeys_nil](declarations/nodupkeys-nil.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [nodupKeys_cons](declarations/nodupkeys-cons.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [nodupKeys_middle](declarations/nodupkeys-middle.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [notMem_keys_of_nodupKeys_cons](declarations/notmem-keys-of-nodupkeys-cons.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [nodupKeys_of_nodupKeys_cons](declarations/nodupkeys-of-nodupkeys-cons.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [NodupKeys.eq_of_fst_eq](declarations/nodupkeys-eq-of-fst-eq.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [NodupKeys.eq_of_mk_mem](declarations/nodupkeys-eq-of-mk-mem.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [nodupKeys_singleton](declarations/nodupkeys-singleton.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [NodupKeys.sublist](declarations/nodupkeys-sublist.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [NodupKeys.nodup](declarations/nodupkeys-nodup.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [perm_nodupKeys](declarations/perm-nodupkeys.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [nodupKeys_flatten](declarations/nodupkeys-flatten.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [nodup_zipIdx_map_snd](declarations/nodup-zipidx-map-snd.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [mem_ext](declarations/mem-ext.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [dlookup](declarations/dlookup.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [dlookup_nil](declarations/dlookup-nil.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [dlookup_cons_eq](declarations/dlookup-cons-eq.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [dlookup_cons_ne](declarations/dlookup-cons-ne.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [dlookup_isSome](declarations/dlookup-issome.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [dlookup_eq_none](declarations/dlookup-eq-none.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [of_mem_dlookup](declarations/of-mem-dlookup.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [mem_dlookup](declarations/mem-dlookup.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [map_dlookup_eq_find](declarations/map-dlookup-eq-find.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [mem_dlookup_iff](declarations/mem-dlookup-iff.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [perm_dlookup](declarations/perm-dlookup.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [lookup_ext](declarations/lookup-ext.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [dlookup_map](declarations/dlookup-map-source-edition-3.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [dlookup_map₁](declarations/dlookup-map-source-edition-2.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [dlookup_map₂](declarations/dlookup-map.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [NodupKeys.map₁](declarations/nodupkeys-map.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [map₂_keys](declarations/map-keys.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [NodupKeys.map₂](declarations/nodupkeys-map-source-edition-2.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [dlookup_append](declarations/dlookup-append.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [sublist_dlookup](declarations/sublist-dlookup.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [lookupAll](declarations/lookupall.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [lookupAll_nil](declarations/lookupall-nil.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [lookupAll_cons_eq](declarations/lookupall-cons-eq.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [lookupAll_cons_ne](declarations/lookupall-cons-ne.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [lookupAll_eq_nil](declarations/lookupall-eq-nil.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [head?_lookupAll](declarations/head-lookupall.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [mem_lookupAll](declarations/mem-lookupall.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [lookupAll_sublist](declarations/lookupall-sublist.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [lookupAll_length_le_one](declarations/lookupall-length-le-one.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [lookupAll_eq_dlookup](declarations/lookupall-eq-dlookup.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [lookupAll_nodup](declarations/lookupall-nodup.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [perm_lookupAll](declarations/perm-lookupall.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [kreplace](declarations/kreplace.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [kreplace_of_forall_not](declarations/kreplace-of-forall-not.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [kreplace_self](declarations/kreplace-self.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [keys_kreplace](declarations/keys-kreplace.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [kreplace_nodupKeys](declarations/kreplace-nodupkeys.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [Perm.kreplace](declarations/perm-kreplace.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [kerase](declarations/kerase.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [kerase_nil](declarations/kerase-nil.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [kerase_cons_eq](declarations/kerase-cons-eq.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [kerase_cons_ne](declarations/kerase-cons-ne.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [kerase_of_notMem_keys](declarations/kerase-of-notmem-keys.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [kerase_sublist](declarations/kerase-sublist.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [kerase_keys_subset](declarations/kerase-keys-subset.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [mem_keys_of_mem_keys_kerase](declarations/mem-keys-of-mem-keys-kerase.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [exists_of_kerase](declarations/exists-of-kerase.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [mem_keys_kerase_of_ne](declarations/mem-keys-kerase-of-ne.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [keys_kerase](declarations/keys-kerase.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [kerase_kerase](declarations/kerase-kerase.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [NodupKeys.kerase](declarations/nodupkeys-kerase.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [Perm.kerase](declarations/perm-kerase.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [notMem_keys_kerase](declarations/notmem-keys-kerase.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [dlookup_kerase](declarations/dlookup-kerase.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [dlookup_kerase_ne](declarations/dlookup-kerase-ne.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [kerase_append_left](declarations/kerase-append-left.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [kerase_append_right](declarations/kerase-append-right.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [kerase_comm](declarations/kerase-comm.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [sizeOf_kerase](declarations/sizeof-kerase.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [kinsert](declarations/kinsert.md) | 559 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [kinsert_def](declarations/kinsert-def.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [mem_keys_kinsert](declarations/mem-keys-kinsert.md) | 566 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [kinsert_nodupKeys](declarations/kinsert-nodupkeys.md) | 569 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [Perm.kinsert](declarations/perm-kinsert.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [dlookup_kinsert](declarations/dlookup-kinsert.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [dlookup_kinsert_ne](declarations/dlookup-kinsert-ne.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [kextract](declarations/kextract.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [kextract_eq_dlookup_kerase](declarations/kextract-eq-dlookup-kerase.md) | 598 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `def` | [dedupKeys](declarations/dedupkeys.md) | 611 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [dedupKeys_cons](declarations/dedupkeys-cons.md) | 614 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [nodupKeys_dedupKeys](declarations/nodupkeys-dedupkeys.md) | 618 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [dlookup_dedupKeys](declarations/dlookup-dedupkeys.md) | 635 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [sizeOf_cons_le_sizeOf_cons](declarations/sizeof-cons-le-sizeof-cons.md) | 646 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [sizeOf_dedupKeys](declarations/sizeof-dedupkeys.md) | 652 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [kunion](declarations/kunion.md) | 665 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [nil_kunion](declarations/nil-kunion.md) | 670 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [kunion_nil](declarations/kunion-nil.md) | 674 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [kunion_cons](declarations/kunion-cons.md) | 679 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [mem_keys_kunion](declarations/mem-keys-kunion.md) | 684 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [kunion_kerase](declarations/kunion-kerase.md) | 691 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [NodupKeys.kunion](declarations/nodupkeys-kunion.md) | 696 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [Perm.kunion_right](declarations/perm-kunion-right.md) | 703 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [Perm.kunion_left](declarations/perm-kunion-left.md) | 712 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [Perm.kunion](declarations/perm-kunion.md) | 717 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [dlookup_kunion_left](declarations/dlookup-kunion-left.md) | 722 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [dlookup_kunion_right](declarations/dlookup-kunion-right.md) | 737 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [mem_dlookup_kunion](declarations/mem-dlookup-kunion.md) | 743 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [dlookup_kunion_eq_some](declarations/dlookup-kunion-eq-some.md) | 755 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [mem_dlookup_kunion_middle](declarations/mem-dlookup-kunion-middle.md) | 760 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8816b47fafea7d5453cb5abd371ac7e96e04035d4553fa6b744860969be2a46c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sigma/Variantb45756c5f0281073dac569d33de02cfa2e70c1cc41467539bf12bbe18d91e058.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
