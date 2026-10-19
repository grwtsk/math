import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect

structure MobiusInteractionDescriptor where
  interactionRef : String
  supportRefs : List String
  signCertificateRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .higherMobiusInteraction

end Mathematics.SemiLocalDefect
