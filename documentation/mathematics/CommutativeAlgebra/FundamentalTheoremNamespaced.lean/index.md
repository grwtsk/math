# Fundamental Theorem Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/CommutativeAlgebra/FundamentalTheorem/Variantb599038e0a793932fb2c103c7a9f009db0fb471c61ab24d4a01ef23c97841409.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b63979578d1a8b3a3b4647a95cb3746e0b10afe5`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/FundamentalTheoremNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [accumulate](declarations/accumulate.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [invAccumulate](declarations/invaccumulate.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [accumulate_rec](declarations/accumulate-rec.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [accumulate_last](declarations/accumulate-last.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [accumulate_injective](declarations/accumulate-injective.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [accumulate_invAccumulate](declarations/accumulate-invaccumulate.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [esymmAlgHom](declarations/esymmalghom.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [esymmAlgHom_apply](declarations/esymmalghom-apply.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [rename_esymmAlgHom](declarations/rename-esymmalghom.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [esymmAlgHomMonomial](declarations/esymmalghommonomial.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [isSymmetric_esymmAlgHomMonomial](declarations/issymmetric-esymmalghommonomial.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [esymmAlgHomMonomial_single](declarations/esymmalghommonomial-single.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [esymmAlgHomMonomial_single_one](declarations/esymmalghommonomial-single-one.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [esymmAlgHomMonomial_add](declarations/esymmalghommonomial-add.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [esymmAlgHom_zero](declarations/esymmalghom-zero.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [supDegree_monic_esymm](declarations/supdegree-monic-esymm.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [supDegree_esymm](declarations/supdegree-esymm.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [monic_esymm](declarations/monic-esymm.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [leadingCoeff_esymmAlgHomMonomial](declarations/leadingcoeff-esymmalghommonomial.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [supDegree_esymmAlgHomMonomial](declarations/supdegree-esymmalghommonomial.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [IsSymmetric.antitone_supDegree](declarations/issymmetric-antitone-supdegree.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [esymmAlgHom_fin_injective](declarations/esymmalghom-fin-injective.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [esymmAlgHom_injective](declarations/esymmalghom-injective.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [esymmAlgHom_fin_bijective](declarations/esymmalghom-fin-bijective.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [esymmAlgHom_fin_surjective](declarations/esymmalghom-fin-surjective.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [esymmAlgHom_surjective](declarations/esymmalghom-surjective.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [esymmAlgEquiv](declarations/esymmalgequiv.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=087d99a0334058d9bcd9259f9944085d182c38c220e9eadefe819d11c2e74dc8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/FundamentalTheorem/Variantb599038e0a793932fb2c103c7a9f009db0fb471c61ab24d4a01ef23c97841409.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
