# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.Ee034d5fb911484a1a682aafba890c3d0dd56f754215a4242618b47b385a2904LensCheck.Variantee034d5fb911484a1a682aafba890c3d0dd56f754215a4242618b47b385a2904

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0789916bb66ba8e95515b7f7882766a989328d39` · SHA-256 `ee034d5fb911484a1a682aafba890c3d0dd56f754215a4242618b47b385a2904`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeFourier
import Mathlib.Analysis.Fourier.Convolution
import Mathlib.Analysis.Fourier.Inversion
open MeasureTheory Complex
open scoped FourierTransform Convolution
#check integral_comp_neg
#check integral_re
#check integral_conj
#check Complex.exp_conj
#check Complex.normSq_eq_conj_mul_self
#check Complex.mul_conj
#check Complex.conj_mul
#check Real.integrable_comp_div
#check Measure.integral_comp_mul_left
#check ContinuousLinearMap.integral_comp_comm
#check MeasureTheory.Integrable.bdd_mul
#check MeasureTheory.Integrable.mul_continuous_of_bounded
#check Real.fourierIntegral_convergent_iff
#check Real.fourierInv_eq'
#check integral_div
#check Integrable.div_const
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c4ba6727db1933c686b58ef31e436d85e064c402b7e6280ed73041107fa757f6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Ee034d5fb911484a1a682aafba890c3d0dd56f754215a4242618b47b385a2904LensCheck/Variantee034d5fb911484a1a682aafba890c3d0dd56f754215a4242618b47b385a2904.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
