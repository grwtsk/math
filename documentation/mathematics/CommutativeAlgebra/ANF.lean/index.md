# ANF

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**43 observed declarations and anonymous commands**, 20 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7c15caa7414202db60f7f6752d2a3ff04c5ccd00`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/ANF.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Monomial](declarations/monomial.md) | 13 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [Polynomial](declarations/polynomial.md) | 17 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [xorTree](declarations/xortree.md) | 22 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [eval_xorTree](declarations/eval-xortree.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [Monomial.eval](declarations/monomial-eval.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [Monomial.toTree](declarations/monomial-totree.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [Monomial.eval_toTree](declarations/monomial-eval-totree.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [evalTerms](declarations/evalterms.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [termsToTree](declarations/termstotree.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [Polynomial.eval](declarations/polynomial-eval.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [Polynomial.toTree](declarations/polynomial-totree.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [Polynomial.zero](declarations/polynomial-zero.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [Polynomial.one](declarations/polynomial-one.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [Polynomial.var](declarations/polynomial-var.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [Polynomial.add](declarations/polynomial-add.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [multiplyMonomial](declarations/multiplymonomial.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [multiplyTerms](declarations/multiplyterms.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [Polynomial.mul](declarations/polynomial-mul.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [Polynomial.compl](declarations/polynomial-compl.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [Polynomial.disj](declarations/polynomial-disj.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [Polynomial.impl](declarations/polynomial-impl.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [Polynomial.eqv](declarations/polynomial-eqv.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [Polynomial.nand](declarations/polynomial-nand.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [Monomial.eval_append](declarations/monomial-eval-append.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [evalTerms_append](declarations/evalterms-append.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [evalTerms_multiplyMonomial](declarations/evalterms-multiplymonomial.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [evalTerms_multiplyTerms](declarations/evalterms-multiplyterms.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [Polynomial.eval_zero](declarations/polynomial-eval-zero.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Polynomial.eval_one](declarations/polynomial-eval-one.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Polynomial.eval_var](declarations/polynomial-eval-var.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Polynomial.eval_add](declarations/polynomial-eval-add.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [Polynomial.eval_mul](declarations/polynomial-eval-mul.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [Polynomial.eval_compl](declarations/polynomial-eval-compl.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [Polynomial.eval_disj](declarations/polynomial-eval-disj.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [Polynomial.eval_impl](declarations/polynomial-eval-impl.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [Polynomial.eval_eqv](declarations/polynomial-eval-eqv.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [Polynomial.eval_nand](declarations/polynomial-eval-nand.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [evalTerms_toTree](declarations/evalterms-totree.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [Polynomial.eval_toTree](declarations/polynomial-eval-totree.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [toANF](declarations/toanf.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [eval_toANF](declarations/eval-toanf.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [toANF](declarations/toanf-source-edition-2.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [eval_toANF](declarations/eval-toanf-source-edition-2.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=09fdff8ac6ae96a3cb66e5d830018c5abc26f980e7bcc4dfe622e4091f5c0d80 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
