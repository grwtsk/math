# Infix Namespaced Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**55 observed declarations and anonymous commands**, 51 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variant93ac72fdae4e39c056f6a2db745bf327ee96ccdd14939873b4a331ebbffc9e51.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6e882f9f33e5ba9ca9826670306b460fd8873e6e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/InfixNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `lemma` | [IsPrefix.take](declarations/isprefix-take.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [IsPrefix.drop](declarations/isprefix-drop.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [isPrefix_append_of_length](declarations/isprefix-append-of-length.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [take_isPrefix_take](declarations/take-isprefix-take.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [IsPrefix.flatten](declarations/isprefix-flatten.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [IsPrefix.flatMap](declarations/isprefix-flatmap.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [IsSuffix.flatten](declarations/issuffix-flatten.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [IsSuffix.flatMap](declarations/issuffix-flatmap.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [IsInfix.flatten](declarations/isinfix-flatten.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [IsInfix.flatMap](declarations/isinfix-flatmap.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [dropSlice_sublist](declarations/dropslice-sublist.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [dropSlice_subset](declarations/dropslice-subset.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [mem_of_mem_dropSlice](declarations/mem-of-mem-dropslice.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [tail_subset](declarations/tail-subset.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mem_of_mem_dropLast](declarations/mem-of-mem-droplast.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [concat_get_prefix](declarations/concat-get-prefix.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [prefix_append_drop](declarations/prefix-append-drop.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [decidableInfix](declarations/decidableinfix.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [IsPrefix.reduceOption](declarations/isprefix-reduceoption.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [singleton_infix_iff](declarations/singleton-infix-iff.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [singleton_infix_singleton_iff](declarations/singleton-infix-singleton-iff.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [infix_singleton_iff](declarations/infix-singleton-iff.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [infix_antisymm](declarations/infix-antisymm.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [IsPrefix.nodup](declarations/isprefix-nodup.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [IsInfix.nodup](declarations/isinfix-nodup.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [IsSuffix.nodup](declarations/issuffix-nodup.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [(anonymous)](declarations/instance.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [mem_inits](declarations/mem-inits.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [mem_tails](declarations/mem-tails.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [inits_cons](declarations/inits-cons.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [tails_cons](declarations/tails-cons.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [inits_append](declarations/inits-append.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [tails_append](declarations/tails-append.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [inits_eq_tails](declarations/inits-eq-tails.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [tails_eq_inits](declarations/tails-eq-inits.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [inits_reverse](declarations/inits-reverse.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [tails_reverse](declarations/tails-reverse.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [map_reverse_inits](declarations/map-reverse-inits.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [map_reverse_tails](declarations/map-reverse-tails.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [length_tails](declarations/length-tails.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [length_inits](declarations/length-inits.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [getElem_tails](declarations/getelem-tails.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [get_tails](declarations/get-tails.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [getElem_inits](declarations/getelem-inits.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [get_inits](declarations/get-inits.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [map_inits](declarations/map-inits.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [map_tails](declarations/map-tails.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [take_inits](declarations/take-inits.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [insert_eq_ite](declarations/insert-eq-ite.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [suffix_insert](declarations/suffix-insert.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [infix_insert](declarations/infix-insert.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [sublist_insert](declarations/sublist-insert.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [subset_insert](declarations/subset-insert.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=805857f5a7fb2a0c3138159fd8ce1db1032eeaedd8596ba5939f3a772bff7529 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variant93ac72fdae4e39c056f6a2db745bf327ee96ccdd14939873b4a331ebbffc9e51.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
