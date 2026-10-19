import Folder.Rebuild.AnalyticNumberTheory.EulerProductApproximation
import Folder.Rebuild.AnalyticNumberTheory.DirichletPolynomialProduct

/-!
# Folder.Rebuild.Exposition.AnalyticNumberTheoryIndex

Exposition index for the first checked analytic number theory layer.
-/

namespace Folder
namespace Rebuild
namespace Exposition

def realZetaPositiveHalfPlaneAnchor : ClassicalAnchor where
  shortName := "Real zeta positive half-plane"
  paperOrBook := "Checked rebuild real Dirichlet-series layer"
  theoremLabel := "zetaRealHalfPlane_pos"
  mathematicalContent :=
    "The local positive real zeta series is checked to be positive for real sigma greater than one."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def boundedDirichletSeriesConvergenceAnchor : ClassicalAnchor where
  shortName := "Bounded Dirichlet-series convergence"
  paperOrBook := "Checked rebuild summability layer"
  theoremLabel := "dirichletSeriesComplex_absSummable_of_bounded_coeff"
  mathematicalContent :=
    "Bounded complex coefficients give absolute convergence in the checked real half-plane sigma greater than one."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def finiteDirichletPolynomialProductAnchor : ClassicalAnchor where
  shortName := "Finite Dirichlet-polynomial product"
  paperOrBook := "Checked finite Cauchy-product scaffold"
  theoremLabel := "finite_dirichlet_cauchy_product_unweighted"
  mathematicalContent :=
    "The rectangular finite Cauchy product is checked; the divisor-reindexed weighted identity remains a later target."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def analyticEulerProductForZetaAnchor : ClassicalAnchor where
  shortName := "Analytic Euler product for zeta"
  paperOrBook := "Classical analytic number theory references"
  theoremLabel := "EulerProductForZetaHalfPlaneTarget"
  mathematicalContent :=
    "The infinite Euler product remains a theorem target unless fully formalized."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.theoremTarget

def hadamardDeLaValleePoussinAnchor : ClassicalAnchor where
  shortName := "Hadamard-de la Vallee Poussin"
  paperOrBook := "Classical prime-counting theorem literature"
  theoremLabel := "PrimeNumberTheoremTarget"
  mathematicalContent :=
    "The classical analytic route remains a theorem target in this rebuild branch."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.theoremTarget

def wienerIkeharaAnchor : ClassicalAnchor where
  shortName := "Wiener-Ikehara"
  paperOrBook := "Classical Tauberian references"
  theoremLabel := "TauberianRouteTarget"
  mathematicalContent :=
    "The Tauberian route is exposition metadata and not a checked dependency here."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.theoremTarget

def pntRouteAnchor : ClassicalAnchor where
  shortName := "PNT route"
  paperOrBook := "Classical analytic number theory references"
  theoremLabel := "PrimeNumberTheoremTarget"
  mathematicalContent :=
    "The route from analytic zeta inputs to prime asymptotics remains target-only."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.theoremTarget

def analyticNumberTheoryAnchors : List ClassicalAnchor :=
  [ realZetaPositiveHalfPlaneAnchor
  , boundedDirichletSeriesConvergenceAnchor
  , finiteDirichletPolynomialProductAnchor
  , analyticEulerProductForZetaAnchor
  , hadamardDeLaValleePoussinAnchor
  , wienerIkeharaAnchor
  , pntRouteAnchor
  ]

end Exposition
end Rebuild
end Folder
