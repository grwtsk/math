import Folder.Rebuild.AnalyticNumberTheory.ZetaHalfPlaneScaffold

/-!
# Folder.Rebuild.AnalyticNumberTheory.ClassicalTargets

Classical analytic number theory targets and anchors.
-/

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

structure PNTInputs where
  zetaMeromorphicContinuation : Prop
  zetaSimplePoleAtOne : Prop
  zetaNoZerosOnReOne : Prop
  tauberianTheorem : Prop

def PrimeNumberTheoremAnchor : ClassicalAnchor :=
  pntAnchor

def PNTClassicalRouteAnchor : ClassicalAnchor where
  shortName := "Classical route to prime asymptotics"
  paperOrBook := "Hadamard, de la Vallee Poussin, and Tauberian references"
  theoremLabel := "PrimeNumberTheoremTarget"
  mathematicalContent :=
    "Meromorphic continuation, a simple pole at one, a no-zero boundary statement, and a Tauberian theorem form the classical route."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl

end AnalyticNumberTheory
end Rebuild
end Folder
