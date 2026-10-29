# Dot Product Namespaced Dot Product Nonneg Of Nonneg

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**24 observed declarations and anonymous commands**, 24 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/DotProduct/Variante4b2faa4472a189191ad3a3b425726a940196cc28db4ef4830478bef74f12b04.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2d0b64a9e17b0bfc84fa0b6930cefa13a2a51f52`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DotProductNamespacedDotProductNonnegOfNonneg.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [dotProduct_eq](declarations/dotproduct-eq.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [dotProduct_eq_iff](declarations/dotproduct-eq-iff.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [dotProduct_eq_zero](declarations/dotproduct-eq-zero.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [dotProduct_eq_zero_iff](declarations/dotproduct-eq-zero-iff.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [dotProduct_nonneg_of_nonneg](declarations/dotproduct-nonneg-of-nonneg.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [dotProduct_le_dotProduct_of_nonneg_right](declarations/dotproduct-le-dotproduct-of-nonneg-right.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [dotProduct_le_dotProduct_of_nonneg_left](declarations/dotproduct-le-dotproduct-of-nonneg-left.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [dotProduct_self_eq_zero](declarations/dotproduct-self-eq-zero.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [dotProduct_star_self_nonneg](declarations/dotproduct-star-self-nonneg.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [dotProduct_self_star_nonneg](declarations/dotproduct-self-star-nonneg.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [dotProduct_star_self_eq_zero](declarations/dotproduct-star-self-eq-zero.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [dotProduct_self_star_eq_zero](declarations/dotproduct-self-star-eq-zero.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [conjTranspose_mul_self_eq_zero](declarations/conjtranspose-mul-self-eq-zero.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [self_mul_conjTranspose_eq_zero](declarations/self-mul-conjtranspose-eq-zero.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [conjTranspose_mul_self_mul_eq_zero](declarations/conjtranspose-mul-self-mul-eq-zero.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [self_mul_conjTranspose_mul_eq_zero](declarations/self-mul-conjtranspose-mul-eq-zero.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [mul_self_mul_conjTranspose_eq_zero](declarations/mul-self-mul-conjtranspose-eq-zero.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [mul_conjTranspose_mul_self_eq_zero](declarations/mul-conjtranspose-mul-self-eq-zero.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [conjTranspose_mul_self_mulVec_eq_zero](declarations/conjtranspose-mul-self-mulvec-eq-zero.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [self_mul_conjTranspose_mulVec_eq_zero](declarations/self-mul-conjtranspose-mulvec-eq-zero.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [vecMul_conjTranspose_mul_self_eq_zero](declarations/vecmul-conjtranspose-mul-self-eq-zero.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [vecMul_self_mul_conjTranspose_eq_zero](declarations/vecmul-self-mul-conjtranspose-eq-zero.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [dotProduct_star_self_pos_iff](declarations/dotproduct-star-self-pos-iff.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [dotProduct_self_star_pos_iff](declarations/dotproduct-self-star-pos-iff.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1b39b4bfc9a9a5c72fc99f7236eb4b27b24141bf6794544962165abd8aaeda8c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/DotProduct/Variante4b2faa4472a189191ad3a3b425726a940196cc28db4ef4830478bef74f12b04.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
