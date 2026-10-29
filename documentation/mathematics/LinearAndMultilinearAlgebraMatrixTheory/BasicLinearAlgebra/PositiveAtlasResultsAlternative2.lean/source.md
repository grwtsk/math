# Positive Atlas Results Alternative2 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eab19035a7371535b003d55aecb591b8c7f32098` · SHA-256 `beda2f10d359e7ae02e24dc539a757d9436eb940b4b95c43a12fd6c8fe7055df`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

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
import FormalResearch.PositiveAtlas.GeneralizedInverseSchur
import FormalResearch.PositiveAtlas.NullCrossAnnihilation
import FormalResearch.PositiveAtlas.FiniteFeatureGeometry
import FormalResearch.PositiveAtlas.FiniteConditionalExpectation
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
import FormalResearch.PositiveAtlas.FiniteCovarianceProjection
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

<!-- DOCUMENTATION RELOCATION /1 original-sha256=73ce84854779fb1b01487868cc39b3632c055eea06ce560d07ff7a26692aa6a1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/PositiveAtlas/Variantbeda2f10d359e7ae02e24dc539a757d9436eb940b4b95c43a12fd6c8fe7055df.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
