# Fundamental Theorem

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant9685e9650f40bb6892f90811f3faaa5868cc6d856c60677d27eac7f5c8fd4218.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5c4736c30e82459d8bb087ca2f4ce876ddb6c1a9`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/FundamentalTheorem.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [accumulate](declarations/accumulate.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [invAccumulate](declarations/invaccumulate.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [accumulate_rec](declarations/accumulate-rec.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [accumulate_last](declarations/accumulate-last.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [accumulate_injective](declarations/accumulate-injective.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [accumulate_invAccumulate](declarations/accumulate-invaccumulate.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [esymmAlgHom](declarations/esymmalghom.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [esymmAlgHom_apply](declarations/esymmalghom-apply.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [rename_esymmAlgHom](declarations/rename-esymmalghom.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [esymmAlgHomMonomial](declarations/esymmalghommonomial.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [isSymmetric_esymmAlgHomMonomial](declarations/issymmetric-esymmalghommonomial.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [esymmAlgHomMonomial_single](declarations/esymmalghommonomial-single.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [esymmAlgHomMonomial_single_one](declarations/esymmalghommonomial-single-one.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [esymmAlgHomMonomial_add](declarations/esymmalghommonomial-add.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [esymmAlgHom_zero](declarations/esymmalghom-zero.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [supDegree_monic_esymm](declarations/supdegree-monic-esymm.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [supDegree_esymm](declarations/supdegree-esymm.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [monic_esymm](declarations/monic-esymm.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [leadingCoeff_esymmAlgHomMonomial](declarations/leadingcoeff-esymmalghommonomial.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [supDegree_esymmAlgHomMonomial](declarations/supdegree-esymmalghommonomial.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [IsSymmetric.antitone_supDegree](declarations/issymmetric-antitone-supdegree.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [esymmAlgHom_fin_injective](declarations/esymmalghom-fin-injective.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [esymmAlgHom_injective](declarations/esymmalghom-injective.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [esymmAlgHom_fin_bijective](declarations/esymmalghom-fin-bijective.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [esymmAlgHom_fin_surjective](declarations/esymmalghom-fin-surjective.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [esymmAlgHom_surjective](declarations/esymmalghom-surjective.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [esymmAlgEquiv](declarations/esymmalgequiv.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=353e2e81447f939d7f237f5540fd8e7f5f4c67778a4facf0b9bde6dc1a4a5b81 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/FundamentalTheorem/Variant9685e9650f40bb6892f90811f3faaa5868cc6d856c60677d27eac7f5c8fd4218.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
