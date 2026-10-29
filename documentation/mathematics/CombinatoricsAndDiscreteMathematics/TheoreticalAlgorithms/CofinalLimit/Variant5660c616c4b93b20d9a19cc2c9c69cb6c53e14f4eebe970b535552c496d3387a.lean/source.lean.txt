import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Trace

structure CofinalLimitDescriptor where
  systemRef : String
  finiteStageRefs : List String
  compatibilityCertificateRefs : List String
  status : OpenBridgeStatus :=
    openBridgeStatus .traceCofinalLimit

end Mathematics.SemiLocalDefect.Trace
