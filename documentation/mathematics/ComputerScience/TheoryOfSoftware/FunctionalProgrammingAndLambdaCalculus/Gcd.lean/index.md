# Gcd

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**45 observed declarations and anonymous commands**, 43 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/ElementaryNumberTheory/Gcd/Variant7755358e4367cc929436f0c6b748c026d89c2a31bf11cd5463fcc6f76fc25794.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aef83cd28124dae32c7efabff673e84b9a6f981e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Gcd.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [Coprime](declarations/coprime.md) | 20 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [coprime_iff_gcd_eq_one](declarations/coprime-iff-gcd-eq-one.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [Coprime.gcd_eq_one](declarations/coprime-gcd-eq-one.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [Coprime.symm](declarations/coprime-symm.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [coprime_comm](declarations/coprime-comm.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [Coprime.dvd_of_dvd_mul_right](declarations/coprime-dvd-of-dvd-mul-right.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [Coprime.dvd_of_dvd_mul_left](declarations/coprime-dvd-of-dvd-mul-left.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [Coprime.gcd_mul_left_cancel](declarations/coprime-gcd-mul-left-cancel.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [Coprime.gcd_mul_right_cancel](declarations/coprime-gcd-mul-right-cancel.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [Coprime.gcd_mul_left_cancel_right](declarations/coprime-gcd-mul-left-cancel-right.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [Coprime.gcd_mul_right_cancel_right](declarations/coprime-gcd-mul-right-cancel-right.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [coprime_div_gcd_div_gcd](declarations/coprime-div-gcd-div-gcd.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [not_coprime_of_dvd_of_dvd](declarations/not-coprime-of-dvd-of-dvd.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [exists_coprime](declarations/exists-coprime.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [exists_coprime'](declarations/exists-coprime-source-edition-2.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [Coprime.mul](declarations/coprime-mul.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [Coprime.mul_right](declarations/coprime-mul-right.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [Coprime.coprime_dvd_left](declarations/coprime-coprime-dvd-left.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Coprime.coprime_dvd_right](declarations/coprime-coprime-dvd-right.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Coprime.coprime_mul_left](declarations/coprime-coprime-mul-left.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [Coprime.coprime_mul_right](declarations/coprime-coprime-mul-right.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [Coprime.coprime_mul_left_right](declarations/coprime-coprime-mul-left-right.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [Coprime.coprime_mul_right_right](declarations/coprime-coprime-mul-right-right.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [Coprime.coprime_div_left](declarations/coprime-coprime-div-left.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [Coprime.coprime_div_right](declarations/coprime-coprime-div-right.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [coprime_mul_iff_left](declarations/coprime-mul-iff-left.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [coprime_mul_iff_right](declarations/coprime-mul-iff-right.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Coprime.gcd_left](declarations/coprime-gcd-left.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Coprime.gcd_right](declarations/coprime-gcd-right.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Coprime.gcd_both](declarations/coprime-gcd-both.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [Coprime.mul_dvd_of_dvd_of_dvd](declarations/coprime-mul-dvd-of-dvd-of-dvd.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [coprime_zero_left](declarations/coprime-zero-left.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [coprime_zero_right](declarations/coprime-zero-right.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [coprime_one_left](declarations/coprime-one-left.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [coprime_one_right](declarations/coprime-one-right.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [coprime_one_left_eq_true](declarations/coprime-one-left-eq-true.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [coprime_one_right_eq_true](declarations/coprime-one-right-eq-true.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [coprime_self](declarations/coprime-self.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [Coprime.pow_left](declarations/coprime-pow-left.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [Coprime.pow_right](declarations/coprime-pow-right.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [Coprime.pow](declarations/coprime-pow.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [Coprime.eq_one_of_dvd](declarations/coprime-eq-one-of-dvd.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [Coprime.gcd_mul](declarations/coprime-gcd-mul.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [gcd_mul_gcd_of_coprime_of_mul_eq_mul](declarations/gcd-mul-gcd-of-coprime-of-mul-eq-mul.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=01298ce6551406e04122893961efe0c7efa0df491b12c0b793b1e01e26dad183 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/GCD/Variant7755358e4367cc929436f0c6b748c026d89c2a31bf11cd5463fcc6f76fc25794.lean","GRWTSK/NumberTheory/ElementaryNumberTheory/Gcd/Variant7755358e4367cc929436f0c6b748c026d89c2a31bf11cd5463fcc6f76fc25794.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
