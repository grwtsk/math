# Gcd Namespaced

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**45 observed declarations and anonymous commands**, 43 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/ElementaryNumberTheory/Gcd/Variante78a9f34252e9bd08fd9ec7c16b5c719630f4d6a2ea1dda7e424412d7b992bdf.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4815a34a543a8bf5e44c3406b39c0ac771b42760`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [Coprime](declarations/coprime.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [coprime_iff_gcd_eq_one](declarations/coprime-iff-gcd-eq-one.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [Coprime.gcd_eq_one](declarations/coprime-gcd-eq-one.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [Coprime.symm](declarations/coprime-symm.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [coprime_comm](declarations/coprime-comm.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [Coprime.dvd_of_dvd_mul_right](declarations/coprime-dvd-of-dvd-mul-right.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [Coprime.dvd_of_dvd_mul_left](declarations/coprime-dvd-of-dvd-mul-left.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [Coprime.gcd_mul_left_cancel](declarations/coprime-gcd-mul-left-cancel.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [Coprime.gcd_mul_right_cancel](declarations/coprime-gcd-mul-right-cancel.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [Coprime.gcd_mul_left_cancel_right](declarations/coprime-gcd-mul-left-cancel-right.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [Coprime.gcd_mul_right_cancel_right](declarations/coprime-gcd-mul-right-cancel-right.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [coprime_div_gcd_div_gcd](declarations/coprime-div-gcd-div-gcd.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [not_coprime_of_dvd_of_dvd](declarations/not-coprime-of-dvd-of-dvd.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [exists_coprime](declarations/exists-coprime.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [exists_coprime'](declarations/exists-coprime-source-edition-2.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [Coprime.mul](declarations/coprime-mul.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [Coprime.mul_right](declarations/coprime-mul-right.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [Coprime.coprime_dvd_left](declarations/coprime-coprime-dvd-left.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Coprime.coprime_dvd_right](declarations/coprime-coprime-dvd-right.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Coprime.coprime_mul_left](declarations/coprime-coprime-mul-left.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [Coprime.coprime_mul_right](declarations/coprime-coprime-mul-right.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [Coprime.coprime_mul_left_right](declarations/coprime-coprime-mul-left-right.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [Coprime.coprime_mul_right_right](declarations/coprime-coprime-mul-right-right.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [Coprime.coprime_div_left](declarations/coprime-coprime-div-left.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [Coprime.coprime_div_right](declarations/coprime-coprime-div-right.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [coprime_mul_iff_left](declarations/coprime-mul-iff-left.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [coprime_mul_iff_right](declarations/coprime-mul-iff-right.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Coprime.gcd_left](declarations/coprime-gcd-left.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Coprime.gcd_right](declarations/coprime-gcd-right.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Coprime.gcd_both](declarations/coprime-gcd-both.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [Coprime.mul_dvd_of_dvd_of_dvd](declarations/coprime-mul-dvd-of-dvd-of-dvd.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [coprime_zero_left](declarations/coprime-zero-left.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [coprime_zero_right](declarations/coprime-zero-right.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [coprime_one_left](declarations/coprime-one-left.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [coprime_one_right](declarations/coprime-one-right.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [coprime_one_left_eq_true](declarations/coprime-one-left-eq-true.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [coprime_one_right_eq_true](declarations/coprime-one-right-eq-true.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [coprime_self](declarations/coprime-self.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [Coprime.pow_left](declarations/coprime-pow-left.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [Coprime.pow_right](declarations/coprime-pow-right.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [Coprime.pow](declarations/coprime-pow.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [Coprime.eq_one_of_dvd](declarations/coprime-eq-one-of-dvd.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [Coprime.gcd_mul](declarations/coprime-gcd-mul.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [gcd_mul_gcd_of_coprime_of_mul_eq_mul](declarations/gcd-mul-gcd-of-coprime-of-mul-eq-mul.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cd095b537f8a7a666387480b8b4f0e86afee34a754dc16509f77cb50c3bc7c8b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/GCD/Variante78a9f34252e9bd08fd9ec7c16b5c719630f4d6a2ea1dda7e424412d7b992bdf.lean","GRWTSK/NumberTheory/ElementaryNumberTheory/Gcd/Variante78a9f34252e9bd08fd9ec7c16b5c719630f4d6a2ea1dda7e424412d7b992bdf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
