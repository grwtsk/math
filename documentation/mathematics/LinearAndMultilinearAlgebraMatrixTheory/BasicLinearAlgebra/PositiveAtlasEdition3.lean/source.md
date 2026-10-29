# Positive Atlas Edition3 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3dfd94622cd7bbecc61e85adb9070eb5dadec82c` · SHA-256 `43335713bacf4414c4fd7227d33e4f2ad43b97050df983914307d7f3ff7b70d0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.PositiveAtlas.Certification
import FormalResearch.PositiveAtlas.PositiveGeometry
import FormalResearch.PositiveAtlas.ProvenanceProjection
import FormalResearch.PositiveAtlas.ScalarSchur
import FormalResearch.PositiveAtlas.BlockSchur
import FormalResearch.PositiveAtlas.InvertibleBlockSchur
import FormalResearch.PositiveAtlas.MatrixBlockSchur
import FormalResearch.PositiveAtlas.ExplicitSchurMatrix
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

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c9f33e1d249c850b4071ea48c9cb622736b227d44354f8a474670b4875c6bfbc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/PositiveAtlas/Variant43335713bacf4414c4fd7227d33e4f2ad43b97050df983914307d7f3ff7b70d0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
