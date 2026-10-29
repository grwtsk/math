# Conditional LExpectation Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 30 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/MeasureTheory/ConditionalLExpectation/Variantf04066be1042ab3a11fdf16471703f4a0fc7c5ef99b0ed06acaebb7a9d3cecda.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3ee4e8daed564c81a694d3fb206cddf597cda298`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/ConditionalLExpectationPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [condLExpUnexpander](declarations/condlexpunexpander.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [condLExp_of_not_le](declarations/condlexp-of-not-le.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [condLExp_of_not_sigmaFinite](declarations/condlexp-of-not-sigmafinite.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [condLExp_eq_self](declarations/condlexp-eq-self.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [condLExp_of_not_sub_sigma_measurable](declarations/condlexp-of-not-sub-sigma-measurable.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [measurable_condLExp](declarations/measurable-condlexp.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [measurable_condLExp'](declarations/measurable-condlexp-source-edition-2.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [setLIntegral_condLExp](declarations/setlintegral-condlexp.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [setLIntegral_condLExp_trim](declarations/setlintegral-condlexp-trim.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [lintegral_condLExp](declarations/lintegral-condlexp.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [condLExp_lt_top](declarations/condlexp-lt-top.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [condLExp_ne_top](declarations/condlexp-ne-top.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [ae_eq_condLExp₀](declarations/ae-eq-condlexp-source-edition-2.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [ae_eq_condLExp](declarations/ae-eq-condlexp.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [condLExp_const](declarations/condlexp-const.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [condLExp_congr_ae](declarations/condlexp-congr-ae.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [condLExp_zero](declarations/condlexp-zero.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [condLExp_one](declarations/condlexp-one.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [condLExp_congr_ae_trim](declarations/condlexp-congr-ae-trim.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [condLExp_bot'](declarations/condlexp-bot.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [condLExp_bot_ae_eq](declarations/condlexp-bot-ae-eq.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [condLExp_bot](declarations/condlexp-bot-source-edition-2.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [condLExp_mono](declarations/condlexp-mono.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [condLExp_add_le](declarations/condlexp-add-le.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [condLExp_add_left](declarations/condlexp-add-left.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [condLExp_add_right](declarations/condlexp-add-right.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [condLExp_smul](declarations/condlexp-smul.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [condLExp_smul_le](declarations/condlexp-smul-le.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [condLExp_smul'](declarations/condlexp-smul-source-edition-2.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [condLExp_tsum](declarations/condlexp-tsum.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [condLExp_finsetSum](declarations/condlexp-finsetsum.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8e1b567920c5f42c9fe3d956acb0a5842fee89817e738e7df7ee286294a6d9fe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/ConditionalLExpectation/Variantf04066be1042ab3a11fdf16471703f4a0fc7c5ef99b0ed06acaebb7a9d3cecda.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
