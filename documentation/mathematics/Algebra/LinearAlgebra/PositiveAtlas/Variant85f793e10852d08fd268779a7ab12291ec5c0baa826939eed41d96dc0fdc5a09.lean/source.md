# Complete source: GRWTSK.Algebra.LinearAlgebra.PositiveAtlas.Variant85f793e10852d08fd268779a7ab12291ec5c0baa826939eed41d96dc0fdc5a09

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ce2dd60fbfcbb9e256a0b712c23f4d9cdc90964f` · SHA-256 `85f793e10852d08fd268779a7ab12291ec5c0baa826939eed41d96dc0fdc5a09`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.PositiveAtlas.Certification
import FormalResearch.PositiveAtlas.CertificationUniverseFixtures
import FormalResearch.PositiveAtlas.PositiveGeometry
import FormalResearch.PositiveAtlas.ProvenanceProjection
import FormalResearch.PositiveAtlas.ScalarSchur
import FormalResearch.PositiveAtlas.BlockSchur
import FormalResearch.PositiveAtlas.InvertibleBlockSchur
import FormalResearch.PositiveAtlas.MatrixBlockSchur
import FormalResearch.PositiveAtlas.ExplicitSchurMatrix
import FormalResearch.PositiveAtlas.FeshbachReconstruction
import FormalResearch.PositiveAtlas.FeshbachHermitian
import FormalResearch.PositiveAtlas.FeshbachInertia
import FormalResearch.PositiveAtlas.FeshbachEquationIdeal
import FormalResearch.PositiveAtlas.FiniteQuadraticCertificate
import FormalResearch.PositiveAtlas.GeneralizedInverseSchur
import FormalResearch.PositiveAtlas.NullCrossAnnihilation
import FormalResearch.PositiveAtlas.ProvenanceRange
import FormalResearch.PositiveAtlas.SingularLinearSolver
import FormalResearch.PositiveAtlas.SolverIndependence
import FormalResearch.PositiveAtlas.PhaseIIResidualQuotient
import FormalResearch.PositiveAtlas.QuadraticSwapInvolution
import FormalResearch.PositiveAtlas.CommutingInvolutions
import FormalResearch.PositiveAtlas.PositiveFourSector
import FormalResearch.PositiveAtlas.InterventionDefect
import FormalResearch.PositiveAtlas.ComparatorSeparation
import FormalResearch.PositiveAtlas.ComparatorMargin
import FormalResearch.PositiveAtlas.FourPhaseConvolution
import FormalResearch.PositiveAtlas.AnalyticDispersion
import FormalResearch.PositiveAtlas.AffineGauge
import FormalResearch.PositiveAtlas.AffineReconstruction
import FormalResearch.PositiveAtlas.FiniteLogAffineCovariance
import FormalResearch.PositiveAtlas.FiniteLogAffineFirstDerivative
import FormalResearch.PositiveAtlas.FiniteLogAffineSecondDerivative
import FormalResearch.PositiveAtlas.FiniteThirdCumulant
import FormalResearch.PositiveAtlas.FiniteFourthCumulant
import FormalResearch.PositiveAtlas.MomentCumulantPartitions
import FormalResearch.PositiveAtlas.BlockDirectionReindexing
import FormalResearch.PositiveAtlas.FiniteCumulantPrefix
import FormalResearch.PositiveAtlas.RecursiveCumulantHierarchy
import FormalResearch.PositiveAtlas.FiniteRawMomentHierarchy
import FormalResearch.PositiveAtlas.OrderTwoRecursiveCumulant
import FormalResearch.PositiveAtlas.OrderThreeRecursiveCumulant
import FormalResearch.PositiveAtlas.OrderFourRecursiveCumulant
import FormalResearch.PositiveAtlas.AllOrdersRawMomentDerivative
import FormalResearch.PositiveAtlas.OrderedPartitionBridge

/-!
# Positive Atlas

Formal infrastructure for the self-representing positive atlas program.

The initial accepted layer is certificate-relative: it defines exact sufficient
representations and structural Quines without assuming that a minimal sufficient
representation exists for a particular mathematical object. Later modules may
instantiate positive geometry, involutions, renormalization, and RH-specific
charts on top of this core.
-/
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=96934a8b0ada7b363b47ac05b04cec2c93e8bae523b4c05e31aecbaf32b7cc7b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/PositiveAtlas/Variant85f793e10852d08fd268779a7ab12291ec5c0baa826939eed41d96dc0fdc5a09.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
