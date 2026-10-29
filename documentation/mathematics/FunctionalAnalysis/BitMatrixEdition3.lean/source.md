# Bit Matrix Edition3 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `91c70054d14ebb91c598d4826365ca1b7f3cc2ec` · SHA-256 `759124a1555a76c7183dbbc5febbcd936933c868b9c445ff63f17c929c5763f7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

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
import BitMatrix.Surgery.Submatrix
import BitMatrix.Topology

/-!
# BitMatrix

The sole public aggregate for production BitMatrix semantics. Test modules
remain behind `BitMatrix.Tests` and are never imported here.
-/
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c27d6e15e9e9f865040e0e7a2af01937b34c7e0c1f289c4f842c11fa4ce696bc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/BitMatrix/Variant759124a1555a76c7183dbbc5febbcd936933c868b9c445ff63f17c929c5763f7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
