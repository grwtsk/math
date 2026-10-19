import Mathematics.Resolution.AnalyticComplexityBoundary
import Mathematics.Resolution.ArithmeticSecurityMacro

/-!
# Terminal arithmetic-security bridge

The terminal unknown is the exact ordered three-macro state.  Certification
requires the separately typed bridge certificate.
-/

namespace Mathematics.MobiusOntology

open Mathematics.Resolution

inductive ArithmeticSecurityBridgeStatus
    (analyticClaim : AnalyticClaim)
    (complexityClaim : ComplexityClaim)
  | certified
      (certificate :
        ArithmeticSecurityBridgeCertificate
          analyticClaim complexityClaim)
  | unknownFunctor
  | unknownTraceKernel
  | unknownPurityHardness
  | unknownAll

namespace ArithmeticSecurityBridgeStatus

def unknowns
    {analyticClaim : AnalyticClaim}
    {complexityClaim : ComplexityClaim} :
    ArithmeticSecurityBridgeStatus analyticClaim complexityClaim →
      Finset ArithmeticSecurityMacroObligation
  | .certified _ => ∅
  | .unknownFunctor => {.arithmeticSecurityFunctor}
  | .unknownTraceKernel => {.traceToAdversaryBridge}
  | .unknownPurityHardness => {.purityToHardnessBridge}
  | .unknownAll => terminalArithmeticSecurityMacros

end ArithmeticSecurityBridgeStatus

def terminalArithmeticSecurityBridgeStatus
    (analyticClaim : AnalyticClaim)
    (complexityClaim : ComplexityClaim) :
    ArithmeticSecurityBridgeStatus analyticClaim complexityClaim :=
  .unknownAll

@[simp]
theorem terminalArithmeticSecurityBridgeStatus_unknowns
    (analyticClaim : AnalyticClaim)
    (complexityClaim : ComplexityClaim) :
    (terminalArithmeticSecurityBridgeStatus
      analyticClaim complexityClaim).unknowns =
        terminalArithmeticSecurityMacros :=
  rfl

end Mathematics.MobiusOntology
