# Complete source: GRWTSK.Analysis.FunctionalAnalysis.BitMatrix.Variant14d675af61efe56f77c7f4825620f52a1504eca7eb29efb264632883c6838a60

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `986ca499a3320ff76aefe73daae037651515adb4` · SHA-256 `14d675af61efe56f77c7f4825620f52a1504eca7eb29efb264632883c6838a60`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import BitMatrix.Core.Basic
import BitMatrix.Algebra
import BitMatrix.Algebra.InvolutionProjection
import BitMatrix.Algebra.Symmetry
import BitMatrix.Adapters.CausalQuantizer
import BitMatrix.Adapters.DAFRefinement
import BitMatrix.Adapters.Fabric
import BitMatrix.Carrier
import BitMatrix.Codec
import BitMatrix.Configuration
import BitMatrix.Dynamics
import BitMatrix.Dynamics.Avalanche
import BitMatrix.Dynamics.DynamicalZeta
import BitMatrix.FiniteField.Galois
import BitMatrix.FiniteField.GaloisRound
import BitMatrix.FiniteField.Regular
import BitMatrix.FiniteField.Round
import BitMatrix.Formal
import BitMatrix.Geometry.GlobalProjection
import BitMatrix.Geometry.Euclidean
import BitMatrix.Geometry.CarrierGrid
import BitMatrix.Geometry.Stroke
import BitMatrix.Network.IntegralPermutationLift
import BitMatrix.Network.Permutation
import BitMatrix.Quantization.Core
import BitMatrix.Reduction.SAT
import BitMatrix.Runtime.MatrixReducerIR
import BitMatrix.Runtime.Correspondence
import BitMatrix.Runtime.ForeignTrace
import BitMatrix.Runtime.ForeignTraceEvidenceGenerated
import BitMatrix.Runtime.FixedProgramInterpreter
import BitMatrix.Runtime.MatrixRing
import BitMatrix.Runtime.Numeric
import BitMatrix.Runtime.PacketRing
import BitMatrix.Runtime.RingBuffer
import BitMatrix.Runtime.Semantics
import BitMatrix.Runtime.Spectral
import BitMatrix.Runtime
import BitMatrix.Rhetorical
import BitMatrix.Surgery
import BitMatrix.Topology

/-!
# BitMatrix

The sole public aggregate for production BitMatrix semantics. Test modules
remain behind `BitMatrix.Tests` and are never imported here.
-/
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=45fe9fa71af78855cf7bf2109ce4e30395621fe6b1e6d356eb96aeb3c318f620 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/BitMatrix/Variant14d675af61efe56f77c7f4825620f52a1504eca7eb29efb264632883c6838a60.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
