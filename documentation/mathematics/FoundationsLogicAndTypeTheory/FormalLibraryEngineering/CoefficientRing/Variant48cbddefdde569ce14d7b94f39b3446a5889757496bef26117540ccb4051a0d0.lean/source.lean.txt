import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.QSeries

structure CoefficientRingDescriptor where
  ringRef : String
  exactArithmeticRef : String
  intervalRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .qSeriesCoefficientRing

end Mathematics.SemiLocalDefect.QSeries
