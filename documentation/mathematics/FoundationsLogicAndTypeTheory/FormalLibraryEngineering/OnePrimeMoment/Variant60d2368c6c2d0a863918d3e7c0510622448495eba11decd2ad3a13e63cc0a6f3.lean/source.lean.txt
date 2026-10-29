import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.QSeries

structure OnePrimeMomentDescriptor where
  momentRef : String
  primeRef : String
  coefficientCustodyRef : String
  status : OpenBridgeStatus :=
    openBridgeStatus .onePrimeMoment

end Mathematics.SemiLocalDefect.QSeries
