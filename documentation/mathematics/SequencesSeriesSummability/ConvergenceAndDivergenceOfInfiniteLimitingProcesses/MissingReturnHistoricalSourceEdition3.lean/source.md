# Complete source: GRWTSK.Analysis.Fourier.Checks.Negative.MissingReturn

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3af92be0d356f2863c62082983644633f74c38df` · SHA-256 `5f2ea6b0d2d02077ec47df6a11779082898b0af45cb6c7d386426532a8864154`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.LinearAlgebra.Schrodinger.Sampling
import GRWTSK.Analysis.NormedSpace.QuadraticError
import GRWTSK.Analysis.Fourier.WindowCertificates
import GRWTSK.Analysis.AsymptoticAnalysis.PolynomialClosure
import GRWTSK.Combinatorics.Sequences.QuotaDiscrepancy
open GRWTSK.Analysis.Waveform
example (X : ℝ → ℝ) : ∃ C p : ℝ, 0 ≤ C ∧ 0 ≤ p ∧ ∀ T, 0 ≤ T → X T ≤ C*(1+T)^p := by
  exact p04_conditional
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=740cb483b2c7bcd1f2064c3d06339940bf105a5c09a433992fc5070996d3b462 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Checks/Negative/MissingReturn.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
