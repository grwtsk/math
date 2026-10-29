# Enumerative Partition Basic Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 14 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variant7f430acabef5f4766adf51fd087a0133112927e75c89bede4b1e54e4a3c59210.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e665a0c1d7e6be9a0c73f0612aa21da2638b4715`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/Combinatorics/EnumerativePartitionBasicPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Partition](declarations/partition.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [le_of_mem_parts](declarations/le-of-mem-parts.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [ofComposition](declarations/ofcomposition.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [ofComposition_surj](declarations/ofcomposition-surj.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [ofSums](declarations/ofsums.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [ofMultiset](declarations/ofmultiset.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [ofSym](declarations/ofsym.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [ofSym_map](declarations/ofsym-map.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [ofSymShapeEquiv](declarations/ofsymshapeequiv.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [toFinsuppAntidiag](declarations/tofinsuppantidiag.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [toFinsuppAntidiag_injective](declarations/tofinsuppantidiag-injective.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [toFinsuppAntidiag_mem_finsuppAntidiag](declarations/tofinsuppantidiag-mem-finsuppantidiag.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [indiscrete](declarations/indiscrete.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [indiscrete_parts](declarations/indiscrete-parts.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [partition_zero_parts](declarations/partition-zero-parts.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [UniquePartitionZero](declarations/uniquepartitionzero.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [partition_one_parts](declarations/partition-one-parts.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [UniquePartitionOne](declarations/uniquepartitionone.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [ofSym_one](declarations/ofsym-one.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [count_ofSums_of_ne_zero](declarations/count-ofsums-of-ne-zero.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [count_ofSums_zero](declarations/count-ofsums-zero.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [(anonymous)](declarations/instance.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [restricted](declarations/restricted.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [countRestricted](declarations/countrestricted.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [odds](declarations/odds.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [distincts](declarations/distincts.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [countRestricted_two](declarations/countrestricted-two.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [oddDistincts](declarations/odddistincts.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [partitionWithPartEquiv](declarations/partitionwithpartequiv.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [partitionWithPartEquiv_apply_parts](declarations/partitionwithpartequiv-apply-parts.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [partitionWithPartEquiv_symm_apply_parts](declarations/partitionwithpartequiv-symm-apply-parts.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3337f5f30a82551f93335d6605401b80f8699df1c5743ca81253cd48d5aae0af -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variant7f430acabef5f4766adf51fd087a0133112927e75c89bede4b1e54e4a3c59210.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
