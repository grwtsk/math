# Infix Is Prefix Append Of Length

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**47 observed declarations and anonymous commands**, 43 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variant0a0423644f02d3360d360a33781acb464826a3c64fc1e1df1eb9a330b8f05a1f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `29b1a855652a70fd9f95b33c7df13918f17140d1`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/InfixIsPrefixAppendOfLength.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `lemma` | [IsPrefix.take](declarations/isprefix-take.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [IsPrefix.drop](declarations/isprefix-drop.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [isPrefix_append_of_length](declarations/isprefix-append-of-length.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [take_isPrefix_take](declarations/take-isprefix-take.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [IsPrefix.flatten](declarations/isprefix-flatten.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [IsPrefix.flatMap](declarations/isprefix-flatmap.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [IsSuffix.flatten](declarations/issuffix-flatten.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [IsSuffix.flatMap](declarations/issuffix-flatmap.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [IsInfix.flatten](declarations/isinfix-flatten.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [IsInfix.flatMap](declarations/isinfix-flatmap.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [dropSlice_sublist](declarations/dropslice-sublist.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [dropSlice_subset](declarations/dropslice-subset.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [mem_of_mem_dropSlice](declarations/mem-of-mem-dropslice.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [tail_subset](declarations/tail-subset.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mem_of_mem_dropLast](declarations/mem-of-mem-droplast.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [concat_get_prefix](declarations/concat-get-prefix.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [decidableInfix](declarations/decidableinfix.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [IsPrefix.reduceOption](declarations/isprefix-reduceoption.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [(anonymous)](declarations/instance.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [mem_inits](declarations/mem-inits.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [mem_tails](declarations/mem-tails.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [inits_cons](declarations/inits-cons.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [tails_cons](declarations/tails-cons.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [inits_append](declarations/inits-append.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [tails_append](declarations/tails-append.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [inits_eq_tails](declarations/inits-eq-tails.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [tails_eq_inits](declarations/tails-eq-inits.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [inits_reverse](declarations/inits-reverse.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [tails_reverse](declarations/tails-reverse.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [map_reverse_inits](declarations/map-reverse-inits.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [map_reverse_tails](declarations/map-reverse-tails.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [length_tails](declarations/length-tails.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [length_inits](declarations/length-inits.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [getElem_tails](declarations/getelem-tails.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [get_tails](declarations/get-tails.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [getElem_inits](declarations/getelem-inits.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [get_inits](declarations/get-inits.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [map_inits](declarations/map-inits.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [map_tails](declarations/map-tails.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [take_inits](declarations/take-inits.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [insert_eq_ite](declarations/insert-eq-ite.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [suffix_insert](declarations/suffix-insert.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [infix_insert](declarations/infix-insert.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [sublist_insert](declarations/sublist-insert.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [subset_insert](declarations/subset-insert.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=105701a6cb6b1d85e0b236017106704005dc6bceafa7fc42c0a2e15bd8807a4a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variant0a0423644f02d3360d360a33781acb464826a3c64fc1e1df1eb9a330b8f05a1f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
