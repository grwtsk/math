# Source Correlation Cell Transport

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**29 observed declarations and anonymous commands**, 23 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/0212c686efa8cc8da0c022aded3b5301c13941fea083877ed077b5805d7b6ea4SourceCorrelatio/Variant108ba172c1c31bb468a4d7d721711cfff522cf3a57754c507fa0c73b3c78dfa5.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ed16a1782e4b66694f779075012ba2ef09bec5ca`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/MeasureAndIntegration/SourceCorrelationCellTransport.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [cellCorrection](declarations/cellcorrection.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [cellMajorant](declarations/cellmajorant.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [majorantPrimitive](declarations/majorantprimitive.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [majorantPrimitive_hasDerivAt](declarations/majorantprimitive-hasderivat.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [cellMajorant_continuousOn](declarations/cellmajorant-continuouson.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [cellMajorant_intervalIntegrable](declarations/cellmajorant-intervalintegrable.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [cellMajorant_integral_eq](declarations/cellmajorant-integral-eq.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [cellMajorant_integral_le_four](declarations/cellmajorant-integral-le-four.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [sourceCorrelation_log_increment_bound](declarations/sourcecorrelation-log-increment-bound.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [log_cell_increment_le](declarations/log-cell-increment-le.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [cell_integrand_abs_le](declarations/cell-integrand-abs-le.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [div_sqrt_continuousOn](declarations/div-sqrt-continuouson.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [cellIntegrand_intervalIntegrable](declarations/cellintegrand-intervalintegrable.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [cellCorrection_abs_le_majorant](declarations/cellcorrection-abs-le-majorant.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [sum_cellMajorant_integrals](declarations/sum-cellmajorant-integrals.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [sum_cellCorrection_abs_le](declarations/sum-cellcorrection-abs-le.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [sum_sourceCorrelation_cell_transport_le](declarations/sum-sourcecorrelation-cell-transport-le.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [constant_cell_transport_zero](declarations/constant-cell-transport-zero.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [cellFirstMoment](declarations/cellfirstmoment.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [cellSecondMoment](declarations/cellsecondmoment.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [cellTaylorRemainder](declarations/celltaylorremainder.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [cellFirstMoment_integrand_intervalIntegrable](declarations/cellfirstmoment-integrand-intervalintegrable.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [cellSecondMoment_integrand_intervalIntegrable](declarations/cellsecondmoment-integrand-intervalintegrable.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [cellFirstMoment_nonneg](declarations/cellfirstmoment-nonneg.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [remainder_integrand_eq](declarations/remainder-integrand-eq.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [cellTaylorRemainder_eq](declarations/celltaylorremainder-eq.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [cellCorrection_eq_firstMoment_add_remainder](declarations/cellcorrection-eq-firstmoment-add-remainder.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [remainder_integrand_abs_le](declarations/remainder-integrand-abs-le.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [cellTaylorRemainder_abs_le](declarations/celltaylorremainder-abs-le.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c4a1011a3d105edd3c915921b9df22e1ef1c2555968f6314af063166990f32fa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/0212c686efa8cc8da0c022aded3b5301c13941fea083877ed077b5805d7b6ea4SourceCorrelatio/Variant108ba172c1c31bb468a4d7d721711cfff522cf3a57754c507fa0c73b3c78dfa5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
