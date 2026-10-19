import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Hardy

structure DefectDescriptor where
  defectRef : String
  capacityRef : String
  relationCertificateRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .hardyCapacityRelation

end Mathematics.SemiLocalDefect.Hardy
