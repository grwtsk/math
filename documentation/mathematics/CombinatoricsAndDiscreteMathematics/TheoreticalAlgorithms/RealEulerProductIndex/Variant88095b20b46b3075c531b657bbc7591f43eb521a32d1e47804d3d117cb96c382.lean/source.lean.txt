import Folder.Rebuild.AnalyticNumberTheory.RealEulerProductConvergence
import Folder.Rebuild.Exposition.FiniteReindexingIndex

/-!
# Folder.Rebuild.Exposition.RealEulerProductIndex

Exposition anchors for the checked real Euler-product convergence theorem.
-/

namespace Folder
namespace Rebuild
namespace Exposition

def zetaPartialSumsConvergenceAnchor : ClassicalAnchor where
  shortName := "Real zeta partial sums"
  paperOrBook := "Checked rebuild real half-plane layer"
  theoremLabel := "tendsto_zetaPartialReal"
  mathematicalContent :=
    "Positive real zeta partial sums converge for sigma greater than one."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def realEulerProductConvergenceAnchor : ClassicalAnchor where
  shortName := "Real Euler-product convergence"
  paperOrBook := "Checked rebuild real half-plane layer"
  theoremLabel := "tendsto_zetaEulerApproxReal"
  mathematicalContent :=
    "Diagonal finite Euler products over primes up to N with cutoff N converge to the real zeta series for sigma greater than one."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def complexEulerProductHalfPlaneTargetAnchor : ClassicalAnchor where
  shortName := "Complex Euler product half-plane"
  paperOrBook := "Classical analytic number theory references"
  theoremLabel := "ComplexEulerProductHalfPlaneTarget"
  mathematicalContent :=
    "The complex half-plane Euler product remains a theorem target."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.theoremTarget

def zetaAnalyticContinuationTargetAnchor : ClassicalAnchor where
  shortName := "Zeta analytic continuation"
  paperOrBook := "Classical analytic number theory references"
  theoremLabel := "ZetaAnalyticContinuationTarget"
  mathematicalContent :=
    "Analytic continuation of zeta is target-only in this rebuild branch."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.theoremTarget

def pntAnalyticRouteStillTargetAnchor : ClassicalAnchor where
  shortName := "PNT analytic route still target"
  paperOrBook := "Classical analytic number theory references"
  theoremLabel := "PrimeNumberTheoremTarget"
  mathematicalContent :=
    "The analytic route to prime asymptotics remains target-only."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.theoremTarget

def realEulerProductAnchors : List ClassicalAnchor :=
  [ zetaPartialSumsConvergenceAnchor
  , realEulerProductConvergenceAnchor
  , complexEulerProductHalfPlaneTargetAnchor
  , zetaAnalyticContinuationTargetAnchor
  , pntAnalyticRouteStillTargetAnchor
  ]

end Exposition
end Rebuild
end Folder
