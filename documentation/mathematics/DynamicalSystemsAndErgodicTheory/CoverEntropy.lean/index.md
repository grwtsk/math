# Cover Entropy

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**55 observed declarations and anonymous commands**, 49 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/CoverEntropy/Variant75416b6a8c34270d3191ca7c2e36f12306ff0311a71143ad82bf5f351abf0eb6.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `38015c8911940b320a2cbd89df153f30f342af42`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/DynamicalSystemsAndErgodicTheory/CoverEntropy.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsDynCoverOf](declarations/isdyncoverof.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [IsDynCoverOf.of_le](declarations/isdyncoverof-of-le.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [IsDynCoverOf.of_entourage_subset](declarations/isdyncoverof-of-entourage-subset.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [isDynCoverOf_empty](declarations/isdyncoverof-empty.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [IsDynCoverOf.nonempty](declarations/isdyncoverof-nonempty.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [isDynCoverOf_zero](declarations/isdyncoverof-zero.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [isDynCoverOf_univ](declarations/isdyncoverof-univ.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [IsDynCoverOf.nonempty_inter](declarations/isdyncoverof-nonempty-inter.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [IsDynCoverOf.iterate_le_pow](declarations/isdyncoverof-iterate-le-pow.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [exists_isDynCoverOf_of_isCompact_uniformContinuous](declarations/exists-isdyncoverof-of-iscompact-uniformcontinuous.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [exists_isDynCoverOf_of_isCompact_invariant](declarations/exists-isdyncoverof-of-iscompact-invariant.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [coverMincard](declarations/covermincard.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [IsDynCoverOf.coverMincard_le_card](declarations/isdyncoverof-covermincard-le-card.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [coverMincard_monotone_time](declarations/covermincard-monotone-time.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [coverMincard_antitone](declarations/covermincard-antitone.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [coverMincard_finite_iff](declarations/covermincard-finite-iff.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [coverMincard_empty](declarations/covermincard-empty.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [coverMincard_eq_zero_iff](declarations/covermincard-eq-zero-iff.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [one_le_coverMincard_iff](declarations/one-le-covermincard-iff.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [coverMincard_zero](declarations/covermincard-zero.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [coverMincard_univ](declarations/covermincard-univ.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [coverMincard_mul_le_pow](declarations/covermincard-mul-le-pow.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [coverMincard_le_pow](declarations/covermincard-le-pow.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [coverMincard_finite_of_isCompact_uniformContinuous](declarations/covermincard-finite-of-iscompact-uniformcontinuous.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [coverMincard_finite_of_isCompact_invariant](declarations/covermincard-finite-of-iscompact-invariant.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [nonempty_inter_of_coverMincard](declarations/nonempty-inter-of-covermincard.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [coverEntropyEntourage](declarations/coverentropyentourage.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [coverEntropyInfEntourage](declarations/coverentropyinfentourage.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [coverEntropyInfEntourage_antitone](declarations/coverentropyinfentourage-antitone.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [coverEntropyEntourage_antitone](declarations/coverentropyentourage-antitone.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [coverEntropyInfEntourage_le_coverEntropyEntourage](declarations/coverentropyinfentourage-le-coverentropyentourage.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [coverEntropyEntourage_empty](declarations/coverentropyentourage-empty.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [coverEntropyInfEntourage_empty](declarations/coverentropyinfentourage-empty.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [coverEntropyInfEntourage_nonneg](declarations/coverentropyinfentourage-nonneg.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [coverEntropyEntourage_nonneg](declarations/coverentropyentourage-nonneg.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [coverEntropyEntourage_univ](declarations/coverentropyentourage-univ.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [coverEntropyInfEntourage_univ](declarations/coverentropyinfentourage-univ.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [coverEntropyEntourage_le_log_coverMincard_div](declarations/coverentropyentourage-le-log-covermincard-div.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [IsDynCoverOf.coverEntropyEntourage_le_log_card_div](declarations/isdyncoverof-coverentropyentourage-le-log-card-div.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [coverEntropyEntourage_le_coverEntropyInfEntourage](declarations/coverentropyentourage-le-coverentropyinfentourage.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [coverEntropyEntourage_finite_of_isCompact_invariant](declarations/coverentropyentourage-finite-of-iscompact-invariant.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [coverEntropy](declarations/coverentropy.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [coverEntropyInf](declarations/coverentropyinf.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [coverEntropyInf_antitone](declarations/coverentropyinf-antitone.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [coverEntropy_antitone](declarations/coverentropy-antitone.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [coverEntropyEntourage_le_coverEntropy](declarations/coverentropyentourage-le-coverentropy.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [coverEntropyInfEntourage_le_coverEntropyInf](declarations/coverentropyinfentourage-le-coverentropyinf.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [coverEntropy_eq_iSup_basis](declarations/coverentropy-eq-isup-basis.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [coverEntropyInf_eq_iSup_basis](declarations/coverentropyinf-eq-isup-basis.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [coverEntropyInf_le_coverEntropy](declarations/coverentropyinf-le-coverentropy.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [coverEntropy_empty](declarations/coverentropy-empty.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [coverEntropyInf_empty](declarations/coverentropyinf-empty.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [coverEntropyInf_nonneg](declarations/coverentropyinf-nonneg.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [coverEntropy_nonneg](declarations/coverentropy-nonneg.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [coverEntropyInf_eq_coverEntropy](declarations/coverentropyinf-eq-coverentropy.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1547a792ed6285ab54538a30ce614d44747ffe29d9093ec020f10ac25dcc4d19 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/CoverEntropy/Variant75416b6a8c34270d3191ca7c2e36f12306ff0311a71143ad82bf5f351abf0eb6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
