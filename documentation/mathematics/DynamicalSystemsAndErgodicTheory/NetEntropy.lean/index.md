# Net Entropy

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**40 observed declarations and anonymous commands**, 36 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/NetEntropy/Variant6f0facab5db93336036f895da7fb811bf9498fc23b836771ca7a5efed3b427ee.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4beeb9daf4a1a4179fe4aa1aac3b502e00aa9b82`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/DynamicalSystemsAndErgodicTheory/NetEntropy.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsDynNetIn](declarations/isdynnetin.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [IsDynNetIn.of_le](declarations/isdynnetin-of-le.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [IsDynNetIn.of_entourage_subset](declarations/isdynnetin-of-entourage-subset.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [isDynNetIn_empty](declarations/isdynnetin-empty.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [isDynNetIn_singleton](declarations/isdynnetin-singleton.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [IsDynNetIn.card_le_card_of_isDynCoverOf](declarations/isdynnetin-card-le-card-of-isdyncoverof.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [netMaxcard](declarations/netmaxcard.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [IsDynNetIn.card_le_netMaxcard](declarations/isdynnetin-card-le-netmaxcard.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [netMaxcard_monotone_time](declarations/netmaxcard-monotone-time.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [netMaxcard_antitone](declarations/netmaxcard-antitone.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [netMaxcard_finite_iff](declarations/netmaxcard-finite-iff.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [netMaxcard_empty](declarations/netmaxcard-empty.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [netMaxcard_eq_zero_iff](declarations/netmaxcard-eq-zero-iff.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [one_le_netMaxcard_iff](declarations/one-le-netmaxcard-iff.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [netMaxcard_zero](declarations/netmaxcard-zero.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [netMaxcard_univ](declarations/netmaxcard-univ.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [netMaxcard_infinite_iff](declarations/netmaxcard-infinite-iff.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [netMaxcard_le_coverMincard](declarations/netmaxcard-le-covermincard.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [coverMincard_le_netMaxcard](declarations/covermincard-le-netmaxcard.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [netEntropyEntourage](declarations/netentropyentourage.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [netEntropyInfEntourage](declarations/netentropyinfentourage.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [netEntropyInfEntourage_antitone](declarations/netentropyinfentourage-antitone.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [netEntropyEntourage_antitone](declarations/netentropyentourage-antitone.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [netEntropyInfEntourage_le_netEntropyEntourage](declarations/netentropyinfentourage-le-netentropyentourage.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [netEntropyEntourage_empty](declarations/netentropyentourage-empty.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [netEntropyInfEntourage_empty](declarations/netentropyinfentourage-empty.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [netEntropyInfEntourage_nonneg](declarations/netentropyinfentourage-nonneg.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [netEntropyEntourage_nonneg](declarations/netentropyentourage-nonneg.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [netEntropyInfEntourage_univ](declarations/netentropyinfentourage-univ.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [netEntropyEntourage_univ](declarations/netentropyentourage-univ.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [netEntropyInfEntourage_le_coverEntropyInfEntourage](declarations/netentropyinfentourage-le-coverentropyinfentourage.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [coverEntropyInfEntourage_le_netEntropyInfEntourage](declarations/coverentropyinfentourage-le-netentropyinfentourage.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [netEntropyEntourage_le_coverEntropyEntourage](declarations/netentropyentourage-le-coverentropyentourage.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [coverEntropyEntourage_le_netEntropyEntourage](declarations/coverentropyentourage-le-netentropyentourage.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [coverEntropyInf_eq_iSup_netEntropyInfEntourage](declarations/coverentropyinf-eq-isup-netentropyinfentourage.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [coverEntropy_eq_iSup_netEntropyEntourage](declarations/coverentropy-eq-isup-netentropyentourage.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [coverEntropyInf_eq_iSup_basis_netEntropyInfEntourage](declarations/coverentropyinf-eq-isup-basis-netentropyinfentourage.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [coverEntropy_eq_iSup_basis_netEntropyEntourage](declarations/coverentropy-eq-isup-basis-netentropyentourage.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [netEntropyInfEntourage_le_coverEntropyInf](declarations/netentropyinfentourage-le-coverentropyinf.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [netEntropyEntourage_le_coverEntropy](declarations/netentropyentourage-le-coverentropy.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ef4d7eb2a62ec1d8271029e069da6cf121b21e37c78526df697f6a12b30f615a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/NetEntropy/Variant6f0facab5db93336036f895da7fb811bf9498fc23b836771ca7a5efed3b427ee.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
