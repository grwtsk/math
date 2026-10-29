# Finmap Namespaced Ext Iff

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**110 observed declarations and anonymous commands**, 81 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finmap/Variant005a47eed17324e65fca62af0afe0342af88045d072be91105c41245e97035f5.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b3e35e946ff945582a5daeded0d2a7b7a2117c3b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [keys](declarations/keys-source-edition-2.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [coe_keys](declarations/coe-keys.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [NodupKeys](declarations/nodupkeys.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [coe_nodupKeys](declarations/coe-nodupkeys.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [nodup_keys](declarations/nodup-keys.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [NodupKeys.nodup](declarations/nodupkeys-nodup.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [Finmap](declarations/finmap.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [AList.toFinmap](declarations/alist-tofinmap.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [AList.toFinmap_eq](declarations/alist-tofinmap-eq.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [AList.toFinmap_entries](declarations/alist-tofinmap-entries.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [List.toFinmap](declarations/list-tofinmap.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [nodup_entries](declarations/nodup-entries.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [liftOn](declarations/lifton-source-edition-2.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [liftOn_toFinmap](declarations/lifton-tofinmap-source-edition-2.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [liftOn₂](declarations/lifton.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [liftOn₂_toFinmap](declarations/lifton-tofinmap.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [induction_on](declarations/induction-on-source-edition-2.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [induction_on₂](declarations/induction-on-source-edition-3.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [induction_on₃](declarations/induction-on.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [ext](declarations/ext.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [ext_iff](declarations/ext-iff.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [mem_def](declarations/mem-def.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [mem_toFinmap](declarations/mem-tofinmap.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [keys](declarations/keys.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [keys_val](declarations/keys-val.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [keys_ext](declarations/keys-ext.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [mem_keys](declarations/mem-keys.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [empty_toFinmap](declarations/empty-tofinmap.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [toFinmap_nil](declarations/tofinmap-nil.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [not_mem_empty](declarations/not-mem-empty.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [keys_empty](declarations/keys-empty.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [singleton](declarations/singleton.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [keys_singleton](declarations/keys-singleton.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [mem_singleton](declarations/mem-singleton.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [decidableEq](declarations/decidableeq.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [lookup](declarations/lookup.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [lookup_toFinmap](declarations/lookup-tofinmap.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [dlookup_list_toFinmap](declarations/dlookup-list-tofinmap.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [lookup_empty](declarations/lookup-empty.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [lookup_isSome](declarations/lookup-issome.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [lookup_eq_none](declarations/lookup-eq-none.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [mem_lookup_iff](declarations/mem-lookup-iff.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [lookup_eq_some_iff](declarations/lookup-eq-some-iff.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [sigma_keys_lookup](declarations/sigma-keys-lookup.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [lookup_singleton_eq](declarations/lookup-singleton-eq.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [mem_iff](declarations/mem-iff.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [mem_of_lookup_eq_some](declarations/mem-of-lookup-eq-some.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [ext_lookup](declarations/ext-lookup.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [keysLookupEquiv](declarations/keyslookupequiv.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [keysLookupEquiv_symm_apply_keys](declarations/keyslookupequiv-symm-apply-keys.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [keysLookupEquiv_symm_apply_lookup](declarations/keyslookupequiv-symm-apply-lookup.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [replace](declarations/replace.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [replace_toFinmap](declarations/replace-tofinmap.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [keys_replace](declarations/keys-replace.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [mem_replace](declarations/mem-replace.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [foldl](declarations/foldl.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [any](declarations/any.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [all](declarations/all.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [erase](declarations/erase.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [erase_toFinmap](declarations/erase-tofinmap.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [keys_erase_toFinset](declarations/keys-erase-tofinset.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [keys_erase](declarations/keys-erase.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [mem_erase](declarations/mem-erase.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [not_mem_erase_self](declarations/not-mem-erase-self.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [lookup_erase](declarations/lookup-erase.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [lookup_erase_ne](declarations/lookup-erase-ne.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [erase_erase](declarations/erase-erase.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [sdiff](declarations/sdiff.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [insert](declarations/insert.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [insert_toFinmap](declarations/insert-tofinmap.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [insert_entries_of_neg](declarations/insert-entries-of-neg.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [mem_insert](declarations/mem-insert.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [lookup_insert](declarations/lookup-insert.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [lookup_insert_of_ne](declarations/lookup-insert-of-ne.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [insert_insert](declarations/insert-insert.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [insert_insert_of_ne](declarations/insert-insert-of-ne.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [toFinmap_cons](declarations/tofinmap-cons.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [mem_list_toFinmap](declarations/mem-list-tofinmap.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [insert_singleton_eq](declarations/insert-singleton-eq.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [extract](declarations/extract.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [extract_eq_lookup_erase](declarations/extract-eq-lookup-erase.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [union](declarations/union.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [mem_union](declarations/mem-union.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [union_toFinmap](declarations/union-tofinmap.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [keys_union](declarations/keys-union.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [lookup_union_left](declarations/lookup-union-left.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [lookup_union_right](declarations/lookup-union-right.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [lookup_union_left_of_not_in](declarations/lookup-union-left-of-not-in.md) | 600 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [mem_lookup_union](declarations/mem-lookup-union.md) | 608 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [mem_lookup_union_middle](declarations/mem-lookup-union-middle.md) | 613 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [insert_union](declarations/insert-union.md) | 618 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [union_assoc](declarations/union-assoc.md) | 622 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [empty_union](declarations/empty-union.md) | 628 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [union_empty](declarations/union-empty.md) | 635 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [erase_union_singleton](declarations/erase-union-singleton.md) | 641 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `def` | [Disjoint](declarations/disjoint.md) | 656 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [disjoint_empty](declarations/disjoint-empty.md) | 660 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [Disjoint.symm](declarations/disjoint-symm.md) | 665 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [Disjoint.symm_iff](declarations/disjoint-symm-iff.md) | 668 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `instance` | [(anonymous)](declarations/instance.md) | 676 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [disjoint_union_left](declarations/disjoint-union-left.md) | 678 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [disjoint_union_right](declarations/disjoint-union-right.md) | 682 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [union_comm_of_disjoint](declarations/union-comm-of-disjoint.md) | 687 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [union_cancel](declarations/union-cancel.md) | 693 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cbc05ca838c3c1d4dda7caeaf5517f5dffd1286c0cc52e080b8e1371d688dd8b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Finmap/Variant005a47eed17324e65fca62af0afe0342af88045d072be91105c41245e97035f5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
