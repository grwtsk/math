# Kullback Leibler Basic Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/Basic/Varianta249537e48694f8271c729d45e4107189c37852a9aaa7b3d334e9129e0b5e896.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `13554232dca143c81fbbef5d2ed808b81ec95776`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/MeasureAndIntegration/KullbackLeiblerBasicPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `lemma` | [klDiv_of_ac_of_integrable](declarations/kldiv-of-ac-of-integrable.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [klDiv_of_not_ac](declarations/kldiv-of-not-ac.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [klDiv_of_not_integrable](declarations/kldiv-of-not-integrable.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [klDiv_self](declarations/kldiv-self.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [klDiv_zero_left](declarations/kldiv-zero-left.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [klDiv_zero_right](declarations/kldiv-zero-right.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [klDiv_eq_top_iff](declarations/kldiv-eq-top-iff.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [klDiv_ne_top_iff](declarations/kldiv-ne-top-iff.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [klDiv_ne_top](declarations/kldiv-ne-top.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [klDiv_eq_integral_klFun](declarations/kldiv-eq-integral-klfun.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [klDiv_eq_lintegral_klFun](declarations/kldiv-eq-lintegral-klfun.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [klDiv_eq_lintegral_klFun_of_ac](declarations/kldiv-eq-lintegral-klfun-of-ac.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [integral_llr_add_sub_measure_univ_nonneg](declarations/integral-llr-add-sub-measure-univ-nonneg.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [toReal_klDiv](declarations/toreal-kldiv.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [toReal_klDiv_of_measure_eq](declarations/toreal-kldiv-of-measure-eq.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [toReal_klDiv_eq_integral_klFun](declarations/toreal-kldiv-eq-integral-klfun.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [toReal_klDiv_smul_left](declarations/toreal-kldiv-smul-left.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [toReal_klDiv_smul_right_eq_smul_left](declarations/toreal-kldiv-smul-right-eq-smul-left.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [toReal_klDiv_smul_right](declarations/toreal-kldiv-smul-right.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [toReal_klDiv_smul_same](declarations/toreal-kldiv-smul-same.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [klDiv_smul_right_eq_smul_left](declarations/kldiv-smul-right-eq-smul-left.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [klDiv_smul_same](declarations/kldiv-smul-same.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [integral_llr_add_mul_log_nonneg](declarations/integral-llr-add-mul-log-nonneg.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [mul_klFun_le_toReal_klDiv](declarations/mul-klfun-le-toreal-kldiv.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [mul_log_le_toReal_klDiv](declarations/mul-log-le-toreal-kldiv.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [mul_log_le_klDiv](declarations/mul-log-le-kldiv.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [klDiv_eq_zero_iff](declarations/kldiv-eq-zero-iff.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=740455cabc5802a63da72dd818ae38d544d52f74ad9492f284ef4fe3dcd15eaf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Basic/Varianta249537e48694f8271c729d45e4107189c37852a9aaa7b3d334e9129e0b5e896.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
