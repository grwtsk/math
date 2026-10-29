# Acoustic Multipath

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 20 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant3dee90cbe359deef7099d0a6b5590e336c60f737b6fe4c841ecf09f805743c27.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `15fbb58a1352087059089b2f6e7a762355aead96`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/MeasureAndIntegration/AcousticMultipath.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [angularFourierPhase](declarations/angularfourierphase.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [angularFourier](declarations/angularfourier.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [angularFourierPhase_norm](declarations/angularfourierphase-norm.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [angularFourierPhase_continuous](declarations/angularfourierphase-continuous.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [angularFourierPhase_add](declarations/angularfourierphase-add.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [angular_fourier_integrable](declarations/angular-fourier-integrable.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [delayedPath](declarations/delayedpath.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [delayed_path_integrable](declarations/delayed-path-integrable.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [angularFourier_const_mul](declarations/angularfourier-const-mul.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [angularFourier_delay](declarations/angularfourier-delay.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [angularFourier_delayedPath](declarations/angularfourier-delayedpath.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [finiteMultipathSignal](declarations/finitemultipathsignal.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [finiteTransfer](declarations/finitetransfer.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [finite_multipath_integrable](declarations/finite-multipath-integrable.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [angularFourier_finite_sum](declarations/angularfourier-finite-sum.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [finite_multipath_fourier](declarations/finite-multipath-fourier.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [source_fourier_recovery](declarations/source-fourier-recovery.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `abbrev` | [IntegrableAcousticSignal](declarations/integrableacousticsignal.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [source_fourier_coefficient_descends](declarations/source-fourier-coefficient-descends.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [transfer_stability](declarations/transfer-stability.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [spectralObservation](declarations/spectralobservation.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [spectralObservation_injective](declarations/spectralobservation-injective.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [notchSpectrum](declarations/notchspectrum.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [spectralNotchObstruction](declarations/spectralnotchobstruction.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [twoPathTransfer](declarations/twopathtransfer.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [twoPathTransfer_formula](declarations/twopathtransfer-formula.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [twoPathTransfer_notch](declarations/twopathtransfer-notch.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [twoPathTransfer_zero](declarations/twopathtransfer-zero.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [twoBinTransfer](declarations/twobintransfer.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [twoBinTransfer_notch](declarations/twobintransfer-notch.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [twoBinNotchObstruction](declarations/twobinnotchobstruction.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [no_two_bin_spectrum_decoder](declarations/no-two-bin-spectrum-decoder.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c3b4756494faceed03e82adfd29cee0f9db615de70eae4a8630b6a2b0318fc96 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant3dee90cbe359deef7099d0a6b5590e336c60f737b6fe4c841ecf09f805743c27.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
