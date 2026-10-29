import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Sonin

structure FiniteHorizonDescriptor where
  horizonRef : String
  finitePrimeUniverseRef : String
  status : OpenBridgeStatus :=
    openBridgeStatus .soninHorizonProjection

end Mathematics.SemiLocalDefect.Sonin
