import Mathematics.StratifiedBoundary.Trace.StableInvariantTrace

/-!
# Reduced finite trace certificate

The certificate records each step from the action to the stable trace.
-/

namespace Mathematics.StratifiedBoundary

structure ReducedTraceCertificate where
  automorphismActionRef : String
  equivariantKernelRef : String
  invariantLawRef : String
  unitaryCrossedProductActionRef : String
  invariantTraceRef : String
  identityCoefficientCompatibilityRef : String

end Mathematics.StratifiedBoundary
