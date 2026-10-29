import Folder.Rebuild.AnalyticNumberTheory.ChebyshevUpperBounds
import Folder.Rebuild.Exposition.ChebyshevIndex

/-!
# Folder.Rebuild.Exposition.ChebyshevUpperBoundIndex

Exposition anchors for checked Chebyshev linear upper bounds.
-/

namespace Folder
namespace Rebuild
namespace Exposition

def thetaDyadicBinomialBridgeAnchor : ClassicalAnchor where
  shortName := "Theta dyadic binomial bridge"
  paperOrBook := "Classical central-binomial Chebyshev argument"
  theoremLabel := "chebyshevTheta_two_mul_sub_theta_le_log_centralBinomial"
  mathematicalContent :=
    "The dyadic theta strip is bounded by the logarithm of the central binomial coefficient."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def psiDyadicBinomialBridgeAnchor : ClassicalAnchor where
  shortName := "Psi dyadic binomial bridge"
  paperOrBook := "Classical central-binomial Chebyshev argument"
  theoremLabel := "ChebyshevPsiDyadicBinomialBridgeTarget"
  mathematicalContent :=
    "The stronger psi dyadic bridge is recorded as a target until the prime-power valuation count is checked."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.theoremTarget

def thetaLinearUpperBoundAnchor : ClassicalAnchor where
  shortName := "Theta linear upper bound"
  paperOrBook := "Checked rebuild Chebyshev upper-bound layer"
  theoremLabel := "chebyshevTheta_linear_upper"
  mathematicalContent :=
    "A checked linear upper bound theta(N) <= C*N follows from the central-binomial bridge and dyadic summation."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

def psiLinearUpperBoundAnchor : ClassicalAnchor where
  shortName := "Psi linear upper bound"
  paperOrBook := "Classical Chebyshev-function route"
  theoremLabel := "ChebyshevPsiLinearUpperBoundTarget"
  mathematicalContent :=
    "A linear upper bound for psi remains target-only until the stronger psi dyadic bridge is checked."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.theoremTarget

def primeCountingLinearUpperBoundAnchor : ClassicalAnchor where
  shortName := "Prime-counting linear upper bound"
  paperOrBook := "Classical pre-PNT estimates"
  theoremLabel := "PrimeCountingLinearUpperBoundTarget"
  mathematicalContent :=
    "A weak linear upper bound for prime counting is recorded as a target in this pass."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.theoremTarget

def chebyshevTwoSidedBoundsStillTargetAnchor : ClassicalAnchor where
  shortName := "Chebyshev two-sided bounds target"
  paperOrBook := "Classical pre-PNT Chebyshev bounds"
  theoremLabel := "ChebyshevPrimeCountingBoundsTarget"
  mathematicalContent :=
    "The two-sided order N/log N Chebyshev bounds remain theorem targets."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.theoremTarget

def pntStillTargetAfterUpperBoundAnchor : ClassicalAnchor where
  shortName := "Prime-counting theorem still target"
  paperOrBook := "Classical analytic number theory references"
  theoremLabel := "PrimeNumberTheoremTarget"
  mathematicalContent :=
    "The checked linear theta upper bound is strictly pre-PNT and does not prove prime-counting asymptotics."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.theoremTarget

def chebyshevUpperBoundAnchors : List ClassicalAnchor :=
  [ thetaDyadicBinomialBridgeAnchor
  , psiDyadicBinomialBridgeAnchor
  , thetaLinearUpperBoundAnchor
  , psiLinearUpperBoundAnchor
  , primeCountingLinearUpperBoundAnchor
  , chebyshevTwoSidedBoundsStillTargetAnchor
  , pntStillTargetAfterUpperBoundAnchor
  ]

end Exposition
end Rebuild
end Folder
