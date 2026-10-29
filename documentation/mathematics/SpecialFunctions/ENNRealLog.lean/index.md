# ENNReal Log

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 31 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/ENNRealLog/Variant86224dfcf4588cd9e7170fbdea2e347007f9dae4e4599064e3531a7481f1b945.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1772c6f047fb13aad0ad20f0fa291419764976fb`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/SpecialFunctions/ENNRealLog.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [log](declarations/log.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [log_zero](declarations/log-zero.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [log_one](declarations/log-one.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [log_top](declarations/log-top.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [log_ofReal](declarations/log-ofreal.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [log_ofReal_of_pos](declarations/log-ofreal-of-pos.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [log_pos_real](declarations/log-pos-real-source-edition-2.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [log_pos_real'](declarations/log-pos-real.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [log_of_nnreal](declarations/log-of-nnreal.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [log_strictMono](declarations/log-strictmono.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [log_monotone](declarations/log-monotone.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [log_injective](declarations/log-injective.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [log_surjective](declarations/log-surjective.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [log_bijective](declarations/log-bijective.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [log_eq_iff](declarations/log-eq-iff.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [log_eq_bot_iff](declarations/log-eq-bot-iff.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [log_eq_one_iff](declarations/log-eq-one-iff.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [log_eq_top_iff](declarations/log-eq-top-iff.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [log_lt_log_iff](declarations/log-lt-log-iff.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [bot_lt_log_iff](declarations/bot-lt-log-iff.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [log_lt_top_iff](declarations/log-lt-top-iff.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [log_lt_zero_iff](declarations/log-lt-zero-iff.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [zero_lt_log_iff](declarations/zero-lt-log-iff.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [log_le_log_iff](declarations/log-le-log-iff.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [log_le_zero_iff](declarations/log-le-zero-iff.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [zero_le_log_iff](declarations/zero-le-log-iff.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [log_le_log](declarations/log-le-log.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [log_lt_log](declarations/log-lt-log.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [log_mul_add](declarations/log-mul-add.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [log_rpow](declarations/log-rpow.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [log_pow](declarations/log-pow.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [log_inv](declarations/log-inv.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=47c123af41e89d8ba8c09ba9ccf2b84ab05ce1c5f6e18d02c64465181a060b5e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ENNRealLog/Variant86224dfcf4588cd9e7170fbdea2e347007f9dae4e4599064e3531a7481f1b945.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
