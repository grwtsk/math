# Convergence In Measure Tendsto In Measure Of Tendsto Snorm Of Strongly Measurable

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**24 observed declarations and anonymous commands**, 20 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/MeasureTheory/ConvergenceInMeasure/Variant15092339f7eb6618c80b723846c11d561489cb93109fd806a94995a3e2b74ed4.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1e5ad511d0229b3d232b73162b09271508580b7f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/ConvergenceInMeasureTendstoInMeasureOfTendstoSnormOfStronglyMeasurable.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [TendstoInMeasure](declarations/tendstoinmeasure.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [tendstoInMeasure_iff_norm](declarations/tendstoinmeasure-iff-norm.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [congr'](declarations/congr-source-edition-2.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [congr](declarations/congr.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [congr_left](declarations/congr-left.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [congr_right](declarations/congr-right.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [tendstoInMeasure_of_tendsto_ae_of_stronglyMeasurable](declarations/tendstoinmeasure-of-tendsto-ae-of-stronglymeasurable.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [tendstoInMeasure_of_tendsto_ae](declarations/tendstoinmeasure-of-tendsto-ae.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `macro_rules` | [(anonymous)](declarations/macro-rules.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [exists_nat_measure_lt_two_inv](declarations/exists-nat-measure-lt-two-inv.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [seqTendstoAeSeqAux](declarations/seqtendstoaeseqaux.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [seqTendstoAeSeq](declarations/seqtendstoaeseq.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [seqTendstoAeSeq_succ](declarations/seqtendstoaeseq-succ.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [seqTendstoAeSeq_spec](declarations/seqtendstoaeseq-spec.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [seqTendstoAeSeq_strictMono](declarations/seqtendstoaeseq-strictmono.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [TendstoInMeasure.exists_seq_tendsto_ae](declarations/tendstoinmeasure-exists-seq-tendsto-ae.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [TendstoInMeasure.exists_seq_tendstoInMeasure_atTop](declarations/tendstoinmeasure-exists-seq-tendstoinmeasure-attop.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [TendstoInMeasure.exists_seq_tendsto_ae'](declarations/tendstoinmeasure-exists-seq-tendsto-ae-source-edition-2.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [TendstoInMeasure.aeMeasurable](declarations/tendstoinmeasure-aemeasurable.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [tendstoInMeasure_of_tendsto_snorm_of_stronglyMeasurable](declarations/tendstoinmeasure-of-tendsto-snorm-of-stronglymeasurable.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [tendstoInMeasure_of_tendsto_snorm_of_ne_top](declarations/tendstoinmeasure-of-tendsto-snorm-of-ne-top.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [tendstoInMeasure_of_tendsto_snorm_top](declarations/tendstoinmeasure-of-tendsto-snorm-top.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [tendstoInMeasure_of_tendsto_snorm](declarations/tendstoinmeasure-of-tendsto-snorm.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [tendstoInMeasure_of_tendsto_Lp](declarations/tendstoinmeasure-of-tendsto-lp.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ee4dce166dfc2793432522128937716d8cacd818f4656406e2d8484fad33e89f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/ConvergenceInMeasure/Variant15092339f7eb6618c80b723846c11d561489cb93109fd806a94995a3e2b74ed4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
