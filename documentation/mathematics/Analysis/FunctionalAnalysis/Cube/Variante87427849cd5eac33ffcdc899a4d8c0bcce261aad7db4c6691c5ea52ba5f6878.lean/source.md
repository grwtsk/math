# Complete source: GRWTSK.Analysis.FunctionalAnalysis.Cube.Variante87427849cd5eac33ffcdc899a4d8c0bcce261aad7db4c6691c5ea52ba5f6878

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a60f2374c5855f42145738134192033f93b7412d` · SHA-256 `e87427849cd5eac33ffcdc899a4d8c0bcce261aad7db4c6691c5ea52ba5f6878`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Boolean.Cube.ListTools
import Boolean.Cube.Hypercube
import Boolean.Cube.Hypercube.Gray
import Boolean.Cube.TruthTable
import Boolean.Cube.KarnaughMap
import Boolean.Cube.KarnaughMap.Traversal
import Boolean.Cube.Fourier
import Boolean.Cube.WalshFourier
import Boolean.Cube.WalshFourier.Orthogonality
import Boolean.Cube.BooleanNetwork
import Boolean.Cube.BooleanNetwork.Dynamics
import Boolean.Cube.BooleanNetwork.Asynchronous
import Boolean.Cube.BooleanNetwork.Attractor
import Boolean.Cube.BooleanNetwork.Stochastic
import Boolean.Cube.BooleanNetwork.Feedback
import Boolean.Cube.Noise
import Boolean.Cube.WalshFourier.Energy
import Boolean.Cube.WalshFourier.Noise
import Boolean.Cube.WalshFourier.Analysis
import Boolean.Cube.WalshFourier.Relaxation
import Boolean.Cube.WalshFourier.Inequalities
import Boolean.Cube.WalshFourier.Dirichlet
import Boolean.Cube.PermutationFrequencyFactorization
import Boolean.Cube.DirectionalChain
import Boolean.Cube.NullBalancedEdgeCircle
import Boolean.Cube.EdgeRelaxation
import Boolean.Cube.EdgeRelaxation.Tree
import Boolean.Cube.EdgeRelaxation.Continuous
import Boolean.Cube.ProjectionDepth
import Boolean.Cube.ToyStripBlend
import Boolean.Cube.SelmerFlatnessBoundary

/-!
# Boolean cube

Stable finite cube surface: hypercubes, truth tables, Karnaugh maps, finite
Fourier and Walsh transforms, Boolean-network dynamics, noise operators,
edge-relaxation data, projection depth, and the toy strip blend.

Certificate-gated spectral, zeta, prismatic, torsion, and ZKP-facing modules are
kept behind explicit imports, primarily `Boolean.Cube.CertificateBoundary`.
-/
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6ddb30ae0b0230112f3f8cf87f4693f8acf9b35f7f33e8c06ca38139df6f5d86 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Cube/Variante87427849cd5eac33ffcdc899a4d8c0bcce261aad7db4c6691c5ea52ba5f6878.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
