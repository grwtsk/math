# Complete source: GRWTSK.Algebra.LinearAlgebra.Schrodinger.Sampling.Checks.Negative.FalseTraceBound

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `77571644e83dcacc90c3d719d6d9f8c746f5379e` · SHA-256 `9ed9a6eba87b6b0506f68801011c474e0d197365d997446a750a145e95312a34`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.LinearAlgebra.Schrodinger.Sampling
import GRWTSK.Analysis.NormedSpace.QuadraticError
import GRWTSK.Analysis.Fourier.WindowCertificates
import GRWTSK.Analysis.AsymptoticAnalysis.PolynomialClosure
import GRWTSK.CombinatoricsAndDiscreteMathematics.Sequences.QuotaDiscrepancy
open GRWTSK.Analysis.Waveform
example : Matrix.trace (transfer 2 0) ≤ 1 := by norm_num [transfer_trace]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=63e3e97272b61d381f97d80c26170b45379b7db54f20e747ae5f301d97c4bd98 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Schrodinger/Sampling/Checks/Negative/FalseTraceBound__SourceOccurrence715cbe31c0c38f1f9d23e27e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
