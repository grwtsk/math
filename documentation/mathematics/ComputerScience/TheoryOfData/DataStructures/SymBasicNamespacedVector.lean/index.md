# Sym Basic Namespaced Vector

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**106 observed declarations and anonymous commands**, 70 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant803bd90ad43eb1c6470881b03eb3430b44dc79caccc452ae95dbfb1c4be79b87.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `beee8761f665607d6fe23ea9f71e38f4b32f46b2`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/SymBasicNamespacedVector.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [Sym](declarations/sym.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Sym.toMultiset](declarations/sym-tomultiset.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [Sym.hasCoe](declarations/sym-hascoe.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [Vector.Perm.isSetoid](declarations/vector-perm-issetoid.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [coe_injective](declarations/coe-injective.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [coe_inj](declarations/coe-inj.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [ext](declarations/ext.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [val_eq_coe](declarations/val-eq-coe.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `abbrev` | [mk](declarations/mk.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [nil](declarations/nil.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [coe_nil](declarations/coe-nil.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [cons](declarations/cons-source-edition-2.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [cons_inj_right](declarations/cons-inj-right.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [cons_inj_left](declarations/cons-inj-left.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [cons_swap](declarations/cons-swap.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [coe_cons](declarations/coe-cons.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [ofVector](declarations/ofvector.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [ofVector_nil](declarations/ofvector-nil.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [ofVector_cons](declarations/ofvector-cons.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [decidableMem](declarations/decidablemem.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [mem_mk](declarations/mem-mk.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [mem_cons](declarations/mem-cons.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [mem_coe](declarations/mem-coe.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [mem_cons_of_mem](declarations/mem-cons-of-mem.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [mem_cons_self](declarations/mem-cons-self.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [cons_of_coe_eq](declarations/cons-of-coe-eq.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [sound](declarations/sound.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [erase](declarations/erase.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [erase_mk](declarations/erase-mk.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [coe_erase](declarations/coe-erase.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [cons_erase](declarations/cons-erase.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [erase_cons_head](declarations/erase-cons-head.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [Sym'](declarations/sym-source-edition-2.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [cons'](declarations/cons.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [symEquivSym'](declarations/symequivsym.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [cons_equiv_eq_equiv_cons](declarations/cons-equiv-eq-equiv-cons.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [instZeroSym](declarations/instzerosym.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [eq_nil_of_card_zero](declarations/eq-nil-of-card-zero.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [uniqueZero](declarations/uniquezero.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [replicate](declarations/replicate.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [replicate_succ](declarations/replicate-succ.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [coe_replicate](declarations/coe-replicate.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [mem_replicate](declarations/mem-replicate.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [eq_replicate_iff](declarations/eq-replicate-iff.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [exists_mem](declarations/exists-mem.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [exists_eq_cons_of_succ](declarations/exists-eq-cons-of-succ.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [eq_replicate](declarations/eq-replicate.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [eq_replicate_of_subsingleton](declarations/eq-replicate-of-subsingleton.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `instance` | [inhabitedSym](declarations/inhabitedsym-source-edition-2.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [inhabitedSym'](declarations/inhabitedsym.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [replicate_right_inj](declarations/replicate-right-inj.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [replicate_right_injective](declarations/replicate-right-injective.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `instance` | [(anonymous)](declarations/instance.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [map](declarations/map.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [mem_map](declarations/mem-map.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [map_id'](declarations/map-id-source-edition-2.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [map_id](declarations/map-id.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [map_map](declarations/map-map.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [map_zero](declarations/map-zero.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [map_cons](declarations/map-cons.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [map_congr](declarations/map-congr.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [map_mk](declarations/map-mk.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [coe_map](declarations/coe-map.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [map_injective](declarations/map-injective.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [equivCongr](declarations/equivcongr.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [attach](declarations/attach.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [attach_mk](declarations/attach-mk.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [coe_attach](declarations/coe-attach.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [attach_map_coe](declarations/attach-map-coe.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [mem_attach](declarations/mem-attach.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [attach_nil](declarations/attach-nil.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [attach_cons](declarations/attach-cons.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [cast](declarations/cast.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [cast_rfl](declarations/cast-rfl.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [cast_cast](declarations/cast-cast.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [coe_cast](declarations/coe-cast.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [mem_cast](declarations/mem-cast.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [append](declarations/append.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [append_inj_right](declarations/append-inj-right.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [append_inj_left](declarations/append-inj-left.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [append_comm](declarations/append-comm.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [coe_append](declarations/coe-append.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [mem_append_iff](declarations/mem-append-iff.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [fill](declarations/fill.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [coe_fill](declarations/coe-fill.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [mem_fill_iff](declarations/mem-fill-iff.md) | 540 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [filterNe](declarations/filterne.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [sigma_sub_ext](declarations/sigma-sub-ext.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [fill_filterNe](declarations/fill-filterne.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [filter_ne_fill](declarations/filter-ne-fill.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `def` | [encode](declarations/encode.md) | 609 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [encode_of_none_mem](declarations/encode-of-none-mem.md) | 618 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [encode_of_not_none_mem](declarations/encode-of-not-none-mem.md) | 624 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [decode](declarations/decode.md) | 634 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [decode_inl](declarations/decode-inl.md) | 641 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [decode_inr](declarations/decode-inr.md) | 646 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [decode_encode](declarations/decode-encode.md) | 650 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [encode_decode](declarations/encode-decode.md) | 659 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `def` | [symOptionSuccEquiv](declarations/symoptionsuccequiv.md) | 677 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=16de1015317dce0b832fcff6f7b71b202b3683daa9dea42fcf52fb303435b66e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant803bd90ad43eb1c6470881b03eb3430b44dc79caccc452ae95dbfb1c4be79b87.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
