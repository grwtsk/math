import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Hardy

structure DouglasConnectorDescriptor where
  connectorRef : String
  sourceTransmissionRef : String
  targetTransmissionRef : String
  contractionCertificateRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .douglasConnector

end Mathematics.SemiLocalDefect.Hardy
