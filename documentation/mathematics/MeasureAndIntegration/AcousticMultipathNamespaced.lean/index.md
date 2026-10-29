# Acoustic Multipath Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 20 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant6bdbf5d67a9df6e2a318552504692484de411eb7435160c7c531c9b5c12e97ee.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0548e61752d01521291086a13681da08ed77e866`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/MeasureAndIntegration/AcousticMultipathNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [angularFourierPhase](declarations/angularfourierphase.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [angularFourier](declarations/angularfourier.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [angularFourierPhase_norm](declarations/angularfourierphase-norm.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [angularFourierPhase_continuous](declarations/angularfourierphase-continuous.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [angularFourierPhase_add](declarations/angularfourierphase-add.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [angular_fourier_integrable](declarations/angular-fourier-integrable.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [delayedPath](declarations/delayedpath.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [delayed_path_integrable](declarations/delayed-path-integrable.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [angularFourier_const_mul](declarations/angularfourier-const-mul.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [angularFourier_delay](declarations/angularfourier-delay.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [angularFourier_delayedPath](declarations/angularfourier-delayedpath.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [finiteMultipathSignal](declarations/finitemultipathsignal.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [finiteTransfer](declarations/finitetransfer.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [finite_multipath_integrable](declarations/finite-multipath-integrable.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [angularFourier_finite_sum](declarations/angularfourier-finite-sum.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [finite_multipath_fourier](declarations/finite-multipath-fourier.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [source_fourier_recovery](declarations/source-fourier-recovery.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `abbrev` | [IntegrableAcousticSignal](declarations/integrableacousticsignal.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [source_fourier_coefficient_descends](declarations/source-fourier-coefficient-descends.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [transfer_stability](declarations/transfer-stability.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [spectralObservation](declarations/spectralobservation.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [spectralObservation_injective](declarations/spectralobservation-injective.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [notchSpectrum](declarations/notchspectrum.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [spectralNotchObstruction](declarations/spectralnotchobstruction.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [twoPathTransfer](declarations/twopathtransfer.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [twoPathTransfer_formula](declarations/twopathtransfer-formula.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [twoPathTransfer_notch](declarations/twopathtransfer-notch.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [twoPathTransfer_zero](declarations/twopathtransfer-zero.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [twoBinTransfer](declarations/twobintransfer.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [twoBinTransfer_notch](declarations/twobintransfer-notch.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [twoBinNotchObstruction](declarations/twobinnotchobstruction.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [no_two_bin_spectrum_decoder](declarations/no-two-bin-spectrum-decoder.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7ed54ec21cb40e3682f7d4a6d95b36ca53324fe847b0f6d6c4bbe22a6d0e572c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant6bdbf5d67a9df6e2a318552504692484de411eb7435160c7c531c9b5c12e97ee.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
