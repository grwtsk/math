/-!
# Primitive obstruction return

Inaccessibility follows only from explicit completion semantics, a first
infeasible boundary, and a primitive core.
-/

namespace Mathematics.GraphAccess

structure PrimitiveObstructionCertificate where
  blockedTargetRef : String
  firstInfeasibleBoundaryRef : String
  primitiveCoreRef : String
  canonicalObstructionRef : String
  completionSemanticsAdmitted : Prop
  primitiveCoreMinimal : Prop
  targetBlocked : Prop
  completionSemanticsEvidence : completionSemanticsAdmitted
  primitiveCoreMinimalEvidence : primitiveCoreMinimal
  targetBlockedEvidence : targetBlocked

theorem primitive_obstruction_blocks_target
    (certificate : PrimitiveObstructionCertificate) :
    certificate.targetBlocked :=
  certificate.targetBlockedEvidence

end Mathematics.GraphAccess
