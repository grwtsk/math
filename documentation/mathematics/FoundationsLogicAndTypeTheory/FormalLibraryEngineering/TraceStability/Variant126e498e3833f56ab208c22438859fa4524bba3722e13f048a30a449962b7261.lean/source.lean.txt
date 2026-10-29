import Mathematics.StratifiedBoundary.Trace.TraceExtension
import Mathematics.StratifiedBoundary.Boundary.Perturbation

/-!
# Trace stability classification
-/

namespace Mathematics.StratifiedBoundary

inductive ProjectiveBoundaryStatus where
  | exact
  | asymptotic
  | residual (bound : Nat)
  | unbounded
  | unknown
deriving DecidableEq, Repr

structure VisibleTraceResidual where
  connectorDefect : Nat
  observableMismatch : Nat
  classification : ProjectiveBoundaryStatus
  residualVisible : Bool := true
  residualVisible_exact : residualVisible = true

end Mathematics.StratifiedBoundary
