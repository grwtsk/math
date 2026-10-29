# Pythagorean Triples

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**37 observed declarations and anonymous commands**, 33 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant489e3a0c9ba4b19e36282ddbd5978975361857970dda1d51939229ab291e6fce.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a5b1fe7887071eeadb6ae1b2fab2f5dbe7d4d4fc`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/NumberTheory/PythagoreanTriples.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [sq_ne_two_fin_zmod_four](declarations/sq-ne-two-fin-zmod-four.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [Int.sq_ne_two_mod_four](declarations/int-sq-ne-two-mod-four.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [PythagoreanTriple](declarations/pythagoreantriple.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [pythagoreanTriple_comm](declarations/pythagoreantriple-comm.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [PythagoreanTriple.zero](declarations/pythagoreantriple-zero.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [eq](declarations/eq.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [symm](declarations/symm.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [mul](declarations/mul.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [mul_iff](declarations/mul-iff.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [IsClassified](declarations/isclassified.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [IsPrimitiveClassified](declarations/isprimitiveclassified.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [mul_isClassified](declarations/mul-isclassified.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [even_odd_of_coprime](declarations/even-odd-of-coprime.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [gcd_dvd](declarations/gcd-dvd.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [normalize](declarations/normalize.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [isClassified_of_isPrimitiveClassified](declarations/isclassified-of-isprimitiveclassified.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [isClassified_of_normalize_isPrimitiveClassified](declarations/isclassified-of-normalize-isprimitiveclassified.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [ne_zero_of_coprime](declarations/ne-zero-of-coprime.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [isPrimitiveClassified_of_coprime_of_zero_left](declarations/isprimitiveclassified-of-coprime-of-zero-left.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [coprime_of_coprime](declarations/coprime-of-coprime.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [circleEquivGen](declarations/circleequivgen.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [circleEquivGen_apply](declarations/circleequivgen-apply.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [circleEquivGen_symm_apply](declarations/circleequivgen-symm-apply.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [coprime_sq_sub_sq_add_of_even_odd](declarations/coprime-sq-sub-sq-add-of-even-odd.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [coprime_sq_sub_sq_add_of_odd_even](declarations/coprime-sq-sub-sq-add-of-odd-even.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [coprime_sq_sub_mul_of_even_odd](declarations/coprime-sq-sub-mul-of-even-odd.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [coprime_sq_sub_mul_of_odd_even](declarations/coprime-sq-sub-mul-of-odd-even.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [coprime_sq_sub_mul](declarations/coprime-sq-sub-mul.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [coprime_sq_sub_sq_sum_of_odd_odd](declarations/coprime-sq-sub-sq-sum-of-odd-odd.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [isPrimitiveClassified_aux](declarations/isprimitiveclassified-aux.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [isPrimitiveClassified_of_coprime_of_odd_of_pos](declarations/isprimitiveclassified-of-coprime-of-odd-of-pos.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [isPrimitiveClassified_of_coprime_of_pos](declarations/isprimitiveclassified-of-coprime-of-pos.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [isPrimitiveClassified_of_coprime](declarations/isprimitiveclassified-of-coprime.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [classified](declarations/classified.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [coprime_classification](declarations/coprime-classification.md) | 558 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [coprime_classification'](declarations/coprime-classification-source-edition-2.md) | 587 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [classification](declarations/classification.md) | 638 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=63b2c9d4f812d3289cdfd344bf520be6728e046f0dcdaef596caddc04d654ed5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant489e3a0c9ba4b19e36282ddbd5978975361857970dda1d51939229ab291e6fce.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
