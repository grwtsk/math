# Ring Theory Finite Presentation

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/FinitePresentation/Variant56df6971ce1f014311af95dc5a82c4d670e47ff0a95666f708bd1295e66d291a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3c9497aaf8d67d1e6ba280d70af18053b158f0e9`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/RingTheoryFinitePresentation.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [Algebra.FinitePresentation](declarations/algebra-finitepresentation.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [of_finitePresentation](declarations/of-finitepresentation-source-edition-2.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [of_finiteType](declarations/of-finitetype-source-edition-3.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [equiv](declarations/equiv.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [mvPolynomial](declarations/mvpolynomial.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [self](declarations/self.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [polynomial](declarations/polynomial.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [quotient](declarations/quotient.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [of_surjective](declarations/of-surjective.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [iff](declarations/iff.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [iff_quotient_mvPolynomial'](declarations/iff-quotient-mvpolynomial.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [mvPolynomial_of_finitePresentation](declarations/mvpolynomial-of-finitepresentation.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [trans](declarations/trans.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [of_restrict_scalars_finitePresentation](declarations/of-restrict-scalars-finitepresentation.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [ker_fg_of_mvPolynomial](declarations/ker-fg-of-mvpolynomial.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [ker_fG_of_surjective](declarations/ker-fg-of-surjective.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [FinitePresentation](declarations/finitepresentation.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [finitePresentation_algebraMap](declarations/finitepresentation-algebramap.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [of_finitePresentation](declarations/of-finitepresentation.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [id](declarations/id-source-edition-2.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [comp_surjective](declarations/comp-surjective.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [of_surjective](declarations/of-surjective-source-edition-3.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [of_finiteType](declarations/of-finitetype.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [comp](declarations/comp.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [of_comp_finiteType](declarations/of-comp-finitetype-source-edition-2.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [polynomial_induction](declarations/polynomial-induction.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [FinitePresentation](declarations/finitepresentation-source-edition-2.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [of_finitePresentation](declarations/of-finitepresentation-source-edition-3.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [id](declarations/id.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [comp](declarations/comp-source-edition-2.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [comp_surjective](declarations/comp-surjective-source-edition-2.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [of_surjective](declarations/of-surjective-source-edition-2.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [of_finiteType](declarations/of-finitetype-source-edition-2.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [of_comp_finiteType](declarations/of-comp-finitetype.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dbb1a45b32547beed42c486e96519fcb9673fb8163a5d802770b097643bcf18a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/FinitePresentation/Variant56df6971ce1f014311af95dc5a82c4d670e47ff0a95666f708bd1295e66d291a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
