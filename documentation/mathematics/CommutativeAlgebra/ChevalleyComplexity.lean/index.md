# Chevalley Complexity

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variante9636108fda11a8d3a774230ebe79210938937944c67eaf1ee719be526b22850.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dc32d4255acefb2564af50d0c658288326d98ff4`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/ChevalleyComplexity.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [DegreeType](declarations/degreetype.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [InductionObj](declarations/inductionobj.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [coeffSubmodule](declarations/coeffsubmodule.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [coeffSubmodule_mapRingHom_comp](declarations/coeffsubmodule-mapringhom-comp.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [coeff_mem_coeffSubmodule](declarations/coeff-mem-coeffsubmodule.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [one_mem_coeffSubmodule](declarations/one-mem-coeffsubmodule.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [one_le_coeffSubmodule](declarations/one-le-coeffsubmodule.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [degree](declarations/degree.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [ofLex_degree_fst](declarations/oflex-degree-fst.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [ofLex_degree_snd](declarations/oflex-degree-snd.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [degBound](declarations/degbound.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [powBound](declarations/powbound.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [powBound_ne_zero](declarations/powbound-ne-zero.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [Statement](declarations/statement.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [induction_structure](declarations/induction-structure.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [induction_aux](declarations/induction-aux.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [statement](declarations/statement-source-edition-2.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [chevalley_polynomialC](declarations/chevalley-polynomialc.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [numBound](declarations/numbound-source-edition-2.md) | 583 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [degBound](declarations/degbound-source-edition-3.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [degBound_zero](declarations/degbound-zero.md) | 595 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [numBound_zero](declarations/numbound-zero.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [degBound_succ](declarations/degbound-succ.md) | 599 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [numBound_succ](declarations/numbound-succ.md) | 604 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [degBound_casesOn_succ](declarations/degbound-caseson-succ.md) | 610 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [numBound_casesOn_succ](declarations/numbound-caseson-succ.md) | 619 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [degBound_le_degBound](declarations/degbound-le-degbound.md) | 634 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [numBound_mono](declarations/numbound-mono.md) | 642 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [degBound_pos](declarations/degbound-pos.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [chevalley_mvPolynomialC](declarations/chevalley-mvpolynomialc.md) | 662 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [numBound](declarations/numbound.md) | 775 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [degBound](declarations/degbound-source-edition-2.md) | 780 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [chevalley_mvPolynomial_mvPolynomial](declarations/chevalley-mvpolynomial-mvpolynomial.md) | 795 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7bbef986ac345d66e736825e43ab1d28e1a84160ff799dbb85d755b3ec42664b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variante9636108fda11a8d3a774230ebe79210938937944c67eaf1ee719be526b22850.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
