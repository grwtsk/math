import Mathematics.StratifiedBoundary.Boundary.LimitCoupling

/-!
# Direct-or-coupling limit kernel
-/

namespace Mathematics.StratifiedBoundary

inductive LimitKernelSource
  | directConstruction
  | compatibleCouplings
deriving DecidableEq, Repr

structure ContractiveProjectiveLimitKernel
    (Kernel Measure : Type u) where
  source : LimitKernelSource
  sourceCertificateRef : String
  kernel : Kernel
  applyKernel : Kernel → Measure → Measure
  distance : Measure → Measure → Nat
  contractionNumerator : Nat
  contractionDenominator : Nat
  contractionStrict :
    contractionNumerator < contractionDenominator
  contractive :
    ∀ left right,
      contractionDenominator *
          distance
            (applyKernel kernel left)
            (applyKernel kernel right) ≤
        contractionNumerator * distance left right

theorem projective_limit_kernel_contractive
    {Kernel Measure : Type u}
    (certificate :
      ContractiveProjectiveLimitKernel Kernel Measure)
    (left right : Measure) :
    certificate.contractionDenominator *
        certificate.distance
          (certificate.applyKernel certificate.kernel left)
          (certificate.applyKernel certificate.kernel right) ≤
      certificate.contractionNumerator *
        certificate.distance left right :=
  certificate.contractive left right

end Mathematics.StratifiedBoundary
