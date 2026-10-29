# Selberg Sieve

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**21 observed declarations and anonymous commands**, 12 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant06e6f48b85a8e30dbaf24c78329519d66334d62244d2b5c99c7a066dc5d6ae48.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f0ffa4d2b7ed763496737bc3100d210365d038a3`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/NumberTheory/SelbergSieve.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [BoundingSieve](declarations/boundingsieve.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `class` | [SelbergSieve](declarations/selbergsieve.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [evalBoundingSieveWeights](declarations/evalboundingsieveweights.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [one_le_y](declarations/one-le-y.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [prodPrimes_ne_zero](declarations/prodprimes-ne-zero.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [squarefree_of_dvd_prodPrimes](declarations/squarefree-of-dvd-prodprimes.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [squarefree_of_mem_divisors_prodPrimes](declarations/squarefree-of-mem-divisors-prodprimes.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [prod_primeFactors_nu](declarations/prod-primefactors-nu.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [nu_pos_of_dvd_prodPrimes](declarations/nu-pos-of-dvd-prodprimes.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [nu_ne_zero](declarations/nu-ne-zero.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [nu_lt_one_of_dvd_prodPrimes](declarations/nu-lt-one-of-dvd-prodprimes.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [multSum](declarations/multsum.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [rem](declarations/rem.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [siftedSum](declarations/siftedsum.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [mainSum](declarations/mainsum.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [errSum](declarations/errsum.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [multSum_eq_main_err](declarations/multsum-eq-main-err.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [siftedsum_eq_sum_support_mul_ite](declarations/siftedsum-eq-sum-support-mul-ite.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [IsUpperMoebius](declarations/isuppermoebius.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [siftedSum_le_sum_of_upperMoebius](declarations/siftedsum-le-sum-of-uppermoebius.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [siftedSum_le_mainSum_errSum_of_upperMoebius](declarations/siftedsum-le-mainsum-errsum-of-uppermoebius.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=33a0025d9af493e3021709756a150b6aeb2493796fd70f8fd0e62b5dd661b408 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant06e6f48b85a8e30dbaf24c78329519d66334d62244d2b5c99c7a066dc5d6ae48.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
