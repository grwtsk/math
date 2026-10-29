# Prime Fin Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**29 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant30191a9bd74a7d52cad1ead0a4141911df5ba20149945ab5e98025038db16be9.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `05aa97eb574541d2e4ba363f384ee082b988e144`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/NumberTheory/ElementaryNumberTheory/PrimeFinNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [infinite_setOfPred_prime](declarations/infinite-setofpred-prime.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [Primes.infinite](declarations/primes-infinite.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [Primes.countable](declarations/primes-countable.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [primeFactors](declarations/primefactors.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [toFinset_factors](declarations/tofinset-factors.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [mem_primeFactors](declarations/mem-primefactors.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [mem_primeFactors_of_ne_zero](declarations/mem-primefactors-of-ne-zero.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [Prime.mem_primeFactors](declarations/prime-mem-primefactors-source-edition-2.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [Prime.mem_primeFactors'](declarations/prime-mem-primefactors.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [Prime.mem_primeFactors_self](declarations/prime-mem-primefactors-self.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [primeFactors_mono](declarations/primefactors-mono.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [mem_primeFactors_iff_mem_primeFactorsList](declarations/mem-primefactors-iff-mem-primefactorslist.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [prime_of_mem_primeFactors](declarations/prime-of-mem-primefactors.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [dvd_of_mem_primeFactors](declarations/dvd-of-mem-primefactors.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [pos_of_mem_primeFactors](declarations/pos-of-mem-primefactors.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [le_of_mem_primeFactors](declarations/le-of-mem-primefactors.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [primeFactors_zero](declarations/primefactors-zero.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [primeFactors_one](declarations/primefactors-one.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [primeFactors_eq_empty](declarations/primefactors-eq-empty.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [nonempty_primeFactors](declarations/nonempty-primefactors.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [Prime.primeFactors](declarations/prime-primefactors.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [primeFactors_mul](declarations/primefactors-mul.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [Coprime.primeFactors_mul](declarations/coprime-primefactors-mul.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [primeFactors_gcd](declarations/primefactors-gcd.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [disjoint_primeFactors](declarations/disjoint-primefactors.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [Coprime.disjoint_primeFactors](declarations/coprime-disjoint-primefactors.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [primeFactors_pow_succ](declarations/primefactors-pow-succ.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [primeFactors_pow](declarations/primefactors-pow.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [primeFactors_prime_pow](declarations/primefactors-prime-pow.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dea65d3d83ccb1492937f8231e4d965456026f6e46b997e4f5ae3e6b3ab484a2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant30191a9bd74a7d52cad1ead0a4141911df5ba20149945ab5e98025038db16be9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
