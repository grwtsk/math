import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Sonin

structure FiniteHorizonGramDescriptor where
  gramRef : String
  horizonRef : String
  compatibilityCertificateRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .soninFiniteHorizonGram

end Mathematics.SemiLocalDefect.Sonin
