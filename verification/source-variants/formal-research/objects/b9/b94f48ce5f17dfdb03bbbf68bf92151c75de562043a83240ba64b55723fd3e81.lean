import Mathematics.Authority.Kernel
import Mathematics.Operational.DiscreteFixedPoint

/-!
# Snapshot-scoped fixed-point authority

The exact equation, current snapshot capability, and accepted Lean-kernel
certificate remain inseparable.  Addresses and digests cannot construct this
record without the two sealed capabilities.
-/

namespace Mathematics.Operational

universe u

/-- An exact fixed point authorized in one frozen kernel environment. -/
structure SnapshotCertifiedFixedPoint
    {State : Type u}
    (environment : Authority.FrozenKernelEnvironment)
    (operator : VersionedOperator State) where
  fixedPoint : CertifiedFixedPoint operator
  activeSnapshot :
    Projection.VerifiedActiveSnapshot operator.snapshot
  kernelCertificate :
    Authority.AcceptedKernelCertificate environment
      (Function.IsFixedPt operator.step fixedPoint.point)

namespace SnapshotCertifiedFixedPoint

variable
    {State : Type u}
    {environment : Authority.FrozenKernelEnvironment}
    {operator : VersionedOperator State}

/-- Kernel elimination yields only the exact operator-indexed equation. -/
theorem fixed
    (certificate :
      SnapshotCertifiedFixedPoint environment operator) :
    Function.IsFixedPt operator.step certificate.fixedPoint.point :=
  certificate.kernelCertificate.proves

end SnapshotCertifiedFixedPoint

end Mathematics.Operational
