import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Sonin

structure RangeProjectionDescriptor where
  projectionRef : String
  horizonRef : String
  inclusionCertificateRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .soninRangeProjection

end Mathematics.SemiLocalDefect.Sonin
