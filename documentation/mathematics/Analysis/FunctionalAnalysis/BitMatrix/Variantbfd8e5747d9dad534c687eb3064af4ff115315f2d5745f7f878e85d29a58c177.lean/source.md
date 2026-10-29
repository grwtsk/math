# Complete source: GRWTSK.Analysis.FunctionalAnalysis.BitMatrix.Variantbfd8e5747d9dad534c687eb3064af4ff115315f2d5745f7f878e85d29a58c177

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `21c1096648c05a17ab5702be7a499346a84392fa` · SHA-256 `bfd8e5747d9dad534c687eb3064af4ff115315f2d5745f7f878e85d29a58c177`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

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

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c58f0f7b011bc49e886737a262eb07b71ac8b409ccc203dc8f03390a7a90ec94 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/BitMatrix/Variantbfd8e5747d9dad534c687eb3064af4ff115315f2d5745f7f878e85d29a58c177.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
