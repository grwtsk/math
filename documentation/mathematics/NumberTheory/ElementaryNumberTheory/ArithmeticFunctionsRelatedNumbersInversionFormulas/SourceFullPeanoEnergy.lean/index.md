# Source Full Peano Energy

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**35 observed declarations and anonymous commands**, 30 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/SourceFullPeanoEnergy/Variant941f3629a2cbe28b9bcd4f878feb452d8119e1aaace6e91b9908c80bc9ccbd27.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f42b7005cabdca208e10ecad7446edd3c4970519`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceFullPeanoEnergy.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [sourceAtom](declarations/sourceatom.md) | 20 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [sourceLog](declarations/sourcelog.md) | 22 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [fullPeanoRaw](declarations/fullpeanoraw.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [fullPeanoKernel](declarations/fullpeanokernel.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [fullPeanoError](declarations/fullpeanoerror.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [sourceAtom_nonneg](declarations/sourceatom-nonneg.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [sourceLog_nonneg](declarations/sourcelog-nonneg.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [sourceAtom_summable](declarations/sourceatom-summable.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [sourceAtom_log_summable](declarations/sourceatom-log-summable.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [sourceAtom_tsum](declarations/sourceatom-tsum.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [sourceAtom_log_tsum](declarations/sourceatom-log-tsum.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [fullPeanoRaw_summable](declarations/fullpeanoraw-summable.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [fullPeanoRaw_measurable](declarations/fullpeanoraw-measurable.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [fullPeanoRaw_bounds](declarations/fullpeanoraw-bounds.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [sourceAtom_weighted_tsum](declarations/sourceatom-weighted-tsum.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [weightedCorrelation_upper_zero](declarations/weightedcorrelation-upper-zero.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [weightedCorrelation_deriv_upper_zero](declarations/weightedcorrelation-deriv-upper-zero.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [weightedCorrelation_second_deriv_upper_zero](declarations/weightedcorrelation-second-deriv-upper-zero.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [weightedCorrelation_ibp](declarations/weightedcorrelation-ibp.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [weightedCorrelation_full_peano](declarations/weightedcorrelation-full-peano.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [sourceAtom_weighted_summable](declarations/sourceatom-weighted-summable.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [fullPeanoRaw_fubini](declarations/fullpeanoraw-fubini.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [fullPeanoRaw_pairing](declarations/fullpeanoraw-pairing.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [fullPeanoRaw_pairing_integrable](declarations/fullpeanoraw-pairing-integrable.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [smoothPeano_pairing](declarations/smoothpeano-pairing.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [fullPeanoKernel_pairing](declarations/fullpeanokernel-pairing.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [fullPeanoError_pairing](declarations/fullpeanoerror-pairing.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [fullPeanoRaw_eq_affine](declarations/fullpeanoraw-eq-affine.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [fullPeanoError_zero](declarations/fullpeanoerror-zero.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [fullPeano_pairing_eq_interval](declarations/fullpeano-pairing-eq-interval.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [fullPeanoKernel_pairing_Ioi](declarations/fullpeanokernel-pairing-ioi.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [fullPeanoError_pairing_Ioi](declarations/fullpeanoerror-pairing-ioi.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [fullPeano_integrableOn_Ioi_of_interval](declarations/fullpeano-integrableon-ioi-of-interval.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [fullPeanoKernel_pairing_integrable](declarations/fullpeanokernel-pairing-integrable.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [fullPeanoError_pairing_integrable](declarations/fullpeanoerror-pairing-integrable.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ddf5057b3085ac9c46003eee9965c7d64544dc8059901dcf5be930362aa4a14d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/SourceFullPeanoEnergy/Variant941f3629a2cbe28b9bcd4f878feb452d8119e1aaace6e91b9908c80bc9ccbd27.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
