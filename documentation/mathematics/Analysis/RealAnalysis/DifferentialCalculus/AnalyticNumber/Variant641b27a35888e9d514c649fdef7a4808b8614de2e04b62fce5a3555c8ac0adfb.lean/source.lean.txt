import AnalyticNumber.Certificate
import AnalyticNumber.DirichletSeries
import AnalyticNumber.EulerProduct
import AnalyticNumber.Mobius
import AnalyticNumber.Zeta
import AnalyticNumber.LFunction
import AnalyticNumber.AutomorphicEulerProduct
import AnalyticNumber.Determinant
import AnalyticNumber.TraceFormula
import AnalyticNumber.CohomologicalComparison
import AnalyticNumber.CountableShadowPipeline
import AnalyticNumber.HilbertMeshShadow
import AnalyticNumber.AnalyticMeshPipeline
import AnalyticNumber.SpectralFaceProjection
import AnalyticNumber.AnalyticResidueReduction
import AnalyticNumber.ResiduePatternTheoremProposal
import AnalyticNumber.PipelineHaltingClosure
import AnalyticNumber.ExpressibleNumbers
import AnalyticNumber.NonMathlibAdapter
import AnalyticNumber.FoundryPhilosophy
import AnalyticNumber.FoundryReducerHierarchy
import AnalyticNumber.FoundryPhaseAdvance
import AnalyticNumber.FaithfulShadow
import AnalyticNumber.FiniteShadowLimit
import AnalyticNumber.RefinementStability
import AnalyticNumber.VerifiedNumericalEstimate
import AnalyticNumber.Bridge.Number
import AnalyticNumber.BoundaryCalculus
import AnalyticNumber.TrustedExternal

/-!
Core `AnalyticNumber` import surface.

This file deliberately does not import the Boolean bridge or the examples. The
analytic-number layer depends on `Number`, not on `Boolean`.

The optional `AnalyticNumber.BoundaryCalculus` wrapper imports only the
analytic-number-facing bridge and the generic authority calculus; it does not
pull in Boolean examples.
-/
