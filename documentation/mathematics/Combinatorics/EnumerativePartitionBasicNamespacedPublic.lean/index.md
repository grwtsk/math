# Enumerative Partition Basic Namespaced Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 14 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variantdf7f5e594119eb7bcd6cc30843f00619d9e32ab61a0880593f832682ee8bc710.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `42b6d4d956e77f6f993c612cb19d54f5fd32c9d6`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/Combinatorics/EnumerativePartitionBasicNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Partition](declarations/partition.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [le_of_mem_parts](declarations/le-of-mem-parts.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [ofComposition](declarations/ofcomposition.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [ofComposition_surj](declarations/ofcomposition-surj.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [ofSums](declarations/ofsums.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [ofMultiset](declarations/ofmultiset.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [ofSym](declarations/ofsym.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [ofSym_map](declarations/ofsym-map.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [ofSymShapeEquiv](declarations/ofsymshapeequiv.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [toFinsuppAntidiag](declarations/tofinsuppantidiag.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [toFinsuppAntidiag_injective](declarations/tofinsuppantidiag-injective.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [toFinsuppAntidiag_mem_finsuppAntidiag](declarations/tofinsuppantidiag-mem-finsuppantidiag.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [indiscrete](declarations/indiscrete.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [(anonymous)](declarations/instance.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [indiscrete_parts](declarations/indiscrete-parts.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [partition_zero_parts](declarations/partition-zero-parts.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [UniquePartitionZero](declarations/uniquepartitionzero.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [partition_one_parts](declarations/partition-one-parts.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [UniquePartitionOne](declarations/uniquepartitionone.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [ofSym_one](declarations/ofsym-one.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [count_ofSums_of_ne_zero](declarations/count-ofsums-of-ne-zero.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [count_ofSums_zero](declarations/count-ofsums-zero.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [restricted](declarations/restricted.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [countRestricted](declarations/countrestricted.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [odds](declarations/odds.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [distincts](declarations/distincts.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [countRestricted_two](declarations/countrestricted-two.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [oddDistincts](declarations/odddistincts.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [partitionWithPartEquiv](declarations/partitionwithpartequiv.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [partitionWithPartEquiv_apply_parts](declarations/partitionwithpartequiv-apply-parts.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [partitionWithPartEquiv_symm_apply_parts](declarations/partitionwithpartequiv-symm-apply-parts.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=254a78a95f70d4a7fcb2f2318ee2d60a985d0039e60839952799064676bd1ce5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variantdf7f5e594119eb7bcd6cc30843f00619d9e32ab61a0880593f832682ee8bc710.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
