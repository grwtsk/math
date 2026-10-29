# Krull Dimension Basic

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/Basic/Variant960aae5fb873751c8fad60fa18fc362e008c86f15c8557ae0601f1bda3d5b1e4.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6b6a8ef4e8b67895b50b1dff9e537d53d8b67c83`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/KrullDimensionBasic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [ringKrullDim](declarations/ringkrulldim.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [Ring.KrullDimLE](declarations/ring-krulldimle.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [ringKrullDim_eq_bot_of_subsingleton](declarations/ringkrulldim-eq-bot-of-subsingleton.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [ringKrullDim_nonneg_of_nontrivial](declarations/ringkrulldim-nonneg-of-nontrivial.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [ringKrullDim_le_of_surjective](declarations/ringkrulldim-le-of-surjective.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [ringKrullDim_quotient_le](declarations/ringkrulldim-quotient-le.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [ringKrullDim_eq_of_ringEquiv](declarations/ringkrulldim-eq-of-ringequiv.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `abbrev` | [FiniteRingKrullDim](declarations/finiteringkrulldim.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [ringKrullDim_ne_top](declarations/ringkrulldim-ne-top.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [ringKrullDim_lt_top](declarations/ringkrulldim-lt-top.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [finiteRingKrullDim_iff_ne_bot_and_top](declarations/finiteringkrulldim-iff-ne-bot-and-top.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [Ring.krullDimLE_zero_iff](declarations/ring-krulldimle-zero-iff.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [Ring.KrullDimLE.mk₀](declarations/ring-krulldimle-mk-source-edition-2.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [Ideal.isMaximal_of_isPrime](declarations/ideal-ismaximal-of-isprime.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [Ideal.IsPrime.isMaximal'](declarations/ideal-isprime-ismaximal.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [(anonymous)](declarations/instance.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [Ideal.isMaximal_iff_isPrime](declarations/ideal-ismaximal-iff-isprime.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [Ideal.mem_minimalPrimes_of_krullDimLE_zero](declarations/ideal-mem-minimalprimes-of-krulldimle-zero.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [Ideal.mem_minimalPrimes_iff_isPrime](declarations/ideal-mem-minimalprimes-iff-isprime.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [nilradical_le_jacobson](declarations/nilradical-le-jacobson.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Ring.jacobson_eq_nilradical_of_krullDimLE_zero](declarations/ring-jacobson-eq-nilradical-of-krulldimle-zero.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [Ring.krullDimLE_one_iff](declarations/ring-krulldimle-one-iff.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [Ring.KrullDimLE.mk₁](declarations/ring-krulldimle-mk.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [Ring.krullDimLE_one_iff_of_isPrime_bot](declarations/ring-krulldimle-one-iff-of-isprime-bot.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [Ring.krullDimLE_one_iff_of_noZeroDivisors](declarations/ring-krulldimle-one-iff-of-nozerodivisors.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [Ring.KrullDimLE.mk₁'](declarations/ring-krulldimle-mk-source-edition-3.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=399d48f22aa5f36761a4e5469fc2486c54607374a713ff9f064ec3d3f539bee6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/Basic/Variant960aae5fb873751c8fad60fa18fc362e008c86f15c8557ae0601f1bda3d5b1e4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
