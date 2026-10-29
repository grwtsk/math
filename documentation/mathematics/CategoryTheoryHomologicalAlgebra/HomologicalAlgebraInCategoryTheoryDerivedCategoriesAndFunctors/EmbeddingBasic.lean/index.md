# Embedding Basic

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 9 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/Basic/Variant91a065854ea6f4f1468c571934a9926c84c1aa03cdd744892876ebe6d3a4210f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `88eda7bd2ed3157059989f5004bb9ca072b06b4c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/EmbeddingBasic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Embedding](declarations/embedding.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [op](declarations/op.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `class` | [IsRelIff](declarations/isreliff.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [rel_iff](declarations/rel-iff.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [mk'](declarations/mk.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `class` | [IsTruncGE](declarations/istruncge.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [mem_next](declarations/mem-next.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `class` | [IsTruncLE](declarations/istruncle.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [mem_prev](declarations/mem-prev.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [r](declarations/r.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [r_eq_some](declarations/r-eq-some.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [r_eq_none](declarations/r-eq-none.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [r_f](declarations/r-f.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [f_eq_of_r_eq_some](declarations/f-eq-of-r-eq-some.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [embeddingUpNat](declarations/embeddingupnat.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [embeddingDownNat](declarations/embeddingdownnat.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [embeddingUpIntGE](declarations/embeddingupintge.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [embeddingUpIntLE](declarations/embeddingupintle.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [notMem_range_embeddingUpIntLE_iff](declarations/notmem-range-embeddingupintle-iff.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [notMem_range_embeddingUpIntGE_iff](declarations/notmem-range-embeddingupintge-iff.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5caa66134bf5fa2d00aaa2f640142aff2fd22943f4114df1c0e9362437f599ea -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/Basic/Variant91a065854ea6f4f1468c571934a9926c84c1aa03cdd744892876ebe6d3a4210f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
