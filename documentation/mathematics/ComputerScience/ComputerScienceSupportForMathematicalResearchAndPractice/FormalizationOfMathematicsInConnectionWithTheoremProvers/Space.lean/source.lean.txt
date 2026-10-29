import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Sonin

structure SpaceDescriptor where
  spaceRef : String
  finiteHorizonRef : String
  status : OpenBridgeStatus :=
    openBridgeStatus .soninSpace

end Mathematics.SemiLocalDefect.Sonin
