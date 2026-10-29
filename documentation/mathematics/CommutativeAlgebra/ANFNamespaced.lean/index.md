# ANFNamespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**43 observed declarations and anonymous commands**, 20 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/CommutativeAlgebra/ANF/Variantd49b40f543815784f5ecbbcfd7687e2a92fc1497972476d82d0bc98c7b11723d.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b14e77061c98c656270d872a4980d1fd6c841f9a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/ANFNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Monomial](declarations/monomial.md) | 21 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [Polynomial](declarations/polynomial.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [xorTree](declarations/xortree.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [eval_xorTree](declarations/eval-xortree.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [Monomial.eval](declarations/monomial-eval.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [Monomial.toTree](declarations/monomial-totree.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [Monomial.eval_toTree](declarations/monomial-eval-totree.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [evalTerms](declarations/evalterms.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [termsToTree](declarations/termstotree.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [Polynomial.eval](declarations/polynomial-eval.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [Polynomial.toTree](declarations/polynomial-totree.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [Polynomial.zero](declarations/polynomial-zero.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [Polynomial.one](declarations/polynomial-one.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [Polynomial.var](declarations/polynomial-var.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [Polynomial.add](declarations/polynomial-add.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [multiplyMonomial](declarations/multiplymonomial.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [multiplyTerms](declarations/multiplyterms.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [Polynomial.mul](declarations/polynomial-mul.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [Polynomial.compl](declarations/polynomial-compl.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [Polynomial.disj](declarations/polynomial-disj.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [Polynomial.impl](declarations/polynomial-impl.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [Polynomial.eqv](declarations/polynomial-eqv.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [Polynomial.nand](declarations/polynomial-nand.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [Monomial.eval_append](declarations/monomial-eval-append.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [evalTerms_append](declarations/evalterms-append.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [evalTerms_multiplyMonomial](declarations/evalterms-multiplymonomial.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [evalTerms_multiplyTerms](declarations/evalterms-multiplyterms.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [Polynomial.eval_zero](declarations/polynomial-eval-zero.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Polynomial.eval_one](declarations/polynomial-eval-one.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Polynomial.eval_var](declarations/polynomial-eval-var.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Polynomial.eval_add](declarations/polynomial-eval-add.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [Polynomial.eval_mul](declarations/polynomial-eval-mul.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [Polynomial.eval_compl](declarations/polynomial-eval-compl.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [Polynomial.eval_disj](declarations/polynomial-eval-disj.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [Polynomial.eval_impl](declarations/polynomial-eval-impl.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [Polynomial.eval_eqv](declarations/polynomial-eval-eqv.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [Polynomial.eval_nand](declarations/polynomial-eval-nand.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [evalTerms_toTree](declarations/evalterms-totree.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [Polynomial.eval_toTree](declarations/polynomial-eval-totree.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [toANF](declarations/toanf-source-edition-2.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [eval_toANF](declarations/eval-toanf-source-edition-2.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [toANF](declarations/toanf.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [eval_toANF](declarations/eval-toanf.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cc2166e50513fbc7c0b0e650830b4714243bf77c75b7dec2db4657c97159e5a0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/ANF/Variantd49b40f543815784f5ecbbcfd7687e2a92fc1497972476d82d0bc98c7b11723d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
