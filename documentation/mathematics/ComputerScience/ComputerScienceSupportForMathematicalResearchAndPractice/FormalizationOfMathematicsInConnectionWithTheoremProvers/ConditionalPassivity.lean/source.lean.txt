import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Hardy

structure ConditionalPassivityDescriptor where
  sourceCutRef : String
  insertedPrimeRef : String
  exactCertificateRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .hardyConditionalPassivity

end Mathematics.SemiLocalDefect.Hardy
